.class public Lcom/codemao/toolssdk/dsp/io/UniversalAudioInputStream;
.super Ljava/lang/Object;
.source "UniversalAudioInputStream.java"

# interfaces
.implements Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioInputStream;


# instance fields
.field private final format:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;

.field private final streamSourcePipe:Ljava/lang/String;

.field private final underlyingStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;)V
    .registers 7

    const-string v0, "UniversalAudioInputStream"

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 45
    :try_start_6
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_b} :catch_21

    .line 46
    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FFmpeg result found at : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_1f} :catch_20

    goto :goto_36

    :catch_20
    move-object v1, v2

    .line 48
    :catch_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FFmpeg result not found, should have been created at : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 50
    :goto_36
    iput-object p1, p0, Lcom/codemao/toolssdk/dsp/io/UniversalAudioInputStream;->streamSourcePipe:Ljava/lang/String;

    .line 51
    iput-object v2, p0, Lcom/codemao/toolssdk/dsp/io/UniversalAudioInputStream;->underlyingStream:Ljava/io/InputStream;

    .line 52
    iput-object p2, p0, Lcom/codemao/toolssdk/dsp/io/UniversalAudioInputStream;->format:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/codemao/toolssdk/dsp/io/UniversalAudioInputStream;->underlyingStream:Ljava/io/InputStream;

    if-eqz v0, :cond_7

    .line 82
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_7
    return-void
.end method

.method public destroyPipe()V
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/codemao/toolssdk/dsp/io/UniversalAudioInputStream;->streamSourcePipe:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 99
    invoke-static {v0}, Lcom/codemao/toolssdk/dsp/io/android/AudioDispatcherFactory;->closePipe(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public getFormat()Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/codemao/toolssdk/dsp/io/UniversalAudioInputStream;->format:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;

    return-object v0
.end method

.method public read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/codemao/toolssdk/dsp/io/UniversalAudioInputStream;->underlyingStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public skip(J)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    int-to-long v2, v0

    cmp-long v4, v2, p1

    if-gez v4, :cond_15

    .line 66
    iget-object v2, p0, Lcom/codemao/toolssdk/dsp/io/UniversalAudioInputStream;->underlyingStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_12

    add-int/lit8 v1, v1, 0x1

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_15
    int-to-long p1, v1

    return-wide p1
.end method
