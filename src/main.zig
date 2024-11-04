const std = @import("std");
const raylib = @import("raylib");

pub fn main() !void {
    std.debug.print("hello\n", .{});
    // const screenWidth = 800;
    // const screenHeight = 450;

    const vec = raylib.Vector2;
    _ = vec;

    raylib.initWindow(800, 450, "raylib [core] example - basic window");
    raylib.setTargetFPS(60);

    while (!raylib.windowShouldClose()) {
        {
            raylib.beginDrawing();
            defer raylib.endDrawing();

            raylib.clearBackground(raylib.Color.beige);
            raylib.drawText("Hello World!", 400, 225, 20, raylib.Color.black);
        }
    }

    raylib.closeWindow();
    std.debug.print("Bye bye\n", .{});
}
