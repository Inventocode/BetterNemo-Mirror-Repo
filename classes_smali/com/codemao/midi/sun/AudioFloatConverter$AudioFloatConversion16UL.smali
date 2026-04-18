.class Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion16UL;
.super Lcom/codemao/midi/sun/AudioFloatConverter;
.source "AudioFloatConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/sun/AudioFloatConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioFloatConversion16UL"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 422
    invoke-direct {p0}, Lcom/codemao/midi/sun/AudioFloatConverter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/codemao/midi/sun/AudioFloatConverter$1;)V
    .registers 2

    .line 422
    invoke-direct {p0}, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion16UL;-><init>()V

    return-void
.end method


# virtual methods
.method public toByteArray([FII[BI)[B
    .registers 12

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_22

    add-int/lit8 v1, p2, 0x1

    .line 439
    aget p2, p1, p2

    float-to-double v2, p2

    const-wide v4, 0x40dfffc000000000L  # 32767.0

    mul-double v2, v2, v4

    double-to-int p2, v2

    add-int/lit16 p2, p2, 0x7fff

    add-int/lit8 v2, p5, 0x1

    int-to-byte v3, p2

    .line 440
    aput-byte v3, p4, p5

    add-int/lit8 p5, v2, 0x1

    ushr-int/lit8 p2, p2, 0x8

    int-to-byte p2, p2

    .line 441
    aput-byte p2, p4, v2

    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto :goto_1

    :cond_22
    return-object p4
.end method

.method public toFloatArray([BI[FII)[F
    .registers 10

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p5, :cond_23

    add-int/lit8 v1, p2, 0x1

    .line 428
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p2, v1

    add-int/lit8 v1, p4, 0x1

    add-int/lit16 p2, p2, -0x7fff

    int-to-float p2, p2

    const v3, 0x38000100

    mul-float p2, p2, v3

    .line 429
    aput p2, p3, p4

    add-int/lit8 v0, v0, 0x1

    move p4, v1

    move p2, v2

    goto :goto_1

    :cond_23
    return-object p3
.end method
