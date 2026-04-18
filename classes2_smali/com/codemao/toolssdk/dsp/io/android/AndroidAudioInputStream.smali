.class public Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioInputStream;
.super Ljava/lang/Object;
.source "AndroidAudioInputStream.java"

# interfaces
.implements Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioInputStream;


# instance fields
.field private final format:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;

.field private final underlyingStream:Landroid/media/AudioRecord;


# direct methods
.method public constructor <init>(Landroid/media/AudioRecord;Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioInputStream;->underlyingStream:Landroid/media/AudioRecord;

    .line 39
    iput-object p2, p0, Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioInputStream;->format:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;

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

    .line 59
    iget-object v0, p0, Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioInputStream;->underlyingStream:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 60
    iget-object v0, p0, Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioInputStream;->underlyingStream:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    return-void
.end method

.method public destroyPipe()V
    .registers 1

    return-void
.end method

.method public getFormat()Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioInputStream;->format:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;

    return-object v0
.end method

.method public read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioInputStream;->underlyingStream:Landroid/media/AudioRecord;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioRecord;->read([BII)I

    move-result p1

    return p1
.end method

.method public skip(J)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Can not skip in audio stream"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
