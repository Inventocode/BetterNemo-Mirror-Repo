.class final Ljxl/biff/formula/Function;
.super Ljava/lang/Object;
.source "Function.java"


# static fields
.field public static final ATTRIBUTE:Ljxl/biff/formula/Function;

.field public static final IF:Ljxl/biff/formula/Function;

.field public static final SUM:Ljxl/biff/formula/Function;

.field public static final SUMPRODUCT:Ljxl/biff/formula/Function;

.field public static final UNKNOWN:Ljxl/biff/formula/Function;

.field private static functions:[Ljxl/biff/formula/Function;


# instance fields
.field private final code:I

.field private final name:Ljava/lang/String;

.field private final numArgs:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 34
    const-class v0, Ljxl/biff/formula/Function;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    const/4 v0, 0x0

    new-array v1, v0, [Ljxl/biff/formula/Function;

    .line 56
    sput-object v1, Ljxl/biff/formula/Function;->functions:[Ljxl/biff/formula/Function;

    .line 180
    new-instance v1, Ljxl/biff/formula/Function;

    const-string v2, "count"

    const/16 v3, 0xff

    invoke-direct {v1, v0, v2, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 182
    new-instance v1, Ljxl/biff/formula/Function;

    const/4 v2, 0x1

    const-string v4, ""

    invoke-direct {v1, v2, v4, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    sput-object v1, Ljxl/biff/formula/Function;->ATTRIBUTE:Ljxl/biff/formula/Function;

    .line 183
    new-instance v1, Ljxl/biff/formula/Function;

    const/4 v5, 0x2

    const-string v6, "isna"

    invoke-direct {v1, v5, v6, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 185
    new-instance v1, Ljxl/biff/formula/Function;

    const/4 v6, 0x3

    const-string v7, "iserror"

    invoke-direct {v1, v6, v7, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 187
    new-instance v1, Ljxl/biff/formula/Function;

    const/4 v7, 0x4

    const-string v8, "sum"

    invoke-direct {v1, v7, v8, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    sput-object v1, Ljxl/biff/formula/Function;->SUM:Ljxl/biff/formula/Function;

    .line 189
    new-instance v1, Ljxl/biff/formula/Function;

    const/4 v8, 0x5

    const-string v9, "average"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 191
    new-instance v1, Ljxl/biff/formula/Function;

    const/4 v8, 0x6

    const-string v9, "min"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 193
    new-instance v1, Ljxl/biff/formula/Function;

    const/4 v8, 0x7

    const-string v9, "max"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 195
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x8

    const-string v9, "row"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 197
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x9

    const-string v9, "column"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 199
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xa

    const-string v9, "na"

    invoke-direct {v1, v8, v9, v0}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 201
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xb

    const-string v9, "npv"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 203
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xc

    const-string v9, "stdev"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 205
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xd

    const-string v9, "dollar"

    invoke-direct {v1, v8, v9, v5}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 207
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xe

    const-string v9, "fixed"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 209
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xf

    const-string v9, "sin"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 211
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x10

    const-string v9, "cos"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 213
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x11

    const-string v9, "tan"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 215
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x12

    const-string v9, "atan"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 217
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x13

    const-string v9, "pi"

    invoke-direct {v1, v8, v9, v0}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 219
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x14

    const-string v9, "sqrt"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 221
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x15

    const-string v9, "exp"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 223
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x16

    const-string v9, "ln"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 225
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x17

    const-string v9, "log10"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 227
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x18

    const-string v9, "abs"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 229
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x19

    const-string v9, "int"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 231
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x1a

    const-string v9, "sign"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 233
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x1b

    const-string v9, "round"

    invoke-direct {v1, v8, v9, v5}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 235
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x1c

    const-string v9, "lookup"

    invoke-direct {v1, v8, v9, v5}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 237
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x1d

    const-string v9, "index"

    invoke-direct {v1, v8, v9, v6}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 239
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x1e

    const-string v9, "rept"

    invoke-direct {v1, v8, v9, v5}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 240
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x1f

    const-string v9, "mid"

    invoke-direct {v1, v8, v9, v6}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 242
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x20

    const-string v9, "len"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 244
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x21

    const-string v9, "value"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 246
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x22

    const-string v9, "true"

    invoke-direct {v1, v8, v9, v0}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 248
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x23

    const-string v9, "false"

    invoke-direct {v1, v8, v9, v0}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 250
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x24

    const-string v9, "and"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 252
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x25

    const-string v9, "or"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 254
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x26

    const-string v9, "not"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 256
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x27

    const-string v9, "mod"

    invoke-direct {v1, v8, v9, v5}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 258
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x28

    const-string v9, "dcount"

    invoke-direct {v1, v8, v9, v6}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 260
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x29

    const-string v9, "dsum"

    invoke-direct {v1, v8, v9, v6}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 262
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x2a

    const-string v9, "daverage"

    invoke-direct {v1, v8, v9, v6}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 264
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x2b

    const-string v9, "dmin"

    invoke-direct {v1, v8, v9, v6}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 266
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x2c

    const-string v9, "dmax"

    invoke-direct {v1, v8, v9, v6}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 268
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x2d

    const-string v9, "dstdev"

    invoke-direct {v1, v8, v9, v6}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 270
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x2e

    const-string v9, "var"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 272
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x2f

    const-string v9, "dvar"

    invoke-direct {v1, v8, v9, v6}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 274
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x30

    const-string v9, "text"

    invoke-direct {v1, v8, v9, v5}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 276
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x31

    const-string v9, "linest"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 278
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x32

    const-string v9, "trend"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 280
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x33

    const-string v9, "logest"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 282
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x34

    const-string v9, "growth"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 286
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x38

    const-string v9, "pv"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 288
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x39

    const-string v9, "fv"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 290
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x3a

    const-string v9, "nper"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 292
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x3b

    const-string v9, "pmt"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 294
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x3c

    const-string v9, "rate"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 298
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x3f

    const-string v9, "rand"

    invoke-direct {v1, v8, v9, v0}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 300
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x40

    const-string v9, "match"

    invoke-direct {v1, v8, v9, v6}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 302
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x41

    const-string v9, "date"

    invoke-direct {v1, v8, v9, v6}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 304
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x42

    const-string v9, "time"

    invoke-direct {v1, v8, v9, v6}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 306
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x43

    const-string v9, "day"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 308
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x44

    const-string v9, "month"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 310
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x45

    const-string v9, "year"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 312
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x46

    const-string v9, "weekday"

    invoke-direct {v1, v8, v9, v5}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 314
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x47

    const-string v9, "hour"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 316
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x48

    const-string v9, "minute"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 318
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x49

    const-string v9, "second"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 320
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x4a

    const-string v9, "now"

    invoke-direct {v1, v8, v9, v0}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 322
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x4b

    const-string v9, "areas"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 324
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x4c

    const-string v9, "rows"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 326
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x4d

    const-string v9, "columns"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 328
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x4e

    const-string v9, "offset"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 333
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x52

    const-string v9, "search"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 334
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x53

    const-string v9, "transpose"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 336
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x54

    const-string v9, "error"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 339
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x56

    const-string v9, "type"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 351
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x61

    const-string v9, "atan2"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 353
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x62

    const-string v9, "asin"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 355
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x63

    const-string v9, "acos"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 357
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x64

    const-string v9, "choose"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 359
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x65

    const-string v9, "hlookup"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 361
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x66

    const-string v9, "vlookup"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 365
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x69

    const-string v9, "isref"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 370
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x6d

    const-string v9, "log"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 373
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x6f

    const-string v9, "char"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 375
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x70

    const-string v9, "lower"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 377
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x71

    const-string v9, "upper"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 379
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x72

    const-string v9, "proper"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 381
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x73

    const-string v9, "left"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 383
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x74

    const-string v9, "right"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 385
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x75

    const-string v9, "exact"

    invoke-direct {v1, v8, v9, v5}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 387
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x76

    const-string v9, "trim"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 389
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x77

    const-string v9, "replace"

    invoke-direct {v1, v8, v9, v7}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 391
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x78

    const-string v9, "substitute"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 393
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x79

    const-string v9, "code"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 397
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x7c

    const-string v9, "find"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 399
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x7d

    const-string v9, "cell"

    invoke-direct {v1, v8, v9, v5}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 401
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x7e

    const-string v9, "iserr"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 403
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x7f

    const-string v9, "istext"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 405
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x80

    const-string v9, "isnumber"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 407
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x81

    const-string v9, "isblank"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 409
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x82

    const-string v9, "t"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 411
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x83

    const-string v9, "n"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 421
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x8c

    const-string v9, "datevalue"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 423
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x8d

    const-string v9, "timevalue"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 425
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x8e

    const-string v9, "sln"

    invoke-direct {v1, v8, v9, v6}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 427
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x8f

    const-string v9, "syd"

    invoke-direct {v1, v8, v9, v6}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 429
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x90

    const-string v9, "ddb"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 434
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x94

    const-string v9, "indirect"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 456
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xa2

    const-string v9, "clean"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 458
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xa3

    const-string v9, "mdeterm"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 460
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xa4

    const-string v9, "minverse"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 462
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xa5

    const-string v9, "mmult"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 466
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xa7

    const-string v9, "ipmt"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 468
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xa8

    const-string v9, "ppmt"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 470
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xa9

    const-string v9, "counta"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 472
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xb7

    const-string v9, "product"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 474
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xb8

    const-string v9, "fact"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 482
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xbd

    const-string v9, "dproduct"

    invoke-direct {v1, v8, v9, v6}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 484
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xbe

    const-string v9, "isnontext"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 488
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xc1

    const-string v9, "stdevp"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 490
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xc2

    const-string v9, "varp"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 492
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xc3

    const-string v9, "dstdevp"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 494
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xc4

    const-string v9, "dvarp"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 496
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xc5

    const-string v9, "trunc"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 498
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xc6

    const-string v9, "islogical"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 500
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xc7

    const-string v9, "dcounta"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 502
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xcd

    const-string v9, "findb"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 504
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xce

    const-string v9, "searchb"

    invoke-direct {v1, v8, v9, v6}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 506
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xcf

    const-string v9, "replaceb"

    invoke-direct {v1, v8, v9, v7}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 508
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xd0

    const-string v9, "leftb"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 510
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xd1

    const-string v9, "rightb"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 512
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xd2

    const-string v9, "midb"

    invoke-direct {v1, v8, v9, v6}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 514
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xd3

    const-string v9, "lenb"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 516
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xd4

    const-string v9, "roundup"

    invoke-direct {v1, v8, v9, v5}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 518
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xd5

    const-string v9, "rounddown"

    invoke-direct {v1, v8, v9, v5}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 520
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xd8

    const-string v9, "rank"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 522
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xdb

    const-string v9, "address"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 524
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xdc

    const-string v9, "days360"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 526
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xdd

    const-string v9, "today"

    invoke-direct {v1, v8, v9, v0}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 528
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xde

    const-string v9, "vdb"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 530
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xe3

    const-string v9, "median"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 532
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xe4

    const-string v9, "sumproduct"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    sput-object v1, Ljxl/biff/formula/Function;->SUMPRODUCT:Ljxl/biff/formula/Function;

    .line 534
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xe5

    const-string v9, "sinh"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 536
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xe6

    const-string v9, "cosh"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 538
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xe7

    const-string v9, "tanh"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 540
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xe8

    const-string v9, "asinh"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 542
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xe9

    const-string v9, "acosh"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 544
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xea

    const-string v9, "atanh"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 546
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0xf4

    const-string v9, "info"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 548
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x10d

    const-string v9, "avedev"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 550
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x10e

    const-string v9, "betadist"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 552
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x10f

    const-string v9, "gammaln"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 554
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x110

    const-string v9, "betainv"

    invoke-direct {v1, v8, v9, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 556
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x111

    const-string v9, "binomdist"

    invoke-direct {v1, v8, v9, v7}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 558
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x112

    const-string v9, "chidist"

    invoke-direct {v1, v8, v9, v5}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 560
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x113

    const-string v9, "chiinv"

    invoke-direct {v1, v8, v9, v5}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 562
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x114

    const-string v9, "combin"

    invoke-direct {v1, v8, v9, v5}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 564
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x115

    const-string v9, "confidence"

    invoke-direct {v1, v8, v9, v6}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 566
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x116

    const-string v9, "critbinom"

    invoke-direct {v1, v8, v9, v6}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 568
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x117

    const-string v9, "even"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 570
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x118

    const-string v9, "expondist"

    invoke-direct {v1, v8, v9, v6}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 572
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x119

    const-string v9, "fdist"

    invoke-direct {v1, v8, v9, v6}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 574
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x11a

    const-string v9, "finv"

    invoke-direct {v1, v8, v9, v6}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 576
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x11b

    const-string v9, "fisher"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 578
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x11c

    const-string v9, "fisherinv"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 580
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x11d

    const-string v9, "floor"

    invoke-direct {v1, v8, v9, v5}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 582
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x11e

    const-string v9, "gammadist"

    invoke-direct {v1, v8, v9, v7}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 584
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x11f

    const-string v9, "gammainv"

    invoke-direct {v1, v8, v9, v6}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 586
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x120

    const-string v9, "ceiling"

    invoke-direct {v1, v8, v9, v5}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 588
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x121

    const-string v9, "hypgeomdist"

    invoke-direct {v1, v8, v9, v7}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 590
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x122

    const-string v9, "lognormdist"

    invoke-direct {v1, v8, v9, v6}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 592
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x123

    const-string v9, "loginv"

    invoke-direct {v1, v8, v9, v6}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 594
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x124

    const-string v9, "negbinomdist"

    invoke-direct {v1, v8, v9, v6}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 596
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x125

    const-string v9, "normdist"

    invoke-direct {v1, v8, v9, v7}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 598
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x126

    const-string v9, "normsdist"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 600
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x127

    const-string v9, "norminv"

    invoke-direct {v1, v8, v9, v6}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 602
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x128

    const-string v9, "normsinv"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 604
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x129

    const-string v9, "standardize"

    invoke-direct {v1, v8, v9, v6}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 606
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x12a

    const-string v9, "odd"

    invoke-direct {v1, v8, v9, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 608
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x12b

    const-string v9, "permut"

    invoke-direct {v1, v8, v9, v5}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 610
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x12c

    const-string v9, "poisson"

    invoke-direct {v1, v8, v9, v6}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 612
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v8, 0x12d

    const-string v9, "tdist"

    invoke-direct {v1, v8, v9, v6}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 614
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v6, 0x12e

    const-string v8, "weibull"

    invoke-direct {v1, v6, v8, v7}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 616
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v6, 0x12f

    const-string v7, "sumxmy2"

    invoke-direct {v1, v6, v7, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 618
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v6, 0x130

    const-string v7, "sumx2my2"

    invoke-direct {v1, v6, v7, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 620
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v6, 0x131

    const-string v7, "sumx2py2"

    invoke-direct {v1, v6, v7, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 622
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v6, 0x132

    const-string v7, "chitest"

    invoke-direct {v1, v6, v7, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 624
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v6, 0x133

    const-string v7, "correl"

    invoke-direct {v1, v6, v7, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 626
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v6, 0x134

    const-string v7, "covar"

    invoke-direct {v1, v6, v7, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 628
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v6, 0x135

    const-string v7, "forecast"

    invoke-direct {v1, v6, v7, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 630
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v6, 0x136

    const-string v7, "ftest"

    invoke-direct {v1, v6, v7, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 632
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v6, 0x137

    const-string v7, "intercept"

    invoke-direct {v1, v6, v7, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 634
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v6, 0x138

    const-string v7, "pearson"

    invoke-direct {v1, v6, v7, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 636
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v6, 0x139

    const-string v7, "rsq"

    invoke-direct {v1, v6, v7, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 638
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v6, 0x13a

    const-string v7, "steyx"

    invoke-direct {v1, v6, v7, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 640
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v6, 0x13b

    const-string v7, "slope"

    invoke-direct {v1, v6, v7, v5}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 642
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v6, 0x13c

    const-string v7, "ttest"

    invoke-direct {v1, v6, v7, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 644
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v6, 0x13d

    const-string v7, "prob"

    invoke-direct {v1, v6, v7, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 646
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v6, 0x13e

    const-string v7, "devsq"

    invoke-direct {v1, v6, v7, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 648
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v6, 0x13f

    const-string v7, "geomean"

    invoke-direct {v1, v6, v7, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 650
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v6, 0x140

    const-string v7, "harmean"

    invoke-direct {v1, v6, v7, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 652
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v6, 0x141

    const-string v7, "sumsq"

    invoke-direct {v1, v6, v7, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 654
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v6, 0x142

    const-string v7, "kurt"

    invoke-direct {v1, v6, v7, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 656
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v6, 0x143

    const-string v7, "skew"

    invoke-direct {v1, v6, v7, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 658
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v6, 0x144

    const-string v7, "ztest"

    invoke-direct {v1, v6, v7, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 660
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v6, 0x145

    const-string v7, "large"

    invoke-direct {v1, v6, v7, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 662
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v6, 0x146

    const-string v7, "small"

    invoke-direct {v1, v6, v7, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 664
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v6, 0x147

    const-string v7, "quartile"

    invoke-direct {v1, v6, v7, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 666
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v6, 0x148

    const-string v7, "percentile"

    invoke-direct {v1, v6, v7, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 668
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v6, 0x149

    const-string v7, "percentrank"

    invoke-direct {v1, v6, v7, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 670
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v6, 0x14a

    const-string v7, "mode"

    invoke-direct {v1, v6, v7, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 672
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v6, 0x14b

    const-string v7, "trimmean"

    invoke-direct {v1, v6, v7, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 674
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v6, 0x14c

    const-string v7, "tinv"

    invoke-direct {v1, v6, v7, v5}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 676
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v6, 0x150

    const-string v7, "concatenate"

    invoke-direct {v1, v6, v7, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 678
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v6, 0x151

    const-string v7, "power"

    invoke-direct {v1, v6, v7, v5}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 680
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v6, 0x156

    const-string v7, "radians"

    invoke-direct {v1, v6, v7, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 682
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v6, 0x157

    const-string v7, "degrees"

    invoke-direct {v1, v6, v7, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 684
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v6, 0x158

    const-string v7, "subtotal"

    invoke-direct {v1, v6, v7, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 686
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v6, 0x159

    const-string v7, "sumif"

    invoke-direct {v1, v6, v7, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 688
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v6, 0x15a

    const-string v7, "countif"

    invoke-direct {v1, v6, v7, v5}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 690
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v6, 0x15b

    const-string v7, "countblank"

    invoke-direct {v1, v6, v7, v2}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 692
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v2, 0x167

    const-string v6, "hyperlink"

    invoke-direct {v1, v2, v6, v5}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 694
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v2, 0x169

    const-string v5, "averagea"

    invoke-direct {v1, v2, v5, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 696
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v2, 0x16a

    const-string v5, "maxa"

    invoke-direct {v1, v2, v5, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 698
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v2, 0x16b

    const-string v5, "mina"

    invoke-direct {v1, v2, v5, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 700
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v2, 0x16c

    const-string v5, "stdevpa"

    invoke-direct {v1, v2, v5, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 702
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v2, 0x16d

    const-string v5, "varpa"

    invoke-direct {v1, v2, v5, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 704
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v2, 0x16e

    const-string v5, "stdeva"

    invoke-direct {v1, v2, v5, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 706
    new-instance v1, Ljxl/biff/formula/Function;

    const/16 v2, 0x16f

    const-string v5, "vara"

    invoke-direct {v1, v2, v5, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    .line 711
    new-instance v1, Ljxl/biff/formula/Function;

    const v2, 0xfffe

    const-string v5, "if"

    invoke-direct {v1, v2, v5, v3}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    sput-object v1, Ljxl/biff/formula/Function;->IF:Ljxl/biff/formula/Function;

    .line 715
    new-instance v1, Ljxl/biff/formula/Function;

    const v2, 0xffff

    invoke-direct {v1, v2, v4, v0}, Ljxl/biff/formula/Function;-><init>(ILjava/lang/String;I)V

    sput-object v1, Ljxl/biff/formula/Function;->UNKNOWN:Ljxl/biff/formula/Function;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;I)V
    .registers 5

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Ljxl/biff/formula/Function;->code:I

    .line 69
    iput-object p2, p0, Ljxl/biff/formula/Function;->name:Ljava/lang/String;

    .line 70
    iput p3, p0, Ljxl/biff/formula/Function;->numArgs:I

    .line 73
    sget-object p1, Ljxl/biff/formula/Function;->functions:[Ljxl/biff/formula/Function;

    array-length p2, p1

    add-int/lit8 p2, p2, 0x1

    new-array p2, p2, [Ljxl/biff/formula/Function;

    .line 74
    array-length p3, p1

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    sget-object p1, Ljxl/biff/formula/Function;->functions:[Ljxl/biff/formula/Function;

    array-length p1, p1

    aput-object p0, p2, p1

    .line 76
    sput-object p2, Ljxl/biff/formula/Function;->functions:[Ljxl/biff/formula/Function;

    return-void
.end method

.method public static getFunction(I)Ljxl/biff/formula/Function;
    .registers 4

    const/4 v0, 0x0

    .line 141
    :goto_1
    sget-object v1, Ljxl/biff/formula/Function;->functions:[Ljxl/biff/formula/Function;

    array-length v2, v1

    if-ge v0, v2, :cond_12

    .line 143
    aget-object v2, v1, v0

    iget v2, v2, Ljxl/biff/formula/Function;->code:I

    if-ne v2, p0, :cond_f

    .line 145
    aget-object p0, v1, v0

    goto :goto_13

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    const/4 p0, 0x0

    :goto_13
    if-eqz p0, :cond_16

    goto :goto_18

    .line 150
    :cond_16
    sget-object p0, Ljxl/biff/formula/Function;->UNKNOWN:Ljxl/biff/formula/Function;

    :goto_18
    return-object p0
.end method

.method public static getFunction(Ljava/lang/String;Ljxl/WorkbookSettings;)Ljxl/biff/formula/Function;
    .registers 2

    .line 162
    invoke-virtual {p1}, Ljxl/WorkbookSettings;->getFunctionNames()Ljxl/biff/formula/FunctionNames;

    move-result-object p1

    .line 163
    invoke-virtual {p1, p0}, Ljxl/biff/formula/FunctionNames;->getFunction(Ljava/lang/String;)Ljxl/biff/formula/Function;

    move-result-object p0

    if-eqz p0, :cond_b

    goto :goto_d

    .line 164
    :cond_b
    sget-object p0, Ljxl/biff/formula/Function;->UNKNOWN:Ljxl/biff/formula/Function;

    :goto_d
    return-object p0
.end method

.method static getFunctions()[Ljxl/biff/formula/Function;
    .registers 1

    .line 175
    sget-object v0, Ljxl/biff/formula/Function;->functions:[Ljxl/biff/formula/Function;

    return-object v0
.end method


# virtual methods
.method getCode()I
    .registers 2

    .line 96
    iget v0, p0, Ljxl/biff/formula/Function;->code:I

    return v0
.end method

.method getName(Ljxl/WorkbookSettings;)Ljava/lang/String;
    .registers 2

    .line 117
    invoke-virtual {p1}, Ljxl/WorkbookSettings;->getFunctionNames()Ljxl/biff/formula/FunctionNames;

    move-result-object p1

    .line 118
    invoke-virtual {p1, p0}, Ljxl/biff/formula/FunctionNames;->getName(Ljxl/biff/formula/Function;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getNumArgs()I
    .registers 2

    .line 128
    iget v0, p0, Ljxl/biff/formula/Function;->numArgs:I

    return v0
.end method

.method getPropertyName()Ljava/lang/String;
    .registers 2

    .line 107
    iget-object v0, p0, Ljxl/biff/formula/Function;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 86
    iget v0, p0, Ljxl/biff/formula/Function;->code:I

    return v0
.end method
