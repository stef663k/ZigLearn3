//Opgave 13
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

//Opgave 14
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

//Opgave 15
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

//Opgave 16
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

//Opgave 17
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

//Opgave 18
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
// const std = @import("std");

// pub fn main() void {
//     // The new function deepThought() should return the number 42. See below.
//     const answer: u8 = deepThought();

//     std.debug.print("Answer to the Ultimate Question: {}\n", .{answer});
// }

// // Please define the deepThought() function below.
// //
// // We're just missing a couple things. One thing we're NOT missing is the
// // keyword "pub", which is not needed here. Can you guess why?
// //
// fn deepThought() u8 {
//     return 42; // Number courtesy Douglas Adams
// }

//Opgave 19
//
// Now let's create a function that takes a parameter. Here's an
// example that takes two parameters. As you can see, parameters
// are declared just like any other types ("name": "type"):
//
//     fn myFunction(number: u8, is_lucky: bool) {
//         ...
//     }
//
// const std = @import("std");

// pub fn main() void {
//     std.debug.print("Powers of two: {} {} {} {}\n", .{
//         twoToThe(1),
//         twoToThe(2),
//         twoToThe(3),
//         twoToThe(4),
//     });
// }

// // Please give this function the correct input parameter(s).
// // You'll need to figure out the parameter name and type that we're
// // expecting. The output type has already been specified for you.
// //
// fn twoToThe(???) u32 {
//     return std.math.pow(u32, 2, my_number);
//     // std.math.pow(type, a, b) takes a numeric type and two
//     // numbers of that type (or that can coerce to that type) and
//     // returns "a to the power of b" as that same numeric type.
// }
// const std = @import("std");

// pub fn main() void {
//     std.debug.print("Powers of two: {} {} {} {}\n", .{
//         twoToThe(1),
//         twoToThe(2),
//         twoToThe(3),
//         twoToThe(4),
//     });
// }

// fn twoToThe(my_number: u32) u32 {
//     return std.math.pow(u32, 2, my_number);
// }

//Opgave 20
//
// Let's see if we can make use of some of the things we've learned so far.
// We'll create two functions: one that contains a "for" loop and one
// that contains a "while" loop.
//
// Both of these are simply labeled "loop" below.
//
// const std = @import("std");

// pub fn main() void {
//     const my_numbers = [4]u16{ 5, 6, 7, 8 };

//     printPowersOfTwo(my_numbers);
//     std.debug.print("\n", .{});
// }

// // You won't see this every day: a function that takes an array with
// // exactly four u16 numbers. This is not how you would normally pass
// // an array to a function. We'll learn about slices and pointers in
// // a little while. For now, we're using what we know.
// //
// // This function prints, but does not return anything.
// //
// fn printPowersOfTwo(numbers: [4]u16) ??? {
//     loop (numbers) |n| {
//         std.debug.print("{} ", .{twoToThe(n)});
//     }
// }

// // This function bears a striking resemblance to twoToThe() in the last
// // exercise. But don't be fooled! This one does the math without the aid
// // of the standard library!
// //
// fn twoToThe(number: u16) ??? {
//     var n: u16 = 0;
//     var total: u16 = 1;

//     loop (n < number) : (n += 1) {
//         total *= 2;
//     }

//     return ???;
// }

// const std = @import("std");

// pub fn main() void {
//     const my_numbers = [4]u16{ 5, 6, 7, 8 };

//     printPowersOfTwo(my_numbers);
//     std.debug.print("\n", .{});
// }

// fn printPowersOfTwo(numbers: [4]u16) void {
//     for (numbers) |n| {
//         std.debug.print("{} ", .{twoToThe(n)});
//     }
// }

// fn twoToThe(number: u16) u16 {
//     var n: u16 = 0;
//     var total: u16 = 1;

//     while (n < number) : (n += 1) {
//         total *= 2;
//     }

//     return total;
// }

//Opgave 21
//
// Believe it or not, sometimes things go wrong in programs.
//
// In Zig, an error is a value. Errors are named so we can identify
// things that can go wrong. Errors are created in "error sets", which
// are just a collection of named errors.
//
// We have the start of an error set, but we're missing the condition
// "TooSmall". Please add it where needed!
// const MyNumberError = error{
//     TooBig,
//     ???,
//     TooFour,
// };

// const std = @import("std");

// pub fn main() void {
//     const nums = [_]u8{ 2, 3, 4, 5, 6 };

//     for (nums) |n| {
//         std.debug.print("{}", .{n});

//         const number_error = numberFail(n);

//         if (number_error == MyNumberError.TooBig) {
//             std.debug.print(">4. ", .{});
//         }
//         if (???) {
//             std.debug.print("<4. ", .{});
//         }
//         if (number_error == MyNumberError.TooFour) {
//             std.debug.print("=4. ", .{});
//         }
//     }

//     std.debug.print("\n", .{});
// }

