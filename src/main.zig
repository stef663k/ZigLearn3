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
// const std = @import("std");

// pub fn main() void {
//     var n: u32 = 1;

//     // Oh dear! This while loop will go forever?!
//     // Please fix this so the print statement below gives the desired output.
//     while (true) : (n += 1) {
//         if (n == 4) break;
//     }

//     // Result: we want n=4
//     std.debug.print("n={}\n", .{n});
// }

///Opgave 15
//
// Behold the 'for' loop! For loops let you execute code for each
// element of an array:
//
//     for (items) |item| {
//
//         // Do something with item
//
//     }
//
// const std = @import("std");

// pub fn main() void {
//     const story = [_]u8{ 'h', 'h', 's', 'n', 'h' };

//     std.debug.print("A Dramatic Story: ", .{});

//     for (???) |???| {
//         if (scene == 'h') std.debug.print(":-)  ", .{});
//         if (scene == 's') std.debug.print(":-(  ", .{});
//         if (scene == 'n') std.debug.print(":-|  ", .{});
//     }

//     std.debug.print("The End.\n", .{});
// }
// Note that "for" loops also work on things called "slices"
// which we'll see later.
// const std = @import("std");

// pub fn main() void {
//     const story = [_]u8{ 'h', 'h', 's', 'n', 'h' };

//     std.debug.print("A Dramatic Story: ", .{});

//     for (story) |scene| {
//         if (scene == 'h') std.debug.print(":-)  ", .{});
//         if (scene == 's') std.debug.print(":-(  ", .{});
//         if (scene == 'n') std.debug.print(":-|  ", .{});
//     }

//     std.debug.print("The End.\n", .{});
// }

///Opgave 16
//
// For loops also let you use the "index" of the iteration, a number
// that counts up with each iteration. To access the index of iteration,
// specify a second condition as well as a second capture value.
//
//     for (items, 0..) |item, index| {
//
//         // Do something with item and index
//
//     }
//
// You can name "item" and "index" anything you want. "i" is a popular
// shortening of "index". The item name is often the singular form of
// the items you're looping through.
//
// const std = @import("std");

// pub fn main() void {
//     // Let's store the bits of binary number 1101 in
//     // 'little-endian' order (least significant byte first):
//     const bits = [_]u8{ 1, 0, 1, 1 };
//     var value: u32 = 0;

//     // Now we'll convert the binary bits to a number value by adding
//     // the value of the place as a power of two for each bit.
//     //
//     // See if you can figure out the missing pieces:
//     for (bits, ???) |bit, ???| {
//         // Note that we convert the usize i to a u32 with
//         // @intCast(), a builtin function just like @import().
//         // We'll learn about these properly in a later exercise.
//         var place_value = std.math.pow(u32, 2, @intCast(u32, i));
//         value += place_value * bit;
//     }

//     std.debug.print("The value of bits '1101': {}.\n", .{value});
// }
// const std = @import("std");

// pub fn main() void {
//     // Let's store the bits of binary number 1101 in
//     // 'little-endian' order (least significant byte first):
//     const bits = [_]u8{ 1, 0, 1, 1 };
//     var value: u32 = 0;

//     // Now we'll convert the binary bits to a number value by adding
//     // the value of the place as a power of two for each bit.
//     //
//     // See if you can figure out the missing pieces:
//     for (bits, 0..) |bit, i| {
//         // Note that we convert the usize i to a u32 with
//         // @intCast(), a builtin function just like @import().
//         // We'll learn about these properly in a later exercise.
//         var place_value = std.math.pow(u32, 2, @intCast(u32, i));
//         value += place_value * bit;
//     }

//     std.debug.print("The value of bits '1101': {}.\n", .{value});
// }

///Opgave 17
//
// Quiz time again! Let's see if you can solve the famous "Fizz Buzz"!
//
//     "Players take turns to count incrementally, replacing
//      any number divisible by three with the word "fizz",
//      and any number divisible by five with the word "buzz".
//          - From https://en.wikipedia.org/wiki/Fizz_buzz
//
// Let's go from 1 to 16.  This has been started for you, but there's
// some problems. :-(
//
// const std = import standard library;

// function main() void {
//     var i: u8 = 1;
//     var stop_at: u8 = 16;

//     // What kind of loop is this? A 'for' or a 'while'?
//     ??? (i <= stop_at) : (i += 1) {
//         if (i % 3 == 0) std.debug.print("Fizz", .{});
//         if (i % 5 == 0) std.debug.print("Buzz", .{});
//         if (!(i % 3 == 0) and !(i % 5 == 0)) {
//             std.debug.print("{}", .{???});
//         }
//         std.debug.print(", ", .{});
//     }
//     std.debug.print("\n", .{});
// }
// const std = @import("std");

// pub fn main() void {
//     var i: u8 = 1;
//     var stop_at: u8 = 16;

//     // What kind of loop is this? A 'for' or a 'while'?
//     while (i <= stop_at) : (i += 1) {
//         if (i % 3 == 0) std.debug.print("Fizz", .{});
//         if (i % 5 == 0) std.debug.print("Buzz", .{});
//         if (!(i % 3 == 0) and !(i % 5 == 0)) {
//             std.debug.print("{}", .{i});
//         }
//         std.debug.print(", ", .{});
//     }
//     std.debug.print("\n", .{});
// }

///Opgave 18
//
// Functions! We've already created lots of functions called 'main()'. Now let's
// do something different:
//
//     fn foo(n: u8) u8 {
//         return n + 1;
//     }
//
// The foo() function above takes a number 'n' and returns a number that is
// larger by one.
//
// Note the input parameter 'n' and return types are both u8.
//
// const std = @import("std");

// pub fn main() void {
//     // The new function deepThought() should return the number 42. See below.
//     const answer: u8 = deepThought();

//     std.debug.print("Answer to the Ultimate Question: {}\n", .{answer});
// }

// Please define the deepThought() function below.
//
// We're just missing a couple things. One thing we're NOT missing is the
// keyword "pub", which is not needed here. Can you guess why?
//
// ??? deepThought() ??? {
//     return 42; // Number courtesy Douglas Adams
// }
const std = @import("std");

pub fn main() void {
    // The new function deepThought() should return the number 42. See below.
    const answer: u8 = deepThought();

    std.debug.print("Answer to the Ultimate Question: {}\n", .{answer});
}

// Please define the deepThought() function below.
//
// We're just missing a couple things. One thing we're NOT missing is the
// keyword "pub", which is not needed here. Can you guess why?
//
fn deepThought() u8 {
    return 42; // Number courtesy Douglas Adams
}
