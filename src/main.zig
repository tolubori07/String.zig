const std = @import("std");
const memchar = @import("./memchar.zig");
const memcmp = @import("./memcmp.zig");

pub fn main() !void {
    const str1 = "hello";
    const str2 = "world";
    const n = 5;
    const result = memcmp.memcmp(str1[0..], str2[0..], n);
    std.debug.print("Result: {d}\n", .{result});

    const str3 = "hello";
    const str4 = "hello";
    const result2 = memcmp.memcmp(str3[0..], str4[0..], n);
    std.debug.print("Result: {d}\n", .{result2});

    const str5 = "hello";
    const str6 = "hell";
    const result3 = memcmp.memcmp(str5[0..], str6[0..], n);
    std.debug.print("Result: {d}\n", .{result3});

    const str7 = "hello world";
    const str8 = "hello";
    const result4 = memcmp.memcmp(str7[0..], str8[0..], 5);
    std.debug.print("Result: {d}\n", .{result4});
}
