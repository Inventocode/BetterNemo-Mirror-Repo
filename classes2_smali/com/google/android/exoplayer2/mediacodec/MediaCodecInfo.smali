.class public final Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# static fields
.field public static final MAX_SUPPORTED_INSTANCES_UNKNOWN:I = -0x1

.field public static final TAG:Ljava/lang/String; = "MediaCodecInfo"


# instance fields
.field public final adaptive:Z

.field public final capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field public final codecMimeType:Ljava/lang/String;

.field public final hardwareAccelerated:Z

.field private final isVideo:Z

.field public final mimeType:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final secure:Z

.field public final softwareOnly:Z

.field public final tunneling:Z

.field public final vendor:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZZ)V
    .registers 11

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 194
    iput-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    .line 195
    iput-object p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->codecMimeType:Ljava/lang/String;

    .line 196
    iput-object p4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 197
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->hardwareAccelerated:Z

    .line 198
    iput-boolean p6, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->softwareOnly:Z

    .line 199
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->vendor:Z

    .line 200
    iput-boolean p8, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->adaptive:Z

    .line 201
    iput-boolean p9, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->tunneling:Z

    .line 202
    iput-boolean p10, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->secure:Z

    .line 203
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isVideo:Z

    return-void
.end method

.method private static adjustMaxInputChannelCount(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5

    const/4 v0, 0x1

    if-gt p2, v0, :cond_b3

    .line 613
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_d

    if-lez p2, :cond_d

    goto/16 :goto_b3

    :cond_d
    const-string v0, "audio/mpeg"

    .line 617
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    const-string v0, "audio/3gpp"

    .line 618
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    const-string v0, "audio/amr-wb"

    .line 619
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    const-string v0, "audio/mp4a-latm"

    .line 620
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    const-string v0, "audio/vorbis"

    .line 621
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    const-string v0, "audio/opus"

    .line 622
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    const-string v0, "audio/raw"

    .line 623
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    const-string v0, "audio/flac"

    .line 624
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    const-string v0, "audio/g711-alaw"

    .line 625
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    const-string v0, "audio/g711-mlaw"

    .line 626
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    const-string v0, "audio/gsm"

    .line 627
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    goto :goto_b3

    :cond_66
    const-string v0, "audio/ac3"

    .line 633
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    const/4 p1, 0x6

    goto :goto_7d

    :cond_70
    const-string v0, "audio/eac3"

    .line 635
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7b

    const/16 p1, 0x10

    goto :goto_7d

    :cond_7b
    const/16 p1, 0x1e

    .line 641
    :goto_7d
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "AssumedMaxChannelAdjustment: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", ["

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " to "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "MediaCodecInfo"

    invoke-static {p2, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_b3
    :goto_b3
    return p2
.end method

.method private static alignVideoSizeV21(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;
    .registers 5

    .line 703
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v0

    .line 704
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result p0

    .line 705
    new-instance v1, Landroid/graphics/Point;

    .line 706
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result p1

    mul-int p1, p1, v0

    .line 707
    invoke-static {p2, p0}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result p2

    mul-int p2, p2, p0

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method private static areSizeAndRateSupportedV21(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z
    .registers 8

    .line 684
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->alignVideoSizeV21(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;

    move-result-object p1

    .line 685
    iget p2, p1, Landroid/graphics/Point;->x:I

    .line 686
    iget p1, p1, Landroid/graphics/Point;->y:I

    const-wide/high16 v0, -0x4010000000000000L  # -1.0

    cmpl-double v2, p3, v0

    if-eqz v2, :cond_1e

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    cmpg-double v2, p3, v0

    if-gez v2, :cond_15

    goto :goto_1e

    .line 696
    :cond_15
    invoke-static {p3, p4}, Ljava/lang/Math;->floor(D)D

    move-result-wide p3

    .line 697
    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result p0

    return p0

    .line 691
    :cond_1e
    :goto_1e
    invoke-virtual {p0, p2, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result p0

    return p0
.end method

.method private static estimateLegacyVp9ProfileLevels(Landroid/media/MediaCodecInfo$CodecCapabilities;)[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_18

    .line 729
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 731
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBitrateRange()Landroid/util/Range;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    const v1, 0xaba9500

    const/4 v2, 0x1

    if-lt p0, v1, :cond_22

    const/16 p0, 0x400

    goto :goto_69

    :cond_22
    const v1, 0x7270e00

    if-lt p0, v1, :cond_2a

    const/16 p0, 0x200

    goto :goto_69

    :cond_2a
    const v1, 0x3938700

    if-lt p0, v1, :cond_32

    const/16 p0, 0x100

    goto :goto_69

    :cond_32
    const v1, 0x1c9c380

    if-lt p0, v1, :cond_3a

    const/16 p0, 0x80

    goto :goto_69

    :cond_3a
    const v1, 0x112a880

    if-lt p0, v1, :cond_42

    const/16 p0, 0x40

    goto :goto_69

    :cond_42
    const v1, 0xb71b00

    if-lt p0, v1, :cond_4a

    const/16 p0, 0x20

    goto :goto_69

    :cond_4a
    const v1, 0x6ddd00

    if-lt p0, v1, :cond_52

    const/16 p0, 0x10

    goto :goto_69

    :cond_52
    const v1, 0x36ee80

    if-lt p0, v1, :cond_5a

    const/16 p0, 0x8

    goto :goto_69

    :cond_5a
    const v1, 0x1b7740

    if-lt p0, v1, :cond_61

    const/4 p0, 0x4

    goto :goto_69

    :cond_61
    const v1, 0xc3500

    if-lt p0, v1, :cond_68

    const/4 p0, 0x2

    goto :goto_69

    :cond_68
    const/4 p0, 0x1

    .line 761
    :goto_69
    new-instance v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;

    invoke-direct {v1}, Landroid/media/MediaCodecInfo$CodecProfileLevel;-><init>()V

    .line 763
    iput v2, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 764
    iput p0, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    new-array p0, v2, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    aput-object v1, p0, v0

    return-object p0
.end method

.method private static getMaxSupportedInstancesV23(Landroid/media/MediaCodecInfo$CodecCapabilities;)I
    .registers 1

    .line 712
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getMaxSupportedInstances()I

    move-result p0

    return p0
.end method

.method private static isAdaptive(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .registers 3

    .line 654
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_e

    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isAdaptiveV19(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private static isAdaptiveV19(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .registers 2

    const-string v0, "adaptive-playback"

    .line 659
    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isSecure(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .registers 3

    .line 672
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isSecureV21(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private static isSecureV21(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .registers 2

    const-string v0, "secure-playback"

    .line 677
    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isTunneling(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .registers 3

    .line 663
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isTunnelingV21(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private static isTunnelingV21(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .registers 2

    const-string v0, "tunneled-playback"

    .line 668
    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private logAssumedSupport(Ljava/lang/String;)V
    .registers 7

    .line 599
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    sget-object v2, Lcom/google/android/exoplayer2/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x19

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "AssumedSupport ["

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] ["

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaCodecInfo"

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logNoSupport(Ljava/lang/String;)V
    .registers 7

    .line 585
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    sget-object v2, Lcom/google/android/exoplayer2/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "NoSupport ["

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] ["

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaCodecInfo"

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static needsAdaptationFlushWorkaround(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "audio/opus"

    .line 806
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static needsAdaptationReconfigureWorkaround(Ljava/lang/String;)Z
    .registers 3

    .line 791
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "SM-T230"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "OMX.MARVELL.VIDEO.HW.CODA7542DECODER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method private static needsDisableAdaptationWorkaround(Ljava/lang/String;)Z
    .registers 3

    .line 777
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_2a

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "ODROID-XU3"

    .line 778
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "Nexus 10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_18
    const-string v0, "OMX.Exynos.AVC.Decoder"

    .line 779
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "OMX.Exynos.AVC.Decoder.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2a

    :cond_28
    const/4 p0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p0, 0x0

    :goto_2b
    return p0
.end method

.method private static final needsRotatedVerticalResolutionWorkaround(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "OMX.MTK.VIDEO.DECODER.HEVC"

    .line 819
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v0, "mcv5a"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x0

    return p0

    :cond_14
    const/4 p0, 0x1

    return p0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .registers 21

    .line 165
    new-instance v11, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p7, :cond_16

    if-eqz p3, :cond_16

    .line 175
    invoke-static {p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isAdaptive(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 176
    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->needsDisableAdaptationWorkaround(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    const/4 v8, 0x1

    goto :goto_17

    :cond_16
    const/4 v8, 0x0

    :goto_17
    if-eqz p3, :cond_21

    .line 177
    invoke-static {p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isTunneling(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v9, 0x1

    goto :goto_22

    :cond_21
    const/4 v9, 0x0

    :goto_22
    if-nez p8, :cond_2f

    if-eqz p3, :cond_2d

    .line 178
    invoke-static {p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isSecure(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 v10, 0x0

    goto :goto_30

    :cond_2f
    :goto_2f
    const/4 v10, 0x1

    :goto_30
    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZZ)V

    return-object v11
.end method


# virtual methods
.method public alignVideoSizeV21(II)Landroid/graphics/Point;
    .registers 5

    .line 520
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 523
    :cond_6
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    if-nez v0, :cond_d

    return-object v1

    .line 527
    :cond_d
    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->alignVideoSizeV21(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;

    move-result-object p1

    return-object p1
.end method

.method public canReuseCodec(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
    .registers 16

    .line 390
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0x8

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 394
    :goto_e
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isVideo:Z

    if-eqz v1, :cond_64

    .line 395
    iget v1, p1, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    iget v2, p2, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    if-eq v1, v2, :cond_1a

    or-int/lit16 v0, v0, 0x400

    .line 398
    :cond_1a
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->adaptive:Z

    if-nez v1, :cond_2c

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->width:I

    iget v2, p2, Lcom/google/android/exoplayer2/Format;->width:I

    if-ne v1, v2, :cond_2a

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->height:I

    iget v2, p2, Lcom/google/android/exoplayer2/Format;->height:I

    if-eq v1, v2, :cond_2c

    :cond_2a
    or-int/lit16 v0, v0, 0x200

    .line 402
    :cond_2c
    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    iget-object v2, p2, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    or-int/lit16 v0, v0, 0x800

    .line 405
    :cond_38
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->needsAdaptationReconfigureWorkaround(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 406
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/Format;->initializationDataEquals(Lcom/google/android/exoplayer2/Format;)Z

    move-result v1

    if-nez v1, :cond_48

    or-int/lit8 v0, v0, 0x2

    :cond_48
    if-nez v0, :cond_61

    .line 411
    new-instance v0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 415
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/Format;->initializationDataEquals(Lcom/google/android/exoplayer2/Format;)Z

    move-result v1

    if-eqz v1, :cond_57

    const/4 v1, 0x3

    const/4 v5, 0x3

    goto :goto_59

    :cond_57
    const/4 v1, 0x2

    const/4 v5, 0x2

    :goto_59
    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    .line 417
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;II)V

    return-object v0

    :cond_61
    move v12, v0

    goto/16 :goto_d8

    .line 421
    :cond_64
    iget v1, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget v2, p2, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-eq v1, v2, :cond_6c

    or-int/lit16 v0, v0, 0x1000

    .line 424
    :cond_6c
    iget v1, p1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    iget v2, p2, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    if-eq v1, v2, :cond_74

    or-int/lit16 v0, v0, 0x2000

    .line 427
    :cond_74
    iget v1, p1, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    iget v2, p2, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    if-eq v1, v2, :cond_7c

    or-int/lit16 v0, v0, 0x4000

    :cond_7c
    if-nez v0, :cond_b7

    .line 433
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    const-string v2, "audio/mp4a-latm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b7

    .line 436
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Lcom/google/android/exoplayer2/Format;)Landroid/util/Pair;

    move-result-object v1

    .line 439
    invoke-static {p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Lcom/google/android/exoplayer2/Format;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v1, :cond_b7

    if-eqz v2, :cond_b7

    .line 441
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 442
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x2a

    if-ne v1, v3, :cond_b7

    if-ne v2, v3, :cond_b7

    .line 445
    new-instance v0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object v4, v0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;II)V

    return-object v0

    .line 455
    :cond_b7
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/Format;->initializationDataEquals(Lcom/google/android/exoplayer2/Format;)Z

    move-result v1

    if-nez v1, :cond_bf

    or-int/lit8 v0, v0, 0x20

    .line 458
    :cond_bf
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->needsAdaptationFlushWorkaround(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c9

    or-int/lit8 v0, v0, 0x2

    :cond_c9
    if-nez v0, :cond_61

    .line 463
    new-instance v0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;II)V

    return-object v0

    .line 468
    :goto_d8
    new-instance v0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    iget-object v8, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const/4 v11, 0x0

    move-object v7, v0

    move-object v9, p1

    move-object v10, p2

    invoke-direct/range {v7 .. v12}, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;II)V

    return-object v0
.end method

.method public getMaxSupportedInstances()I
    .registers 3

    .line 230
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_10

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v0, :cond_b

    goto :goto_10

    .line 233
    :cond_b
    invoke-static {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->getMaxSupportedInstancesV23(Landroid/media/MediaCodecInfo$CodecCapabilities;)I

    move-result v0

    return v0

    :cond_10
    :goto_10
    const/4 v0, -0x1

    return v0
.end method

.method public getProfileLevels()[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .registers 2

    .line 217
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v0, :cond_8

    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    if-nez v0, :cond_b

    :cond_8
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    :cond_b
    return-object v0
.end method

.method public isAudioChannelCountSupportedV21(I)Z
    .registers 6

    .line 566
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const-string p1, "channelCount.caps"

    .line 567
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    return v1

    .line 570
    :cond_b
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v0

    if-nez v0, :cond_17

    const-string p1, "channelCount.aCaps"

    .line 572
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    return v1

    .line 575
    :cond_17
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    .line 576
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    move-result v0

    invoke-static {v2, v3, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->adjustMaxInputChannelCount(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ge v0, p1, :cond_3c

    const/16 v0, 0x21

    .line 578
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "channelCount.support, "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    return v1

    :cond_3c
    const/4 p1, 0x1

    return p1
.end method

.method public isAudioSampleRateSupportedV21(I)Z
    .registers 5

    .line 540
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const-string p1, "sampleRate.caps"

    .line 541
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    return v1

    .line 544
    :cond_b
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v0

    if-nez v0, :cond_17

    const-string p1, "sampleRate.aCaps"

    .line 546
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    return v1

    .line 549
    :cond_17
    invoke-virtual {v0, p1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->isSampleRateSupported(I)Z

    move-result v0

    if-nez v0, :cond_34

    const/16 v0, 0x1f

    .line 550
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "sampleRate.support, "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    return v1

    :cond_34
    const/4 p1, 0x1

    return p1
.end method

.method public isCodecSupported(Lcom/google/android/exoplayer2/Format;)Z
    .registers 13

    .line 279
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_c4

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    if-nez v2, :cond_b

    goto/16 :goto_c4

    .line 282
    :cond_b
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    return v1

    .line 286
    :cond_12
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ", "

    const/4 v4, 0x0

    if-nez v2, :cond_49

    .line 287
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xd

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "codec.mime "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    return v4

    .line 290
    :cond_49
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Lcom/google/android/exoplayer2/Format;)Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_50

    return v1

    .line 295
    :cond_50
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 296
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 297
    iget-boolean v6, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isVideo:Z

    if-nez v6, :cond_69

    const/16 v6, 0x2a

    if-eq v5, v6, :cond_69

    return v1

    .line 303
    :cond_69
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->getProfileLevels()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v6

    .line 304
    sget v7, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v8, 0x17

    if-gt v7, v8, :cond_86

    iget-object v7, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    const-string v8, "video/x-vnd.on2.vp9"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_86

    array-length v7, v6

    if-nez v7, :cond_86

    .line 307
    iget-object v6, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-static {v6}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->estimateLegacyVp9ProfileLevels(Landroid/media/MediaCodecInfo$CodecCapabilities;)[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v6

    .line 310
    :cond_86
    array-length v7, v6

    const/4 v8, 0x0

    :goto_88
    if-ge v8, v7, :cond_98

    aget-object v9, v6, v8

    .line 311
    iget v10, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v10, v5, :cond_95

    iget v9, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-lt v9, v2, :cond_95

    return v1

    :cond_95
    add-int/lit8 v8, v8, 0x1

    goto :goto_88

    .line 315
    :cond_98
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x16

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "codec.profileLevel, "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    return v4

    :cond_c4
    :goto_c4
    return v1
.end method

.method public isFormatSupported(Lcom/google/android/exoplayer2/Format;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 244
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isCodecSupported(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 248
    :cond_8
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isVideo:Z

    const/16 v2, 0x15

    const/4 v3, 0x1

    if-eqz v0, :cond_53

    .line 249
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->width:I

    if-lez v0, :cond_52

    iget v4, p1, Lcom/google/android/exoplayer2/Format;->height:I

    if-gtz v4, :cond_18

    goto :goto_52

    .line 252
    :cond_18
    sget v5, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-lt v5, v2, :cond_24

    .line 253
    iget p1, p1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    float-to-double v1, p1

    invoke-virtual {p0, v0, v4, v1, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isVideoSizeAndRateSupportedV21(IID)Z

    move-result p1

    return p1

    :cond_24
    mul-int v0, v0, v4

    .line 256
    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize()I

    move-result v2

    if-gt v0, v2, :cond_2d

    const/4 v1, 0x1

    :cond_2d
    if-nez v1, :cond_51

    .line 258
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->width:I

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->height:I

    const/16 v2, 0x28

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "legacyFrameSize, "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    :cond_51
    return v1

    :cond_52
    :goto_52
    return v3

    .line 263
    :cond_53
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-lt v0, v2, :cond_6c

    iget v0, p1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_62

    .line 265
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isAudioSampleRateSupportedV21(I)Z

    move-result v0

    if-eqz v0, :cond_6d

    :cond_62
    iget p1, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-eq p1, v2, :cond_6c

    .line 267
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isAudioChannelCountSupportedV21(I)Z

    move-result p1

    if-eqz p1, :cond_6d

    :cond_6c
    const/4 v1, 0x1

    :cond_6d
    return v1
.end method

.method public isHdr10PlusOutOfBandMetadataSupported()Z
    .registers 7

    .line 321
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_26

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    const-string v2, "video/x-vnd.on2.vp9"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 322
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->getProfileLevels()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_26

    aget-object v4, v0, v3

    .line 323
    iget v4, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/16 v5, 0x4000

    if-ne v4, v5, :cond_23

    const/4 v0, 0x1

    return v0

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_26
    return v1
.end method

.method public isSeamlessAdaptationSupported(Lcom/google/android/exoplayer2/Format;)Z
    .registers 3

    .line 343
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isVideo:Z

    if-eqz v0, :cond_7

    .line 344
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->adaptive:Z

    return p1

    .line 346
    :cond_7
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Lcom/google/android/exoplayer2/Format;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 347
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x2a

    if-ne p1, v0, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    return p1
.end method

.method public isSeamlessAdaptationSupported(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Z)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p3, :cond_18

    .line 369
    iget-object p3, p1, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    if-eqz p3, :cond_18

    iget-object p3, p2, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    if-nez p3, :cond_18

    .line 370
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p2

    iget-object p3, p1, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/Format$Builder;->setColorInfo(Lcom/google/android/exoplayer2/video/ColorInfo;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    .line 372
    :cond_18
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->canReuseCodec(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    move-result-object p1

    iget p1, p1, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->result:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_27

    const/4 p2, 0x3

    if-ne p1, p2, :cond_25

    goto :goto_27

    :cond_25
    const/4 p1, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 p1, 0x1

    :goto_28
    return p1
.end method

.method public isVideoSizeAndRateSupportedV21(IID)Z
    .registers 10

    .line 484
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const-string p1, "sizeAndRate.caps"

    .line 485
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    return v1

    .line 488
    :cond_b
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    if-nez v0, :cond_17

    const-string p1, "sizeAndRate.vCaps"

    .line 490
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    return v1

    .line 493
    :cond_17
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->areSizeAndRateSupportedV21(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v2

    if-nez v2, :cond_74

    const/16 v2, 0x45

    const-string v3, "x"

    if-ge p1, p2, :cond_53

    .line 494
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 495
    invoke-static {v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->needsRotatedVerticalResolutionWorkaround(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 496
    invoke-static {v0, p2, p1, p3, p4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->areSizeAndRateSupportedV21(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v0

    if-nez v0, :cond_32

    goto :goto_53

    .line 500
    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "sizeAndRate.rotated, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->logAssumedSupport(Ljava/lang/String;)V

    goto :goto_74

    .line 497
    :cond_53
    :goto_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "sizeAndRate.support, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    return v1

    :cond_74
    :goto_74
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 208
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    return-object v0
.end method
