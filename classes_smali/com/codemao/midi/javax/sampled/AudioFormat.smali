.class public Lcom/codemao/midi/javax/sampled/AudioFormat;
.super Ljava/lang/Object;
.source "AudioFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;
    }
.end annotation


# instance fields
.field protected bigEndian:Z

.field protected channels:I

.field protected encoding:Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

.field protected frameRate:F

.field protected frameSize:I

.field private properties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected sampleRate:F

.field protected sampleSizeInBits:I


# direct methods
.method public constructor <init>(FIIZZ)V
    .registers 14

    const/4 v0, 0x1

    if-ne p4, v0, :cond_6

    .line 226
    sget-object p4, Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;->PCM_SIGNED:Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    goto :goto_8

    :cond_6
    sget-object p4, Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;->PCM_UNSIGNED:Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    :goto_8
    move-object v1, p4

    const/4 p4, -0x1

    if-eq p3, p4, :cond_17

    if-ne p2, p4, :cond_f

    goto :goto_17

    :cond_f
    add-int/lit8 p4, p2, 0x7

    .line 232
    div-int/lit8 p4, p4, 0x8

    mul-int p4, p4, p3

    move v5, p4

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v5, -0x1

    :goto_18
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, p1

    move v7, p5

    .line 226
    invoke-direct/range {v0 .. v7}, Lcom/codemao/midi/javax/sampled/AudioFormat;-><init>(Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;FIIIFZ)V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;FIIIFZ)V
    .registers 8

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lcom/codemao/midi/javax/sampled/AudioFormat;->encoding:Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    .line 169
    iput p2, p0, Lcom/codemao/midi/javax/sampled/AudioFormat;->sampleRate:F

    .line 170
    iput p3, p0, Lcom/codemao/midi/javax/sampled/AudioFormat;->sampleSizeInBits:I

    .line 171
    iput p4, p0, Lcom/codemao/midi/javax/sampled/AudioFormat;->channels:I

    .line 172
    iput p5, p0, Lcom/codemao/midi/javax/sampled/AudioFormat;->frameSize:I

    .line 173
    iput p6, p0, Lcom/codemao/midi/javax/sampled/AudioFormat;->frameRate:F

    .line 174
    iput-boolean p7, p0, Lcom/codemao/midi/javax/sampled/AudioFormat;->bigEndian:Z

    const/4 p1, 0x0

    .line 175
    iput-object p1, p0, Lcom/codemao/midi/javax/sampled/AudioFormat;->properties:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;FIIIFZLjava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;",
            "FIIIFZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 203
    invoke-direct/range {p0 .. p7}, Lcom/codemao/midi/javax/sampled/AudioFormat;-><init>(Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;FIIIFZ)V

    .line 205
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p8}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/codemao/midi/javax/sampled/AudioFormat;->properties:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getChannels()I
    .registers 2

    .line 310
    iget v0, p0, Lcom/codemao/midi/javax/sampled/AudioFormat;->channels:I

    return v0
.end method

.method public getEncoding()Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;
    .registers 2

    .line 248
    iget-object v0, p0, Lcom/codemao/midi/javax/sampled/AudioFormat;->encoding:Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    return-object v0
.end method

.method public getFrameRate()F
    .registers 2

    .line 350
    iget v0, p0, Lcom/codemao/midi/javax/sampled/AudioFormat;->frameRate:F

    return v0
.end method

.method public getFrameSize()I
    .registers 2

    .line 330
    iget v0, p0, Lcom/codemao/midi/javax/sampled/AudioFormat;->frameSize:I

    return v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 407
    iget-object v0, p0, Lcom/codemao/midi/javax/sampled/AudioFormat;->properties:Ljava/util/HashMap;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 410
    :cond_6
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSampleRate()F
    .registers 2

    .line 270
    iget v0, p0, Lcom/codemao/midi/javax/sampled/AudioFormat;->sampleRate:F

    return v0
.end method

.method public getSampleSizeInBits()I
    .registers 2

    .line 292
    iget v0, p0, Lcom/codemao/midi/javax/sampled/AudioFormat;->sampleSizeInBits:I

    return v0
.end method

.method public isBigEndian()Z
    .registers 2

    .line 363
    iget-boolean v0, p0, Lcom/codemao/midi/javax/sampled/AudioFormat;->bigEndian:Z

    return v0
