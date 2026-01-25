import std.allocator

struct Node {
    value: i32
}

pub fn main() i32 {
    const buffer = [0; 256]
    const fba = fixed_buffer_allocator(buffer)
    const allocator = fba.allocator()

    const node = allocator.new(Node)
    defer allocator.delete(node)
    const node2 = allocator.new(Node)
    defer allocator.delete(node2)
    const node3 = allocator.new(Node)
    defer allocator.delete(node3)

    node3.value = 42
    node2.value = node3.value
    node.value = node2.value

    return node.value
}
