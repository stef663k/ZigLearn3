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
// const std = @import("std");

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
// pub fn main() !void {
//     const stdout = std.io.getStdOut().writer();

//     try stdout.print("Hello world!\n", .{});
// }

//Opgave 27
//
// You can assign some code to run _after_ a block of code exits by
// deferring it with a "defer" statement:
//
//     {
//         defer runLater();
//         runNow();
//     }
//
// In the example above, runLater() will run when the block ({...})
// is finished. So the code above will run in the following order:
//
//     runNow();
//     runLater();
//
// This feature seems strange at first, but we'll see how it could be
// useful in the next exercise.
// const std = @import("std");

// pub fn main() void {
//     // Without changing anything else, please add a 'defer' statement
//     // to this code so that our program prints "One Two\n":
//     std.debug.print("Two\n", .{});
//     std.debug.print("One ", .{});
// }
// const std = @import("std");

// pub fn main() void {
//     defer std.debug.print("Two\n", .{});
//     std.debug.print("One ", .{});
// }

//Opgave 28
//
// Now that you know how "defer" works, let's do something more
// interesting with it.
//
// const std = @import("std");

// pub fn main() void {
//     const animals = [_]u8{ 'g', 'c', 'd', 'd', 'g', 'z' };

//     for (animals) |a| printAnimal(a);

//     std.debug.print("done.\n", .{});
// }

// // This function is _supposed_ to print an animal name in parentheses
// // like "(Goat) ", but we somehow need to print the end parenthesis
// // even though this function can return in four different places!
// fn printAnimal(animal: u8) void {
//     std.debug.print("(", .{});

//     std.debug.print(") ", .{}); // <---- how?!

//     if (animal == 'g') {
//         std.debug.print("Goat", .{});
//         return;
//     }
//     if (animal == 'c') {
//         std.debug.print("Cat", .{});
//         return;
//     }
//     if (animal == 'd') {
//         std.debug.print("Dog", .{});
//         return;
//     }

//     std.debug.print("Unknown", .{});
// }
// const std = @import("std");

// pub fn main() void {
//     const animals = [_]u8{ 'g', 'c', 'd', 'd', 'g', 'z' };

//     for (animals) |a| printAnimal(a);

//     std.debug.print("done.\n", .{});
// }

// fn printAnimal(animal: u8) void {
//     std.debug.print("(", .{});

//     defer std.debug.print(") ", .{});

//     if (animal == 'g') {
//         std.debug.print("Goat", .{});
//         return;
//     }
//     if (animal == 'c') {
//         std.debug.print("Cat", .{});
//         return;
//     }
//     if (animal == 'd') {
//         std.debug.print("Dog", .{});
//         return;
//     }

//     std.debug.print("Unknown", .{});
// }

//Opgave 29
//
// Another common problem is a block of code that could exit in multiple
// places due to an error - but that needs to do something before it
// exits (typically to clean up after itself).
//
// An "errdefer" is a defer that only runs if the block exits with an error:
//
//     {
//         errdefer cleanup();
//         try canFail();
//     }
//
// The cleanup() function is called ONLY if the "try" statement returns an
// error produced by canFail().
//
// const std = @import("std");

// var counter: u32 = 0;

// const MyErr = error{ GetFail, IncFail };

// pub fn main() void {
//     // We simply quit the entire program if we fail to get a number:
//     var a: u32 = makeNumber() catch return;
//     var b: u32 = makeNumber() catch return;

//     std.debug.print("Numbers: {}, {}\n", .{ a, b });
// }

// fn makeNumber() MyErr!u32 {
//     std.debug.print("Getting number...", .{});

//     // Please make the "failed" message print ONLY if the makeNumber()
//     // function exits with an error:
//     std.debug.print("failed!\n", .{});

//     var num = try getNumber(); // <-- This could fail!

//     num = try increaseNumber(num); // <-- This could ALSO fail!

//     std.debug.print("got {}. ", .{num});

//     return num;
// }

// fn getNumber() MyErr!u32 {
//     // I _could_ fail...but I don't!
//     return 4;
// }

// fn increaseNumber(n: u32) MyErr!u32 {
//     // I fail after the first time you run me!
//     if (counter > 0) return MyErr.IncFail;

//     // Sneaky, weird global stuff.
//     counter += 1;

//     return n + 1;
// }
// const std = @import("std");

// var counter: u32 = 0;

