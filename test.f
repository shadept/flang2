import std.dict
import std.text.string

struct Node {
    value: i32
}

fn op_eq(a: Node, b: Node) bool {
    return a.value == b.value
}



pub fn main() {
    const str = "Hello, World!"
    for (c in str.bytes()) {
        println(c)
    }

    let dict: Dict(String, String)
    dict.set("key", "value")
}
