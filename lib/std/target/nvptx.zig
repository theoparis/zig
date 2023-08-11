//! This file is auto-generated by tools/update_cpu_features.zig.

const std = @import("../std.zig");
const CpuFeature = std.Target.Cpu.Feature;
const CpuModel = std.Target.Cpu.Model;

pub const Feature = enum {
    ptx32,
    ptx40,
    ptx41,
    ptx42,
    ptx43,
    ptx50,
    ptx60,
    ptx61,
    ptx63,
    ptx64,
    ptx65,
    ptx70,
    ptx71,
    ptx72,
    ptx73,
    ptx74,
    ptx75,
    ptx76,
    ptx77,
    ptx78,
    ptx80,
    ptx81,
    sm_20,
    sm_21,
    sm_30,
    sm_32,
    sm_35,
    sm_37,
    sm_50,
    sm_52,
    sm_53,
    sm_60,
    sm_61,
    sm_62,
    sm_70,
    sm_72,
    sm_75,
    sm_80,
    sm_86,
    sm_87,
    sm_89,
    sm_90,
    sm_90,
};

pub const featureSet = CpuFeature.feature_set_fns(Feature).featureSet;
pub const featureSetHas = CpuFeature.feature_set_fns(Feature).featureSetHas;
pub const featureSetHasAny = CpuFeature.feature_set_fns(Feature).featureSetHasAny;
pub const featureSetHasAll = CpuFeature.feature_set_fns(Feature).featureSetHasAll;

pub const all_features = blk: {
    const len = @typeInfo(Feature).Enum.fields.len;
    std.debug.assert(len <= CpuFeature.Set.needed_bit_count);
    var result: [len]CpuFeature = undefined;
    result[@intFromEnum(Feature.ptx32)] = .{
        .llvm_name = "ptx32",
        .description = "Use PTX version 32",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.ptx40)] = .{
        .llvm_name = "ptx40",
        .description = "Use PTX version 40",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.ptx41)] = .{
        .llvm_name = "ptx41",
        .description = "Use PTX version 41",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.ptx42)] = .{
        .llvm_name = "ptx42",
        .description = "Use PTX version 42",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.ptx43)] = .{
        .llvm_name = "ptx43",
        .description = "Use PTX version 43",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.ptx50)] = .{
        .llvm_name = "ptx50",
        .description = "Use PTX version 50",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.ptx60)] = .{
        .llvm_name = "ptx60",
        .description = "Use PTX version 60",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.ptx61)] = .{
        .llvm_name = "ptx61",
        .description = "Use PTX version 61",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.ptx63)] = .{
        .llvm_name = "ptx63",
        .description = "Use PTX version 63",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.ptx64)] = .{
        .llvm_name = "ptx64",
        .description = "Use PTX version 64",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.ptx65)] = .{
        .llvm_name = "ptx65",
        .description = "Use PTX version 65",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.ptx70)] = .{
        .llvm_name = "ptx70",
        .description = "Use PTX version 70",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.ptx71)] = .{
        .llvm_name = "ptx71",
        .description = "Use PTX version 71",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.ptx72)] = .{
        .llvm_name = "ptx72",
        .description = "Use PTX version 72",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.ptx73)] = .{
        .llvm_name = "ptx73",
        .description = "Use PTX version 73",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.ptx74)] = .{
        .llvm_name = "ptx74",
        .description = "Use PTX version 74",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.ptx75)] = .{
        .llvm_name = "ptx75",
        .description = "Use PTX version 75",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.ptx76)] = .{
        .llvm_name = "ptx76",
        .description = "Use PTX version 76",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.ptx77)] = .{
        .llvm_name = "ptx77",
        .description = "Use PTX version 77",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.ptx78)] = .{
        .llvm_name = "ptx78",
        .description = "Use PTX version 78",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.ptx80)] = .{
        .llvm_name = "ptx80",
        .description = "Use PTX version 80",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.ptx81)] = .{
        .llvm_name = "ptx81",
        .description = "Use PTX version 81",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.sm_20)] = .{
        .llvm_name = "sm_20",
        .description = "Target SM 20",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.sm_21)] = .{
        .llvm_name = "sm_21",
        .description = "Target SM 21",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.sm_30)] = .{
        .llvm_name = "sm_30",
        .description = "Target SM 30",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.sm_32)] = .{
        .llvm_name = "sm_32",
        .description = "Target SM 32",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.sm_35)] = .{
        .llvm_name = "sm_35",
        .description = "Target SM 35",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.sm_37)] = .{
        .llvm_name = "sm_37",
        .description = "Target SM 37",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.sm_50)] = .{
        .llvm_name = "sm_50",
        .description = "Target SM 50",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.sm_52)] = .{
        .llvm_name = "sm_52",
        .description = "Target SM 52",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.sm_53)] = .{
        .llvm_name = "sm_53",
        .description = "Target SM 53",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.sm_60)] = .{
        .llvm_name = "sm_60",
        .description = "Target SM 60",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.sm_61)] = .{
        .llvm_name = "sm_61",
        .description = "Target SM 61",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.sm_62)] = .{
        .llvm_name = "sm_62",
        .description = "Target SM 62",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.sm_70)] = .{
        .llvm_name = "sm_70",
        .description = "Target SM 70",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.sm_72)] = .{
        .llvm_name = "sm_72",
        .description = "Target SM 72",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.sm_75)] = .{
        .llvm_name = "sm_75",
        .description = "Target SM 75",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.sm_80)] = .{
        .llvm_name = "sm_80",
        .description = "Target SM 80",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.sm_86)] = .{
        .llvm_name = "sm_86",
        .description = "Target SM 86",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.sm_87)] = .{
        .llvm_name = "sm_87",
        .description = "Target SM 87",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.sm_89)] = .{
        .llvm_name = "sm_89",
        .description = "Target SM 89",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.sm_90)] = .{
        .llvm_name = "sm_90",
        .description = "Target SM 90",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.sm_90)] = .{
        .llvm_name = "sm_90",
        .description = "Target SM 90",
        .dependencies = featureSet(&[_]Feature{}),
    };
    const ti = @typeInfo(Feature);
    for (&result, 0..) |*elem, i| {
        elem.index = i;
        elem.name = ti.Enum.fields[i].name;
    }
    break :blk result;
};