// const MyErr = error{ GetFail, IncFail };

// pub fn main() void {
//     var a: u32 = makeNumber() catch return;
//     var b: u32 = makeNumber() catch return;

//     std.debug.print("Numbers: {}, {}\n", .{ a, b });
// }

// fn makeNumber() MyErr!u32 {
//     std.debug.print("Getting number...", .{});

//     errdefer std.debug.print("failed!\n", .{});

//     var num = try getNumber();

//     num = try increaseNumber(num);

//     std.debug.print("got {}. ", .{num});

//     return num;
// }

// fn getNumber() MyErr!u32 {
//     return 4;
// }

// fn increaseNumber(n: u32) MyErr!u32 {
//     if (counter > 0) return MyErr.IncFail;

//     counter += 1;

//     return n + 1;
// }

//Opgave 30
//
// The "switch" statement lets you match the possible values of an
// expression and perform a different action for each.
//
// This switch:
//
//     switch (players) {
//         1 => startOnePlayerGame(),
//         2 => startTwoPlayerGame(),
//         else => {
//             alert();
//             return GameError.TooManyPlayers;
//         }
//     }
//
// Is equivalent to this if/else:
//
//     if (players == 1) startOnePlayerGame();
//     else if (players == 2) startTwoPlayerGame();
//     else {
//         alert();
//         return GameError.TooManyPlayers;
//     }
//
// const std = @import("std");

// pub fn main() void {
//     const lang_chars = [_]u8{ 26, 9, 7, 42 };

//     for (lang_chars) |c| {
//         switch (c) {
//             1 => std.debug.print("A", .{}),
//             2 => std.debug.print("B", .{}),
//             3 => std.debug.print("C", .{}),
//             4 => std.debug.print("D", .{}),
//             5 => std.debug.print("E", .{}),
//             6 => std.debug.print("F", .{}),
//             7 => std.debug.print("G", .{}),
//             8 => std.debug.print("H", .{}),
//             9 => std.debug.print("I", .{}),
//             10 => std.debug.print("J", .{}),
//             // ... we don't need everything in between ...
//             25 => std.debug.print("Y", .{}),
//             26 => std.debug.print("Z", .{}),
//             // Switch statements must be "exhaustive" (there must be a
//             // match for every possible value).  Please add an "else"
//             // to this switch to print a question mark "?" when c is
//             // not one of the existing matches.
//         }
//     }

//     std.debug.print("\n", .{});
// }
// const std = @import("std");

// pub fn main() void {
//     const lang_chars = [_]u8{ 26, 9, 7, 42 };

//     for (lang_chars) |c| {
//         switch (c) {
//             1 => std.debug.print("A", .{}),
//             2 => std.debug.print("B", .{}),
//             3 => std.debug.print("C", .{}),
//             4 => std.debug.print("D", .{}),
//             5 => std.debug.print("E", .{}),
//             6 => std.debug.print("F", .{}),
//             7 => std.debug.print("G", .{}),
//             8 => std.debug.print("H", .{}),
//             9 => std.debug.print("I", .{}),
//             10 => std.debug.print("J", .{}),
//             // ... we don't need everything in between ...
//             25 => std.debug.print("Y", .{}),
//             26 => std.debug.print("Z", .{}),
//             else => std.debug.print("?", .{}),
//         }
//     }

//     std.debug.print("\n", .{});
// }

//Opgave 31
//
// What's really nice is that you can use a switch statement as an
// expression to return a value.
//
//     var a = switch (x) {
//         1 => 9,
//         2 => 16,
//         3 => 7,
//         ...
//     }
//
// const std = @import("std");

// pub fn main() void {
//     const lang_chars = [_]u8{ 26, 9, 7, 42 };

//     for (lang_chars) |c| {
//         const real_char: u8 = switch (c) {
//             1 => 'A',
//             2 => 'B',
//             3 => 'C',
//             4 => 'D',
//             5 => 'E',
//             6 => 'F',
//             7 => 'G',
//             8 => 'H',
//             9 => 'I',
//             10 => 'J',
//             // ...
//             25 => 'Y',
//             26 => 'Z',
//             // As in the last exercise, please add the 'else' clause
//             // and this time, have it return an exclamation mark '!'.
//         };

//         std.debug.print("{c}", .{real_char});
//         // Note: "{c}" forces print() to display the value as a character.
//         // Can you guess what happens if you remove the "c"? Try it!
//     }

