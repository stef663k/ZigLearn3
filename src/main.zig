const std = @import("std");

pub fn main() void {
    var n: u32 = 1;

    // I want to print every number between 1 and 20 that is NOT
    // divisible by 3 or 5.
    while (n <= 20) : (n += 1) {
        // The '%' symbol is the "modulo" operator and it
        // returns the remainder after division.
        if (n % 3 == 0) continue;
        if (n % 5 == 0) continue;
        std.debug.print("{} ", .{n});
    }

    std.debug.print("\n", .{});
}