// // Notice how this function can return any member of the MyNumberError
// // error set.
// fn numberFail(n: u8) MyNumberError {
//     if (n > 4) return MyNumberError.TooBig;
//     if (n < 4) return MyNumberError.TooSmall; // <---- this one is free!
//     return MyNumberError.TooFour;
// }
// const MyNumberError = error{
//     TooBig,
//     TooSmall,
//     TooFour,
// };

// const std = @import("std");

// pub fn main() void {
//     const nums = [_]u8{ 2, 3, 4, 5, 6 };

//     for (nums) |n| {
//         std.debug.print("{}", .{n});

//         const number_error = numberFail(n);

//         if (number_error == MyNumberError.TooBig) {
//             std.debug.print(">4. ", .{});
//         }
//         if (number_error == MyNumberError.TooSmall) {
//             std.debug.print("<4. ", .{});
//         }
//         if (number_error == MyNumberError.TooFour) {
//             std.debug.print("=4. ", .{});
//         }
//     }

//     std.debug.print("\n", .{});
// }

// // Notice how this function can return any member of the MyNumberError
// // error set.
// fn numberFail(n: u8) MyNumberError {
//     if (n > 4) return MyNumberError.TooBig;
//     if (n < 4) return MyNumberError.TooSmall; // <---- this one is free!
//     return MyNumberError.TooFour;
// }

///Opgave 22
//
// A common case for errors is a situation where we're expecting to
// have a value OR something has gone wrong. Take this example:
//
//     var text: Text = getText("foo.txt");
//
// What happens if getText() can't find "foo.txt"?  How do we express
// this in Zig?
//
// Zig lets us make what's called an "error union" which is a value
// which could either be a regular value OR an error from a set:
//
//     var text: MyErrorSet!Text = getText("foo.txt");
//
// For now, let's just see if we can try making an error union!
//
// const std = @import("std");

// const MyNumberError = error{TooSmall};

// pub fn main() void {
//     var my_number: ??? = 5;

//     // Looks like my_number will need to either store a number OR
//     // an error. Can you set the type correctly above?
//     my_number = MyNumberError.TooSmall;

//     std.debug.print("I compiled!\n", .{});
// }
// const std = @import("std");

// const MyNumberError = error{TooSmall};

// pub fn main() void {
//     var my_number: MyNumberError!u8 = 5;

//     // Looks like my_number will need to either store a number OR
//     // an error. Can you set the type correctly above?
//     my_number = MyNumberError.TooSmall;

//     std.debug.print("I compiled!\n", .{});
// }

//Opgave 23
//
// One way to deal with error unions is to "catch" any error and
// replace it with a default value.
//
//     foo = canFail() catch 6;
//
// If canFail() fails, foo will equal 6.
//
// const std = @import("std");

// const MyNumberError = error{TooSmall};

// pub fn main() void {
//     var a: u32 = addTwenty(44) catch 22;
//     var b: u32 = addTwenty(4) ??? 22;

//     std.debug.print("a={}, b={}\n", .{ a, b });
// }

// // Please provide the return type from this function.
// // Hint: it'll be an error union.
// fn addTwenty(n: u32) ??? {
//     if (n < 5) {
//         return MyNumberError.TooSmall;
//     } else {
//         return n + 20;
//     }
// }
// const std = @import("std");

// const MyNumberError = error{TooSmall};

// pub fn main() void {
//     var a: u32 = addTwenty(44) catch 22;
//     var b: u32 = addTwenty(4) catch 22;

//     std.debug.print("a={}, b={}\n", .{ a, b });
// }

// fn addTwenty(n: u32) !u32 {
//     if (n < 5) {
//         return MyNumberError.TooSmall;
//     } else {
//         return n + 20;
//     }
// }

//Opgave 24
//
// Using `catch` to replace an error with a default value is a bit
// of a blunt instrument since it doesn't matter what the error is.
//
// Catch lets us capture the error value and perform additional
// actions with this form:
//
//     canFail() catch |err| {
//         if (err == FishError.TunaMalfunction) {
//             ...
//         }
//     };
//
// const std = @import("std");

// const MyNumberError = error{
//     TooSmall,
//     TooBig,
// };

// pub fn main() void {
//     // The "catch 0" below is a temporary hack to deal with
//     // makeJustRight()'s returned error union (for now).
//     var a: u32 = makeJustRight(44) catch 0;
//     var b: u32 = makeJustRight(14) catch 0;
//     var c: u32 = makeJustRight(4) catch 0;

//     std.debug.print("a={}, b={}, c={}\n", .{ a, b, c });
// }

// // In this silly example we've split the responsibility of making
// // a number just right into four (!) functions:
// //
// //     makeJustRight()   Calls fixTooBig(), cannot fix any errors.
// //     fixTooBig()       Calls fixTooSmall(), fixes TooBig errors.
// //     fixTooSmall()     Calls detectProblems(), fixes TooSmall errors.
// //     detectProblems()  Returns the number or an error.
// //
// fn makeJustRight(n: u32) MyNumberError!u32 {
//     return fixTooBig(n) catch |err| {
//         return err;
//     };
// }

