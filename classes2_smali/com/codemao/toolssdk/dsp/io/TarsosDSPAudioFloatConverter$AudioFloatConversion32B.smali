.class Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32B;
.super Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter;
.source "TarsosDSPAudioFloatConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioFloatConversion32B"
.end annotation


# instance fields
.field bytebuffer:Ljava/nio/ByteBuffer;

.field floatbuffer:Ljava/nio/FloatBuffer;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 301
    invoke-direct {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter;-><init>()V

    const/4 v0, 0x0

    .line 302
    iput-object v0, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32B;->bytebuffer:Ljava/nio/ByteBuffer;

    .line 304
    iput-object v0, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32B;->floatbuffer:Ljava/nio/FloatBuffer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$1;)V
    .registers 2

    .line 301
    invoke-direct {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32B;-><init>()V

    return-void
.end method


# virtual methods
.method public toByteArray([FII[BI)[B
    .registers 9

    mul-int/lit8 v0, p3, 0x4

    .line 324
    iget-object v1, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32B;->bytebuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, v0, :cond_1e

    .line 325
    :cond_c
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32B;->bytebuffer:Ljava/nio/ByteBuffer;

    .line 327
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32B;->floatbuffer:Ljava/nio/FloatBuffer;

    .line 329
    :cond_1e
    iget-object v1, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32B;->floatbuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 330
    iget-object v1, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32B;->bytebuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 331
    iget-object v1, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32B;->floatbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 332
    iget-object p1, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32B;->bytebuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p4, p5, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object p4
.end method

.method public toFloatArray([BI[FII)[F
    .registers 9

    mul-int/lit8 v0, p5, 0x4

    .line 309
    iget-object v1, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32B;->bytebuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, v0, :cond_1e

    .line 310
    :cond_c
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32B;->bytebuffer:Ljava/nio/ByteBuffer;

    .line 312
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32B;->floatbuffer:Ljava/nio/FloatBuffer;

    .line 314
    :cond_1e
    iget-object v1, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32B;->bytebuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 315
    iget-object v1, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32B;->floatbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 316
    iget-object v1, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32B;->bytebuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 317
    iget-object p1, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32B;->floatbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, p3, p4, p5}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    return-object p3
.end method
