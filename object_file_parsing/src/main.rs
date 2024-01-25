use std::fs::File;
use std::io::Write;
use std::path::PathBuf;

extern crate rbpf;
use rbpf::helpers;

fn main() {
    let filename = "benchmark.o";

    let path = PathBuf::from(filename);
    let file = match elf::File::open_path(&path) {
        Ok(f) => f,
        Err(e) => panic!("Error: {:?}", e),
    };

    // Here we assume the eBPF program is in the ELF section called
    // ".main".
    let text_scn = match file.get_section(".main") {
        Some(s) => s,
        None => panic!("Failed to look up main section"),
    };

    let prog = &text_scn.data;
    let mut f = File::create("./program.bin").unwrap();
    f.write_all(prog.as_slice()).unwrap();


    println!("Program hex: {:?}", prog);

    let mut packet1 = [
        0x01, 0x23, 0x45, 0x67, 0x89, 0xab, 0xfe, 0xdc, 0xba, 0x98, 0x76, 0x54, 0x08,
        0x00, // ethertype
        0x45, 0x00, 0x00, 0x3b, // start ip_hdr
        0xa6, 0xab, 0x40, 0x00, 0x40, 0x06, 0x96, 0x0f, 0x7f, 0x00, 0x00, 0x01, 0x7f, 0x00, 0x00,
        0x01,
        // Program matches the next two bytes: 0x9999 returns 0xffffffff, else return 0.
        0x99, 0x99, 0xc6, 0xcc, // start tcp_hdr
        0xd1, 0xe5, 0xc4, 0x9d, 0xd4, 0x30, 0xb5, 0xd2, 0x80, 0x18, 0x01, 0x56, 0xfe, 0x2f, 0x00,
        0x00, 0x01, 0x01, 0x08, 0x0a, // start data
        0x00, 0x23, 0x75, 0x89, 0x00, 0x23, 0x63, 0x2d, 0x71, 0x64, 0x66, 0x73, 0x64, 0x66, 0x0au8,
    ];

    let mut vm = rbpf::EbpfVmFixedMbuff::new(Some(prog), 0x40, 0x50).unwrap();

    // We register a helper function, that can be called by the program, into
    // the VM.
    vm.register_helper(helpers::BPF_TRACE_PRINTK_IDX, helpers::bpf_trace_printf)
        .unwrap();

    let res = vm.execute_program(&mut packet1).unwrap();
    println!("Program returned: {:?} ({:#x})", res, res)
}
