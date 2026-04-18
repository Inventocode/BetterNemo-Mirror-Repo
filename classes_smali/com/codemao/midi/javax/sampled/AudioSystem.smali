.class public Lcom/codemao/midi/javax/sampled/AudioSystem;
.super Ljava/lang/Object;
.source "AudioSystem.java"


# direct methods
.method public static getAudioFileFormat(Ljava/io/InputStream;)Lcom/codemao/midi/javax/sampled/AudioFileFormat;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    invoke-static {}, Lcom/codemao/midi/javax/sampled/AudioSystem;->getAudioFileReaders()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 230
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 231
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/midi/javax/sampled/spi/AudioFileReader;

    .line 233
    :try_start_11
    invoke-virtual {v2, p0}, Lcom/codemao/midi/javax/sampled/spi/AudioFileReader;->getAudioFileFormat(Ljava/io/InputStream;)Lcom/codemao/midi/javax/sampled/AudioFileFormat;

    move-result-object p0
    :try_end_15
    .catch Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException; {:try_start_11 .. :try_end_15} :catch_16

    goto :goto_1a

    :catch_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    if-eqz p0, :cond_1d

    return-object p0

    .line 242
    :cond_1d
    new-instance p0, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;

    const-string v0, "file is not a supported file type"

    invoke-direct {p0, v0}, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getAudioFileReaders()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/midi/javax/sampled/spi/AudioFileReader;",
            ">;"
        }
    .end annotation

    .line 525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 526
    new-instance v1, Lcom/codemao/midi/sun/WaveFloatFileReader;

    invoke-direct {v1}, Lcom/codemao/midi/sun/WaveFloatFileReader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    new-instance v1, Lcom/codemao/midi/sun/WaveExtensibleFileReader;

    invoke-direct {v1}, Lcom/codemao/midi/sun/WaveExtensibleFileReader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getAudioInputStream(Lcom/codemao/midi/javax/sampled/AudioFormat;Lcom/codemao/midi/javax/sampled/AudioInputStream;)Lcom/codemao/midi/javax/sampled/AudioInputStream;
    .registers 6

    .line 316
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioInputStream;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->matches(Lcom/codemao/midi/javax/sampled/AudioFormat;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p1

    .line 320
    :cond_b
    invoke-static {}, Lcom/codemao/midi/javax/sampled/AudioSystem;->getFormatConversionProviders()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 322
    :goto_10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 324
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/midi/javax/sampled/spi/FormatConversionProvider;

    .line 326
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioInputStream;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v3

    .line 325
    invoke-virtual {v2, p0, v3}, Lcom/codemao/midi/javax/sampled/spi/FormatConversionProvider;->isConversionSupported(Lcom/codemao/midi/javax/sampled/AudioFormat;Lcom/codemao/midi/javax/sampled/AudioFormat;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 327
    invoke-virtual {v2, p0, p1}, Lcom/codemao/midi/javax/sampled/spi/FormatConversionProvider;->getAudioInputStream(Lcom/codemao/midi/javax/sampled/AudioFormat;Lcom/codemao/midi/javax/sampled/AudioInputStream;)Lcom/codemao/midi/javax/sampled/AudioInputStream;

    move-result-object p0

    return-object p0

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 332
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported conversion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " from "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioInputStream;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAudioInputStream(Ljava/io/InputStream;)Lcom/codemao/midi/javax/sampled/AudioInputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    invoke-static {}, Lcom/codemao/midi/javax/sampled/AudioSystem;->getAudioFileReaders()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 278
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 279
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/midi/javax/sampled/spi/AudioFileReader;

    .line 281
    :try_start_11
    invoke-virtual {v2, p0}, Lcom/codemao/midi/javax/sampled/spi/AudioFileReader;->getAudioInputStream(Ljava/io/InputStream;)Lcom/codemao/midi/javax/sampled/AudioInputStream;

    move-result-object p0
    :try_end_15
    .catch Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException; {:try_start_11 .. :try_end_15} :catch_16

    goto :goto_1a

    :catch_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    if-eqz p0, :cond_1d

    return-object p0

    .line 290
    :cond_1d
    new-instance p0, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;

    const-string v0, "could not get audio input stream from input stream"

    invoke-direct {p0, v0}, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getFormatConversionProviders()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/midi/javax/sampled/spi/FormatConversionProvider;",
            ">;"
        }
    .end annotation

    .line 508
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 509
    new-instance v1, Lcom/codemao/midi/sun/AudioFloatFormatConverter;

    invoke-direct {v1}, Lcom/codemao/midi/sun/AudioFloatFormatConverter;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getSourceDataLine(Lcom/codemao/midi/javax/sampled/AudioFormat;)Lcom/codemao/midi/javax/sampled/SourceDataLine;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/midi/javax/sampled/LineUnavailableException;
        }
    .end annotation

    .line 198
    new-instance v0, Lcom/codemao/midi/javax/media/SourceDataLineImpl;

    invoke-direct {v0, p0}, Lcom/codemao/midi/javax/media/SourceDataLineImpl;-><init>(Lcom/codemao/midi/javax/sampled/AudioFormat;)V

    return-object v0
.end method

.method public static getTargetFormats(Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;Lcom/codemao/midi/javax/sampled/AudioFormat;)[Lcom/codemao/midi/javax/sampled/AudioFormat;
    .registers 9

    .line 468
    invoke-static {}, Lcom/codemao/midi/javax/sampled/AudioSystem;->getFormatConversionProviders()Ljava/util/List;

    move-result-object v0

    .line 469
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 477
    :goto_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_24

    .line 478
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/midi/javax/sampled/spi/FormatConversionProvider;

    .line 479
    invoke-virtual {v5, p0, p1}, Lcom/codemao/midi/javax/sampled/spi/FormatConversionProvider;->getTargetFormats(Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;Lcom/codemao/midi/javax/sampled/AudioFormat;)[Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v5

    .line 480
    array-length v6, v5

    add-int/2addr v4, v6

    .line 481
    invoke-virtual {v1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 486
    :cond_24
    new-array p0, v4, [Lcom/codemao/midi/javax/sampled/AudioFormat;

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 487
    :goto_28
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge p1, v3, :cond_45

    .line 488
    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/codemao/midi/javax/sampled/AudioFormat;

    const/4 v4, 0x0

    .line 489
    :goto_35
    array-length v5, v3

    if-ge v4, v5, :cond_42

    add-int/lit8 v5, v0, 0x1

    .line 490
    aget-object v6, v3, v4

    aput-object v6, p0, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v5

    goto :goto_35

    :cond_42
    add-int/lit8 p1, p1, 0x1

    goto :goto_28

    :cond_45
    return-object p0
.end method
