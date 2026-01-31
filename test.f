import std.iter
import std.char
import std.string
import std.string_builder

pub fn main() {
    let sb: StringBuilder
    sb.append("Hello, ")
    sb.append("World!")
    let str = sb.as_string()
    println(str)

    println(type_of(i32).name)
}
