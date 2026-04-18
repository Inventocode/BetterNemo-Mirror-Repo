.class public Lcom/codemao/midi/sun/AudioFloatFormatConverter;
.super Lcom/codemao/midi/javax/sampled/spi/FormatConversionProvider;
.source "AudioFloatFormatConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;,
        Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;,
        Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Lcom/codemao/midi/javax/sampled/spi/FormatConversionProvider;-><init>()V

    .line 471
    sget-object v0, Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;->PCM_SIGNED:Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    sget-object v0, Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;->PCM_UNSIGNED:Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    sget-object v0, Lcom/codemao/midi/sun/AudioFloatConverter;->PCM_FLOAT:Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    return-void
.end method


# virtual methods
.method public getAudioInputStream(Lcom/codemao/midi/javax/sampled/AudioFormat;Lcom/codemao/midi/javax/sampled/AudioInputStream;)Lcom/codemao/midi/javax/sampled/AudioInputStream;
    .registers 6

    .line 493
    invoke-virtual {p2}, Lcom/codemao/midi/javax/sampled/AudioInputStream;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/codemao/midi/sun/AudioFloatFormatConverter;->isConversionSupported(Lcom/codemao/midi/javax/sampled/AudioFormat;Lcom/codemao/midi/javax/sampled/AudioFormat;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 498
    invoke-static {p2}, Lcom/codemao/midi/sun/AudioFloatInputStream;->getInputStream(Lcom/codemao/midi/javax/sampled/AudioInputStream;)Lcom/codemao/midi/sun/AudioFloatInputStream;

    move-result-object p2

    .line 497
    invoke-virtual {p0, p1, p2}, Lcom/codemao/midi/sun/AudioFloatFormatConverter;->getAudioInputStream(Lcom/codemao/midi/javax/sampled/AudioFormat;Lcom/codemao/midi/sun/AudioFloatInputStream;)Lcom/codemao/midi/javax/sampled/AudioInputStream;

    move-result-object p1

    return-object p1

    .line 494
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported conversion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {p2}, Lcom/codemao/midi/javax/sampled/AudioInputStream;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/midi/javax/sampled/AudioFormat;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAudioInputStream(Lcom/codemao/midi/javax/sampled/AudioFormat;Lcom/codemao/midi/sun/AudioFloatInputStream;)Lcom/codemao/midi/javax/sampled/AudioInputStream;
    .registers 8

    .line 504
    invoke-virtual {p2}, Lcom/codemao/midi/sun/AudioFloatInputStream;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/codemao/midi/sun/AudioFloatFormatConverter;->isConversionSupported(Lcom/codemao/midi/javax/sampled/AudioFormat;Lcom/codemao/midi/javax/sampled/AudioFormat;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 508
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getChannels()I

    move-result v0

    invoke-virtual {p2}, Lcom/codemao/midi/sun/AudioFloatInputStream;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v1

    .line 509
    invoke-virtual {v1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getChannels()I

    move-result v1

    if-eq v0, v1, :cond_22

    .line 510
    new-instance v0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;

    .line 511
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getChannels()I

    move-result v1

    invoke-direct {v0, p2, v1}, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer;-><init>(Lcom/codemao/midi/sun/AudioFloatInputStream;I)V

    move-object p2, v0

    .line 512
    :cond_22
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleRate()F

    move-result v0

    .line 513
    invoke-virtual {p2}, Lcom/codemao/midi/sun/AudioFloatInputStream;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleRate()F

    move-result v1

    sub-float/2addr v0, v1

    .line 512
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL  # 1.0E-6

    cmpl-double v4, v0, v2

    if-lez v4, :cond_43

    .line 514
    new-instance v0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;

    invoke-direct {v0, p2, p1}, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatInputStreamResampler;-><init>(Lcom/codemao/midi/sun/AudioFloatInputStream;Lcom/codemao/midi/javax/sampled/AudioFormat;)V

    move-object p2, v0

    .line 516
    :cond_43
    new-instance v0, Lcom/codemao/midi/javax/sampled/AudioInputStream;

    new-instance v1, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;

    invoke-direct {v1, p1, p2}, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;-><init>(Lcom/codemao/midi/javax/sampled/AudioFormat;Lcom/codemao/midi/sun/AudioFloatInputStream;)V

    .line 518
    invoke-virtual {p2}, Lcom/codemao/midi/sun/AudioFloatInputStream;->getFrameLength()J

    move-result-wide v2

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/codemao/midi/javax/sampled/AudioInputStream;-><init>(Ljava/io/InputStream;Lcom/codemao/midi/javax/sampled/AudioFormat;J)V

    return-object v0

    .line 505
    :cond_52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported conversion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual {p2}, Lcom/codemao/midi/sun/AudioFloatInputStream;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/midi/javax/sampled/AudioFormat;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTargetFormats(Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;Lcom/codemao/midi/javax/sampled/AudioFormat;)[Lcom/codemao/midi/javax/sampled/AudioFormat;
    .registers 16

    .line 540
    invoke-static {p2}, Lcom/codemao/midi/sun/AudioFloatConverter;->getConverter(Lcom/codemao/midi/javax/sampled/AudioFormat;)Lcom/codemao/midi/sun/AudioFloatConverter;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/codemao/midi/javax/sampled/AudioFormat;

    return-object p1

    .line 542
    :cond_a
    invoke-virtual {p2}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getChannels()I

    move-result p2

    .line 544
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 546
    sget-object v1, Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;->PCM_SIGNED:Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    invoke-virtual {p1, v1}, Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 547
    new-instance v9, Lcom/codemao/midi/javax/sampled/AudioFormat;

    const/high16 v2, -0x40800000  # -1.0f

    const/16 v3, 0x8

    const/high16 v6, -0x40800000  # -1.0f

    const/4 v7, 0x0

    move-object v0, v9

    move v4, p2

    move v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/codemao/midi/javax/sampled/AudioFormat;-><init>(Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;FIIIFZ)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    :cond_2d
    sget-object v1, Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;->PCM_UNSIGNED:Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    invoke-virtual {p1, v1}, Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 551
    new-instance v9, Lcom/codemao/midi/javax/sampled/AudioFormat;

    const/high16 v2, -0x40800000  # -1.0f

    const/16 v3, 0x8

    const/high16 v6, -0x40800000  # -1.0f

    const/4 v7, 0x0

    move-object v0, v9

    move v4, p2

    move v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/codemao/midi/javax/sampled/AudioFormat;-><init>(Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;FIIIFZ)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_47
    const/16 v0, 0x10

    const/16 v9, 0x10

    :goto_4b
    const/16 v0, 0x20

    if-ge v9, v0, :cond_a2

    .line 556
    sget-object v10, Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;->PCM_SIGNED:Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    invoke-virtual {p1, v10}, Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 557
    new-instance v11, Lcom/codemao/midi/javax/sampled/AudioFormat;

    const/high16 v2, -0x40800000  # -1.0f

    mul-int v0, p2, v9

    div-int/lit8 v12, v0, 0x8

    const/high16 v6, -0x40800000  # -1.0f

    const/4 v7, 0x0

    move-object v0, v11

    move-object v1, v10

    move v3, v9

    move v4, p2

    move v5, v12

    invoke-direct/range {v0 .. v7}, Lcom/codemao/midi/javax/sampled/AudioFormat;-><init>(Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;FIIIFZ)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    new-instance v11, Lcom/codemao/midi/javax/sampled/AudioFormat;

    const/4 v7, 0x1

    move-object v0, v11

    invoke-direct/range {v0 .. v7}, Lcom/codemao/midi/javax/sampled/AudioFormat;-><init>(Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;FIIIFZ)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    :cond_77
    sget-object v10, Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;->PCM_UNSIGNED:Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    invoke-virtual {p1, v10}, Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 565
    new-instance v11, Lcom/codemao/midi/javax/sampled/AudioFormat;

    const/high16 v2, -0x40800000  # -1.0f

    mul-int v0, p2, v9

    div-int/lit8 v12, v0, 0x8

    const/high16 v6, -0x40800000  # -1.0f

    const/4 v7, 0x1

    move-object v0, v11

    move-object v1, v10

    move v3, v9

    move v4, p2

    move v5, v12

    invoke-direct/range {v0 .. v7}, Lcom/codemao/midi/javax/sampled/AudioFormat;-><init>(Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;FIIIFZ)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    new-instance v11, Lcom/codemao/midi/javax/sampled/AudioFormat;

    const/4 v7, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v7}, Lcom/codemao/midi/javax/sampled/AudioFormat;-><init>(Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;FIIIFZ)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9f
    add-int/lit8 v9, v9, 0x8

    goto :goto_4b

    .line 574
    :cond_a2
    sget-object v9, Lcom/codemao/midi/sun/AudioFloatConverter;->PCM_FLOAT:Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    invoke-virtual {p1, v9}, Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e2

    .line 575
    new-instance p1, Lcom/codemao/midi/javax/sampled/AudioFormat;

    const/high16 v2, -0x40800000  # -1.0f

    const/16 v3, 0x20

    mul-int/lit8 v10, p2, 0x4

    const/high16 v6, -0x40800000  # -1.0f

    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, v9

    move v4, p2

    move v5, v10

    invoke-direct/range {v0 .. v7}, Lcom/codemao/midi/javax/sampled/AudioFormat;-><init>(Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;FIIIFZ)V

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    new-instance p1, Lcom/codemao/midi/javax/sampled/AudioFormat;

    const/4 v7, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/codemao/midi/javax/sampled/AudioFormat;-><init>(Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;FIIIFZ)V

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    new-instance p1, Lcom/codemao/midi/javax/sampled/AudioFormat;

    const/16 v3, 0x40

    mul-int/lit8 v10, p2, 0x8

    const/4 v7, 0x0

    move-object v0, p1

    move v5, v10

    invoke-direct/range {v0 .. v7}, Lcom/codemao/midi/javax/sampled/AudioFormat;-><init>(Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;FIIIFZ)V

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    new-instance p1, Lcom/codemao/midi/javax/sampled/AudioFormat;

    const/4 v7, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/codemao/midi/javax/sampled/AudioFormat;-><init>(Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;FIIIFZ)V

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    :cond_e2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/codemao/midi/javax/sampled/AudioFormat;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/codemao/midi/javax/sampled/AudioFormat;

    return-object p1
.end method

.method public isConversionSupported(Lcom/codemao/midi/javax/sampled/AudioFormat;Lcom/codemao/midi/javax/sampled/AudioFormat;)Z
    .registers 5

    .line 594
    invoke-static {p2}, Lcom/codemao/midi/sun/AudioFloatConverter;->getConverter(Lcom/codemao/midi/javax/sampled/AudioFormat;)Lcom/codemao/midi/sun/AudioFloatConverter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 596
    :cond_8
    invoke-static {p1}, Lcom/codemao/midi/sun/AudioFloatConverter;->getConverter(Lcom/codemao/midi/javax/sampled/AudioFormat;)Lcom/codemao/midi/sun/AudioFloatConverter;

    move-result-object v0

    if-nez v0, :cond_f

    return v1

    .line 598
    :cond_f
    invoke-virtual {p2}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getChannels()I

    move-result p2

    if-gtz p2, :cond_16

    return v1

    .line 600
    :cond_16
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getChannels()I

    move-result p1

    if-gtz p1, :cond_1d

    return v1

    :cond_1d
    const/4 p1, 0x1

    return p1
.end method
