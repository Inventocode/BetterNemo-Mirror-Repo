.class public abstract Lcom/codemao/midi/javax/sampled/spi/AudioFileReader;
.super Ljava/lang/Object;
.source "AudioFileReader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAudioFileFormat(Ljava/io/InputStream;)Lcom/codemao/midi/javax/sampled/AudioFileFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getAudioInputStream(Ljava/io/InputStream;)Lcom/codemao/midi/javax/sampled/AudioInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