//     std.debug.print("\n", .{});
// }
// const std = @import("std");

// pub fn main() void {
//     const lang_chars = [_]u8{ 26, 9, 7, 42 };

//     for (lang_chars) |c| {
//         const real_char: u8 = switch (c) {
//             1 => 'A',
//             2 => 'B',
//             3 => 'C',
//             4 => 'D',
//             5 => 'E',
//             6 => 'F',
//             7 => 'G',
//             8 => 'H',
//             9 => 'I',
//             10 => 'J',
//             // ...
//             25 => 'Y',
//             26 => 'Z',
//             else => '!',
//         };

//         std.debug.print("{c}", .{real_char});
//     }

//     std.debug.print("\n", .{});
// }

//Opgave 32
//
// Zig has an "unreachable" statement. Use it when you want to tell the
// compiler that a branch of code should never be executed and that the
// mere act of reaching it is an error.
//
//     if (true) {
//         ...
//     } else {
//         unreachable;
//     }
//
// Here we've made a little virtual machine that performs mathematical
// operations on a single numeric value. It looks great but there's one
// little problem: the switch statement doesn't cover every possible
// value of a u8 number!
//
// WE know there are only three operations but Zig doesn't. Use the
// unreachable statement to make the switch complete. Or ELSE. :-)
//
// const std = @import("std");

// pub fn main() void {
//     const operations = [_]u8{ 1, 1, 1, 3, 2, 2 };

//     var current_value: u32 = 0;

//     for (operations) |op| {
//         switch (op) {
//             1 => {
//                 current_value += 1;
//             },
//             2 => {
//                 current_value -= 1;
//             },
//             3 => {
//                 current_value *= current_value;
//             },
//         }

//         std.debug.print("{} ", .{current_value});
//     }

//     std.debug.print("\n", .{});
// }
// const std = @import("std");

// pub fn main() void {
//     const operations = [_]u8{ 1, 1, 1, 3, 2, 2 };

//     var current_value: u32 = 0;

//     for (operations) |op| {
//         switch (op) {
//             1 => {
//                 current_value += 1;
//             },
//             2 => {
//                 current_value -= 1;
//             },
//             3 => {
//                 current_value *= current_value;
//             },
//             else => unreachable,
//         }

//         std.debug.print("{} ", .{current_value});
//     }

//     std.debug.print("\n", .{});
// }

//Opgave 33
//
// Let's revisit the very first error exercise. This time, we're going to
// look at an error-handling variation of the "if" statement.
//
//     if (foo) |value| {
//
//         // foo was NOT an error; value is the non-error value of foo
//
//     } else |err| {
//
//         // foo WAS an error; err is the error value of foo
//
//     }
//
// We'll take it even further and use a switch statement to handle
// the error types.
//
//     if (foo) |value| {
//         ...
//     } else |err| switch(err) {
//         ...
//     }
//
// const MyNumberError = error{
//     TooBig,
//     TooSmall,
// };

// const std = @import("std");

// pub fn main() void {
//     const nums = [_]u8{ 2, 3, 4, 5, 6 };

//     for (nums) |num| {
//         std.debug.print("{}", .{num});

//         const n = numberMaybeFail(num);
//         if (n) |value| {
//             std.debug.print("={}. ", .{value});
//         } else |err| switch (err) {
//             MyNumberError.TooBig => std.debug.print(">4. ", .{}),
//             // Please add a match for TooSmall here and have it print: "<4. "
//         }
//     }

//     std.debug.print("\n", .{});
// }

// // This time we'll have numberMaybeFail() return an error union rather
// // than a straight error.
// fn numberMaybeFail(n: u8) MyNumberError!u8 {
//     if (n > 4) return MyNumberError.TooBig;
//     if (n < 4) return MyNumberError.TooSmall;
//     return n;
// }
// const MyNumberError = error{
//     TooBig,
//     TooSmall,
// };

// const std = @import("std");

// pub fn main() void {
//     const nums = [_]u8{ 2, 3, 4, 5, 6 };

//     for (nums) |num| {
//         std.debug.print("{}", .{num});

//         const n = numberMaybeFail(num);
//         if (n) |value| {
//             std.debug.print("={}. ", .{value});
//         } else |err| switch (err) {
//             MyNumberError.TooBig => std.debug.print(">4. ", .{}),
//             MyNumberError.TooSmall => std.debug.print("<4.", .{}),
//         }
//     }

