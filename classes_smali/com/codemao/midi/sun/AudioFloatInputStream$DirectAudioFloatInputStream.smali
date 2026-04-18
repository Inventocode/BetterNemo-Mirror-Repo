.class Lcom/codemao/midi/sun/AudioFloatInputStream$DirectAudioFloatInputStream;
.super Lcom/codemao/midi/sun/AudioFloatInputStream;
.source "AudioFloatInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/sun/AudioFloatInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectAudioFloatInputStream"
.end annotation


# instance fields
.field private buffer:[B

.field private converter:Lcom/codemao/midi/sun/AudioFloatConverter;

.field private framesize_pc:I

.field private stream:Lcom/codemao/midi/javax/sampled/AudioInputStream;


# direct methods
.method public constructor <init>(Lcom/codemao/midi/javax/sampled/AudioInputStream;)V
    .registers 12

    .line 133
    invoke-direct {p0}, Lcom/codemao/midi/sun/AudioFloatInputStream;-><init>()V

    .line 134
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioInputStream;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/midi/sun/AudioFloatConverter;->getConverter(Lcom/codemao/midi/javax/sampled/AudioFormat;)Lcom/codemao/midi/sun/AudioFloatConverter;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$DirectAudioFloatInputStream;->converter:Lcom/codemao/midi/sun/AudioFloatConverter;

    if-nez v0, :cond_50

    .line 136
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioInputStream;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v0

    .line 139
    sget-object v2, Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;->PCM_SIGNED:Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    invoke-static {v2, v0}, Lcom/codemao/midi/javax/sampled/AudioSystem;->getTargetFormats(Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;Lcom/codemao/midi/javax/sampled/AudioFormat;)[Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v1

    .line 141
    array-length v3, v1

    if-eqz v3, :cond_20

    const/4 v0, 0x0

    .line 142
    aget-object v0, v1, v0

    goto :goto_42

    .line 144
    :cond_20
    invoke-virtual {v0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleRate()F

    move-result v7

    .line 145
    invoke-virtual {v0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    .line 146
    invoke-virtual {v0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getFrameSize()I

    .line 147
    invoke-virtual {v0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getFrameRate()F

    .line 149
    invoke-virtual {v0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getChannels()I

    move-result v1

    mul-int/lit8 v6, v1, 0x2

    .line 152
    new-instance v9, Lcom/codemao/midi/javax/sampled/AudioFormat;

    .line 154
    invoke-virtual {v0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getChannels()I

    move-result v5

    const/4 v8, 0x0

    const/16 v4, 0x10

    move-object v1, v9

    move v3, v7

    invoke-direct/range {v1 .. v8}, Lcom/codemao/midi/javax/sampled/AudioFormat;-><init>(Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;FIIIFZ)V

    move-object v0, v9

    .line 158
    :goto_42
    invoke-static {v0, p1}, Lcom/codemao/midi/javax/sampled/AudioSystem;->getAudioInputStream(Lcom/codemao/midi/javax/sampled/AudioFormat;Lcom/codemao/midi/javax/sampled/AudioInputStream;)Lcom/codemao/midi/javax/sampled/AudioInputStream;

    move-result-object p1

    .line 159
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioInputStream;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/midi/sun/AudioFloatConverter;->getConverter(Lcom/codemao/midi/javax/sampled/AudioFormat;)Lcom/codemao/midi/sun/AudioFloatConverter;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$DirectAudioFloatInputStream;->converter:Lcom/codemao/midi/sun/AudioFloatConverter;

    .line 161
    :cond_50
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioInputStream;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getFrameSize()I

    move-result v0

    .line 162
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioInputStream;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getChannels()I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$DirectAudioFloatInputStream;->framesize_pc:I

    .line 163
    iput-object p1, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$DirectAudioFloatInputStream;->stream:Lcom/codemao/midi/javax/sampled/AudioInputStream;

    return-void
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$DirectAudioFloatInputStream;->stream:Lcom/codemao/midi/javax/sampled/AudioInputStream;

    invoke-virtual {v0}, Lcom/codemao/midi/javax/sampled/AudioInputStream;->available()I

    move-result v0

    iget v1, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$DirectAudioFloatInputStream;->framesize_pc:I

    div-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$DirectAudioFloatInputStream;->stream:Lcom/codemao/midi/javax/sampled/AudioInputStream;

    invoke-virtual {v0}, Lcom/codemao/midi/javax/sampled/AudioInputStream;->close()V

    return-void
.end method

.method public getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$DirectAudioFloatInputStream;->stream:Lcom/codemao/midi/javax/sampled/AudioInputStream;

    invoke-virtual {v0}, Lcom/codemao/midi/javax/sampled/AudioInputStream;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v0

    return-object v0
.end method

.method public getFrameLength()J
    .registers 3

    .line 171
    iget-object v0, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$DirectAudioFloatInputStream;->stream:Lcom/codemao/midi/javax/sampled/AudioInputStream;

    invoke-virtual {v0}, Lcom/codemao/midi/javax/sampled/AudioInputStream;->getFrameLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public mark(I)V
    .registers 4

    .line 202
    iget-object v0, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$DirectAudioFloatInputStream;->stream:Lcom/codemao/midi/javax/sampled/AudioInputStream;

    iget v1, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$DirectAudioFloatInputStream;->framesize_pc:I

    mul-int p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/codemao/midi/javax/sampled/AudioInputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .registers 2

    .line 206
    iget-object v0, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$DirectAudioFloatInputStream;->stream:Lcom/codemao/midi/javax/sampled/AudioInputStream;

    invoke-virtual {v0}, Lcom/codemao/midi/javax/sampled/AudioInputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read([FII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget v0, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$DirectAudioFloatInputStream;->framesize_pc:I

    mul-int p3, p3, v0

    .line 176
    iget-object v0, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$DirectAudioFloatInputStream;->buffer:[B

    if-eqz v0, :cond_b

    array-length v0, v0

    if-ge v0, p3, :cond_f

    .line 177
    :cond_b
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$DirectAudioFloatInputStream;->buffer:[B

    .line 178
    :cond_f
    iget-object v0, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$DirectAudioFloatInputStream;->stream:Lcom/codemao/midi/javax/sampled/AudioInputStream;

    iget-object v1, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$DirectAudioFloatInputStream;->buffer:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p3}, Lcom/codemao/midi/javax/sampled/AudioInputStream;->read([BII)I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_1c

    return v0

    .line 181
    :cond_1c
    iget-object v0, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$DirectAudioFloatInputStream;->converter:Lcom/codemao/midi/sun/AudioFloatConverter;

    iget-object v1, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$DirectAudioFloatInputStream;->buffer:[B

    iget v2, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$DirectAudioFloatInputStream;->framesize_pc:I

    div-int v2, p3, v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/codemao/midi/sun/AudioFloatConverter;->toFloatArray([B[FII)[F

    .line 182
    iget p1, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$DirectAudioFloatInputStream;->framesize_pc:I

    div-int/2addr p3, p1

    return p3
.end method

.method public reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$DirectAudioFloatInputStream;->stream:Lcom/codemao/midi/javax/sampled/AudioInputStream;

    invoke-virtual {v0}, Lcom/codemao/midi/javax/sampled/AudioInputStream;->reset()V

    return-void
.end method

.method public skip(J)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    iget v0, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$DirectAudioFloatInputStream;->framesize_pc:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    .line 187
    iget-object v0, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$DirectAudioFloatInputStream;->stream:Lcom/codemao/midi/javax/sampled/AudioInputStream;

    invoke-virtual {v0, p1, p2}, Lcom/codemao/midi/javax/sampled/AudioInputStream;->skip(J)J

    move-result-wide p1

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_12

    return-wide v0

    .line 190
    :cond_12
    iget v0, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$DirectAudioFloatInputStream;->framesize_pc:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method
