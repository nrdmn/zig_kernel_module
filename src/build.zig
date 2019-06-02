const Builder = @import("std").build.Builder;
const builtin = @import("builtin");

pub fn build(b: *Builder) void {
    var module = b.addObject("my_module", "my_module.zig");
    module.setBuildMode(b.standardReleaseOptions());
    module.setTarget(builtin.Arch.x86_64, builtin.Os.freestanding, builtin.Abi.gnu);
    module.setOutputDir(".");
    b.default_step.dependOn(&module.step);
}
