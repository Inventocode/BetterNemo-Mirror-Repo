.class Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion8S;
.super Lcom/codemao/midi/sun/AudioFloatConverter;
.source "AudioFloatConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/sun/AudioFloatConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioFloatConversion8S"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 320
    invoke-direct {p0}, Lcom/codemao/midi/sun/AudioFloatConverter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/codemao/midi/sun/AudioFloatConverter$1;)V
    .registers 2

    .line 320
    invoke-direct {p0}, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion8S;-><init>()V

    return-void
.end method


# virtual methods
.method public toByteArray([FII[BI)[B
    .registers 10

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_16

    add-int/lit8 v1, p5, 0x1

    add-int/lit8 v2, p2, 0x1

    .line 335
    aget p2, p1, p2

    const/high16 v3, 0x42fe0000  # 127.0f

    mul-float p2, p2, v3

    float-to-int p2, p2

    int-to-byte p2, p2

    aput-byte p2, p4, p5

    add-int/lit8 v0, v0, 0x1

    move p5, v1

    move p2, v2

    goto :goto_1

    :cond_16
    return-object p4
.end method

.method public toFloatArray([BI[FII)[F
    .registers 10

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p5, :cond_16

    add-int/lit8 v1, p4, 0x1

    add-int/lit8 v2, p2, 0x1

    .line 326
    aget-byte p2, p1, p2

    int-to-float p2, p2

    const v3, 0x3c010204

    mul-float p2, p2, v3

    aput p2, p3, p4

    add-int/lit8 v0, v0, 0x1

    move p4, v1

    move p2, v2

    goto :goto_1

    :cond_16
    return-object p3
.end method
