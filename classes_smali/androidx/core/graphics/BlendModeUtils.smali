.class Landroidx/core/graphics/BlendModeUtils;
.super Ljava/lang/Object;
.source "BlendModeUtils.java"


# direct methods
.method static obtainBlendModeFromCompat(Landroidx/core/graphics/BlendModeCompat;)Landroid/graphics/BlendMode;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blendModeCompat"
        }
    .end annotation

    .line 35
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_64

    const/4 p0, 0x0

    return-object p0

    .line 93
    :pswitch_d  #0x1d
    sget-object p0, Landroid/graphics/BlendMode;->LUMINOSITY:Landroid/graphics/BlendMode;

    return-object p0

    .line 91
    :pswitch_10  #0x1c
    sget-object p0, Landroid/graphics/BlendMode;->COLOR:Landroid/graphics/BlendMode;

    return-object p0

    .line 89
    :pswitch_13  #0x1b
    sget-object p0, Landroid/graphics/BlendMode;->SATURATION:Landroid/graphics/BlendMode;

    return-object p0

    .line 87
    :pswitch_16  #0x1a
    sget-object p0, Landroid/graphics/BlendMode;->HUE:Landroid/graphics/BlendMode;

    return-object p0

    .line 85
    :pswitch_19  #0x19
    sget-object p0, Landroid/graphics/BlendMode;->MULTIPLY:Landroid/graphics/BlendMode;

    return-object p0

    .line 83
    :pswitch_1c  #0x18
    sget-object p0, Landroid/graphics/BlendMode;->EXCLUSION:Landroid/graphics/BlendMode;

    return-object p0

    .line 81
    :pswitch_1f  #0x17
    sget-object p0, Landroid/graphics/BlendMode;->DIFFERENCE:Landroid/graphics/BlendMode;

    return-object p0

    .line 79
    :pswitch_22  #0x16
    sget-object p0, Landroid/graphics/BlendMode;->SOFT_LIGHT:Landroid/graphics/BlendMode;

    return-object p0

    .line 77
    :pswitch_25  #0x15
    sget-object p0, Landroid/graphics/BlendMode;->HARD_LIGHT:Landroid/graphics/BlendMode;

    return-object p0

    .line 75
    :pswitch_28  #0x14
    sget-object p0, Landroid/graphics/BlendMode;->COLOR_BURN:Landroid/graphics/BlendMode;

    return-object p0

    .line 73
    :pswitch_2b  #0x13
    sget-object p0, Landroid/graphics/BlendMode;->COLOR_DODGE:Landroid/graphics/BlendMode;

    return-object p0

    .line 71
    :pswitch_2e  #0x12
    sget-object p0, Landroid/graphics/BlendMode;->LIGHTEN:Landroid/graphics/BlendMode;

    return-object p0

    .line 69
    :pswitch_31  #0x11
    sget-object p0, Landroid/graphics/BlendMode;->DARKEN:Landroid/graphics/BlendMode;

    return-object p0

    .line 67
    :pswitch_34  #0x10
    sget-object p0, Landroid/graphics/BlendMode;->OVERLAY:Landroid/graphics/BlendMode;

    return-object p0

    .line 65
    :pswitch_37  #0xf
    sget-object p0, Landroid/graphics/BlendMode;->SCREEN:Landroid/graphics/BlendMode;

    return-object p0

    .line 63
    :pswitch_3a  #0xe
    sget-object p0, Landroid/graphics/BlendMode;->MODULATE:Landroid/graphics/BlendMode;

    return-object p0

    .line 61
    :pswitch_3d  #0xd
    sget-object p0, Landroid/graphics/BlendMode;->PLUS:Landroid/graphics/BlendMode;

    return-object p0

    .line 59
    :pswitch_40  #0xc
    sget-object p0, Landroid/graphics/BlendMode;->XOR:Landroid/graphics/BlendMode;

    return-object p0

    .line 57
    :pswitch_43  #0xb
    sget-object p0, Landroid/graphics/BlendMode;->DST_ATOP:Landroid/graphics/BlendMode;

    return-object p0

    .line 55
    :pswitch_46  #0xa
    sget-object p0, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    return-object p0

    .line 53
    :pswitch_49  #0x9
    sget-object p0, Landroid/graphics/BlendMode;->DST_OUT:Landroid/graphics/BlendMode;

    return-object p0

    .line 51
    :pswitch_4c  #0x8
    sget-object p0, Landroid/graphics/BlendMode;->SRC_OUT:Landroid/graphics/BlendMode;

    return-object p0

    .line 49
    :pswitch_4f  #0x7
    sget-object p0, Landroid/graphics/BlendMode;->DST_IN:Landroid/graphics/BlendMode;

    return-object p0

    .line 47
    :pswitch_52  #0x6
    sget-object p0, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    return-object p0

    .line 45
    :pswitch_55  #0x5
    sget-object p0, Landroid/graphics/BlendMode;->DST_OVER:Landroid/graphics/BlendMode;

    return-object p0

    .line 43
    :pswitch_58  #0x4
    sget-object p0, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    return-object p0

    .line 41
    :pswitch_5b  #0x3
    sget-object p0, Landroid/graphics/BlendMode;->DST:Landroid/graphics/BlendMode;

    return-object p0

    .line 39
    :pswitch_5e  #0x2
    sget-object p0, Landroid/graphics/BlendMode;->SRC:Landroid/graphics/BlendMode;

    return-object p0

    .line 37
    :pswitch_61  #0x1
    sget-object p0, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    return-object p0

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_61  #00000001
        :pswitch_5e  #00000002
        :pswitch_5b  #00000003
        :pswitch_58  #00000004
        :pswitch_55  #00000005
        :pswitch_52  #00000006
        :pswitch_4f  #00000007
        :pswitch_4c  #00000008
        :pswitch_49  #00000009
        :pswitch_46  #0000000a
        :pswitch_43  #0000000b
        :pswitch_40  #0000000c
        :pswitch_3d  #0000000d
        :pswitch_3a  #0000000e
        :pswitch_37  #0000000f
        :pswitch_34  #00000010
        :pswitch_31  #00000011
        :pswitch_2e  #00000012
        :pswitch_2b  #00000013
        :pswitch_28  #00000014
        :pswitch_25  #00000015
        :pswitch_22  #00000016
        :pswitch_1f  #00000017
        :pswitch_1c  #00000018
        :pswitch_19  #00000019
        :pswitch_16  #0000001a
        :pswitch_13  #0000001b
        :pswitch_10  #0000001c
        :pswitch_d  #0000001d
    .end packed-switch
