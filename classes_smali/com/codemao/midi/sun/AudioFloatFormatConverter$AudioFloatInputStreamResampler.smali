.class Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;
.super Lcom/codemao/midi/sun/AudioFloatInputStream;
.source "AudioFloatFormatConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/sun/AudioFloatFormatConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioFloatInputStreamResampler"
.end annotation


# instance fields
.field private ais:Lcom/codemao/midi/sun/AudioFloatInputStream;

.field private buffer_len:I

.field private cbuffer:[[F

.field private ibuffer:[[F

.field private ibuffer2:[F

.field private ibuffer_index:F

.field private ibuffer_len:I

.field private ix:[F

.field private mark_ibuffer:[[F

.field private mark_ibuffer_index:F

.field private mark_ibuffer_len:I

.field private nrofchannels:I

.field private ox:[I

.field private pad:I

.field private pad2:I

.field private pitch:[F

.field private resampler:Lcom/codemao/midi/sun/SoftAbstractResampler;

.field private skipbuffer:[F

.field private targetFormat:Lcom/codemao/midi/javax/sampled/AudioFormat;


# direct methods
.method public constructor <init>(Lcom/codemao/midi/sun/AudioFloatInputStream;Lcom/codemao/midi/javax/sampled/AudioFormat;)V
    .registers 14

    .line 268
    invoke-direct {p0}, Lcom/codemao/midi/sun/AudioFloatInputStream;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [F

    .line 237
    iput-object v1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->pitch:[F

    const/4 v1, 0x0

    .line 243
    iput v1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_index:F

    const/4 v2, 0x0

    .line 245
    iput v2, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    .line 247
    iput v2, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->nrofchannels:I

    const/16 v3, 0x200

    .line 251
    iput v3, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->buffer_len:I

    new-array v3, v0, [F

    .line 257
    iput-object v3, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ix:[F

    new-array v3, v0, [I

    .line 259
    iput-object v3, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ox:[I

    const/4 v3, 0x0

    .line 261
    iput-object v3, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->mark_ibuffer:[[F

    .line 263
    iput v1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->mark_ibuffer_index:F

    .line 265
    iput v2, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->mark_ibuffer_len:I

    .line 269
    iput-object p1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ais:Lcom/codemao/midi/sun/AudioFloatInputStream;

    .line 270
    invoke-virtual {p1}, Lcom/codemao/midi/sun/AudioFloatInputStream;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object p1

    .line 271
    new-instance v1, Lcom/codemao/midi/javax/sampled/AudioFormat;

    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getEncoding()Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    move-result-object v4

    .line 272
    invoke-virtual {p2}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleRate()F

    move-result v5

    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v6

    .line 273
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getChannels()I

    move-result v7

    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getFrameSize()I

    move-result v8

    .line 274
    invoke-virtual {p2}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleRate()F

    move-result v9

    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->isBigEndian()Z

    move-result v10

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/codemao/midi/javax/sampled/AudioFormat;-><init>(Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;FIIIFZ)V

    iput-object v1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->targetFormat:Lcom/codemao/midi/javax/sampled/AudioFormat;

    .line 275
    invoke-virtual {v1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getChannels()I

    move-result v1

    iput v1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->nrofchannels:I

    const-string v1, "interpolation"

    .line 276
    invoke-virtual {p2, v1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_ca

    .line 277
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_ca

    .line 278
    check-cast v1, Ljava/lang/String;

    const-string v3, "point"

    .line 279
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 280
    new-instance v3, Lcom/codemao/midi/sun/SoftPointResampler;

    invoke-direct {v3}, Lcom/codemao/midi/sun/SoftPointResampler;-><init>()V

    iput-object v3, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->resampler:Lcom/codemao/midi/sun/SoftAbstractResampler;

    :cond_70
    const-string v3, "linear"

    .line 281
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 282
    new-instance v3, Lcom/codemao/midi/sun/SoftLinearResampler2;

    invoke-direct {v3}, Lcom/codemao/midi/sun/SoftLinearResampler2;-><init>()V

    iput-object v3, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->resampler:Lcom/codemao/midi/sun/SoftAbstractResampler;

    :cond_7f
    const-string v3, "linear1"

    .line 283
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 284
    new-instance v3, Lcom/codemao/midi/sun/SoftLinearResampler;

    invoke-direct {v3}, Lcom/codemao/midi/sun/SoftLinearResampler;-><init>()V

    iput-object v3, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->resampler:Lcom/codemao/midi/sun/SoftAbstractResampler;

    :cond_8e
    const-string v3, "linear2"

    .line 285
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 286
    new-instance v3, Lcom/codemao/midi/sun/SoftLinearResampler2;

    invoke-direct {v3}, Lcom/codemao/midi/sun/SoftLinearResampler2;-><init>()V

    iput-object v3, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->resampler:Lcom/codemao/midi/sun/SoftAbstractResampler;

    :cond_9d
    const-string v3, "cubic"

    .line 287
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 288
    new-instance v3, Lcom/codemao/midi/sun/SoftCubicResampler;

    invoke-direct {v3}, Lcom/codemao/midi/sun/SoftCubicResampler;-><init>()V

    iput-object v3, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->resampler:Lcom/codemao/midi/sun/SoftAbstractResampler;

    :cond_ac
    const-string v3, "lanczos"

    .line 289
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_bb

    .line 290
    new-instance v3, Lcom/codemao/midi/sun/SoftLanczosResampler;

    invoke-direct {v3}, Lcom/codemao/midi/sun/SoftLanczosResampler;-><init>()V

    iput-object v3, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->resampler:Lcom/codemao/midi/sun/SoftAbstractResampler;

    :cond_bb
    const-string v3, "sinc"

    .line 291
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 292
    new-instance v1, Lcom/codemao/midi/sun/SoftSincResampler;

    invoke-direct {v1}, Lcom/codemao/midi/sun/SoftSincResampler;-><init>()V

    iput-object v1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->resampler:Lcom/codemao/midi/sun/SoftAbstractResampler;

    .line 294
    :cond_ca
    iget-object v1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->resampler:Lcom/codemao/midi/sun/SoftAbstractResampler;

    if-nez v1, :cond_d5

    .line 295
    new-instance v1, Lcom/codemao/midi/sun/SoftLinearResampler2;

    invoke-direct {v1}, Lcom/codemao/midi/sun/SoftLinearResampler2;-><init>()V

    iput-object v1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->resampler:Lcom/codemao/midi/sun/SoftAbstractResampler;

    .line 297
    :cond_d5
    iget-object v1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->pitch:[F

    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleRate()F

    move-result p1

    invoke-virtual {p2}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleRate()F

    move-result p2

    div-float/2addr p1, p2

    aput p1, v1, v2

    .line 298
    iget-object p1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->resampler:Lcom/codemao/midi/sun/SoftAbstractResampler;

    invoke-virtual {p1}, Lcom/codemao/midi/sun/SoftAbstractResampler;->getPadding()I

    move-result p1

    iput p1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->pad:I

    const/4 p2, 0x2

    mul-int/lit8 p1, p1, 0x2

    .line 299
    iput p1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->pad2:I

    .line 300
    iget v1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->nrofchannels:I

    iget v3, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->buffer_len:I

    add-int/2addr v3, p1

    new-array p1, p2, [I

    aput v3, p1, v0

    aput v1, p1, v2

    const-class p2, F

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[F

    iput-object p1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer:[[F

    .line 301
    iget p1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->nrofchannels:I

    iget p2, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->buffer_len:I

    mul-int p1, p1, p2

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer2:[F

    .line 302
    iget p1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->pad:I

    add-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_index:F

    .line 303
    iput p2, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    return-void
.end method

.method private readNextBuffer()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    iget v0, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return-void

    :cond_6
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 347
    :goto_8
    iget v3, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->nrofchannels:I

    if-ge v2, v3, :cond_24

    .line 348
    iget-object v3, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer:[[F

    aget-object v3, v3, v2

    .line 349
    iget v4, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    iget v5, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->pad2:I

    add-int/2addr v5, v4

    const/4 v6, 0x0

    :goto_16
    if-ge v4, v5, :cond_21

    .line 351
    aget v7, v3, v4

    aput v7, v3, v6

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 355
    :cond_24
    iget v2, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_index:F

    iget v3, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_index:F

    .line 357
    iget-object v2, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ais:Lcom/codemao/midi/sun/AudioFloatInputStream;

    iget-object v3, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer2:[F

    invoke-virtual {v2, v3}, Lcom/codemao/midi/sun/AudioFloatInputStream;->read([F)I

    move-result v2

    iput v2, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    const/4 v3, 0x0

    if-ltz v2, :cond_61

    .line 359
    :goto_39
    iget v2, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    iget-object v4, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer2:[F

    array-length v5, v4

    if-ge v2, v5, :cond_51

    .line 360
    iget-object v5, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ais:Lcom/codemao/midi/sun/AudioFloatInputStream;

    array-length v6, v4

    sub-int/2addr v6, v2

    invoke-virtual {v5, v4, v2, v6}, Lcom/codemao/midi/sun/AudioFloatInputStream;->read([FII)I

    move-result v2

    if-ne v2, v1, :cond_4b

    goto :goto_51

    .line 364
    :cond_4b
    iget v4, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    goto :goto_39

    .line 366
    :cond_51
    :goto_51
    iget-object v1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer2:[F

    iget v2, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    array-length v4, v1

    invoke-static {v1, v2, v4, v3}, Ljava/util/Arrays;->fill([FIIF)V

    .line 367
    iget v1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    iget v2, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->nrofchannels:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    goto :goto_67

    .line 369
    :cond_61
    iget-object v1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer2:[F

    array-length v2, v1

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([FIIF)V

    .line 372
    :goto_67
    iget-object v1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer2:[F

    array-length v1, v1

    .line 373
    :goto_6a
    iget v2, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->nrofchannels:I

    if-ge v0, v2, :cond_86

    .line 374
    iget-object v2, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer:[[F

    aget-object v2, v2, v0

    .line 375
    iget v3, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->pad2:I

    move v4, v0

    :goto_75
    if-ge v4, v1, :cond_83

    .line 376
    iget-object v5, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer2:[F

    aget v5, v5, v4

    aput v5, v2, v3

    .line 375
    iget v5, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->nrofchannels:I

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_75

    :cond_83
    add-int/lit8 v0, v0, 0x1

    goto :goto_6a

    :cond_86
    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ais:Lcom/codemao/midi/sun/AudioFloatInputStream;

    invoke-virtual {v0}, Lcom/codemao/midi/sun/AudioFloatInputStream;->close()V

    return-void
.end method

.method public getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;
    .registers 2

    .line 315
    iget-object v0, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->targetFormat:Lcom/codemao/midi/javax/sampled/AudioFormat;

    return-object v0
.end method

.method public getFrameLength()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public mark(I)V
    .registers 7

    .line 323
    iget-object v0, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ais:Lcom/codemao/midi/sun/AudioFloatInputStream;

    int-to-float p1, p1

    iget-object v1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->pitch:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/codemao/midi/sun/AudioFloatInputStream;->mark(I)V

    .line 324
    iget p1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_index:F

    iput p1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->mark_ibuffer_index:F

    .line 325
    iget p1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    iput p1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->mark_ibuffer_len:I

    .line 326
    iget-object p1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->mark_ibuffer:[[F

    if-nez p1, :cond_32

    .line 327
    iget-object p1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer:[[F

    array-length v0, p1

    aget-object p1, p1, v2

    array-length p1, p1

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v3, 0x1

    aput p1, v1, v3

    aput v0, v1, v2

    const-class p1, F

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[F

    iput-object p1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->mark_ibuffer:[[F

    :cond_32
    const/4 p1, 0x0

    .line 329
    :goto_33
    iget-object v0, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer:[[F

    array-length v1, v0

    if-ge p1, v1, :cond_4c

    .line 330
    aget-object v0, v0, p1

    .line 331
    iget-object v1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->mark_ibuffer:[[F

    aget-object v1, v1, p1

    const/4 v3, 0x0

    .line 332
    :goto_3f
    array-length v4, v1

    if-ge v3, v4, :cond_49

    .line 333
    aget v4, v0, v3

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    :cond_49
    add-int/lit8 p1, p1, 0x1

    goto :goto_33

    :cond_4c
    return-void
.end method

.method public markSupported()Z
    .registers 2

    .line 339
    iget-object v0, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ais:Lcom/codemao/midi/sun/AudioFloatInputStream;

    invoke-virtual {v0}, Lcom/codemao/midi/sun/AudioFloatInputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read([FII)I
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 384
    iget-object v1, v0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->cbuffer:[[F

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    aget-object v1, v1, v2

    array-length v1, v1

    iget v3, v0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->nrofchannels:I

    div-int v3, p3, v3

    if-ge v1, v3, :cond_26

    .line 385
    :cond_10
    iget v1, v0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->nrofchannels:I

    div-int v3, p3, v1

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x1

    aput v3, v4, v5

    aput v1, v4, v2

    const-class v1, F

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    iput-object v1, v0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->cbuffer:[[F

    .line 387
    :cond_26
    iget v1, v0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2c

    return v3

    :cond_2c
    if-gez p3, :cond_2f

    return v2

    :cond_2f
    add-int v3, p2, p3

    .line 392
    iget v4, v0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->nrofchannels:I

    div-int v4, p3, v4

    const/4 v5, 0x0

    :goto_36
    if-lez v4, :cond_98

    .line 396
    iget v6, v0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    if-ltz v6, :cond_4e

    .line 397
    iget v1, v0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_index:F

    iget v7, v0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->pad:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v1, v1, v6

    if-ltz v1, :cond_49

    .line 398
    invoke-direct/range {p0 .. p0}, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->readNextBuffer()V

    .line 399
    :cond_49
    iget v1, v0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    iget v6, v0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->pad:I

    add-int/2addr v1, v6

    .line 402
    :cond_4e
    iget v6, v0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    if-gez v6, :cond_5c

    .line 403
    iget v1, v0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->pad2:I

    .line 404
    iget v6, v0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_index:F

    int-to-float v7, v1

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_5c

    goto :goto_98

    .line 408
    :cond_5c
    iget v6, v0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_index:F

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_64

    goto :goto_98

    :cond_64
    const/4 v6, 0x0

    .line 411
    :goto_65
    iget v7, v0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->nrofchannels:I

    if-ge v6, v7, :cond_89

    .line 412
    iget-object v10, v0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ix:[F

    iget v8, v0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_index:F

    aput v8, v10, v2

    .line 413
    iget-object v15, v0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ox:[I

    aput v5, v15, v2

    .line 414
    iget-object v8, v0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer:[[F

    aget-object v9, v8, v6

    .line 415
    iget-object v8, v0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->resampler:Lcom/codemao/midi/sun/SoftAbstractResampler;

    int-to-float v11, v1

    iget-object v12, v0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->pitch:[F

    const/4 v13, 0x0

    iget-object v14, v0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->cbuffer:[[F

    aget-object v14, v14, v6

    div-int v16, p3, v7

    invoke-virtual/range {v8 .. v16}, Lcom/codemao/midi/sun/SoftAbstractResampler;->interpolate([F[FF[FF[F[II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_65

    .line 418
    :cond_89
    iget-object v6, v0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ix:[F

    aget v6, v6, v2

    iput v6, v0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_index:F

    .line 419
    iget-object v6, v0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ox:[I

    aget v6, v6, v2

    sub-int v5, v6, v5

    sub-int/2addr v4, v5

    move v5, v6

    goto :goto_36

    :cond_98
    :goto_98
    const/4 v1, 0x0

    .line 422
    :goto_99
    iget v5, v0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->nrofchannels:I

    if-ge v1, v5, :cond_b4

    .line 424
    iget-object v5, v0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->cbuffer:[[F

    aget-object v5, v5, v1

    add-int v6, v1, p2

    const/4 v7, 0x0

    :goto_a4
    if-ge v6, v3, :cond_b1

    add-int/lit8 v8, v7, 0x1

    .line 426
    aget v7, v5, v7

    aput v7, p1, v6

    .line 425
    iget v7, v0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->nrofchannels:I

    add-int/2addr v6, v7

    move v7, v8

    goto :goto_a4

    :cond_b1
    add-int/lit8 v1, v1, 0x1

    goto :goto_99

    :cond_b4
    mul-int v4, v4, v5

    sub-int v1, p3, v4

    return v1
.end method

.method public reset()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ais:Lcom/codemao/midi/sun/AudioFloatInputStream;

    invoke-virtual {v0}, Lcom/codemao/midi/sun/AudioFloatInputStream;->reset()V

    .line 434
    iget-object v0, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->mark_ibuffer:[[F

    if-nez v0, :cond_a

    return-void

    .line 436
    :cond_a
    iget v0, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->mark_ibuffer_index:F

    iput v0, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_index:F

    .line 437
    iget v0, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->mark_ibuffer_len:I

    iput v0, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer_len:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 438
    :goto_14
    iget-object v2, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->ibuffer:[[F

    array-length v3, v2

    if-ge v1, v3, :cond_2d

    .line 439
    iget-object v3, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->mark_ibuffer:[[F

    aget-object v3, v3, v1

    .line 440
    aget-object v2, v2, v1

    const/4 v4, 0x0

    .line 441
    :goto_20
    array-length v5, v2

    if-ge v4, v5, :cond_2a

    .line 442
    aget v5, v3, v4

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_2d
    return-void
.end method

.method public skip(J)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_7

    return-wide v0

    .line 451
    :cond_7
    iget-object v2, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->skipbuffer:[F

    if-nez v2, :cond_17

    .line 452
    iget-object v2, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->targetFormat:Lcom/codemao/midi/javax/sampled/AudioFormat;

    invoke-virtual {v2}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getFrameSize()I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->skipbuffer:[F

    .line 453
    :cond_17
    iget-object v2, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->skipbuffer:[F

    move-wide v3, p1

    :goto_1a
    cmp-long v5, v3, v0

    if-lez v5, :cond_37

    const/4 v5, 0x0

    .line 456
    iget-object v6, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->skipbuffer:[F

    array-length v6, v6

    int-to-long v6, v6

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {p0, v2, v5, v7}, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;->read([FII)I

    move-result v5

    if-gez v5, :cond_34

    cmp-long v0, v3, p1

    if-nez v0, :cond_37

    int-to-long p1, v5

    return-wide p1

    :cond_34
    int-to-long v5, v5

    sub-long/2addr v3, v5

    goto :goto_1a

    :cond_37
    sub-long/2addr p1, v3

    return-wide p1
.end method
