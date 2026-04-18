.class Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion16SL;
.super Lcom/codemao/midi/sun/AudioFloatConverter;
.source "AudioFloatConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/sun/AudioFloatConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioFloatConversion16SL"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 369
    invoke-direct {p0}, Lcom/codemao/midi/sun/AudioFloatConverter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/codemao/midi/sun/AudioFloatConverter$1;)V
    .registers 2

    .line 369
    invoke-direct {p0}, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion16SL;-><init>()V

    return-void
.end method


# virtual methods
.method public toByteArray([FII[BI)[B
    .registers 10

    add-int/2addr p3, p2

    :goto_1
    if-ge p2, p3, :cond_1d

    .line 387
    aget v0, p1, p2

    float-to-double v0, v0

    const-wide v2, 0x40dfffc000000000L  # 32767.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    add-int/lit8 v1, p5, 0x1

    int-to-byte v2, v0

    .line 388
    aput-byte v2, p4, p5

    add-int/lit8 p5, v1, 0x1

    ushr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    .line 389
    aput-byte v0, p4, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1d
    return-object p4
.end method

.method public toFloatArray([BI[FII)[F
    .registers 8

    add-int/2addr p5, p4

    :goto_1
    if-ge p4, p5, :cond_1d

    add-int/lit8 v0, p2, 0x1

    .line 375
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p2, v0

    int-to-short p2, p2

    int-to-float p2, p2

    const v0, 0x38000100

    mul-float p2, p2, v0

    aput p2, p3, p4

    add-int/lit8 p4, p4, 0x1

    move p2, v1

    goto :goto_1

    :cond_1d
    return-object p3
.end method
