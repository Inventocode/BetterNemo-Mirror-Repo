.class Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;
.super Lcom/codemao/midi/sun/AudioFloatInputStream;
.source "AudioFloatFormatConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/sun/AudioFloatFormatConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioFloatInputStreamChannelMixer"
.end annotation


# instance fields
.field private ais:Lcom/codemao/midi/sun/AudioFloatInputStream;

.field private conversion_buffer:[F

.field private sourceChannels:I

.field private targetChannels:I

.field private targetFormat:Lcom/codemao/midi/javax/sampled/AudioFormat;


# direct methods
.method public constructor <init>(Lcom/codemao/midi/sun/AudioFloatInputStream;I)V
    .registers 12

    .line 130
    invoke-direct {p0}, Lcom/codemao/midi/sun/AudioFloatInputStream;-><init>()V

    .line 131
    invoke-virtual {p1}, Lcom/codemao/midi/sun/AudioFloatInputStream;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getChannels()I

    move-result v0

    iput v0, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->sourceChannels:I

    .line 132
    iput p2, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->targetChannels:I

    .line 133
    iput-object p1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->ais:Lcom/codemao/midi/sun/AudioFloatInputStream;

    .line 134
    invoke-virtual {p1}, Lcom/codemao/midi/sun/AudioFloatInputStream;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object p1

    .line 135
    new-instance v8, Lcom/codemao/midi/javax/sampled/AudioFormat;

    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getEncoding()Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    move-result-object v1

    .line 136
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleRate()F

    move-result v2

    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v3

    .line 137
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getFrameSize()I

    move-result v0

    iget v4, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->sourceChannels:I

    div-int/2addr v0, v4

    mul-int v5, v0, p2

    .line 138
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getFrameRate()F

    move-result v6

    .line 139
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->isBigEndian()Z

    move-result v7

    move-object v0, v8

    move v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/codemao/midi/javax/sampled/AudioFormat;-><init>(Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;FIIIFZ)V

    iput-object v8, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->targetFormat:Lcom/codemao/midi/javax/sampled/AudioFormat;

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

    .line 143
    iget-object v0, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->ais:Lcom/codemao/midi/sun/AudioFloatInputStream;

    invoke-virtual {v0}, Lcom/codemao/midi/sun/AudioFloatInputStream;->available()I

    move-result v0

    iget v1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->sourceChannels:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->targetChannels:I

    mul-int v0, v0, v1

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->ais:Lcom/codemao/midi/sun/AudioFloatInputStream;

    invoke-virtual {v0}, Lcom/codemao/midi/sun/AudioFloatInputStream;->close()V

    return-void
.end method

.method public getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->targetFormat:Lcom/codemao/midi/javax/sampled/AudioFormat;

    return-object v0
.end method

.method public getFrameLength()J
    .registers 3

    .line 155
    iget-object v0, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->ais:Lcom/codemao/midi/sun/AudioFloatInputStream;

    invoke-virtual {v0}, Lcom/codemao/midi/sun/AudioFloatInputStream;->getFrameLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public mark(I)V
    .registers 4

    .line 159
    iget-object v0, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->ais:Lcom/codemao/midi/sun/AudioFloatInputStream;

    iget v1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->targetChannels:I

    div-int/2addr p1, v1

    iget v1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->sourceChannels:I

    mul-int p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/codemao/midi/sun/AudioFloatInputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->ais:Lcom/codemao/midi/sun/AudioFloatInputStream;

    invoke-virtual {v0}, Lcom/codemao/midi/sun/AudioFloatInputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read([FII)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    iget v0, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->targetChannels:I

    div-int v0, p3, v0

    iget v1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->sourceChannels:I

    mul-int v0, v0, v1

    .line 168
    iget-object v1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->conversion_buffer:[F

    if-eqz v1, :cond_f

    array-length v1, v1

    if-ge v1, v0, :cond_13

    .line 169
    :cond_f
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->conversion_buffer:[F

    .line 170
    :cond_13
    iget-object v1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->ais:Lcom/codemao/midi/sun/AudioFloatInputStream;

    iget-object v2, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->conversion_buffer:[F

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/codemao/midi/sun/AudioFloatInputStream;->read([FII)I

    move-result v1

    if-gez v1, :cond_1f

    return v1

    .line 173
    :cond_1f
    iget v2, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->sourceChannels:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3d

    .line 174
    iget p3, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->targetChannels:I

    const/4 v2, 0x0

    .line 175
    :goto_27
    iget v4, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->targetChannels:I

    if-ge v2, v4, :cond_a1

    add-int v4, p2, v2

    const/4 v5, 0x0

    :goto_2e
    if-ge v5, v0, :cond_3a

    .line 177
    iget-object v6, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->conversion_buffer:[F

    aget v6, v6, v5

    aput v6, p1, v4

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, p3

    goto :goto_2e

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 180
    :cond_3d
    iget v5, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->targetChannels:I

    if-ne v5, v4, :cond_75

    move v5, p2

    const/4 p3, 0x0

    :goto_43
    if-ge p3, v0, :cond_4e

    .line 183
    iget-object v6, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->conversion_buffer:[F

    aget v6, v6, p3

    aput v6, p1, v5

    add-int/2addr p3, v2

    add-int/2addr v5, v4

    goto :goto_43

    :cond_4e
    const/4 p3, 0x1

    .line 185
    :goto_4f
    iget v5, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->sourceChannels:I

    if-ge p3, v5, :cond_66

    move v6, p2

    move v5, p3

    :goto_55
    if-ge v5, v0, :cond_63

    .line 187
    aget v7, p1, v6

    iget-object v8, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->conversion_buffer:[F

    aget v8, v8, v5

    add-float/2addr v7, v8

    aput v7, p1, v6

    add-int/2addr v5, v2

    add-int/2addr v6, v4

    goto :goto_55

    :cond_63
    add-int/lit8 p3, p3, 0x1

    goto :goto_4f

    :cond_66
    const/high16 p3, 0x3f800000  # 1.0f

    int-to-float v5, v5

    div-float/2addr p3, v5

    :goto_6a
    if-ge v3, v0, :cond_a1

    .line 192
    aget v5, p1, p2

    mul-float v5, v5, p3

    aput v5, p1, p2

    add-int/2addr v3, v2

    add-int/2addr p2, v4

    goto :goto_6a

    .line 195
    :cond_75
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr p3, p2

    .line 197
    iget v2, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->targetChannels:I

    .line 198
    iget v4, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->sourceChannels:I

    :goto_7e
    if-ge v3, v0, :cond_91

    add-int v5, p2, v3

    move v6, v3

    :goto_83
    if-ge v5, p3, :cond_8e

    .line 201
    iget-object v7, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->conversion_buffer:[F

    aget v7, v7, v6

    aput v7, p1, v5

    add-int/2addr v5, v2

    add-int/2addr v6, v4

    goto :goto_83

    :cond_8e
    add-int/lit8 v3, v3, 0x1

    goto :goto_7e

    .line 204
    :cond_91
    :goto_91
    iget v3, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->targetChannels:I

    if-ge v0, v3, :cond_a1

    add-int v3, p2, v0

    :goto_97
    if-ge v3, p3, :cond_9e

    const/4 v4, 0x0

    .line 206
    aput v4, p1, v3

    add-int/2addr v3, v2

    goto :goto_97

    :cond_9e
    add-int/lit8 v0, v0, 0x1

    goto :goto_91

    .line 210
    :cond_a1
    iget p1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->sourceChannels:I

    div-int/2addr v1, p1

    iget p1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->targetChannels:I

    mul-int v1, v1, p1

    return v1
.end method

.method public reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->ais:Lcom/codemao/midi/sun/AudioFloatInputStream;

    invoke-virtual {v0}, Lcom/codemao/midi/sun/AudioFloatInputStream;->reset()V

    return-void
.end method

.method public skip(J)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->ais:Lcom/codemao/midi/sun/AudioFloatInputStream;

    iget v1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->targetChannels:I

    int-to-long v1, v1

    div-long/2addr p1, v1

    iget v1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->sourceChannels:I

    int-to-long v1, v1

    mul-long p1, p1, v1

    invoke-virtual {v0, p1, p2}, Lcom/codemao/midi/sun/AudioFloatInputStream;->skip(J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_16

    return-wide p1

    .line 221
    :cond_16
    iget v0, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->sourceChannels:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    iget v0, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;->targetChannels:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    return-wide p1
.end method
