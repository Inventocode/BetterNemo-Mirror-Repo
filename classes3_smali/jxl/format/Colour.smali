.class public Ljxl/format/Colour;
.super Ljava/lang/Object;
.source "Colour.java"


# static fields
.field public static final AUTOMATIC:Ljxl/format/Colour;

.field public static final BLACK:Ljxl/format/Colour;

.field public static final BLUE:Ljxl/format/Colour;

.field public static final DEFAULT_BACKGROUND:Ljxl/format/Colour;

.field public static final DEFAULT_BACKGROUND1:Ljxl/format/Colour;

.field public static final GRAY_25:Ljxl/format/Colour;

.field public static final GREY_25_PERCENT:Ljxl/format/Colour;

.field public static final GREY_50_PERCENT:Ljxl/format/Colour;

.field public static final GREY_80_PERCENT:Ljxl/format/Colour;

.field public static final LIGHT_BLUE:Ljxl/format/Colour;

.field public static final PALETTE_BLACK:Ljxl/format/Colour;

.field public static final UNKNOWN:Ljxl/format/Colour;

.field public static final VERY_LIGHT_YELLOW:Ljxl/format/Colour;

.field private static colours:[Ljxl/format/Colour;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 19

    const/4 v0, 0x0

    new-array v0, v0, [Ljxl/format/Colour;

    .line 48
    sput-object v0, Ljxl/format/Colour;->colours:[Ljxl/format/Colour;

    .line 168
    new-instance v0, Ljxl/format/Colour;

    const/16 v2, 0x7fee

    const-string v3, "unknown"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->UNKNOWN:Ljxl/format/Colour;

    .line 170
    new-instance v0, Ljxl/format/Colour;

    const/16 v8, 0x7fff

    const-string v9, "black"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    .line 172
    new-instance v1, Ljxl/format/Colour;

    const/16 v2, 0x9

    const-string v3, "white"

    const/16 v4, 0xff

    const/16 v5, 0xff

    const/16 v6, 0xff

    invoke-direct/range {v1 .. v6}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 174
    new-instance v0, Ljxl/format/Colour;

    const/4 v8, 0x0

    const-string v9, "default background"

    const/16 v10, 0xff

    const/16 v11, 0xff

    const/16 v12, 0xff

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->DEFAULT_BACKGROUND1:Ljxl/format/Colour;

    .line 176
    new-instance v0, Ljxl/format/Colour;

    const/16 v2, 0xc0

    const-string v3, "default background"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->DEFAULT_BACKGROUND:Ljxl/format/Colour;

    .line 178
    new-instance v0, Ljxl/format/Colour;

    const/16 v8, 0x8

    const-string v9, "black"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->PALETTE_BLACK:Ljxl/format/Colour;

    .line 183
    new-instance v1, Ljxl/format/Colour;

    const/16 v2, 0xa

    const-string v3, "red"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 184
    new-instance v7, Ljxl/format/Colour;

    const/16 v8, 0xb

    const-string v9, "bright green"

    const/4 v10, 0x0

    const/16 v11, 0xff

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 185
    new-instance v6, Ljxl/format/Colour;

    const/16 v1, 0xc

    const-string v2, "blue"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xff

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v6, Ljxl/format/Colour;->BLUE:Ljxl/format/Colour;

    new-instance v7, Ljxl/format/Colour;

    const/16 v8, 0xd

    const-string v9, "yellow"

    const/16 v10, 0xff

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 186
    new-instance v0, Ljxl/format/Colour;

    const/16 v1, 0xe

    const-string v2, "pink"

    const/16 v3, 0xff

    invoke-direct/range {v0 .. v5}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 187
    new-instance v6, Ljxl/format/Colour;

    const/16 v7, 0xf

    const-string v8, "turquoise"

    const/4 v9, 0x0

    invoke-direct/range {v6 .. v11}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 188
    new-instance v0, Ljxl/format/Colour;

    const/16 v1, 0x10

    const-string v2, "dark red"

    const/16 v3, 0x80

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 189
    new-instance v6, Ljxl/format/Colour;

    const/16 v7, 0x11

    const-string v8, "green"

    const/16 v10, 0x80

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 190
    new-instance v0, Ljxl/format/Colour;

    const/16 v1, 0x12

    const-string v2, "dark blue"

    const/4 v3, 0x0

    const/16 v5, 0x80

    invoke-direct/range {v0 .. v5}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 191
    new-instance v6, Ljxl/format/Colour;

    const/16 v7, 0x13

    const-string v8, "dark yellow"

    const/16 v9, 0x80

    invoke-direct/range {v6 .. v11}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 192
    new-instance v0, Ljxl/format/Colour;

    const/16 v1, 0x14

    const-string v2, "violet"

    const/16 v3, 0x80

    const/16 v4, 0x80

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 193
    new-instance v6, Ljxl/format/Colour;

    const/16 v7, 0x15

    const-string v8, "teal"

    const/4 v9, 0x0

    const/16 v11, 0x80

    invoke-direct/range {v6 .. v11}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 194
    new-instance v6, Ljxl/format/Colour;

    const/16 v1, 0x16

    const-string v2, "grey 25%"

    const/16 v3, 0xc0

    const/16 v4, 0xc0

    const/16 v5, 0xc0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v6, Ljxl/format/Colour;->GREY_25_PERCENT:Ljxl/format/Colour;

    .line 195
    new-instance v0, Ljxl/format/Colour;

    const/16 v8, 0x17

    const-string v9, "grey 50%"

    const/16 v12, 0x80

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->GREY_50_PERCENT:Ljxl/format/Colour;

    .line 196
    new-instance v13, Ljxl/format/Colour;

    const/16 v14, 0x18

    const-string v15, "periwinkle%"

    const/16 v16, 0x99

    const/16 v17, 0x99

    const/16 v18, 0xff

    invoke-direct/range {v13 .. v18}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 197
    new-instance v0, Ljxl/format/Colour;

    const/16 v1, 0x19

    const-string v2, "plum"

    const/16 v3, 0x99

    const/16 v4, 0x33

    const/16 v5, 0x66

    invoke-direct/range {v0 .. v5}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 198
    new-instance v7, Ljxl/format/Colour;

    const/16 v8, 0x1a

    const-string v9, "ivory"

    const/16 v10, 0xff

    const/16 v11, 0xff

    const/16 v12, 0xcc

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 199
    new-instance v0, Ljxl/format/Colour;

    const/16 v1, 0x1b

    const-string v2, "light turquoise"

    const/16 v3, 0xcc

    const/16 v4, 0xff

    const/16 v5, 0xff

    invoke-direct/range {v0 .. v5}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 200
    new-instance v7, Ljxl/format/Colour;

    const/16 v8, 0x1c

    const-string v9, "dark purple"

    const/16 v10, 0x66

    const/4 v11, 0x0

    const/16 v12, 0x66

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 201
    new-instance v0, Ljxl/format/Colour;

    const/16 v1, 0x1d

    const-string v2, "coral"

    const/16 v3, 0xff

    const/16 v4, 0x80

    const/16 v5, 0x80

    invoke-direct/range {v0 .. v5}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 202
    new-instance v7, Ljxl/format/Colour;

    const/16 v8, 0x1e

    const-string v9, "ocean blue"

    const/4 v10, 0x0

    const/16 v11, 0x66

    const/16 v12, 0xcc

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 203
    new-instance v0, Ljxl/format/Colour;

    const/16 v1, 0x1f

    const-string v2, "ice blue"

    const/16 v3, 0xcc

    const/16 v4, 0xcc

    const/16 v5, 0xff

    invoke-direct/range {v0 .. v5}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 204
    new-instance v7, Ljxl/format/Colour;

    const/16 v8, 0x20

    const-string v9, "dark blue"

    const/4 v11, 0x0

    const/16 v12, 0x80

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 205
    new-instance v0, Ljxl/format/Colour;

    const/16 v1, 0x21

    const-string v2, "pink"

    const/16 v3, 0xff

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 206
    new-instance v7, Ljxl/format/Colour;

    const/16 v8, 0x22

    const-string v9, "yellow"

    const/16 v10, 0xff

    const/16 v11, 0xff

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 207
    new-instance v0, Ljxl/format/Colour;

    const/16 v1, 0x23

    const-string v2, "turqoise"

    const/4 v3, 0x0

    const/16 v4, 0xff

    invoke-direct/range {v0 .. v5}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 208
    new-instance v7, Ljxl/format/Colour;

    const/16 v8, 0x24

    const-string v9, "violet"

    const/16 v10, 0x80

    const/4 v11, 0x0

    const/16 v12, 0x80

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 209
    new-instance v0, Ljxl/format/Colour;

    const/16 v1, 0x25

    const-string v2, "dark red"

    const/16 v3, 0x80

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 210
    new-instance v7, Ljxl/format/Colour;

    const/16 v8, 0x26

    const-string v9, "teal"

    const/4 v10, 0x0

    const/16 v11, 0x80

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 211
    new-instance v0, Ljxl/format/Colour;

    const/16 v1, 0x27

    const-string v2, "blue"

    const/4 v3, 0x0

    const/16 v5, 0xff

    invoke-direct/range {v0 .. v5}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 212
    new-instance v7, Ljxl/format/Colour;

    const/16 v8, 0x28

    const-string v9, "sky blue"

    const/16 v11, 0xcc

    const/16 v12, 0xff

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 213
    new-instance v0, Ljxl/format/Colour;

    const/16 v1, 0x29

    const-string v2, "light turquoise"

    const/16 v3, 0xcc

    const/16 v4, 0xff

    invoke-direct/range {v0 .. v5}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 215
    new-instance v7, Ljxl/format/Colour;

    const/16 v8, 0x2a

    const-string v9, "light green"

    const/16 v10, 0xcc

    const/16 v11, 0xff

    const/16 v12, 0xcc

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 216
    new-instance v7, Ljxl/format/Colour;

    const/16 v1, 0x2b

    const-string v2, "very light yellow"

    const/16 v3, 0xff

    const/16 v5, 0x99

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v7, Ljxl/format/Colour;->VERY_LIGHT_YELLOW:Ljxl/format/Colour;

    .line 218
    new-instance v8, Ljxl/format/Colour;

    const/16 v9, 0x2c

    const-string v10, "pale blue"

    const/16 v11, 0x99

    const/16 v13, 0xff

    invoke-direct/range {v8 .. v13}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 219
    new-instance v0, Ljxl/format/Colour;

    const/16 v1, 0x2d

    const-string v2, "rose"

    const/16 v4, 0x99

    const/16 v5, 0xcc

    invoke-direct/range {v0 .. v5}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 220
    new-instance v7, Ljxl/format/Colour;

    const/16 v8, 0x2e

    const-string v9, "lavender"

    const/16 v10, 0xcc

    const/16 v12, 0xff

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 221
    new-instance v0, Ljxl/format/Colour;

    const/16 v1, 0x2f

    const-string v2, "tan"

    const/16 v4, 0xcc

    const/16 v5, 0x99

    invoke-direct/range {v0 .. v5}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 222
    new-instance v0, Ljxl/format/Colour;

    const/16 v8, 0x30

    const-string v9, "light blue"

    const/16 v10, 0x33

    const/16 v11, 0x66

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->LIGHT_BLUE:Ljxl/format/Colour;

    .line 223
    new-instance v13, Ljxl/format/Colour;

    const/16 v14, 0x31

    const-string v15, "aqua"

    const/16 v16, 0x33

    const/16 v17, 0xcc

    const/16 v18, 0xcc

    invoke-direct/range {v13 .. v18}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 224
    new-instance v0, Ljxl/format/Colour;

    const/16 v1, 0x32

    const-string v2, "lime"

    const/16 v3, 0x99

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 225
    new-instance v7, Ljxl/format/Colour;

    const/16 v8, 0x33

    const-string v9, "gold"

    const/16 v10, 0xff

    const/16 v11, 0xcc

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 226
    new-instance v0, Ljxl/format/Colour;

    const/16 v1, 0x34

    const-string v2, "light orange"

    const/16 v3, 0xff

    const/16 v4, 0x99

    invoke-direct/range {v0 .. v5}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 228
    new-instance v7, Ljxl/format/Colour;

    const/16 v8, 0x35

    const-string v9, "orange"

    const/16 v11, 0x66

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 229
    new-instance v0, Ljxl/format/Colour;

    const/16 v1, 0x36

    const-string v2, "blue grey"

    const/16 v3, 0x66

    const/16 v4, 0x66

    const/16 v5, 0xcc

    invoke-direct/range {v0 .. v5}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 230
    new-instance v7, Ljxl/format/Colour;

    const/16 v8, 0x37

    const-string v9, "grey 40%"

    const/16 v10, 0x96

    const/16 v11, 0x96

    const/16 v12, 0x96

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 231
    new-instance v0, Ljxl/format/Colour;

    const/16 v1, 0x38

    const-string v2, "dark teal"

    const/4 v3, 0x0

    const/16 v4, 0x33

    const/16 v5, 0x66

    invoke-direct/range {v0 .. v5}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 232
    new-instance v7, Ljxl/format/Colour;

    const/16 v8, 0x39

    const-string v9, "sea green"

    const/16 v10, 0x33

    const/16 v11, 0x99

    const/16 v12, 0x66

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 233
    new-instance v0, Ljxl/format/Colour;

    const/16 v1, 0x3a

    const-string v2, "dark green"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 234
    new-instance v7, Ljxl/format/Colour;

    const/16 v8, 0x3b

    const-string v9, "olive green"

    const/16 v11, 0x33

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 235
    new-instance v0, Ljxl/format/Colour;

    const/16 v1, 0x3c

    const-string v2, "brown"

    const/16 v3, 0x99

    invoke-direct/range {v0 .. v5}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 236
    new-instance v7, Ljxl/format/Colour;

    const/16 v8, 0x3d

    const-string v9, "plum"

    const/16 v10, 0x99

    const/16 v12, 0x66

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 237
    new-instance v0, Ljxl/format/Colour;

    const/16 v1, 0x3e

    const-string v2, "indigo"

    const/16 v3, 0x33

    const/16 v5, 0x99

    invoke-direct/range {v0 .. v5}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    .line 238
    new-instance v0, Ljxl/format/Colour;

    const/16 v8, 0x3f

    const-string v9, "grey 80%"

    const/16 v10, 0x33

    const/16 v12, 0x33

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->GREY_80_PERCENT:Ljxl/format/Colour;

    .line 239
    new-instance v0, Ljxl/format/Colour;

    const/16 v14, 0x40

    const-string v15, "automatic"

    const/16 v16, 0xff

    const/16 v17, 0xff

    const/16 v18, 0xff

    move-object v13, v0

    invoke-direct/range {v13 .. v18}, Ljxl/format/Colour;-><init>(ILjava/lang/String;III)V

    sput-object v0, Ljxl/format/Colour;->AUTOMATIC:Ljxl/format/Colour;

    .line 244
    sput-object v6, Ljxl/format/Colour;->GRAY_25:Ljxl/format/Colour;

    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;III)V
    .registers 6

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Ljxl/format/Colour;->value:I

    .line 63
    new-instance p1, Ljxl/format/RGB;

    invoke-direct {p1, p3, p4, p5}, Ljxl/format/RGB;-><init>(III)V

    .line 65
    sget-object p1, Ljxl/format/Colour;->colours:[Ljxl/format/Colour;

    .line 66
    array-length p2, p1

    add-int/lit8 p2, p2, 0x1

    new-array p2, p2, [Ljxl/format/Colour;

    sput-object p2, Ljxl/format/Colour;->colours:[Ljxl/format/Colour;

    .line 67
    array-length p3, p1

    const/4 p4, 0x0

    invoke-static {p1, p4, p2, p4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    sget-object p2, Ljxl/format/Colour;->colours:[Ljxl/format/Colour;

    array-length p1, p1

    aput-object p0, p2, p1

    return-void
.end method

.method public static getInternalColour(I)Ljxl/format/Colour;
    .registers 4

    const/4 v0, 0x0

    .line 146
    :goto_1
    sget-object v1, Ljxl/format/Colour;->colours:[Ljxl/format/Colour;

    array-length v2, v1

    if-ge v0, v2, :cond_16

    .line 148
    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/format/Colour;->getValue()I

    move-result v1

    if-ne v1, p0, :cond_13

    .line 150
    sget-object p0, Ljxl/format/Colour;->colours:[Ljxl/format/Colour;

    aget-object p0, p0, v0

    return-object p0

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 154
    :cond_16
    sget-object p0, Ljxl/format/Colour;->UNKNOWN:Ljxl/format/Colour;

    return-object p0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 79
    iget v0, p0, Ljxl/format/Colour;->value:I

    return v0
.end method
