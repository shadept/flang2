import std.algo.iter
import std.char
import std.string

fn add_one(n: u8) u8 {
    n + 1
}

pub fn main() {
    const str = "Gdkkn+Vnqkc "
    for (c in str.bytes().map(add_one)) {
        println(c)
    }
    println("")

    const r = 0..10
    println(r[5])
}
