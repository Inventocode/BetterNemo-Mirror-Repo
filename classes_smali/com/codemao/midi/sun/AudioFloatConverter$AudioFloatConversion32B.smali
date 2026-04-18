.class Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32B;
.super Lcom/codemao/midi/sun/AudioFloatConverter;
.source "AudioFloatConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/sun/AudioFloatConverter;
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

    .line 277
    invoke-direct {p0}, Lcom/codemao/midi/sun/AudioFloatConverter;-><init>()V

    const/4 v0, 0x0

    .line 278
    iput-object v0, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32B;->bytebuffer:Ljava/nio/ByteBuffer;

    .line 280
    iput-object v0, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32B;->floatbuffer:Ljava/nio/FloatBuffer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/codemao/midi/sun/AudioFloatConverter$1;)V
    .registers 2

    .line 277
    invoke-direct {p0}, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32B;-><init>()V

    return-void
.end method


# virtual methods
.method public toByteArray([FII[BI)[B
    .registers 9

    mul-int/lit8 v0, p3, 0x4

    .line 300
    iget-object v1, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32B;->bytebuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, v0, :cond_1e

    .line 301
    :cond_c
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32B;->bytebuffer:Ljava/nio/ByteBuffer;

    .line 303
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32B;->floatbuffer:Ljava/nio/FloatBuffer;

    .line 305
    :cond_1e
    iget-object v1, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32B;->floatbuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 306
    iget-object v1, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32B;->bytebuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 307
    iget-object v1, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32B;->floatbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 308
    iget-object p1, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32B;->bytebuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p4, p5, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object p4
.end method

.method public toFloatArray([BI[FII)[F
    .registers 9

    mul-int/lit8 v0, p5, 0x4

    .line 285
    iget-object v1, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32B;->bytebuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, v0, :cond_1e

    .line 286
    :cond_c
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32B;->bytebuffer:Ljava/nio/ByteBuffer;

    .line 288
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32B;->floatbuffer:Ljava/nio/FloatBuffer;

    .line 290
    :cond_1e
    iget-object v1, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32B;->bytebuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 291
    iget-object v1, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32B;->floatbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 292
    iget-object v1, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32B;->bytebuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 293
    iget-object p1, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatConversion32B;->floatbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, p3, p4, p5}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    return-object p3
.end method
