.class public Lcom/codemao/toolssdk/dsp/writer/WaveHeader;
.super Ljava/lang/Object;
.source "WaveHeader.java"


# instance fields
.field private mBitsPerSample:S

.field private mFormat:S

.field private mNumBytes:I

.field private mNumChannels:S

.field private mSampleRate:I


# direct methods
.method public constructor <init>(SSISI)V
    .registers 6

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-short p1, p0, Lcom/codemao/toolssdk/dsp/writer/WaveHeader;->mFormat:S

    .line 59
    iput p3, p0, Lcom/codemao/toolssdk/dsp/writer/WaveHeader;->mSampleRate:I

    .line 60
    iput-short p2, p0, Lcom/codemao/toolssdk/dsp/writer/WaveHeader;->mNumChannels:S

    .line 61
    iput-short p4, p0, Lcom/codemao/toolssdk/dsp/writer/WaveHeader;->mBitsPerSample:S

    .line 62
    iput p5, p0, Lcom/codemao/toolssdk/dsp/writer/WaveHeader;->mNumBytes:I

    return-void
.end method

.method private static writeId(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 238
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_11

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method

.method private static writeInt(Ljava/io/OutputStream;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x0

    .line 242
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    .line 243
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    .line 244
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 p1, p1, 0x18

    .line 245
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private static writeShort(Ljava/io/OutputStream;S)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x0

    .line 249
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 p1, p1, 0x8

    .line 250
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 255
    iget-short v1, p0, Lcom/codemao/toolssdk/dsp/writer/WaveHeader;->mFormat:S

    .line 257
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-short v1, p0, Lcom/codemao/toolssdk/dsp/writer/WaveHeader;->mNumChannels:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/codemao/toolssdk/dsp/writer/WaveHeader;->mSampleRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-short v1, p0, Lcom/codemao/toolssdk/dsp/writer/WaveHeader;->mBitsPerSample:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/codemao/toolssdk/dsp/writer/WaveHeader;->mNumBytes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "WaveHeader format=%d numChannels=%d sampleRate=%d bitsPerSample=%d numBytes=%d"

    .line 255
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "RIFF"

    .line 216
    invoke-static {p1, v0}, Lcom/codemao/toolssdk/dsp/writer/WaveHeader;->writeId(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 217
    iget v0, p0, Lcom/codemao/toolssdk/dsp/writer/WaveHeader;->mNumBytes:I

    add-int/lit8 v0, v0, 0x24

    invoke-static {p1, v0}, Lcom/codemao/toolssdk/dsp/writer/WaveHeader;->writeInt(Ljava/io/OutputStream;I)V

    const-string v0, "WAVE"

    .line 218
    invoke-static {p1, v0}, Lcom/codemao/toolssdk/dsp/writer/WaveHeader;->writeId(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v0, "fmt "

    .line 221
    invoke-static {p1, v0}, Lcom/codemao/toolssdk/dsp/writer/WaveHeader;->writeId(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/16 v0, 0x10

    .line 222
    invoke-static {p1, v0}, Lcom/codemao/toolssdk/dsp/writer/WaveHeader;->writeInt(Ljava/io/OutputStream;I)V

    .line 223
    iget-short v0, p0, Lcom/codemao/toolssdk/dsp/writer/WaveHeader;->mFormat:S

    invoke-static {p1, v0}, Lcom/codemao/toolssdk/dsp/writer/WaveHeader;->writeShort(Ljava/io/OutputStream;S)V

    .line 224
    iget-short v0, p0, Lcom/codemao/toolssdk/dsp/writer/WaveHeader;->mNumChannels:S

    invoke-static {p1, v0}, Lcom/codemao/toolssdk/dsp/writer/WaveHeader;->writeShort(Ljava/io/OutputStream;S)V

    .line 225
    iget v0, p0, Lcom/codemao/toolssdk/dsp/writer/WaveHeader;->mSampleRate:I

    invoke-static {p1, v0}, Lcom/codemao/toolssdk/dsp/writer/WaveHeader;->writeInt(Ljava/io/OutputStream;I)V

    .line 226
    iget-short v0, p0, Lcom/codemao/toolssdk/dsp/writer/WaveHeader;->mNumChannels:S

    iget v1, p0, Lcom/codemao/toolssdk/dsp/writer/WaveHeader;->mSampleRate:I

    mul-int v0, v0, v1

    iget-short v1, p0, Lcom/codemao/toolssdk/dsp/writer/WaveHeader;->mBitsPerSample:S

    mul-int v0, v0, v1

    div-int/lit8 v0, v0, 0x8

    invoke-static {p1, v0}, Lcom/codemao/toolssdk/dsp/writer/WaveHeader;->writeInt(Ljava/io/OutputStream;I)V

    .line 227
    iget-short v0, p0, Lcom/codemao/toolssdk/dsp/writer/WaveHeader;->mNumChannels:S

    iget-short v1, p0, Lcom/codemao/toolssdk/dsp/writer/WaveHeader;->mBitsPerSample:S

    mul-int v0, v0, v1

    div-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    invoke-static {p1, v0}, Lcom/codemao/toolssdk/dsp/writer/WaveHeader;->writeShort(Ljava/io/OutputStream;S)V

    .line 228
    iget-short v0, p0, Lcom/codemao/toolssdk/dsp/writer/WaveHeader;->mBitsPerSample:S

    invoke-static {p1, v0}, Lcom/codemao/toolssdk/dsp/writer/WaveHeader;->writeShort(Ljava/io/OutputStream;S)V

    const-string v0, "data"

    .line 231
    invoke-static {p1, v0}, Lcom/codemao/toolssdk/dsp/writer/WaveHeader;->writeId(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 232
    iget v0, p0, Lcom/codemao/toolssdk/dsp/writer/WaveHeader;->mNumBytes:I

    invoke-static {p1, v0}, Lcom/codemao/toolssdk/dsp/writer/WaveHeader;->writeInt(Ljava/io/OutputStream;I)V

    const/16 p1, 0x2c

    return p1
.end method
