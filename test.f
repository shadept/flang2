import std.list

struct Node {
    value: i32
}

pub fn main() {
    const a: Node = .{ value = 27 }
    const b: Node = .{ value = 42 }
    const c: Node = .{ value = 69 }

    let list: List(&Node)
    list.push(&a)
    list.push(&b)
    list.push(&c)

    for (n in list) {
        println(n.value)
    }

    b.value = 420

    for (n in list) {
        println(n.value)
    }
}
