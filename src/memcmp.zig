const std = @import("std");

fn min(num1: usize, num2: usize) usize {
    return if (num1 <= num2) num1 else num2;
}

pub fn memcmp(str1: []const u8, str2: []const u8, n: usize) i32 {
    const len = std.math.Min(n, std.math.Min(str1.len, str2.len)); //Safe length
    for (0..len) |i| {
        if (str1[i] != str2[i]) {
            return @as(i32, str1[i] - str2[i]);
        }
    }
    return @as(i32, str1.len - str2.len);
}
