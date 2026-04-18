.class public Lcom/codemao/midi/sun/ModelByteBufferWavetable;
.super Ljava/lang/Object;
.source "ModelByteBufferWavetable.java"

# interfaces
.implements Lcom/codemao/midi/sun/ModelWavetable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;
    }
.end annotation


# instance fields
.field private attenuation:F

.field private buffer:Lcom/codemao/midi/sun/ModelByteBuffer;

.field private buffer8:Lcom/codemao/midi/sun/ModelByteBuffer;

.field private format:Lcom/codemao/midi/javax/sampled/AudioFormat;

.field private loopLength:F

.field private loopStart:F

.field private loopType:I

.field private pitchcorrection:F


# direct methods
.method public constructor <init>(Lcom/codemao/midi/sun/ModelByteBuffer;Lcom/codemao/midi/javax/sampled/AudioFormat;F)V
    .registers 5

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000  # -1.0f

    .line 129
    iput v0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->loopStart:F

    .line 130
    iput v0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->loopLength:F

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->buffer8:Lcom/codemao/midi/sun/ModelByteBuffer;

    .line 133
    iput-object v0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    const/4 v0, 0x0

    .line 134
    iput v0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->pitchcorrection:F

    .line 135
    iput v0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->attenuation:F

    const/4 v0, 0x0

    .line 136
    iput v0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->loopType:I

    .line 155
    iput-object p2, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    .line 156
    iput-object p1, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->buffer:Lcom/codemao/midi/sun/ModelByteBuffer;

    .line 157
    iput p3, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->pitchcorrection:F

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/midi/sun/ModelByteBufferWavetable;)Lcom/codemao/midi/javax/sampled/AudioFormat;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/midi/sun/ModelByteBufferWavetable;)Lcom/codemao/midi/sun/ModelByteBuffer;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->buffer:Lcom/codemao/midi/sun/ModelByteBuffer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/midi/sun/ModelByteBufferWavetable;)Lcom/codemao/midi/sun/ModelByteBuffer;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->buffer8:Lcom/codemao/midi/sun/ModelByteBuffer;

    return-object p0
.end method


# virtual methods
.method public get8BitExtensionBuffer()Lcom/codemao/midi/sun/ModelByteBuffer;
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->buffer8:Lcom/codemao/midi/sun/ModelByteBuffer;

    return-object v0
.end method

.method public getAttenuation()F
    .registers 2

    .line 245
    iget v0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->attenuation:F

    return v0
.end method

.method public getBuffer()Lcom/codemao/midi/sun/ModelByteBuffer;
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->buffer:Lcom/codemao/midi/sun/ModelByteBuffer;

    return-object v0
.end method

.method public getChannels()I
    .registers 2

    .line 235
    invoke-virtual {p0}, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getChannels()I

    move-result v0

    return v0
.end method

.method public getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;
    .registers 4

    .line 173
    iget-object v0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    if-nez v0, :cond_1a

    .line 174
    iget-object v0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->buffer:Lcom/codemao/midi/sun/ModelByteBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 176
    :cond_a
    invoke-virtual {v0}, Lcom/codemao/midi/sun/ModelByteBuffer;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 179
    :try_start_e
    invoke-static {v0}, Lcom/codemao/midi/javax/sampled/AudioSystem;->getAudioFileFormat(Ljava/io/InputStream;)Lcom/codemao/midi/javax/sampled/AudioFileFormat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/midi/javax/sampled/AudioFileFormat;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_16} :catch_16

    .line 184
    :catch_16
    :try_start_16
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_19

    :catch_19
    return-object v1

    :cond_1a
    return-object v0
.end method

.method public getLoopLength()F
    .registers 2

    .line 253
    iget v0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->loopLength:F

    return v0
.end method

.method public getLoopStart()F
    .registers 2

    .line 261
    iget v0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->loopStart:F

    return v0
.end method

.method public getLoopType()I
    .registers 2

    .line 273
    iget v0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->loopType:I

    return v0
.end method

.method public getPitchcorrection()F
    .registers 2

    .line 277
    iget v0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->pitchcorrection:F

    return v0
.end method

