.class Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion24SB;
.super Lcom/codemao/midi/sun/AudioFloatConverter;
.source "AudioFloatConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/sun/AudioFloatConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioFloatConversion24SB"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 512
    invoke-direct {p0}, Lcom/codemao/midi/sun/AudioFloatConverter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/codemao/midi/sun/AudioFloatConverter$1;)V
    .registers 2

    .line 512
    invoke-direct {p0}, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion24SB;-><init>()V

    return-void
.end method


# virtual methods
.method public toByteArray([FII[BI)[B
    .registers 10

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_2a

    add-int/lit8 v1, p2, 0x1

    .line 532
    aget p2, p1, p2

    const v2, 0x4afffffe  # 8388607.0f

    mul-float p2, p2, v2

    float-to-int p2, p2

    if-gez p2, :cond_12

    const/high16 v2, 0x1000000

    add-int/2addr p2, v2

    :cond_12
    add-int/lit8 v2, p5, 0x1

    ushr-int/lit8 v3, p2, 0x10

    int-to-byte v3, v3

    .line 535
    aput-byte v3, p4, p5

    add-int/lit8 p5, v2, 0x1

    ushr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    .line 536
    aput-byte v3, p4, v2

    add-int/lit8 v2, p5, 0x1

    int-to-byte p2, p2

    .line 537
    aput-byte p2, p4, p5

    add-int/lit8 v0, v0, 0x1

    move p2, v1

    move p5, v2

    goto :goto_1

    :cond_2a
    return-object p4
.end method

.method public toFloatArray([BI[FII)[F
    .registers 10

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p5, :cond_32

    add-int/lit8 v1, p2, 0x1

    .line 518
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x10

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p2, v1

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr p2, v2

    const v2, 0x7fffff

    if-le p2, v2, :cond_23

    const/high16 v2, 0x1000000

    sub-int/2addr p2, v2

    :cond_23
    add-int/lit8 v2, p4, 0x1

    int-to-float p2, p2

    const v3, 0x34000001

    mul-float p2, p2, v3

    .line 522
    aput p2, p3, p4

    add-int/lit8 v0, v0, 0x1

    move p2, v1

    move p4, v2

    goto :goto_1

    :cond_32
    return-object p3
.end method