.end method

.method static obtainPorterDuffFromCompat(Landroidx/core/graphics/BlendModeCompat;)Landroid/graphics/PorterDuff$Mode;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blendModeCompat"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_45

    .line 102
    sget-object v1, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_46

    return-object v0

    .line 139
    :pswitch_f  #0x12
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 137
    :pswitch_12  #0x11
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 135
    :pswitch_15  #0x10
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->OVERLAY:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 133
    :pswitch_18  #0xf
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 131
    :pswitch_1b  #0xe
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 128
    :pswitch_1e  #0xd
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 126
    :pswitch_21  #0xc
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 124
    :pswitch_24  #0xb
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 122
    :pswitch_27  #0xa
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 120
    :pswitch_2a  #0x9
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 118
    :pswitch_2d  #0x8
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 116
    :pswitch_30  #0x7
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 114
    :pswitch_33  #0x6
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 112
    :pswitch_36  #0x5
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 110
    :pswitch_39  #0x4
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 108
    :pswitch_3c  #0x3
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 106
    :pswitch_3f  #0x2
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 104
    :pswitch_42  #0x1
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :cond_45
    return-object v0

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_42  #00000001
        :pswitch_3f  #00000002
        :pswitch_3c  #00000003
        :pswitch_39  #00000004
        :pswitch_36  #00000005
        :pswitch_33  #00000006
        :pswitch_30  #00000007
        :pswitch_2d  #00000008
        :pswitch_2a  #00000009
        :pswitch_27  #0000000a
        :pswitch_24  #0000000b
        :pswitch_21  #0000000c
        :pswitch_1e  #0000000d
        :pswitch_1b  #0000000e
        :pswitch_18  #0000000f
        :pswitch_15  #00000010
        :pswitch_12  #00000011
        :pswitch_f  #00000012
    .end packed-switch
.end method