.method public open(F)Lcom/codemao/midi/sun/ModelOscillatorStream;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public openStream()Lcom/codemao/midi/sun/AudioFloatInputStream;
    .registers 11

    .line 194
    iget-object v0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->buffer:Lcom/codemao/midi/sun/ModelByteBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 196
    :cond_6
    iget-object v2, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    if-nez v2, :cond_18

    .line 197
    invoke-virtual {v0}, Lcom/codemao/midi/sun/ModelByteBuffer;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 200
    :try_start_e
    invoke-static {v0}, Lcom/codemao/midi/javax/sampled/AudioSystem;->getAudioInputStream(Ljava/io/InputStream;)Lcom/codemao/midi/javax/sampled/AudioInputStream;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_17

    .line 205
    invoke-static {v0}, Lcom/codemao/midi/sun/AudioFloatInputStream;->getInputStream(Lcom/codemao/midi/javax/sampled/AudioInputStream;)Lcom/codemao/midi/sun/AudioFloatInputStream;

    move-result-object v0

    return-object v0

    :catch_17
    return-object v1

    .line 207
    :cond_18
    invoke-virtual {v0}, Lcom/codemao/midi/sun/ModelByteBuffer;->array()[B

    move-result-object v0

    if-nez v0, :cond_3e

    .line 208
    new-instance v0, Lcom/codemao/midi/javax/sampled/AudioInputStream;

    iget-object v1, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->buffer:Lcom/codemao/midi/sun/ModelByteBuffer;

    .line 209
    invoke-virtual {v1}, Lcom/codemao/midi/sun/ModelByteBuffer;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    iget-object v3, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->buffer:Lcom/codemao/midi/sun/ModelByteBuffer;

    .line 210
    invoke-virtual {v3}, Lcom/codemao/midi/sun/ModelByteBuffer;->capacity()J

    move-result-wide v3

    iget-object v5, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    invoke-virtual {v5}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getFrameSize()I

    move-result v5

    int-to-long v5, v5

    div-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/codemao/midi/javax/sampled/AudioInputStream;-><init>(Ljava/io/InputStream;Lcom/codemao/midi/javax/sampled/AudioFormat;J)V

    .line 208
    invoke-static {v0}, Lcom/codemao/midi/sun/AudioFloatInputStream;->getInputStream(Lcom/codemao/midi/javax/sampled/AudioInputStream;)Lcom/codemao/midi/sun/AudioFloatInputStream;

    move-result-object v0

    return-object v0

    .line 212
    :cond_3e
    iget-object v0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->buffer8:Lcom/codemao/midi/sun/ModelByteBuffer;

    if-eqz v0, :cond_b6

    .line 213
    iget-object v0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    invoke-virtual {v0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getEncoding()Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    move-result-object v0

    sget-object v1, Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;->PCM_SIGNED:Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    invoke-virtual {v0, v1}, Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    iget-object v0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    .line 214
    invoke-virtual {v0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getEncoding()Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    move-result-object v0

    sget-object v1, Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;->PCM_UNSIGNED:Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    invoke-virtual {v0, v1}, Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 215
    :cond_5e
    new-instance v0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;

    invoke-direct {v0, p0}, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;-><init>(Lcom/codemao/midi/sun/ModelByteBufferWavetable;)V

    .line 216
    new-instance v9, Lcom/codemao/midi/javax/sampled/AudioFormat;

    iget-object v1, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    .line 217
    invoke-virtual {v1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getEncoding()Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    move-result-object v2

    iget-object v1, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    .line 218
    invoke-virtual {v1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleRate()F

    move-result v3

    iget-object v1, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    .line 219
    invoke-virtual {v1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v1

    add-int/lit8 v4, v1, 0x8

    iget-object v1, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    .line 220
    invoke-virtual {v1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getChannels()I

    move-result v5

    iget-object v1, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    .line 221
    invoke-virtual {v1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getFrameSize()I

    move-result v1

    iget-object v6, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    invoke-virtual {v6}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getChannels()I

    move-result v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v6, v1

    iget-object v1, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    .line 222
    invoke-virtual {v1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getFrameRate()F

    move-result v7

    iget-object v1, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    .line 223
    invoke-virtual {v1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->isBigEndian()Z

    move-result v8

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/codemao/midi/javax/sampled/AudioFormat;-><init>(Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;FIIIFZ)V

    .line 225
    new-instance v1, Lcom/codemao/midi/javax/sampled/AudioInputStream;

    iget-object v2, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->buffer:Lcom/codemao/midi/sun/ModelByteBuffer;

    .line 226
    invoke-virtual {v2}, Lcom/codemao/midi/sun/ModelByteBuffer;->capacity()J

    move-result-wide v2

    iget-object v4, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    invoke-virtual {v4}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getFrameSize()I

    move-result v4

    int-to-long v4, v4

    div-long/2addr v2, v4

    invoke-direct {v1, v0, v9, v2, v3}, Lcom/codemao/midi/javax/sampled/AudioInputStream;-><init>(Ljava/io/InputStream;Lcom/codemao/midi/javax/sampled/AudioFormat;J)V

    .line 227
    invoke-static {v1}, Lcom/codemao/midi/sun/AudioFloatInputStream;->getInputStream(Lcom/codemao/midi/javax/sampled/AudioInputStream;)Lcom/codemao/midi/sun/AudioFloatInputStream;

    move-result-object v0

    return-object v0

    .line 230
    :cond_b6
    iget-object v0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    iget-object v1, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->buffer:Lcom/codemao/midi/sun/ModelByteBuffer;

    invoke-virtual {v1}, Lcom/codemao/midi/sun/ModelByteBuffer;->array()[B

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->buffer:Lcom/codemao/midi/sun/ModelByteBuffer;

    .line 231
    invoke-virtual {v2}, Lcom/codemao/midi/sun/ModelByteBuffer;->arrayOffset()J

    move-result-wide v2

    long-to-int v3, v2

    iget-object v2, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->buffer:Lcom/codemao/midi/sun/ModelByteBuffer;

    invoke-virtual {v2}, Lcom/codemao/midi/sun/ModelByteBuffer;->capacity()J

    move-result-wide v4

    long-to-int v2, v4

    .line 230
    invoke-static {v0, v1, v3, v2}, Lcom/codemao/midi/sun/AudioFloatInputStream;->getInputStream(Lcom/codemao/midi/javax/sampled/AudioFormat;[BII)Lcom/codemao/midi/sun/AudioFloatInputStream;

    move-result-object v0

    return-object v0
.end method

.method public set8BitExtensionBuffer(Lcom/codemao/midi/sun/ModelByteBuffer;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->buffer8:Lcom/codemao/midi/sun/ModelByteBuffer;

    return-void
.end method

.method public setLoopLength(F)V
    .registers 2

    .line 257
    iput p1, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->loopLength:F

    return-void
.end method

.method public setLoopStart(F)V
    .registers 2

    .line 265
    iput p1, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->loopStart:F

    return-void
.end method

.method public setLoopType(I)V
    .registers 2

    .line 269
    iput p1, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->loopType:I

    return-void
.end method
