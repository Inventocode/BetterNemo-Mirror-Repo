.class public interface abstract Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioInputStream;
.super Ljava/lang/Object;
.source "TarsosDSPAudioInputStream.java"


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract destroyPipe()V
.end method

.method public abstract getFormat()Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;
.end method

.method public abstract read([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract skip(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