//     std.debug.print("\n", .{});
// }

// // This time we'll have numberMaybeFail() return an error union rather
// // than a straight error.
// fn numberMaybeFail(n: u8) MyNumberError!u8 {
//     if (n > 4) return MyNumberError.TooBig;
//     if (n < 4) return MyNumberError.TooSmall;
//     return n;
// }

//Opgave 34
//
// Quiz time. See if you can make this program work!
//
// Solve this any way you like, just be sure the output is:
//
//     my_num=42
//
// const std = @import("std");

// const NumError = error{IllegalNumber};

// pub fn main() void {
//     const stdout = std.io.getStdOut().writer();

//     const my_num: u32 = getNumber();

//     try stdout.print("my_num={}\n", .{my_num});
// }

// // This function is obviously weird and non-functional. But you will not be changing it for this quiz.
// fn getNumber() NumError!u32 {
//     if (false) return NumError.IllegalNumber;
//     return 42;
// }
// const std = @import("std");

// const NumError = error{IllegalNumber};

// pub fn main() !void {
//     const stdout = std.io.getStdOut().writer();

//     const my_num: u32 = getNumber() catch 42;

//     try stdout.print("my_num={}\n", .{my_num});
// }

// fn getNumber() NumError!u32 {
//     if (false) return NumError.IllegalNumber;
//     return 42;
// }

//Opgave 35
//
// Remember that little mathematical virtual machine we made using the
// "unreachable" statement?  Well, there were two problems with the
// way we were using op codes:
//
//   1. Having to remember op codes by number is no good.
//   2. We had to use "unreachable" because Zig had no way of knowing
//      how many valid op codes there were.
//
// An "enum" is a Zig construct that lets you give names to numeric
// values and store them in a set. They look a lot like error sets:
//
//     const Fruit = enum{ apple, pear, orange };
//
//     const my_fruit = Fruit.apple;
//
// Let's use an enum in place of the numbers we were using in the
// previous version!
//
// const std = @import("std");

// // Please complete the enum!
// const Ops = enum { ??? };

// pub fn main() void {
//     const operations = [_]Ops{
//         Ops.inc,
//         Ops.inc,
//         Ops.inc,
//         Ops.pow,
//         Ops.dec,
//         Ops.dec,
//     };

//     var current_value: u32 = 0;

//     for (operations) |op| {
//         switch (op) {
//             Ops.inc => {
//                 current_value += 1;
//             },
//             Ops.dec => {
//                 current_value -= 1;
//             },
//             Ops.pow => {
//                 current_value *= current_value;
//             },
//             // No "else" needed! Why is that?
//         }

//         std.debug.print("{} ", .{current_value});
//     }

//     std.debug.print("\n", .{});
// }
// const std = @import("std");

// const Ops = enum { inc, pow, dec };

// pub fn main() void {
//     const operations = [_]Ops{
//         Ops.inc,
//         Ops.inc,
//         Ops.inc,
//         Ops.pow,
//         Ops.dec,
//         Ops.dec,
//     };

//     var current_value: u32 = 0;

//     for (operations) |op| {
//         switch (op) {
//             Ops.inc => {
//                 current_value += 1;
//             },
//             Ops.dec => {
//                 current_value -= 1;
//             },
//             Ops.pow => {
//                 current_value *= current_value;
//             },
//         }

//         std.debug.print("{} ", .{current_value});
//     }

//     std.debug.print("\n", .{});
// }

//Opgave 36
//
// Enums are really just a set of numbers. You can leave the
// numbering up to the compiler, or you can assign them
// explicitly. You can even specify the numeric type used.
//
//     const Stuff = enum(u8){ foo = 16 };
//
// You can get the integer out with a builtin function,
// @enumToInt(). We'll learn about builtins properly in a later
// exercise.
//
//     var my_stuff: u8 = @enumToInt(Stuff.foo);
//
// Note how that built-in function starts with "@" just like the
// @import() function we've been using.
//
// const std = @import("std");

// // Zig lets us write integers in hexadecimal format:
// //
// //     0xf (is the value 15 in hex)
// //
// // Web browsers let us specify colors using a hexadecimal
// // number where each byte represents the brightness of the
// // Red, Green, or Blue component (RGB) where two hex digits
// // are one byte with a value range of 0-255:
// //
// //     #RRGGBB
// //
// // Please define and use a pure blue value Color:
// const Color = enum(u32) {
//     red = 0xff0000,
//     green = 0x00ff00,
//     blue = ???,
// };

