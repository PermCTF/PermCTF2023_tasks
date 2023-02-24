fn xor(s: Vec<u8>, key: &[u8]) -> Vec<u8> {
    let mut b = key.iter().cycle();
    s.into_iter().map(|x| x ^ b.next().unwrap()).collect()
}

fn main() {
    let args: Vec<String> = std::env::args().collect();

    let user_input = &args[1];

    let passcode = &[0x17, 0x1D, 0x18, 0x04, 0x2D, 0x12, 0x1B, 0x04, 0x00, 0x30, 0x05, 0x1F, 0x2D, 0x1A, 0x17, 0x02, 0x1E, 0x03, 0x33, 0x1F, 0x06, 0x1B, 0x0C, 0x05, 0x15, 0x12];
    let key = b"rollrick";

    if xor(user_input.to_string().into_bytes(), key.as_slice()).eq(&passcode){
        print!("Congratz!");
    } else {
        print!("Wrong pass! >:(");
    }

}
