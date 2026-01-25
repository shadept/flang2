import std.allocator

struct Node {
    value: usize
}

pub fn main() {
    const buffer = [0; 256]
    const fba = fixed_buffer_allocator(buffer)
    const allocator = fba.allocator()

    const node = allocator.new(Node)
    defer allocator.delete(node)

    node.value = 42
    return node.value
}
