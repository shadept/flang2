import std.list

struct Node {
    value: i32
}

pub fn main() {
    let node: Node = .{ value = 42 }

    let list: List(&Node)
    list.push(&.{ value = 27 })
    list.push(&node)
    list.push(.{ value = 69 })

    node.value = 420

    print(list.get(1).value)
}