// fn fixTooBig(n: u32) MyNumberError!u32 {
//     return fixTooSmall(n) catch |err| {
//         if (err == MyNumberError.TooBig) {
//             return 20;
//         }

//         return err;
//     };
// }

// fn fixTooSmall(n: u32) MyNumberError!u32 {
//     // Oh dear, this is missing a lot! But don't worry, it's nearly
//     // identical to fixTooBig() above.
//     //
//     // If we get a TooSmall error, we should return 10.
//     // If we get any other error, we should return that error.
//     // Otherwise, we return the u32 number.
//     return detectProblems(n) ???;
// }

// fn detectProblems(n: u32) MyNumberError!u32 {
//     if (n < 10) return MyNumberError.TooSmall;
//     if (n > 20) return MyNumberError.TooBig;
//     return n;
// }
// const std = @import("std");

// const MyNumberError = error{
//     TooSmall,
//     TooBig,
// };

// pub fn main() void {
//     var a: u32 = makeJustRight(44) catch 0;
//     var b: u32 = makeJustRight(14) catch 0;
//     var c: u32 = makeJustRight(4) catch 0;

//     std.debug.print("a={}, b={}, c={}\n", .{ a, b, c });
// }

// fn makeJustRight(n: u32) MyNumberError!u32 {
//     return fixTooBig(n) catch |err| {
//         return err;
//     };
// }

// fn fixTooBig(n: u32) MyNumberError!u32 {
//     return fixTooSmall(n) catch |err| {
//         if (err == MyNumberError.TooBig) {
//             return 20;
//         }

//         return err;
//     };
// }

// fn fixTooSmall(n: u32) MyNumberError!u32 {
//     return detectProblems(n) catch |err| {
//         switch (err) {
//             MyNumberError.TooSmall => return 10,
//             MyNumberError.TooBig => return err,
//         }
//     };
// }

// fn detectProblems(n: u32) MyNumberError!u32 {
//     if (n < 10) return MyNumberError.TooSmall;
//     if (n > 20) return MyNumberError.TooBig;
//     return n;
// }

//Opgave 25
//
// Zig has a handy "try" shortcut for this common error handling pattern:
//
//     canFail() catch |err| return err;
//
// which can be more compactly written as:
//
//     try canFail();
//
// const std = @import("std");

// const MyNumberError = error{
//     TooSmall,
//     TooBig,
// };

// pub fn main() void {
//     var a: u32 = addFive(44) catch 0;
//     var b: u32 = addFive(14) catch 0;
//     var c: u32 = addFive(4) catch 0;

//     std.debug.print("a={}, b={}, c={}\n", .{ a, b, c });
// }

// fn addFive(n: u32) MyNumberError!u32 {
//     // This function needs to return any error which might come back from detect().
//     // Please use a "try" statement rather than a "catch".
//     //
//     var x = detect(n);

//     return x + 5;
// }

// fn detect(n: u32) MyNumberError!u32 {
//     if (n < 10) return MyNumberError.TooSmall;
//     if (n > 20) return MyNumberError.TooBig;
//     return n;
// }
// const std = @import("std");

// const MyNumberError = error{
//     TooSmall,
//     TooBig,
// };

// pub fn main() void {
//     var a: u32 = addFive(44) catch 0;
//     var b: u32 = addFive(14) catch 0;
//     var c: u32 = addFive(4) catch 0;

//     std.debug.print("a={}, b={}, c={}\n", .{ a, b, c });
// }

// fn addFive(n: u32) MyNumberError!u32 {
//     // This function needs to return any error which might come back from detect().
//     // Please use a "try" statement rather than a "catch".
//     //
//     var x = try detect(n);

//     return x + 5;
// }

// fn detect(n: u32) MyNumberError!u32 {
//     if (n < 10) return MyNumberError.TooSmall;
//     if (n > 20) return MyNumberError.TooBig;
//     return n;
// }

//Opgave 26
//
// Great news! Now we know enough to understand a "real" Hello World
// program in Zig - one that uses the system Standard Out resource...which
// can fail!
//
const std = @import("std");

// Take note that this main() definition now returns "!void" rather
// than just "void". Since there's no specific error type, this means
// that Zig will infer the error type. This is appropriate in the case
// of main(), but can make a function harder (function pointers) or
// even impossible to work with (recursion) in some situations.
//
// You can find more information at:
// https://ziglang.org/documentation/master/#Inferred-Error-Sets
//
// pub fn main() !void {
//     // We get a Writer for Standard Out so we can print() to it.
//     const stdout = std.io.getStdOut().writer();

//     // Unlike std.debug.print(), the Standard Out writer can fail
//     // with an error. We don't care _what_ the error is, we want
//     // to be able to pass it up as a return value of main().
//     //
//     // We just learned of a single statement which can accomplish this.
//     stdout.print("Hello world!\n", .{});
// }
pub fn main() !void {
    const stdout = std.io.getStdOut().writer();

    try stdout.print("Hello world!\n", .{});
}