// pub fn main() void {
//     // Remember Zig's multi-line strings? Here they are again.
//     // Also, check out this cool format string:
//     //
//     //     {x:0>6}
//     //      ^
//     //      x       type ('x' is lower-case hexadecimal)
//     //       :      separator (needed for format syntax)
//     //        0     padding character (default is ' ')
//     //         >    alignment ('>' aligns right)
//     //          6   width (use padding to force width)
//     //
//     // Please add this formatting to the blue value.
//     // (Even better, experiment without it, or try parts of it
//     // to see what prints!)
//     std.debug.print(
//         \\<p>
//         \\  <span style="color: #{x:0>6}">Red</span>
//         \\  <span style="color: #{x:0>6}">Green</span>
//         \\  <span style="color: #{}">Blue</span>
//         \\</p>
//         \\
//     , .{
//         @enumToInt(Color.red),
//         @enumToInt(Color.green),
//         @enumToInt(???), // Oops! We're missing something!
//     });
// }
// const std = @import("std");

// const Color = enum(u32) {
//     red = 0xff0000,
//     green = 0x00ff00,
//     blue = 0x0000ff,
// };

// pub fn main() void {
//     std.debug.print(
//         \\<p>
//         \\  <span style="color: #{x:0>6}">Red</span>
//         \\  <span style="color: #{x:0>6}">Green</span>
//         \\  <span style="color: #{}">Blue</span>
//         \\</p>
//         \\
//     , .{
//         @enumToInt(Color.red),
//         @enumToInt(Color.green),
//         @enumToInt(Color.blue), // Oops! We're missing something!
//     });
// }

//Opgave 37
//
// Being able to group values together lets us turn this:
//
//     point1_x = 3;
//     point1_y = 16;
//     point1_z = 27;
//     point2_x = 7;
//     point2_y = 13;
//     point2_z = 34;
//
// into this:
//
//     point1 = Point{ .x=3, .y=16, .z=27 };
//     point2 = Point{ .x=7, .y=13, .z=34 };
//
// The Point above is an example of a "struct" (short for "structure").
// Here's how that struct type could have been defined:
//
//     const Point = struct{ x: u32, y: u32, z: u32 };
//
// Let's store something fun with a struct: a roleplaying character!
//
// const std = @import("std");

// // We'll use an enum to specify the character class.
// const Class = enum {
//     wizard,
//     thief,
//     bard,
//     warrior,
// };

// // Please add a new property to this struct called "health" and make
// // it a u8 integer type.
// const Character = struct {
//     class: Class,
//     gold: u32,
//     experience: u32,
// };

// pub fn main() void {
//     // Please initialize Glorp with 100 health.
//     var glorp_the_wise = Character{
//         .class = Class.wizard,
//         .gold = 20,
//         .experience = 10,
//     };

//     // Glorp gains some gold.
//     glorp_the_wise.gold += 5;

//     // Ouch! Glorp takes a punch!
//     glorp_the_wise.health -= 10;

//     std.debug.print("Your wizard has {} health and {} gold.\n", .{
//         glorp_the_wise.health,
//         glorp_the_wise.gold,
//     });
// }
// const std = @import("std");

// const Class = enum {
//     wizard,
//     thief,
//     bard,
//     warrior,
// };

// const Character = struct { class: Class, gold: u32, experience: u32, health: u32 };

// pub fn main() void {
//     var glorp_the_wise = Character{ .class = Class.wizard, .gold = 20, .experience = 10, .health = 100 };

//     glorp_the_wise.gold += 5;

//     glorp_the_wise.health -= 10;

//     std.debug.print("Your wizard has {} health and {} gold.\n", .{
//         glorp_the_wise.health,
//         glorp_the_wise.gold,
//     });
// }

//Opgave 38
//
// Grouping values in structs is not merely convenient. It also allows
// us to treat the values as a single item when storing them, passing
// them to functions, etc.
//
// This exercise demonstrates how we can store structs in an array and
// how doing so lets us print them using a loop.
//
// const std = @import("std");

// const Class = enum {
//     wizard,
//     thief,
//     bard,
//     warrior,
// };

