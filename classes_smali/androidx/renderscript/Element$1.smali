.class synthetic Landroidx/renderscript/Element$1;
.super Ljava/lang/Object;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/renderscript/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$androidx$renderscript$Element$DataKind:[I

.field static final synthetic $SwitchMap$androidx$renderscript$Element$DataType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 868
    invoke-static {}, Landroidx/renderscript/Element$DataKind;->values()[Landroidx/renderscript/Element$DataKind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/renderscript/Element$1;->$SwitchMap$androidx$renderscript$Element$DataKind:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Landroidx/renderscript/Element$DataKind;->PIXEL_LA:Landroidx/renderscript/Element$DataKind;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Landroidx/renderscript/Element$1;->$SwitchMap$androidx$renderscript$Element$DataKind:[I

    sget-object v3, Landroidx/renderscript/Element$DataKind;->PIXEL_RGB:Landroidx/renderscript/Element$DataKind;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Landroidx/renderscript/Element$1;->$SwitchMap$androidx$renderscript$Element$DataKind:[I

    sget-object v4, Landroidx/renderscript/Element$DataKind;->PIXEL_RGBA:Landroidx/renderscript/Element$DataKind;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    .line 798
    :catch_28
    invoke-static {}, Landroidx/renderscript/Element$DataType;->values()[Landroidx/renderscript/Element$DataType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Landroidx/renderscript/Element$1;->$SwitchMap$androidx$renderscript$Element$DataType:[I

    :try_start_31
    sget-object v4, Landroidx/renderscript/Element$DataType;->FLOAT_32:Landroidx/renderscript/Element$DataType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_39} :catch_39

    :catch_39
    :try_start_39
    sget-object v1, Landroidx/renderscript/Element$1;->$SwitchMap$androidx$renderscript$Element$DataType:[I

    sget-object v3, Landroidx/renderscript/Element$DataType;->FLOAT_64:Landroidx/renderscript/Element$DataType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_43} :catch_43

    :catch_43
    :try_start_43
    sget-object v0, Landroidx/renderscript/Element$1;->$SwitchMap$androidx$renderscript$Element$DataType:[I

    sget-object v1, Landroidx/renderscript/Element$DataType;->SIGNED_8:Landroidx/renderscript/Element$DataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_4d} :catch_4d

    :catch_4d
    :try_start_4d
    sget-object v0, Landroidx/renderscript/Element$1;->$SwitchMap$androidx$renderscript$Element$DataType:[I

    sget-object v1, Landroidx/renderscript/Element$DataType;->SIGNED_16:Landroidx/renderscript/Element$DataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_58} :catch_58

    :catch_58
    :try_start_58
    sget-object v0, Landroidx/renderscript/Element$1;->$SwitchMap$androidx$renderscript$Element$DataType:[I

    sget-object v1, Landroidx/renderscript/Element$DataType;->SIGNED_32:Landroidx/renderscript/Element$DataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_63} :catch_63

    :catch_63
    :try_start_63
    sget-object v0, Landroidx/renderscript/Element$1;->$SwitchMap$androidx$renderscript$Element$DataType:[I

    sget-object v1, Landroidx/renderscript/Element$DataType;->SIGNED_64:Landroidx/renderscript/Element$DataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_63 .. :try_end_6e} :catch_6e

    :catch_6e
    :try_start_6e
    sget-object v0, Landroidx/renderscript/Element$1;->$SwitchMap$androidx$renderscript$Element$DataType:[I

    sget-object v1, Landroidx/renderscript/Element$DataType;->UNSIGNED_8:Landroidx/renderscript/Element$DataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_79
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_79} :catch_79

    :catch_79
    :try_start_79
    sget-object v0, Landroidx/renderscript/Element$1;->$SwitchMap$androidx$renderscript$Element$DataType:[I

    sget-object v1, Landroidx/renderscript/Element$DataType;->UNSIGNED_16:Landroidx/renderscript/Element$DataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_85
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_85} :catch_85

    :catch_85
    :try_start_85
    sget-object v0, Landroidx/renderscript/Element$1;->$SwitchMap$androidx$renderscript$Element$DataType:[I

    sget-object v1, Landroidx/renderscript/Element$DataType;->UNSIGNED_32:Landroidx/renderscript/Element$DataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_91
    .catch Ljava/lang/NoSuchFieldError; {:try_start_85 .. :try_end_91} :catch_91

    :catch_91
    :try_start_91
    sget-object v0, Landroidx/renderscript/Element$1;->$SwitchMap$androidx$renderscript$Element$DataType:[I

    sget-object v1, Landroidx/renderscript/Element$DataType;->UNSIGNED_64:Landroidx/renderscript/Element$DataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_91 .. :try_end_9d} :catch_9d

    :catch_9d
    :try_start_9d
    sget-object v0, Landroidx/renderscript/Element$1;->$SwitchMap$androidx$renderscript$Element$DataType:[I

    sget-object v1, Landroidx/renderscript/Element$DataType;->BOOLEAN:Landroidx/renderscript/Element$DataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d .. :try_end_a9} :catch_a9

    :catch_a9
    return-void
.end method