pub const cpu = struct {
    pub const sm_20 = CpuModel{
        .name = "sm_20",
        .llvm_name = "sm_20",
        .features = featureSet(&[_]Feature{
            .ptx32,
            .sm_20,
        }),
    };
    pub const sm_21 = CpuModel{
        .name = "sm_21",
        .llvm_name = "sm_21",
        .features = featureSet(&[_]Feature{
            .ptx32,
            .sm_21,
        }),
    };
    pub const sm_30 = CpuModel{
        .name = "sm_30",
        .llvm_name = "sm_30",
        .features = featureSet(&[_]Feature{
            .sm_30,
        }),
    };
    pub const sm_32 = CpuModel{
        .name = "sm_32",
        .llvm_name = "sm_32",
        .features = featureSet(&[_]Feature{
            .ptx40,
            .sm_32,
        }),
    };
    pub const sm_35 = CpuModel{
        .name = "sm_35",
        .llvm_name = "sm_35",
        .features = featureSet(&[_]Feature{
            .ptx32,
            .sm_35,
        }),
    };
    pub const sm_37 = CpuModel{
        .name = "sm_37",
        .llvm_name = "sm_37",
        .features = featureSet(&[_]Feature{
            .ptx41,
            .sm_37,
        }),
    };
    pub const sm_50 = CpuModel{
        .name = "sm_50",
        .llvm_name = "sm_50",
        .features = featureSet(&[_]Feature{
            .ptx40,
            .sm_50,
        }),
    };
    pub const sm_52 = CpuModel{
        .name = "sm_52",
        .llvm_name = "sm_52",
        .features = featureSet(&[_]Feature{
            .ptx41,
            .sm_52,
        }),
    };
    pub const sm_53 = CpuModel{
        .name = "sm_53",
        .llvm_name = "sm_53",
        .features = featureSet(&[_]Feature{
            .ptx42,
            .sm_53,
        }),
    };
    pub const sm_60 = CpuModel{
        .name = "sm_60",
        .llvm_name = "sm_60",
        .features = featureSet(&[_]Feature{
            .ptx50,
            .sm_60,
        }),
    };
    pub const sm_61 = CpuModel{
        .name = "sm_61",
        .llvm_name = "sm_61",
        .features = featureSet(&[_]Feature{
            .ptx50,
            .sm_61,
        }),
    };
    pub const sm_62 = CpuModel{
        .name = "sm_62",
        .llvm_name = "sm_62",
        .features = featureSet(&[_]Feature{
            .ptx50,
            .sm_62,
        }),
    };
    pub const sm_70 = CpuModel{
        .name = "sm_70",
        .llvm_name = "sm_70",
        .features = featureSet(&[_]Feature{
            .ptx60,
            .sm_70,
        }),
    };
    pub const sm_72 = CpuModel{
        .name = "sm_72",
        .llvm_name = "sm_72",
        .features = featureSet(&[_]Feature{
            .ptx61,
            .sm_72,
        }),
    };
    pub const sm_75 = CpuModel{
        .name = "sm_75",
        .llvm_name = "sm_75",
        .features = featureSet(&[_]Feature{
            .ptx63,
            .sm_75,
        }),
    };
    pub const sm_80 = CpuModel{
        .name = "sm_80",
        .llvm_name = "sm_80",
        .features = featureSet(&[_]Feature{
            .ptx70,
            .sm_80,
        }),
    };
    pub const sm_86 = CpuModel{
        .name = "sm_86",
        .llvm_name = "sm_86",
        .features = featureSet(&[_]Feature{
            .ptx71,
            .sm_86,
        }),
    };
    pub const sm_87 = CpuModel{
        .name = "sm_87",
        .llvm_name = "sm_87",
        .features = featureSet(&[_]Feature{
            .ptx74,
            .sm_87,
        }),
    };
    pub const sm_89 = CpuModel{
        .name = "sm_89",
        .llvm_name = "sm_89",
        .features = featureSet(&[_]Feature{
            .ptx78,
            .sm_89,
        }),
    };
    pub const sm_90 = CpuModel{
        .name = "sm_90",
        .llvm_name = "sm_90",
        .features = featureSet(&[_]Feature{
            .ptx78,
            .sm_90,
        }),
    };
    pub const sm_90a = CpuModel{
        .name = "sm_90a",
        .llvm_name = "sm_90a",
        .features = featureSet(&[_]Feature{
            .ptx80,
            .sm_90,
        }),
    };
};
