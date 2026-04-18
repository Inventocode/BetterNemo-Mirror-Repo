.class Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion64B;
.super Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter;
.source "TarsosDSPAudioFloatConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioFloatConversion64B"
.end annotation


# instance fields
.field bytebuffer:Ljava/nio/ByteBuffer;

.field double_buff:[D

.field floatbuffer:Ljava/nio/DoubleBuffer;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 206
    invoke-direct {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter;-><init>()V

    const/4 v0, 0x0

    .line 207
    iput-object v0, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion64B;->bytebuffer:Ljava/nio/ByteBuffer;

    .line 209
    iput-object v0, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion64B;->floatbuffer:Ljava/nio/DoubleBuffer;

    .line 211
    iput-object v0, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion64B;->double_buff:[D

    return-void
.end method

.method synthetic constructor <init>(Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$1;)V
    .registers 2

    .line 206
    invoke-direct {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion64B;-><init>()V

    return-void
.end method


# virtual methods
.method public toByteArray([FII[BI)[B
    .registers 12

    mul-int/lit8 v0, p3, 0x8

    .line 238
    iget-object v1, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion64B;->bytebuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, v0, :cond_1e

    .line 239
    :cond_c
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion64B;->bytebuffer:Ljava/nio/ByteBuffer;

    .line 241
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion64B;->floatbuffer:Ljava/nio/DoubleBuffer;

    .line 243
    :cond_1e
    iget-object v1, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion64B;->floatbuffer:Ljava/nio/DoubleBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/DoubleBuffer;->position(I)Ljava/nio/Buffer;

    .line 244
    iget-object v1, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion64B;->bytebuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 245
    iget-object v1, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion64B;->double_buff:[D

    if-eqz v1, :cond_32

    array-length v1, v1

    add-int v2, p2, p3

    if-ge v1, v2, :cond_38

    :cond_32
    add-int v1, p2, p3

    .line 246
    new-array v1, v1, [D

    iput-object v1, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion64B;->double_buff:[D

    :cond_38
    add-int v1, p2, p3

    move v2, p2

    :goto_3b
    if-ge v2, v1, :cond_47

    .line 249
    iget-object v3, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion64B;->double_buff:[D

    aget v4, p1, v2

    float-to-double v4, v4

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 251
    :cond_47
    iget-object p1, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion64B;->floatbuffer:Ljava/nio/DoubleBuffer;

    iget-object v1, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion64B;->double_buff:[D

    invoke-virtual {p1, v1, p2, p3}, Ljava/nio/DoubleBuffer;->put([DII)Ljava/nio/DoubleBuffer;

    .line 252
    iget-object p1, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion64B;->bytebuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p4, p5, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object p4
.end method

.method public toFloatArray([BI[FII)[F
    .registers 9

    mul-int/lit8 v0, p5, 0x8

    .line 216
    iget-object v1, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion64B;->bytebuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, v0, :cond_1e

    .line 217
    :cond_c
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion64B;->bytebuffer:Ljava/nio/ByteBuffer;

    .line 219
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion64B;->floatbuffer:Ljava/nio/DoubleBuffer;

    .line 221
    :cond_1e
    iget-object v1, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion64B;->bytebuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 222
    iget-object v1, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion64B;->floatbuffer:Ljava/nio/DoubleBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/DoubleBuffer;->position(I)Ljava/nio/Buffer;

    .line 223
    iget-object v1, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion64B;->bytebuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 224
    iget-object p1, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion64B;->double_buff:[D

    if-eqz p1, :cond_37

    array-length p1, p1

    add-int p2, p5, p4

    if-ge p1, p2, :cond_3d

    :cond_37
    add-int p1, p5, p4

    .line 226
    new-array p1, p1, [D

    iput-object p1, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion64B;->double_buff:[D

    .line 227
    :cond_3d
    iget-object p1, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion64B;->floatbuffer:Ljava/nio/DoubleBuffer;

    iget-object p2, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion64B;->double_buff:[D

    invoke-virtual {p1, p2, p4, p5}, Ljava/nio/DoubleBuffer;->get([DII)Ljava/nio/DoubleBuffer;

    add-int/2addr p5, p4

    :goto_45
    if-ge p4, p5, :cond_51

    .line 230
    iget-object p1, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion64B;->double_buff:[D

    aget-wide v0, p1, p4

    double-to-float p1, v0

    aput p1, p3, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_45

    :cond_51
    return-object p3
.end method
