const std = @import("std");
const clay = @cImport(@cInclude("/Users/moshoodbello/Coding/JustCoding/clang/clay/clay.h"));
const mem = std.mem;
pub fn memchar(ptr: [*]const u8, c: u8, n: usize) ?[*]const u8 {
    for (ptr[0..n], 0..n) |byte, i| {
        if (byte == c) {
            return ptr + i;
        }
    }
    return null;
}
