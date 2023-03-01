///Opgave 13
// const std = @import("std");

// pub fn main() void {
//     var n: u32 = 1;

//     // I want to print every number between 1 and 20 that is NOT
//     // divisible by 3 or 5.
//     while (n <= 20) : (n += 1) {
//         // The '%' symbol is the "modulo" operator and it
//         // returns the remainder after division.
//         if (n % 3 == 0) continue;
//         if (n % 5 == 0) continue;
//         std.debug.print("{} ", .{n});
//     }

//     std.debug.print("\n", .{});
// }

///Opgave 14
//
// You can force a loop to exit immediately with a "break" statement:
//
//     while (condition) : (continue expression) {
//
//         if (other condition) break;
//
//     }
//
// Continue expressions do NOT execute when a while loop stops
// because of a break!
//
// const std = @import("std");

// pub fn main() void {
//     var n: u32 = 1;

//     // Oh dear! This while loop will go forever?!
//     // Please fix this so the print statement below gives the desired output.
//     while (true) : (n += 1) {
//         if (???) ???;
//     }

//     // Result: we want n=4
//     std.debug.print("n={}\n", .{n});
// }
const std = @import("std");

pub fn main() void {
    var n: u32 = 1;

    // Oh dear! This while loop will go forever?!
    // Please fix this so the print statement below gives the desired output.
    while (true) : (n += 1) {
        if (n == 4) break;
    }

    // Result: we want n=4
    std.debug.print("n={}\n", .{n});
}