.end method

.method public matches(Lcom/codemao/midi/javax/sampled/AudioFormat;)Z
    .registers 6

    .line 430
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getEncoding()Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    move-result-object v0

    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getEncoding()Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 431
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getChannels()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1f

    .line 432
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getChannels()I

    move-result v0

    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getChannels()I

    move-result v2

    if-ne v0, v2, :cond_7d

    .line 433
    :cond_1f
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleRate()F

    move-result v0

    const/high16 v2, -0x40800000  # -1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_35

    .line 434
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleRate()F

    move-result v0

    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleRate()F

    move-result v3

    cmpl-float v0, v0, v3

    if-nez v0, :cond_7d

    .line 435
    :cond_35
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-eq v0, v1, :cond_45

    .line 436
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v3

    if-ne v0, v3, :cond_7d

    .line 437
    :cond_45
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getFrameRate()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_59

    .line 438
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getFrameRate()F

    move-result v0

    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getFrameRate()F

    move-result v2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_7d

    .line 439
    :cond_59
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getFrameSize()I

    move-result v0

    if-eq v0, v1, :cond_69

    .line 440
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getFrameSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getFrameSize()I

    move-result v1

    if-ne v0, v1, :cond_7d

    .line 441
    :cond_69
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_7b

    .line 442
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->isBigEndian()Z

    move-result p1

    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->isBigEndian()Z

    move-result v0

    if-ne p1, v0, :cond_7d

    :cond_7b
    const/4 p1, 0x1

    return p1

    :cond_7d
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 14

    .line 458
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getEncoding()Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_22

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getEncoding()Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    :cond_22
    move-object v0, v1

    .line 463
    :goto_23
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleRate()F

    move-result v2

    const/high16 v3, -0x40800000  # -1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_30

    const-string v2, "unknown sample rate, "

    goto :goto_48

    .line 466
    :cond_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleRate()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " Hz, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 470
    :goto_48
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_54

    const-string v4, "unknown bits per sample, "

    goto :goto_6c

    .line 473
    :cond_54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bit, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 477
    :goto_6c
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getChannels()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, -0x1

    if-ne v5, v6, :cond_77

    const-string v5, "mono, "

    goto :goto_a2

    .line 480
    :cond_77
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getChannels()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_81

    const-string v5, "stereo, "

    goto :goto_a2

    .line 483
    :cond_81
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getChannels()I

    move-result v5

    if-ne v5, v7, :cond_8a

    const-string v5, " unknown number of channels, "

    goto :goto_a2

    .line 486
    :cond_8a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getChannels()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " channels, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 491
    :goto_a2
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getFrameSize()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v6, v3

    if-nez v6, :cond_ae

    const-string v6, "unknown frame size, "

    goto :goto_c6

    .line 494
    :cond_ae
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getFrameSize()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " bytes/frame, "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 498
    :goto_c6
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleRate()F

    move-result v8

    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getFrameRate()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x3ee4f8b588e368f1L  # 1.0E-5

    cmpl-double v12, v8, v10

    if-lez v12, :cond_fe

    .line 499
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getFrameRate()F

    move-result v8

    cmpl-float v3, v8, v3

    if-nez v3, :cond_e8

    const-string v3, "unknown frame rate, "

    goto :goto_ff

    .line 502
    :cond_e8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getFrameRate()F

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " frames/second, "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_ff

    :cond_fe
    move-object v3, v1

    .line 507
    :goto_ff
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getEncoding()Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    move-result-object v8

    sget-object v9, Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;->PCM_SIGNED:Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    invoke-virtual {v8, v9}, Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_117

    .line 508
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getEncoding()Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    move-result-object v8

    sget-object v9, Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;->PCM_UNSIGNED:Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    invoke-virtual {v8, v9}, Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_130

    .line 509
    :cond_117
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v8

    const/16 v9, 0x8

    if-gt v8, v9, :cond_125

    .line 510
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v8

    if-ne v8, v7, :cond_130

    .line 511
    :cond_125
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->isBigEndian()Z

    move-result v1

    if-eqz v1, :cond_12e

    const-string v1, "big-endian"

    goto :goto_130

    :cond_12e
    const-string v1, "little-endian"

    .line 518
    :cond_130
    :goto_130
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
