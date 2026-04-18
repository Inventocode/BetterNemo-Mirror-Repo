.class public Lcom/codemao/midi/sun/WaveFloatFileReader;
.super Lcom/codemao/midi/javax/sampled/spi/AudioFileReader;
.source "WaveFloatFileReader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Lcom/codemao/midi/javax/sampled/spi/AudioFileReader;-><init>()V

    return-void
.end method

.method private internal_getAudioFileFormat(Ljava/io/InputStream;)Lcom/codemao/midi/javax/sampled/AudioFileFormat;
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    new-instance v0, Lcom/codemao/midi/sun/RIFFReader;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/codemao/midi/sun/RIFFReader;-><init>(Ljava/io/InputStream;)V

    .line 65
    invoke-virtual {v0}, Lcom/codemao/midi/sun/RIFFReader;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RIFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a2

    .line 67
    invoke-virtual {v0}, Lcom/codemao/midi/sun/RIFFReader;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WAVE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9c

    const-wide/16 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 78
    :cond_27
    invoke-virtual {v0}, Lcom/codemao/midi/sun/RIFFReader;->hasNextChunk()Z

    move-result v9

    if-eqz v9, :cond_75

    .line 79
    invoke-virtual {v0}, Lcom/codemao/midi/sun/RIFFReader;->nextChunk()Lcom/codemao/midi/sun/RIFFReader;

    move-result-object v9

    .line 81
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->getFormat()Ljava/lang/String;

    move-result-object v10

    const-string v11, "fmt "

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_64

    .line 84
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5e

    .line 87
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    move-result v1

    .line 88
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedInt()J

    move-result-wide v5

    .line 89
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedInt()J

    .line 90
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    move-result v2

    .line 91
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    move-result v7

    move v8, v7

    move v7, v2

    move-wide v14, v5

    move v6, v1

    move-wide v1, v14

    const/4 v5, 0x1

    goto :goto_64

    .line 86
    :cond_5e
    new-instance v0, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;

    invoke-direct {v0}, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;-><init>()V

    throw v0

    .line 93
    :cond_64
    :goto_64
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->getFormat()Ljava/lang/String;

    move-result-object v9

    const-string v10, "data"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_27

    move v10, v6

    move v11, v7

    move v9, v8

    const/4 v3, 0x1

    goto :goto_78

    :cond_75
    move v10, v6

    move v11, v7

    move v9, v8

    :goto_78
    if-eqz v5, :cond_96

    if-eqz v3, :cond_90

    .line 104
    new-instance v0, Lcom/codemao/midi/javax/sampled/AudioFormat;

    sget-object v7, Lcom/codemao/midi/sun/AudioFloatConverter;->PCM_FLOAT:Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    long-to-float v12, v1

    const/4 v13, 0x0

    move-object v6, v0

    move v8, v12

    invoke-direct/range {v6 .. v13}, Lcom/codemao/midi/javax/sampled/AudioFormat;-><init>(Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;FIIIFZ)V

    .line 107
    new-instance v1, Lcom/codemao/midi/javax/sampled/AudioFileFormat;

    sget-object v2, Lcom/codemao/midi/javax/sampled/AudioFileFormat$Type;->WAVE:Lcom/codemao/midi/javax/sampled/AudioFileFormat$Type;

    const/4 v3, -0x1

    invoke-direct {v1, v2, v0, v3}, Lcom/codemao/midi/javax/sampled/AudioFileFormat;-><init>(Lcom/codemao/midi/javax/sampled/AudioFileFormat$Type;Lcom/codemao/midi/javax/sampled/AudioFormat;I)V

    return-object v1

    .line 102
    :cond_90
    new-instance v0, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;

    invoke-direct {v0}, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;-><init>()V

    throw v0

    .line 100
    :cond_96
    new-instance v0, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;

    invoke-direct {v0}, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;-><init>()V

    throw v0

    .line 68
    :cond_9c
    new-instance v0, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;

    invoke-direct {v0}, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;-><init>()V

    throw v0

    .line 66
    :cond_a2
    new-instance v0, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;

    invoke-direct {v0}, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;-><init>()V

    throw v0
.end method


# virtual methods
.method public getAudioFileFormat(Ljava/io/InputStream;)Lcom/codemao/midi/javax/sampled/AudioFileFormat;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xc8

    .line 51
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 54
    :try_start_5
    invoke-direct {p0, p1}, Lcom/codemao/midi/sun/WaveFloatFileReader;->internal_getAudioFileFormat(Ljava/io/InputStream;)Lcom/codemao/midi/javax/sampled/AudioFileFormat;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 56
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    return-object v0

    :catchall_d
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 57
    throw v0
.end method

.method public getAudioInputStream(Ljava/io/InputStream;)Lcom/codemao/midi/javax/sampled/AudioInputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-virtual {p0, p1}, Lcom/codemao/midi/sun/WaveFloatFileReader;->getAudioFileFormat(Ljava/io/InputStream;)Lcom/codemao/midi/javax/sampled/AudioFileFormat;

    move-result-object v0

    .line 117
    new-instance v1, Lcom/codemao/midi/sun/RIFFReader;

    invoke-direct {v1, p1}, Lcom/codemao/midi/sun/RIFFReader;-><init>(Ljava/io/InputStream;)V

    .line 118
    invoke-virtual {v1}, Lcom/codemao/midi/sun/RIFFReader;->getFormat()Ljava/lang/String;

    move-result-object p1

    const-string v2, "RIFF"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_51

    .line 120
    invoke-virtual {v1}, Lcom/codemao/midi/sun/RIFFReader;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v2, "WAVE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 122
    :cond_21
    invoke-virtual {v1}, Lcom/codemao/midi/sun/RIFFReader;->hasNextChunk()Z

    move-result p1

    if-eqz p1, :cond_45

    .line 123
    invoke-virtual {v1}, Lcom/codemao/midi/sun/RIFFReader;->nextChunk()Lcom/codemao/midi/sun/RIFFReader;

    move-result-object p1

    .line 124
    invoke-virtual {p1}, Lcom/codemao/midi/sun/RIFFReader;->getFormat()Ljava/lang/String;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 125
    new-instance v1, Lcom/codemao/midi/javax/sampled/AudioInputStream;

    invoke-virtual {v0}, Lcom/codemao/midi/javax/sampled/AudioFileFormat;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v0

    .line 126
    invoke-virtual {p1}, Lcom/codemao/midi/sun/RIFFReader;->getSize()J

    move-result-wide v2

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/codemao/midi/javax/sampled/AudioInputStream;-><init>(Ljava/io/InputStream;Lcom/codemao/midi/javax/sampled/AudioFormat;J)V

    return-object v1

    .line 129
    :cond_45
    new-instance p1, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;

    invoke-direct {p1}, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;-><init>()V

    throw p1

    .line 121
    :cond_4b
    new-instance p1, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;

    invoke-direct {p1}, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;-><init>()V

    throw p1

    .line 119
    :cond_51
    new-instance p1, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;

    invoke-direct {p1}, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;-><init>()V

    throw p1
.end method
