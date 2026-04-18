.class public Lcom/codemao/toolssdk/dsp/writer/WriterProcessor;
.super Ljava/lang/Object;
.source "WriterProcessor.java"

# interfaces
.implements Lcom/codemao/toolssdk/dsp/AudioProcessor;


# instance fields
.field audioFormat:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;

.field private audioLen:I

.field output:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;Ljava/io/RandomAccessFile;)V
    .registers 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/codemao/toolssdk/dsp/writer/WriterProcessor;->audioLen:I

    .line 28
    iput-object p2, p0, Lcom/codemao/toolssdk/dsp/writer/WriterProcessor;->output:Ljava/io/RandomAccessFile;

    .line 29
    iput-object p1, p0, Lcom/codemao/toolssdk/dsp/writer/WriterProcessor;->audioFormat:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;

    const/16 p1, 0x2c

    :try_start_c
    new-array p1, p1, [B

    .line 31
    invoke-virtual {p2, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_16
    return-void
.end method


# virtual methods
.method public process(Lcom/codemao/toolssdk/dsp/AudioEvent;)Z
    .registers 4

    .line 39
    :try_start_0
    iget v0, p0, Lcom/codemao/toolssdk/dsp/writer/WriterProcessor;->audioLen:I

    invoke-virtual {p1}, Lcom/codemao/toolssdk/dsp/AudioEvent;->getByteBuffer()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/codemao/toolssdk/dsp/writer/WriterProcessor;->audioLen:I

    .line 41
    iget-object v0, p0, Lcom/codemao/toolssdk/dsp/writer/WriterProcessor;->output:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/dsp/AudioEvent;->getByteBuffer()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_18
    const/4 p1, 0x1

    return p1
.end method

.method public processingFinished()V
    .registers 8

    .line 51
    new-instance v6, Lcom/codemao/toolssdk/dsp/writer/WaveHeader;

    iget-object v0, p0, Lcom/codemao/toolssdk/dsp/writer/WriterProcessor;->audioFormat:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;

    .line 52
    invoke-virtual {v0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getChannels()I

    move-result v0

    int-to-short v2, v0

    iget-object v0, p0, Lcom/codemao/toolssdk/dsp/writer/WriterProcessor;->audioFormat:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;

    .line 53
    invoke-virtual {v0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleRate()F

    move-result v0

    float-to-int v3, v0

    iget v5, p0, Lcom/codemao/toolssdk/dsp/writer/WriterProcessor;->audioLen:I

    const/4 v1, 0x1

    const/16 v4, 0x10

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/codemao/toolssdk/dsp/writer/WaveHeader;-><init>(SSISI)V

    .line 54
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 56
    :try_start_1e
    invoke-virtual {v6, v0}, Lcom/codemao/toolssdk/dsp/writer/WaveHeader;->write(Ljava/io/OutputStream;)I

    .line 57
    iget-object v1, p0, Lcom/codemao/toolssdk/dsp/writer/WriterProcessor;->output:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 58
    iget-object v1, p0, Lcom/codemao/toolssdk/dsp/writer/WriterProcessor;->output:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 59
    iget-object v0, p0, Lcom/codemao/toolssdk/dsp/writer/WriterProcessor;->output:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_36} :catch_37

    goto :goto_3b

    :catch_37
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3b
    return-void
.end method