// const Character = struct {
//     class: Class,
//     gold: u32,
//     health: u8,
//     experience: u32,
// };

// pub fn main() void {
//     var chars: [2]Character = undefined;

//     // Glorp the Wise
//     chars[0] = Character{
//         .class = Class.wizard,
//         .gold = 20,
//         .health = 100,
//         .experience = 10,
//     };

//     // Please add "Zump the Loud" with the following properties:
//     //
//     //     class      bard
//     //     gold       10
//     //     health     100
//     //     experience 20
//     //
//     // Feel free to run this program without adding Zump. What does
//     // it do and why?

//     // Printing all RPG characters in a loop:
//     for (chars, 0..) |c, num| {
//         std.debug.print("Character {} - G:{} H:{} XP:{}\n", .{
//             num + 1, c.gold, c.health, c.experience,
//         });
//     }
// }

// If you tried running the program without adding Zump as mentioned
// above, you get what appear to be "garbage" values. In debug mode
// (which is the default), Zig writes the repeating pattern "10101010"
// in binary (or 0xAA in hex) to all undefined locations to make them
// easier to spot when debugging.
// const std = @import("std");

// const Class = enum {
//     wizard,
//     thief,
//     bard,
//     warrior,
// };

// const Character = struct {
//     class: Class,
//     gold: u32,
//     health: u8,
//     experience: u32,
// };

// pub fn main() void {
//     var chars: [2]Character = undefined;

//     chars[0] = Character{
//         .class = Class.wizard,
//         .gold = 20,
//         .health = 100,
//         .experience = 10,
//     };
//     chars[1] = Character{
//         .class = Class.bard,
//         .gold = 10,
//         .health = 100,
//         .experience = 20,
//     };

//     for (chars, 0..) |c, num| {
//         std.debug.print("Character {} - G:{} H:{} XP:{}\n", .{
//             num + 1, c.gold, c.health, c.experience,
//         });
//     }
// }

//Opgave 39
//
// Check this out:
//
//     var foo: u8 = 5;      // foo is 5
//     var bar: *u8 = &foo;  // bar is a pointer
//
// What is a pointer? It's a reference to a value. In this example
// bar is a reference to the memory space that currently contains the
// value 5.
//
// A cheatsheet given the above declarations:
//
//     u8         the type of a u8 value
//     foo        the value 5
//     *u8        the type of a pointer to a u8 value
//     &foo       a reference to foo
//     bar        a pointer to the value at foo
//     bar.*      the value 5 (the dereferenced value "at" bar)
//
// We'll see why pointers are useful in a moment. For now, see if you
// can make this example work!
//
// const std = @import("std");

// pub fn main() void {
//     var num1: u8 = 5;
//     var num1_pointer: *u8 = &num1;

//     var num2: u8 = undefined;

//     // Please make num2 equal 5 using num1_pointer!
//     // (See the "cheatsheet" above for ideas.)
//     num2 = ???;

//     std.debug.print("num1: {}, num2: {}\n", .{ num1, num2 });
// }
// const std = @import("std");

// pub fn main() void {
//     var num1: u8 = 5;
//     var num1_pointer: *u8 = &num1;

//     var num2: u8 = undefined;

//     // Please make num2 equal 5 using num1_pointer!
//     // (See the "cheatsheet" above for ideas.)
//     num2 = num1_pointer.*;

//     std.debug.print("num1: {}, num2: {}\n", .{ num1, num2 });
// }

//Opgave 40
//
// It's important to note that variable pointers and constant pointers
// are different types.
//
// Given:
//
//     var foo: u8 = 5;
//     const bar: u8 = 5;
//
// Then:
//
//     &foo is of type "*u8"
//     &bar is of type "*const u8"
//
// You can always make a constant pointer to a variable, but you cannot
// make a variable pointer to a constant. This sounds like a logic puzzle,
// but it just means that once data is declared immutable, you can't
// coerce it to a mutable type. It's a safety thing (to prevent mistakes).
//
// const std = @import("std");

// pub fn main() void {
//     const a: u8 = 12;
//     const b: *u8 = &a; // fix this!

//     std.debug.print("a: {}, b: {}\n", .{ a, b.* });
// }
const std = @import("std");

pub fn main() void {
    const a: u8 = 12;
    const b: *const u8 = &a; // fix this!

    std.debug.print("a: {}, b: {}\n", .{ a, b.* });
}
