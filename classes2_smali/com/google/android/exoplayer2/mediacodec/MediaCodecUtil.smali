.class public final Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;,
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;,
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;,
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;,
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;,
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
    }
.end annotation


# static fields
.field private static final CODEC_ID_AV01:Ljava/lang/String; = "av01"

.field private static final CODEC_ID_AVC1:Ljava/lang/String; = "avc1"

.field private static final CODEC_ID_AVC2:Ljava/lang/String; = "avc2"

.field private static final CODEC_ID_HEV1:Ljava/lang/String; = "hev1"

.field private static final CODEC_ID_HVC1:Ljava/lang/String; = "hvc1"

.field private static final CODEC_ID_MP4A:Ljava/lang/String; = "mp4a"

.field private static final CODEC_ID_VP09:Ljava/lang/String; = "vp09"

.field private static final PROFILE_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "MediaCodecUtil"

.field private static final decoderInfosCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static maxH264DecodableFrameSize:I


# direct methods
.method public static synthetic $r8$lambda$M5hE_IS4eQaB5hthj0ANtGFbvtc(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)I
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->lambda$applyWorkarounds$1(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TTOJv_ehB4NYXe2ACOCGkvLnFQ0(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)I
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->lambda$applyWorkarounds$2(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$axdf_bjITTf0O2Bcy0Wsd-ELv-k(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->lambda$getDecoderInfosSortedByFormatSupport$0(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$eb1eLnei3ECRx2nVLLB_x3DyeoQ(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->lambda$sortByScore$3(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-string v0, "^\\D?(\\d+)$"

    .line 63
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->PROFILE_PATTERN:Ljava/util/regex/Pattern;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->decoderInfosCache:Ljava/util/HashMap;

    const/4 v0, -0x1

    .line 83
    sput v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyWorkarounds(Ljava/lang/String;Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "audio/raw"

    .line 533
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_48

    .line 534
    sget p0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge p0, v2, :cond_43

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v2, "R9"

    .line 535
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_43

    .line 536
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v0, :cond_43

    .line 537
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const-string v2, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_43

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v2, "OMX.google.raw.decoder"

    const-string v3, "audio/raw"

    const-string v4, "audio/raw"

    .line 541
    invoke-static/range {v2 .. v10}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object p0

    .line 540
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    :cond_43
    sget-object p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda1;->INSTANCE:Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda1;

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->sortByScore(Ljava/util/List;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;)V

    .line 570
    :cond_48
    sget p0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    if-ge p0, v2, :cond_79

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v0, :cond_79

    .line 571
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const-string v3, "OMX.SEC.mp3.dec"

    .line 572
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_74

    const-string v3, "OMX.SEC.MP3.Decoder"

    .line 573
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_74

    const-string v3, "OMX.brcm.audio.mp3.decoder"

    .line 574
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 579
    :cond_74
    sget-object v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda2;->INSTANCE:Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda2;

    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->sortByScore(Ljava/util/List;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;)V

    :cond_79
    const/16 v2, 0x20

    if-ge p0, v2, :cond_9c

    .line 583
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v0, :cond_9c

    .line 584
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const-string v0, "OMX.qti.audio.decoder.flac"

    .line 587
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9c

    .line 588
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9c
    return-void
.end method

.method private static av1LevelNumberToConst(I)I
    .registers 1

    packed-switch p0, :pswitch_data_4c

    const/4 p0, -0x1

    return p0

    :pswitch_5  #0x17
    const/high16 p0, 0x800000

    return p0

    :pswitch_8  #0x16
    const/high16 p0, 0x400000

    return p0

    :pswitch_b  #0x15
    const/high16 p0, 0x200000

    return p0

    :pswitch_e  #0x14
    const/high16 p0, 0x100000

    return p0

    :pswitch_11  #0x13
    const/high16 p0, 0x80000

    return p0

    :pswitch_14  #0x12
    const/high16 p0, 0x40000

    return p0

    :pswitch_17  #0x11
    const/high16 p0, 0x20000

    return p0

    :pswitch_1a  #0x10
    const/high16 p0, 0x10000

    return p0

    :pswitch_1d  #0xf
    const p0, 0x8000

    return p0

    :pswitch_21  #0xe
    const/16 p0, 0x4000

    return p0

    :pswitch_24  #0xd
    const/16 p0, 0x2000

    return p0

    :pswitch_27  #0xc
    const/16 p0, 0x1000

    return p0

    :pswitch_2a  #0xb
    const/16 p0, 0x800

    return p0

    :pswitch_2d  #0xa
    const/16 p0, 0x400

    return p0

    :pswitch_30  #0x9
    const/16 p0, 0x200

    return p0

    :pswitch_33  #0x8
    const/16 p0, 0x100

    return p0

    :pswitch_36  #0x7
    const/16 p0, 0x80

    return p0

    :pswitch_39  #0x6
    const/16 p0, 0x40

    return p0

    :pswitch_3c  #0x5
    const/16 p0, 0x20

    return p0

    :pswitch_3f  #0x4
    const/16 p0, 0x10

    return p0

    :pswitch_42  #0x3
    const/16 p0, 0x8

    return p0

    :pswitch_45  #0x2
    const/4 p0, 0x4

    return p0

    :pswitch_47  #0x1
    const/4 p0, 0x2

    return p0

    :pswitch_49  #0x0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_49  #00000000
        :pswitch_47  #00000001
        :pswitch_45  #00000002
        :pswitch_42  #00000003
        :pswitch_3f  #00000004
        :pswitch_3c  #00000005
        :pswitch_39  #00000006
        :pswitch_36  #00000007
        :pswitch_33  #00000008
        :pswitch_30  #00000009
        :pswitch_2d  #0000000a
        :pswitch_2a  #0000000b
        :pswitch_27  #0000000c
        :pswitch_24  #0000000d
        :pswitch_21  #0000000e
        :pswitch_1d  #0000000f
        :pswitch_1a  #00000010
        :pswitch_17  #00000011
        :pswitch_14  #00000012
        :pswitch_11  #00000013
        :pswitch_e  #00000014
        :pswitch_b  #00000015
        :pswitch_8  #00000016
        :pswitch_5  #00000017
    .end packed-switch
.end method

.method private static avcLevelNumberToConst(I)I
    .registers 1

    packed-switch p0, :pswitch_data_40

    packed-switch p0, :pswitch_data_4c

    packed-switch p0, :pswitch_data_56

    packed-switch p0, :pswitch_data_60

    packed-switch p0, :pswitch_data_6a

    const/4 p0, -0x1

    return p0

    :pswitch_11  #0x34
    const/high16 p0, 0x10000

    return p0

    :pswitch_14  #0x33
    const p0, 0x8000

    return p0

    :pswitch_18  #0x32
    const/16 p0, 0x4000

    return p0

    :pswitch_1b  #0x2a
    const/16 p0, 0x2000

    return p0

    :pswitch_1e  #0x29
    const/16 p0, 0x1000

    return p0

    :pswitch_21  #0x28
    const/16 p0, 0x800

    return p0

    :pswitch_24  #0x20
    const/16 p0, 0x400

    return p0

    :pswitch_27  #0x1f
    const/16 p0, 0x200

    return p0

    :pswitch_2a  #0x1e
    const/16 p0, 0x100

    return p0

    :pswitch_2d  #0x16
    const/16 p0, 0x80

    return p0

    :pswitch_30  #0x15
    const/16 p0, 0x40

    return p0

    :pswitch_33  #0x14
    const/16 p0, 0x20

    return p0

    :pswitch_36  #0xd
    const/16 p0, 0x10

    return p0

    :pswitch_39  #0xc
    const/16 p0, 0x8

    return p0

    :pswitch_3c  #0xb
    const/4 p0, 0x4

    return p0

    :pswitch_3e  #0xa
    const/4 p0, 0x1

    return p0

    :pswitch_data_40
    .packed-switch 0xa
        :pswitch_3e  #0000000a
        :pswitch_3c  #0000000b
        :pswitch_39  #0000000c
        :pswitch_36  #0000000d
    .end packed-switch

    :pswitch_data_4c
    .packed-switch 0x14
        :pswitch_33  #00000014
        :pswitch_30  #00000015
        :pswitch_2d  #00000016
    .end packed-switch

    :pswitch_data_56
    .packed-switch 0x1e
        :pswitch_2a  #0000001e
        :pswitch_27  #0000001f
        :pswitch_24  #00000020
    .end packed-switch

    :pswitch_data_60
    .packed-switch 0x28
        :pswitch_21  #00000028
        :pswitch_1e  #00000029
        :pswitch_1b  #0000002a
    .end packed-switch

    :pswitch_data_6a
    .packed-switch 0x32
        :pswitch_18  #00000032
        :pswitch_14  #00000033
        :pswitch_11  #00000034
    .end packed-switch
.end method

.method private static avcLevelToMaxFrameSize(I)I
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2e

    sparse-switch p0, :sswitch_data_32

    const/4 p0, -0x1

    return p0

    :sswitch_b
    const/high16 p0, 0x2200000

    return p0

    :sswitch_e
    const/high16 p0, 0x900000

    return p0

    :sswitch_11
    const p0, 0x564000

    return p0

    :sswitch_15
    const/high16 p0, 0x220000

    return p0

    :sswitch_18
    const/high16 p0, 0x200000

    return p0

    :sswitch_1b
    const/high16 p0, 0x140000

    return p0

    :sswitch_1e
    const p0, 0xe1000

    return p0

    :sswitch_22
    const p0, 0x65400

    return p0

    :sswitch_26
    const p0, 0x31800

    return p0

    :sswitch_2a
    const p0, 0x18c00

    return p0

    :cond_2e
    const/16 p0, 0x6300

    return p0

    nop

    :sswitch_data_32
    .sparse-switch
        0x8 -> :sswitch_2a
        0x10 -> :sswitch_2a
        0x20 -> :sswitch_2a
        0x40 -> :sswitch_26
        0x80 -> :sswitch_22
        0x100 -> :sswitch_22
        0x200 -> :sswitch_1e
        0x400 -> :sswitch_1b
        0x800 -> :sswitch_18
        0x1000 -> :sswitch_18
        0x2000 -> :sswitch_15
        0x4000 -> :sswitch_11
        0x8000 -> :sswitch_e
        0x10000 -> :sswitch_e
        0x20000 -> :sswitch_b
        0x40000 -> :sswitch_b
        0x80000 -> :sswitch_b
    .end sparse-switch
.end method

.method private static avcProfileNumberToConst(I)I
    .registers 2

    const/16 v0, 0x42

    if-eq p0, v0, :cond_2e

    const/16 v0, 0x4d

    if-eq p0, v0, :cond_2c

    const/16 v0, 0x58

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x64

    if-eq p0, v0, :cond_27

    const/16 v0, 0x6e

    if-eq p0, v0, :cond_24

    const/16 v0, 0x7a

    if-eq p0, v0, :cond_21

    const/16 v0, 0xf4

    if-eq p0, v0, :cond_1e

    const/4 p0, -0x1

    return p0

    :cond_1e
    const/16 p0, 0x40

    return p0

    :cond_21
    const/16 p0, 0x20

    return p0

    :cond_24
    const/16 p0, 0x10

    return p0

    :cond_27
    const/16 p0, 0x8

    return p0

    :cond_2a
    const/4 p0, 0x4

    return p0

    :cond_2c
    const/4 p0, 0x2

    return p0

    :cond_2e
    const/4 p0, 0x1

    return p0
.end method

.method public static declared-synchronized clearDecoderInfoCache()V
    .registers 2

    const-class v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;

    monitor-enter v0

    .line 114
    :try_start_3
    sget-object v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->decoderInfosCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 115
    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static dolbyVisionStringToLevel(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const/4 v1, -0x1

    .line 1275
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_108

    goto/16 :goto_b0

    :sswitch_13
    const-string v2, "13"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto/16 :goto_b0

    :cond_1d
    const/16 v1, 0xc

    goto/16 :goto_b0

    :sswitch_21
    const-string v2, "12"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto/16 :goto_b0

    :cond_2b
    const/16 v1, 0xb

    goto/16 :goto_b0

    :sswitch_2f
    const-string v2, "11"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_39

    goto/16 :goto_b0

    :cond_39
    const/16 v1, 0xa

    goto/16 :goto_b0

    :sswitch_3d
    const-string v2, "10"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_47

    goto/16 :goto_b0

    :cond_47
    const/16 v1, 0x9

    goto/16 :goto_b0

    :sswitch_4b
    const-string v2, "09"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_55

    goto/16 :goto_b0

    :cond_55
    const/16 v1, 0x8

    goto/16 :goto_b0

    :sswitch_59
    const-string v2, "08"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_62

    goto :goto_b0

    :cond_62
    const/4 v1, 0x7

    goto :goto_b0

    :sswitch_64
    const-string v2, "07"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6d

    goto :goto_b0

    :cond_6d
    const/4 v1, 0x6

    goto :goto_b0

    :sswitch_6f
    const-string v2, "06"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_78

    goto :goto_b0

    :cond_78
    const/4 v1, 0x5

    goto :goto_b0

    :sswitch_7a
    const-string v2, "05"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_83

    goto :goto_b0

    :cond_83
    const/4 v1, 0x4

    goto :goto_b0

    :sswitch_85
    const-string v2, "04"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8e

    goto :goto_b0

    :cond_8e
    const/4 v1, 0x3

    goto :goto_b0

    :sswitch_90
    const-string v2, "03"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_99

    goto :goto_b0

    :cond_99
    const/4 v1, 0x2

    goto :goto_b0

    :sswitch_9b
    const-string v2, "02"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a4

    goto :goto_b0

    :cond_a4
    const/4 v1, 0x1

    goto :goto_b0

    :sswitch_a6
    const-string v2, "01"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_af

    goto :goto_b0

    :cond_af
    const/4 v1, 0x0

    :goto_b0
    packed-switch v1, :pswitch_data_13e

    return-object v0

    :pswitch_b4  #0xc
    const/16 p0, 0x1000

    .line 1301
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_bb  #0xb
    const/16 p0, 0x800

    .line 1299
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_c2  #0xa
    const/16 p0, 0x400

    .line 1297
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_c9  #0x9
    const/16 p0, 0x200

    .line 1295
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_d0  #0x8
    const/16 p0, 0x100

    .line 1293
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_d7  #0x7
    const/16 p0, 0x80

    .line 1291
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_de  #0x6
    const/16 p0, 0x40

    .line 1289
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_e5  #0x5
    const/16 p0, 0x20

    .line 1287
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_ec  #0x4
    const/16 p0, 0x10

    .line 1285
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 1283
    :pswitch_f3  #0x3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 1281
    :pswitch_f8  #0x2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 1279
    :pswitch_fd  #0x1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 1277
    :pswitch_102  #0x0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_108
    .sparse-switch
        0x601 -> :sswitch_a6
        0x602 -> :sswitch_9b
        0x603 -> :sswitch_90
        0x604 -> :sswitch_85
        0x605 -> :sswitch_7a
        0x606 -> :sswitch_6f
        0x607 -> :sswitch_64
        0x608 -> :sswitch_59
        0x609 -> :sswitch_4b
        0x61f -> :sswitch_3d
        0x620 -> :sswitch_2f
        0x621 -> :sswitch_21
        0x622 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_13e
    .packed-switch 0x0
        :pswitch_102  #00000000
        :pswitch_fd  #00000001
        :pswitch_f8  #00000002
        :pswitch_f3  #00000003
        :pswitch_ec  #00000004
        :pswitch_e5  #00000005
        :pswitch_de  #00000006
        :pswitch_d7  #00000007
        :pswitch_d0  #00000008
        :pswitch_c9  #00000009
        :pswitch_c2  #0000000a
        :pswitch_bb  #0000000b
        :pswitch_b4  #0000000c
    .end packed-switch
.end method

.method private static dolbyVisionStringToProfile(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const/4 v1, -0x1

    .line 1243
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    packed-switch v2, :pswitch_data_c8

    goto/16 :goto_86

    :pswitch_13  #0x609
    const-string v2, "09"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto/16 :goto_86

    :cond_1d
    const/16 v1, 0x9

    goto/16 :goto_86

    :pswitch_21  #0x608
    const-string v2, "08"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto/16 :goto_86

    :cond_2b
    const/16 v1, 0x8

    goto/16 :goto_86

    :pswitch_2f  #0x607
    const-string v2, "07"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_38

    goto :goto_86

    :cond_38
    const/4 v1, 0x7

    goto :goto_86

    :pswitch_3a  #0x606
    const-string v2, "06"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_43

    goto :goto_86

    :cond_43
    const/4 v1, 0x6

    goto :goto_86

    :pswitch_45  #0x605
    const-string v2, "05"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4e

    goto :goto_86

    :cond_4e
    const/4 v1, 0x5

    goto :goto_86

    :pswitch_50  #0x604
    const-string v2, "04"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_59

    goto :goto_86

    :cond_59
    const/4 v1, 0x4

    goto :goto_86

    :pswitch_5b  #0x603
    const-string v2, "03"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_64

    goto :goto_86

    :cond_64
    const/4 v1, 0x3

    goto :goto_86

    :pswitch_66  #0x602
    const-string v2, "02"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6f

    goto :goto_86

    :cond_6f
    const/4 v1, 0x2

    goto :goto_86

    :pswitch_71  #0x601
    const-string v2, "01"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7a

    goto :goto_86

    :cond_7a
    const/4 v1, 0x1

    goto :goto_86

    :pswitch_7c  #0x600
    const-string v2, "00"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_85

    goto :goto_86

    :cond_85
    const/4 v1, 0x0

    :goto_86
    packed-switch v1, :pswitch_data_e0

    return-object v0

    :pswitch_8a  #0x9
    const/16 p0, 0x200

    .line 1263
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_91  #0x8
    const/16 p0, 0x100

    .line 1261
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_98  #0x7
    const/16 p0, 0x80

    .line 1259
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_9f  #0x6
    const/16 p0, 0x40

    .line 1257
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_a6  #0x5
    const/16 p0, 0x20

    .line 1255
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_ad  #0x4
    const/16 p0, 0x10

    .line 1253
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 1251
    :pswitch_b4  #0x3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 1249
    :pswitch_b9  #0x2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 1247
    :pswitch_be  #0x1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 1245
    :pswitch_c3  #0x0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_data_c8
    .packed-switch 0x600
        :pswitch_7c  #00000600
        :pswitch_71  #00000601
        :pswitch_66  #00000602
        :pswitch_5b  #00000603
        :pswitch_50  #00000604
        :pswitch_45  #00000605
        :pswitch_3a  #00000606
        :pswitch_2f  #00000607
        :pswitch_21  #00000608
        :pswitch_13  #00000609
    .end packed-switch

    :pswitch_data_e0
    .packed-switch 0x0
        :pswitch_c3  #00000000
        :pswitch_be  #00000001
        :pswitch_b9  #00000002
        :pswitch_b4  #00000003
        :pswitch_ad  #00000004
        :pswitch_a6  #00000005
        :pswitch_9f  #00000006
        :pswitch_98  #00000007
        :pswitch_91  #00000008
        :pswitch_8a  #00000009
    .end packed-switch
.end method

.method private static getAacCodecProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 889
    array-length v0, p1

    const/4 v1, 0x0

    const-string v2, "Ignoring malformed MP4A codec string: "

    const-string v3, "MediaCodecUtil"

    const/4 v4, 0x3

    if-eq v0, v4, :cond_21

    .line 890
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_18

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1d

    :cond_18
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1d
    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_21
    const/4 v0, 0x1

    .line 895
    :try_start_22
    aget-object v0, p1, v0

    const/16 v4, 0x10

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 896
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "audio/mp4a-latm"

    .line 897
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    const/4 v0, 0x2

    .line 899
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 900
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->mp4aAudioObjectTypeToProfile(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_6b

    .line 903
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, p1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_52
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_52} :catch_53

    return-object v0

    :catch_53
    nop

    .line 907
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_63

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_68

    :cond_63
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_68
    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6b
    return-object v1
.end method

.method private static getAv1ProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/exoplayer2/video/ColorInfo;)Landroid/util/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/video/ColorInfo;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 799
    array-length v0, p1

    const-string v1, "Ignoring malformed AV1 codec string: "

    const/4 v2, 0x0

    const-string v3, "MediaCodecUtil"

    const/4 v4, 0x4

    if-ge v0, v4, :cond_21

    .line 800
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_18

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1d

    :cond_18
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1d
    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_21
    const/4 v0, 0x1

    .line 807
    :try_start_22
    aget-object v4, p1, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    .line 808
    aget-object v6, p1, v5

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x3

    .line 809
    aget-object p1, p1, v7

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_3b} :catch_b4

    if-eqz v4, :cond_54

    const/16 p0, 0x20

    .line 816
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Unknown AV1 profile: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_54
    const/16 p1, 0x8

    if-eq p0, p1, :cond_73

    const/16 v1, 0xa

    if-eq p0, v1, :cond_73

    const/16 p1, 0x22

    .line 820
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Unknown AV1 bit depth: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_73
    if-ne p0, p1, :cond_76

    goto :goto_88

    :cond_76
    if-eqz p2, :cond_87

    .line 826
    iget-object p0, p2, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    if-nez p0, :cond_84

    iget p0, p2, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    const/4 p1, 0x7

    if-eq p0, p1, :cond_84

    const/4 p1, 0x6

    if-ne p0, p1, :cond_87

    :cond_84
    const/16 v0, 0x1000

    goto :goto_88

    :cond_87
    const/4 v0, 0x2

    .line 835
    :goto_88
    invoke-static {v6}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->av1LevelNumberToConst(I)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_a6

    const/16 p0, 0x1e

    .line 837
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Unknown AV1 level: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 840
    :cond_a6
    new-instance p1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :catch_b4
    nop

    .line 811
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_c4

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_c9

    :cond_c4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_c9
    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private static getAvcProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 728
    array-length v0, p1

    const-string v1, "Ignoring malformed AVC codec string: "

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "MediaCodecUtil"

    if-ge v0, v2, :cond_21

    .line 730
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_18

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1d

    :cond_18
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1d
    invoke-static {v4, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_21
    const/4 v0, 0x1

    .line 736
    :try_start_22
    aget-object v5, p1, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_44

    .line 738
    aget-object v5, p1, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 739
    aget-object p1, p1, v0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_55

    .line 740
    :cond_44
    array-length v5, p1

    const/4 v6, 0x3

    if-lt v5, v6, :cond_9e

    .line 742
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 743
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_54
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_54} :catch_b6

    move v2, v0

    .line 754
    :goto_55
    invoke-static {v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->avcProfileNumberToConst(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_73

    const/16 p0, 0x20

    .line 756
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Unknown AVC profile: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 759
    :cond_73
    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->avcLevelNumberToConst(I)I

    move-result v1

    if-ne v1, v0, :cond_90

    const/16 p1, 0x1e

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Unknown AVC level: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 764
    :cond_90
    new-instance p0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 746
    :cond_9e
    :try_start_9e
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_ad

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_b2

    :cond_ad
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_b2
    invoke-static {v4, p1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b5
    .catch Ljava/lang/NumberFormatException; {:try_start_9e .. :try_end_b5} :catch_b6

    return-object v3

    :catch_b6
    nop

    .line 750
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_c6

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_cb

    :cond_c6
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_cb
    invoke-static {v4, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private static getCodecMimeType(Landroid/media/MediaCodecInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 390
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object p0

    .line 391
    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_14

    aget-object v2, p0, v1

    .line 392
    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    return-object v2

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_14
    const-string p0, "video/dolby-vision"

    .line 397
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3a

    const-string p0, "OMX.MS.HEVCDV.Decoder"

    .line 400
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    const-string p0, "video/hevcdv"

    return-object p0

    :cond_27
    const-string p0, "OMX.RTK.video.decoder"

    .line 402
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_37

    const-string p0, "OMX.realtek.video.decoder.tunneled"

    .line 403
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_60

    :cond_37
    const-string p0, "video/dv_hevc"

    return-object p0

    :cond_3a
    const-string p0, "audio/alac"

    .line 406
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4d

    const-string p0, "OMX.lge.alac.decoder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4d

    const-string p0, "audio/x-lg-alac"

    return-object p0

    :cond_4d
    const-string p0, "audio/flac"

    .line 408
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_60

    const-string p0, "OMX.lge.flac.decoder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_60

    const-string p0, "audio/x-lg-flac"

    return-object p0

    :cond_60
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCodecProfileAndLevel(Lcom/google/android/exoplayer2/Format;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Format;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    const-string v2, "\\."

    .line 248
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 250
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v3, "video/dolby-vision"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 251
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDolbyVisionProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_1d
    const/4 v2, 0x0

    .line 253
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_a2

    :goto_2b
    const/4 v2, -0x1

    goto :goto_78

    :sswitch_2d
    const-string v2, "vp09"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    goto :goto_2b

    :cond_36
    const/4 v2, 0x6

    goto :goto_78

    :sswitch_38
    const-string v2, "mp4a"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    goto :goto_2b

    :cond_41
    const/4 v2, 0x5

    goto :goto_78

    :sswitch_43
    const-string v2, "hvc1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    goto :goto_2b

    :cond_4c
    const/4 v2, 0x4

    goto :goto_78

    :sswitch_4e
    const-string v2, "hev1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    goto :goto_2b

    :cond_57
    const/4 v2, 0x3

    goto :goto_78

    :sswitch_59
    const-string v2, "avc2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    goto :goto_2b

    :cond_62
    const/4 v2, 0x2

    goto :goto_78

    :sswitch_64
    const-string v2, "avc1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6d

    goto :goto_2b

    :cond_6d
    const/4 v2, 0x1

    goto :goto_78

    :sswitch_6f
    const-string v5, "av01"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_78

    goto :goto_2b

    :cond_78
    :goto_78
    packed-switch v2, :pswitch_data_c0

    return-object v1

    .line 258
    :pswitch_7c  #0x6
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getVp9ProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 265
    :pswitch_83  #0x5
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getAacCodecProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 261
    :pswitch_8a  #0x3, 0x4
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getHevcProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 256
    :pswitch_91  #0x1, 0x2
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getAvcProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 263
    :pswitch_98  #0x0
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    invoke-static {v1, v0, p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getAv1ProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/exoplayer2/video/ColorInfo;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_a2
    .sparse-switch
        0x2dd8f6 -> :sswitch_6f
        0x2ddf23 -> :sswitch_64
        0x2ddf24 -> :sswitch_59
        0x30d038 -> :sswitch_4e
        0x310dbc -> :sswitch_43
        0x333790 -> :sswitch_38
        0x374e43 -> :sswitch_2d
    .end sparse-switch

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_98  #00000000
        :pswitch_91  #00000001
        :pswitch_91  #00000002
        :pswitch_8a  #00000003
        :pswitch_8a  #00000004
        :pswitch_83  #00000005
        :pswitch_7c  #00000006
    .end packed-switch
.end method

.method public static getDecoderInfo(Ljava/lang/String;ZZ)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 142
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    .line 143
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p0, 0x0

    goto :goto_13

    :cond_c
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    :goto_13
    return-object p0
.end method

.method public static declared-synchronized getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    const-class v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;

    monitor-enter v0

    .line 161
    :try_start_3
    new-instance v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;-><init>(Ljava/lang/String;ZZ)V

    .line 162
    sget-object v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->decoderInfosCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_8d

    if-eqz v3, :cond_14

    .line 164
    monitor-exit v0

    return-object v3

    .line 167
    :cond_14
    :try_start_14
    sget v3, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/4 v4, 0x0

    const/16 v5, 0x15

    if-lt v3, v5, :cond_21

    .line 168
    new-instance v6, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;

    invoke-direct {v6, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;-><init>(ZZ)V

    goto :goto_26

    .line 169
    :cond_21
    new-instance v6, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;

    invoke-direct {v6, v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;-><init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$1;)V

    .line 170
    :goto_26
    invoke-static {v1, v6}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfosInternal(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p1, :cond_81

    .line 171
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_81

    if-gt v5, v3, :cond_81

    const/16 p1, 0x17

    if-gt v3, p1, :cond_81

    .line 174
    new-instance p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;

    invoke-direct {p1, v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;-><init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$1;)V

    .line 175
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfosInternal(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;)Ljava/util/ArrayList;

    move-result-object p2

    .line 176
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_81

    const-string p1, "MediaCodecUtil"

    const/4 v3, 0x0

    .line 182
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3f

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "MediaCodecList API didn\'t list secure decoder for: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Assuming: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 177
    invoke-static {p1, v3}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_81
    invoke-static {p0, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->applyWorkarounds(Ljava/lang/String;Ljava/util/List;)V

    .line 186
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 187
    invoke-virtual {v2, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8b
    .catchall {:try_start_14 .. :try_end_8b} :catchall_8d

    .line 188
    monitor-exit v0

    return-object p0

    :catchall_8d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getDecoderInfosInternal(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;)Ljava/util/ArrayList;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "secure-playback"

    const-string v4, "tunneled-playback"

    .line 285
    :try_start_8
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 286
    iget-object v15, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    .line 287
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;->getCodecCount()I

    move-result v14

    .line 288
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;->secureDecodersExplicit()Z

    move-result v13

    const/4 v0, 0x0

    const/4 v12, 0x0

    :goto_19
    if-ge v12, v14, :cond_14b

    .line 291
    invoke-interface {v2, v12}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 292
    invoke-static {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->isAlias(Landroid/media/MediaCodecInfo;)Z

    move-result v6

    if-eqz v6, :cond_2d

    :cond_25
    :goto_25
    move/from16 v22, v12

    move/from16 v23, v13

    move/from16 v18, v14

    goto/16 :goto_10e

    .line 297
    :cond_2d
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v11

    .line 298
    invoke-static {v0, v11, v13, v15}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->isCodecUsableDecoder(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_38

    goto :goto_25

    .line 301
    :cond_38
    invoke-static {v0, v11, v15}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getCodecMimeType(Landroid/media/MediaCodecInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_3c} :catch_14c

    if-nez v10, :cond_3f

    goto :goto_25

    .line 306
    :cond_3f
    :try_start_3f
    invoke-virtual {v0, v10}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v9

    .line 308
    invoke-interface {v2, v4, v10, v9}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureSupported(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v6

    .line 311
    invoke-interface {v2, v4, v10, v9}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureRequired(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v7

    .line 313
    iget-boolean v8, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;->tunneling:Z

    if-nez v8, :cond_51

    if-nez v7, :cond_25

    :cond_51
    if-eqz v8, :cond_56

    if-nez v6, :cond_56

    goto :goto_25

    .line 317
    :cond_56
    invoke-interface {v2, v3, v10, v9}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureSupported(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v6

    .line 320
    invoke-interface {v2, v3, v10, v9}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureRequired(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v7

    .line 322
    iget-boolean v8, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    if-nez v8, :cond_64

    if-nez v7, :cond_25

    :cond_64
    if-eqz v8, :cond_69

    if-nez v6, :cond_69

    goto :goto_25

    .line 325
    :cond_69
    invoke-static {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->isHardwareAccelerated(Landroid/media/MediaCodecInfo;)Z

    move-result v16

    .line 326
    invoke-static {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->isSoftwareOnly(Landroid/media/MediaCodecInfo;)Z

    move-result v17

    .line 327
    invoke-static {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->isVendor(Landroid/media/MediaCodecInfo;)Z

    move-result v0

    if-eqz v13, :cond_7b

    .line 328
    iget-boolean v7, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    if-eq v7, v6, :cond_81

    :cond_7b
    if-nez v13, :cond_a6

    iget-boolean v7, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;->secure:Z
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_7f} :catch_d0

    if-nez v7, :cond_a6

    :cond_81
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v6, v11

    move-object v7, v15

    move-object v8, v10

    move-object/from16 v20, v10

    move/from16 v10, v16

    move-object/from16 v21, v11

    move/from16 v11, v17

    move/from16 v22, v12

    move v12, v0

    move/from16 v23, v13

    move/from16 v13, v18

    move/from16 v18, v14

    move/from16 v14, v19

    .line 331
    :try_start_9b
    invoke-static/range {v6 .. v14}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v0

    .line 330
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10e

    :catch_a4
    move-exception v0

    goto :goto_db

    :cond_a6
    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move/from16 v22, v12

    move/from16 v23, v13

    move/from16 v18, v14

    if-nez v23, :cond_10e

    if-eqz v6, :cond_10e

    .line 342
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ".secure"

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object v7, v15

    move-object/from16 v8, v20

    move/from16 v10, v16

    move/from16 v11, v17

    move v12, v0

    .line 343
    invoke-static/range {v6 .. v14}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v0

    .line 342
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_cf} :catch_a4

    return-object v5

    :catch_d0
    move-exception v0

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move/from16 v22, v12

    move/from16 v23, v13

    move/from16 v18, v14

    .line 357
    :goto_db
    :try_start_db
    sget v6, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_dd} :catch_14c

    const/16 v7, 0x17

    const-string v8, "MediaCodecUtil"

    if-gt v6, v7, :cond_116

    :try_start_e3
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_116

    .line 359
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Skipping codec "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v21

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (failed to query capabilities)"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10e
    :goto_10e
    add-int/lit8 v12, v22, 0x1

    move/from16 v14, v18

    move/from16 v13, v23

    goto/16 :goto_19

    :cond_116
    move-object/from16 v7, v21

    .line 363
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x19

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to query codec "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    throw v0
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_14b} :catch_14c

    :cond_14b
    return-object v5

    :catch_14c
    move-exception v0

    .line 372
    new-instance v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;-><init>(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$1;)V

    throw v1
.end method

.method public static getDecoderInfosSortedByFormatSupport(Ljava/util/List;Lcom/google/android/exoplayer2/Format;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;",
            ">;",
            "Lcom/google/android/exoplayer2/Format;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 199
    new-instance p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/Format;)V

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->sortByScore(Ljava/util/List;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;)V

    return-object v0
.end method

.method public static getDecryptOnlyDecoderInfo()Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    const-string v0, "audio/raw"

    const/4 v1, 0x0

    .line 125
    invoke-static {v0, v1, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;ZZ)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v0

    return-object v0
.end method

.method private static getDolbyVisionProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 668
    array-length v0, p1

    const-string v1, "Ignoring malformed Dolby Vision codec string: "

    const/4 v2, 0x0

    const-string v3, "MediaCodecUtil"

    const/4 v4, 0x3

    if-ge v0, v4, :cond_21

    .line 670
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_18

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1d

    :cond_18
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1d
    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 674
    :cond_21
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->PROFILE_PATTERN:Ljava/util/regex/Pattern;

    const/4 v4, 0x1

    aget-object v5, p1, v4

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 675
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_48

    .line 676
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_3f

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_44

    :cond_3f
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_44
    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 679
    :cond_48
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 680
    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->dolbyVisionStringToProfile(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_6c

    const-string p1, "Unknown Dolby Vision profile string: "

    .line 682
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_63

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_68

    :cond_63
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_68
    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_6c
    const/4 p0, 0x2

    .line 685
    aget-object p0, p1, p0

    .line 686
    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->dolbyVisionStringToLevel(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_8f

    const-string p1, "Unknown Dolby Vision level string: "

    .line 688
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_86

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_8b

    :cond_86
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_8b
    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 691
    :cond_8f
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private static getHevcProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 696
    array-length v0, p1

    const-string v1, "Ignoring malformed HEVC codec string: "

    const/4 v2, 0x0

    const-string v3, "MediaCodecUtil"

    const/4 v4, 0x4

    if-ge v0, v4, :cond_21

    .line 698
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_18

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1d

    :cond_18
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1d
    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 702
    :cond_21
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->PROFILE_PATTERN:Ljava/util/regex/Pattern;

    const/4 v4, 0x1

    aget-object v5, p1, v4

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 703
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_48

    .line 704
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_3f

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_44

    :cond_3f
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_44
    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 707
    :cond_48
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    .line 709
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    goto :goto_5e

    :cond_55
    const-string v0, "2"

    .line 711
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    const/4 v4, 0x2

    :goto_5e
    const/4 p0, 0x3

    .line 717
    aget-object p0, p1, p0

    .line 718
    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->hevcCodecStringToProfileLevel(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_81

    const-string p1, "Unknown HEVC level string: "

    .line 720
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_78

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_7d

    :cond_78
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_7d
    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 723
    :cond_81
    new-instance p0, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_8b
    const-string p1, "Unknown HEVC profile string: "

    .line 714
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_9c

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_a1

    :cond_9c
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_a1
    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private static getVp9ProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 769
    array-length v0, p1

    const-string v1, "Ignoring malformed VP9 codec string: "

    const/4 v2, 0x0

    const-string v3, "MediaCodecUtil"

    const/4 v4, 0x3

    if-ge v0, v4, :cond_21

    .line 770
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_18

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1d

    :cond_18
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1d
    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_21
    const/4 v0, 0x1

    .line 776
    :try_start_22
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x2

    .line 777
    aget-object p1, p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_2f} :catch_78

    .line 783
    invoke-static {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->vp9ProfileNumberToConst(I)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_4d

    const/16 p0, 0x20

    .line 785
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Unknown VP9 profile: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 788
    :cond_4d
    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->vp9LevelNumberToConst(I)I

    move-result v0

    if-ne v0, v1, :cond_6a

    const/16 p1, 0x1e

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Unknown VP9 level: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 793
    :cond_6a
    new-instance p0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :catch_78
    nop

    .line 779
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_88

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_8d

    :cond_88
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_8d
    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private static hevcCodecStringToProfileLevel(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const/4 v1, -0x1

    .line 1180
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x10

    const/16 v4, 0x8

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v2, :sswitch_data_21a

    goto/16 :goto_168

    :sswitch_15
    const-string v2, "L186"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto/16 :goto_168

    :cond_1f
    const/16 v1, 0x19

    goto/16 :goto_168

    :sswitch_23
    const-string v2, "L183"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    goto/16 :goto_168

    :cond_2d
    const/16 v1, 0x18

    goto/16 :goto_168

    :sswitch_31
    const-string v2, "L180"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3b

    goto/16 :goto_168

    :cond_3b
    const/16 v1, 0x17

    goto/16 :goto_168

    :sswitch_3f
    const-string v2, "L156"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_49

    goto/16 :goto_168

    :cond_49
    const/16 v1, 0x16

    goto/16 :goto_168

    :sswitch_4d
    const-string v2, "L153"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_57

    goto/16 :goto_168

    :cond_57
    const/16 v1, 0x15

    goto/16 :goto_168

    :sswitch_5b
    const-string v2, "L150"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_65

    goto/16 :goto_168

    :cond_65
    const/16 v1, 0x14

    goto/16 :goto_168

    :sswitch_69
    const-string v2, "L123"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_73

    goto/16 :goto_168

    :cond_73
    const/16 v1, 0x13

    goto/16 :goto_168

    :sswitch_77
    const-string v2, "L120"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_81

    goto/16 :goto_168

    :cond_81
    const/16 v1, 0x12

    goto/16 :goto_168

    :sswitch_85
    const-string v2, "H186"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8f

    goto/16 :goto_168

    :cond_8f
    const/16 v1, 0x11

    goto/16 :goto_168

    :sswitch_93
    const-string v2, "H183"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9d

    goto/16 :goto_168

    :cond_9d
    const/16 v1, 0x10

    goto/16 :goto_168

    :sswitch_a1
    const-string v2, "H180"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ab

    goto/16 :goto_168

    :cond_ab
    const/16 v1, 0xf

    goto/16 :goto_168

    :sswitch_af
    const-string v2, "H156"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b9

    goto/16 :goto_168

    :cond_b9
    const/16 v1, 0xe

    goto/16 :goto_168

    :sswitch_bd
    const-string v2, "H153"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c7

    goto/16 :goto_168

    :cond_c7
    const/16 v1, 0xd

    goto/16 :goto_168

    :sswitch_cb
    const-string v2, "H150"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d5

    goto/16 :goto_168

    :cond_d5
    const/16 v1, 0xc

    goto/16 :goto_168

    :sswitch_d9
    const-string v2, "H123"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e3

    goto/16 :goto_168

    :cond_e3
    const/16 v1, 0xb

    goto/16 :goto_168

    :sswitch_e7
    const-string v2, "H120"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f1

    goto/16 :goto_168

    :cond_f1
    const/16 v1, 0xa

    goto/16 :goto_168

    :sswitch_f5
    const-string v2, "L93"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ff

    goto/16 :goto_168

    :cond_ff
    const/16 v1, 0x9

    goto/16 :goto_168

    :sswitch_103
    const-string v2, "L90"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10d

    goto/16 :goto_168

    :cond_10d
    const/16 v1, 0x8

    goto/16 :goto_168

    :sswitch_111
    const-string v2, "L63"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11a

    goto :goto_168

    :cond_11a
    const/4 v1, 0x7

    goto :goto_168

    :sswitch_11c
    const-string v2, "L60"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_125

    goto :goto_168

    :cond_125
    const/4 v1, 0x6

    goto :goto_168

    :sswitch_127
    const-string v2, "L30"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_130

    goto :goto_168

    :cond_130
    const/4 v1, 0x5

    goto :goto_168

    :sswitch_132
    const-string v2, "H93"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13b

    goto :goto_168

    :cond_13b
    const/4 v1, 0x4

    goto :goto_168

    :sswitch_13d
    const-string v2, "H90"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_146

    goto :goto_168

    :cond_146
    const/4 v1, 0x3

    goto :goto_168

    :sswitch_148
    const-string v2, "H63"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_151

    goto :goto_168

    :cond_151
    const/4 v1, 0x2

    goto :goto_168

    :sswitch_153
    const-string v2, "H60"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15c

    goto :goto_168

    :cond_15c
    const/4 v1, 0x1

    goto :goto_168

    :sswitch_15e
    const-string v2, "H30"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_167

    goto :goto_168

    :cond_167
    const/4 v1, 0x0

    :goto_168
    packed-switch v1, :pswitch_data_284

    return-object v0

    :pswitch_16c  #0x19
    const/high16 p0, 0x1000000

    .line 1206
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_173  #0x18
    const/high16 p0, 0x400000

    .line 1204
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_17a  #0x17
    const/high16 p0, 0x100000

    .line 1202
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_181  #0x16
    const/high16 p0, 0x40000

    .line 1200
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_188  #0x15
    const/high16 p0, 0x10000

    .line 1198
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_18f  #0x14
    const/16 p0, 0x4000

    .line 1196
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_196  #0x13
    const/16 p0, 0x1000

    .line 1194
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_19d  #0x12
    const/16 p0, 0x400

    .line 1192
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1a4  #0x11
    const/high16 p0, 0x2000000

    .line 1232
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1ab  #0x10
    const/high16 p0, 0x800000

    .line 1230
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1b2  #0xf
    const/high16 p0, 0x200000

    .line 1228
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1b9  #0xe
    const/high16 p0, 0x80000

    .line 1226
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1c0  #0xd
    const/high16 p0, 0x20000

    .line 1224
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1c7  #0xc
    const p0, 0x8000

    .line 1222
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1cf  #0xb
    const/16 p0, 0x2000

    .line 1220
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1d6  #0xa
    const/16 p0, 0x800

    .line 1218
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1dd  #0x9
    const/16 p0, 0x100

    .line 1190
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1e4  #0x8
    const/16 p0, 0x40

    .line 1188
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 1186
    :pswitch_1eb  #0x7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 1184
    :pswitch_1f0  #0x6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 1182
    :pswitch_1f5  #0x5
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1fa  #0x4
    const/16 p0, 0x200

    .line 1216
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_201  #0x3
    const/16 p0, 0x80

    .line 1214
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_208  #0x2
    const/16 p0, 0x20

    .line 1212
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 1210
    :pswitch_20f  #0x1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 1208
    :pswitch_214  #0x0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_21a
    .sparse-switch
        0x114a5 -> :sswitch_15e
        0x11502 -> :sswitch_153
        0x11505 -> :sswitch_148
        0x1155f -> :sswitch_13d
        0x11562 -> :sswitch_132
        0x123a9 -> :sswitch_127
        0x12406 -> :sswitch_11c
        0x12409 -> :sswitch_111
        0x12463 -> :sswitch_103
        0x12466 -> :sswitch_f5
        0x2178e7 -> :sswitch_e7
        0x2178ea -> :sswitch_d9
        0x217944 -> :sswitch_cb
        0x217947 -> :sswitch_bd
        0x21794a -> :sswitch_af
        0x2179a1 -> :sswitch_a1
        0x2179a4 -> :sswitch_93
        0x2179a7 -> :sswitch_85
        0x234a63 -> :sswitch_77
        0x234a66 -> :sswitch_69
        0x234ac0 -> :sswitch_5b
        0x234ac3 -> :sswitch_4d
        0x234ac6 -> :sswitch_3f
        0x234b1d -> :sswitch_31
        0x234b20 -> :sswitch_23
        0x234b23 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_284
    .packed-switch 0x0
        :pswitch_214  #00000000
        :pswitch_20f  #00000001
        :pswitch_208  #00000002
        :pswitch_201  #00000003
        :pswitch_1fa  #00000004
        :pswitch_1f5  #00000005
        :pswitch_1f0  #00000006
        :pswitch_1eb  #00000007
        :pswitch_1e4  #00000008
        :pswitch_1dd  #00000009
        :pswitch_1d6  #0000000a
        :pswitch_1cf  #0000000b
        :pswitch_1c7  #0000000c
        :pswitch_1c0  #0000000d
        :pswitch_1b9  #0000000e
        :pswitch_1b2  #0000000f
        :pswitch_1ab  #00000010
        :pswitch_1a4  #00000011
        :pswitch_19d  #00000012
        :pswitch_196  #00000013
        :pswitch_18f  #00000014
        :pswitch_188  #00000015
        :pswitch_181  #00000016
        :pswitch_17a  #00000017
        :pswitch_173  #00000018
        :pswitch_16c  #00000019
    .end packed-switch
.end method

.method private static isAlias(Landroid/media/MediaCodecInfo;)Z
    .registers 3

    .line 594
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_e

    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->isAliasV29(Landroid/media/MediaCodecInfo;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private static isAliasV29(Landroid/media/MediaCodecInfo;)Z
    .registers 1

    .line 599
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isAlias()Z

    move-result p0

    return p0
.end method

.method private static isCodecUsableDecoder(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Z
    .registers 8

    .line 429
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_1d5

    if-nez p2, :cond_13

    const-string p0, ".secure"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_13

    goto/16 :goto_1d5

    .line 434
    :cond_13
    sget p0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 p2, 0x15

    if-ge p0, p2, :cond_4a

    const-string p2, "CIPAACDecoder"

    .line 435
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_49

    const-string p2, "CIPMP3Decoder"

    .line 436
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_49

    const-string p2, "CIPVorbisDecoder"

    .line 437
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_49

    const-string p2, "CIPAMRNBDecoder"

    .line 438
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_49

    const-string p2, "AACDecoder"

    .line 439
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_49

    const-string p2, "MP3Decoder"

    .line 440
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4a

    :cond_49
    return v0

    :cond_4a
    const/16 p2, 0x12

    if-ge p0, p2, :cond_73

    const-string p2, "OMX.MTK.AUDIO.DECODER.AAC"

    .line 447
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_73

    sget-object p2, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "a70"

    .line 448
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_72

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "Xiaomi"

    .line 449
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    const-string v1, "HM"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_73

    :cond_72
    return v0

    :cond_73
    const/16 p2, 0x10

    if-ne p0, p2, :cond_e2

    const-string v1, "OMX.qcom.audio.decoder.mp3"

    .line 456
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e2

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v2, "dlxu"

    .line 457
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e1

    const-string v2, "protou"

    .line 458
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e1

    const-string v2, "ville"

    .line 459
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e1

    const-string v2, "villeplus"

    .line 460
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e1

    const-string v2, "villec2"

    .line 461
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e1

    const-string v2, "gee"

    .line 462
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e1

    const-string v2, "C6602"

    .line 463
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e1

    const-string v2, "C6603"

    .line 464
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e1

    const-string v2, "C6606"

    .line 465
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e1

    const-string v2, "C6616"

    .line 466
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e1

    const-string v2, "L36h"

    .line 467
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e1

    const-string v2, "SO-02E"

    .line 468
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e2

    :cond_e1
    return v0

    :cond_e2
    if-ne p0, p2, :cond_10f

    const-string p2, "OMX.qcom.audio.decoder.aac"

    .line 474
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10f

    sget-object p2, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "C1504"

    .line 475
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10e

    const-string v1, "C1505"

    .line 476
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10e

    const-string v1, "C1604"

    .line 477
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10e

    const-string v1, "C1605"

    .line 478
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10f

    :cond_10e
    return v0

    :cond_10f
    const/16 p2, 0x18

    const-string v1, "samsung"

    if-ge p0, p2, :cond_170

    const-string p2, "OMX.SEC.aac.dec"

    .line 484
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_125

    const-string p2, "OMX.Exynos.AAC.Decoder"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_170

    :cond_125
    sget-object p2, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 485
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_170

    sget-object p2, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v2, "zeroflte"

    .line 486
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16f

    const-string v2, "zerolte"

    .line 487
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16f

    const-string v2, "zenlte"

    .line 488
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16f

    const-string v2, "SC-05G"

    .line 489
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16f

    const-string v2, "marinelteatt"

    .line 490
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16f

    const-string v2, "404SC"

    .line 491
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16f

    const-string v2, "SC-04G"

    .line 492
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16f

    const-string v2, "SCV31"

    .line 493
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_170

    :cond_16f
    return v0

    :cond_170
    const-string p2, "jflte"

    const/16 v2, 0x13

    if-gt p0, v2, :cond_1af

    const-string v3, "OMX.SEC.vp8.dec"

    .line 500
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1af

    sget-object v3, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 501
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1af

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v3, "d2"

    .line 502
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1ae

    const-string v3, "serrano"

    .line 503
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1ae

    .line 504
    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1ae

    const-string v3, "santos"

    .line 505
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1ae

    const-string v3, "t0"

    .line 506
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1af

    :cond_1ae
    return v0

    :cond_1af
    if-gt p0, v2, :cond_1c2

    .line 511
    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 512
    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1c2

    const-string p0, "OMX.qcom.video.decoder.vp8"

    .line 513
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c2

    return v0

    :cond_1c2
    const-string p0, "audio/eac3-joc"

    .line 518
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d3

    const-string p0, "OMX.MTK.AUDIO.DECODER.DSPAC3"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d3

    return v0

    :cond_1d3
    const/4 p0, 0x1

    return p0

    :cond_1d5
    :goto_1d5
    return v0
.end method

.method private static isHardwareAccelerated(Landroid/media/MediaCodecInfo;)Z
    .registers 3

    .line 607
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_b

    .line 608
    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->isHardwareAcceleratedV29(Landroid/media/MediaCodecInfo;)Z

    move-result p0

    return p0

    .line 612
    :cond_b
    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->isSoftwareOnly(Landroid/media/MediaCodecInfo;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static isHardwareAcceleratedV29(Landroid/media/MediaCodecInfo;)Z
    .registers 1

    .line 617
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isHardwareAccelerated()Z

    move-result p0

    return p0
.end method

.method private static isSoftwareOnly(Landroid/media/MediaCodecInfo;)Z
    .registers 3

    .line 625
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_b

    .line 626
    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->isSoftwareOnlyV29(Landroid/media/MediaCodecInfo;)Z

    move-result p0

    return p0

    .line 628
    :cond_b
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "arc."

    .line 629
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    return v1

    :cond_1d
    const-string v0, "omx.google."

    .line 632
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_65

    const-string v0, "omx.ffmpeg."

    .line 633
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_65

    const-string v0, "omx.sec."

    .line 634
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string v0, ".sw."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_65

    :cond_3d
    const-string v0, "omx.qcom.video.decoder.hevcswvdec"

    .line 635
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    const-string v0, "c2.android."

    .line 636
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_65

    const-string v0, "c2.google."

    .line 637
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_65

    const-string v0, "omx."

    .line 638
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_66

    const-string v0, "c2."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_66

    :cond_65
    const/4 v1, 0x1

    :cond_66
    return v1
.end method

.method private static isSoftwareOnlyV29(Landroid/media/MediaCodecInfo;)Z
    .registers 1

    .line 643
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isSoftwareOnly()Z

    move-result p0

    return p0
.end method

.method private static isVendor(Landroid/media/MediaCodecInfo;)Z
    .registers 3

    .line 651
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_b

    .line 652
    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->isVendorV29(Landroid/media/MediaCodecInfo;)Z

    move-result p0

    return p0

    .line 654
    :cond_b
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "omx.google."

    .line 655
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "c2.android."

    .line 656
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "c2.google."

    .line 657
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2d

    const/4 p0, 0x1

    goto :goto_2e

    :cond_2d
    const/4 p0, 0x0

    :goto_2e
    return p0
.end method

.method private static isVendorV29(Landroid/media/MediaCodecInfo;)Z
    .registers 1

    .line 662
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isVendor()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$applyWorkarounds$1(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)I
    .registers 3

    .line 556
    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const-string v0, "OMX.google"

    .line 557
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "c2.android"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_25

    .line 561
    :cond_13
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_23

    const-string v0, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_23

    const/4 p0, -0x1

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0

    :cond_25
    :goto_25
    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$applyWorkarounds$2(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)I
    .registers 2

    .line 579
    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const-string v0, "OMX.google"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getDecoderInfosSortedByFormatSupport$0(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)I
    .registers 2

    .line 203
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isFormatSupported(Lcom/google/android/exoplayer2/Format;)Z

    move-result p0
    :try_end_4
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    const/4 p0, -0x1

    return p0
.end method

.method private static synthetic lambda$sortByScore$3(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 914
    invoke-interface {p0, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;->getScore(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;->getScore(Ljava/lang/Object;)I

    move-result p0

    sub-int/2addr p2, p0

    return p2
.end method

.method public static maxH264DecodableFrameSize()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 217
    sget v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_38

    const-string v0, "video/avc"

    const/4 v1, 0x0

    .line 221
    invoke-static {v0, v1, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;ZZ)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 223
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->getProfileLevels()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_14
    if-ge v1, v2, :cond_25

    aget-object v4, v0, v1

    .line 224
    iget v4, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-static {v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->avcLevelToMaxFrameSize(I)I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 228
    :cond_25
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2f

    const v0, 0x54600

    goto :goto_32

    :cond_2f
    const v0, 0x2a300

    :goto_32
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 230
    :cond_36
    sput v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize:I

    .line 232
    :cond_38
    sget v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize:I

    return v0
.end method

.method private static mp4aAudioObjectTypeToProfile(I)I
    .registers 2

    const/16 v0, 0x11

    if-eq p0, v0, :cond_29

    const/16 v0, 0x14

    if-eq p0, v0, :cond_29

    const/16 v0, 0x17

    if-eq p0, v0, :cond_29

    const/16 v0, 0x1d

    if-eq p0, v0, :cond_29

    const/16 v0, 0x27

    if-eq p0, v0, :cond_29

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_29

    packed-switch p0, :pswitch_data_2a

    const/4 p0, -0x1

    return p0

    :pswitch_1d  #0x6
    const/4 p0, 0x6

    return p0

    :pswitch_1f  #0x5
    const/4 p0, 0x5

    return p0

    :pswitch_21  #0x4
    const/4 p0, 0x4

    return p0

    :pswitch_23  #0x3
    const/4 p0, 0x3

    return p0

    :pswitch_25  #0x2
    const/4 p0, 0x2

    return p0

    :pswitch_27  #0x1
    const/4 p0, 0x1

    return p0

    :cond_29
    return v0

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_27  #00000001
        :pswitch_25  #00000002
        :pswitch_23  #00000003
        :pswitch_21  #00000004
        :pswitch_1f  #00000005
        :pswitch_1d  #00000006
    .end packed-switch
.end method

.method private static sortByScore(Ljava/util/List;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider<",
            "TT;>;)V"
        }
    .end annotation

    .line 914
    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private static vp9LevelNumberToConst(I)I
    .registers 2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_4f

    const/16 v0, 0xb

    if-eq p0, v0, :cond_4d

    const/16 v0, 0x14

    if-eq p0, v0, :cond_4b

    const/16 v0, 0x15

    if-eq p0, v0, :cond_48

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_45

    const/16 v0, 0x1f

    if-eq p0, v0, :cond_42

    const/16 v0, 0x28

    if-eq p0, v0, :cond_3f

    const/16 v0, 0x29

    if-eq p0, v0, :cond_3c

    const/16 v0, 0x32

    if-eq p0, v0, :cond_39

    const/16 v0, 0x33

    if-eq p0, v0, :cond_36

    packed-switch p0, :pswitch_data_52

    const/4 p0, -0x1

    return p0

    :pswitch_2d  #0x3e
    const/16 p0, 0x2000

    return p0

    :pswitch_30  #0x3d
    const/16 p0, 0x1000

    return p0

    :pswitch_33  #0x3c
    const/16 p0, 0x800

    return p0

    :cond_36
    const/16 p0, 0x200

    return p0

    :cond_39
    const/16 p0, 0x100

    return p0

    :cond_3c
    const/16 p0, 0x80

    return p0

    :cond_3f
    const/16 p0, 0x40

    return p0

    :cond_42
    const/16 p0, 0x20

    return p0

    :cond_45
    const/16 p0, 0x10

    return p0

    :cond_48
    const/16 p0, 0x8

    return p0

    :cond_4b
    const/4 p0, 0x4

    return p0

    :cond_4d
    const/4 p0, 0x2

    return p0

    :cond_4f
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_52
    .packed-switch 0x3c
        :pswitch_33  #0000003c
        :pswitch_30  #0000003d
        :pswitch_2d  #0000003e
    .end packed-switch
.end method

.method private static vp9ProfileNumberToConst(I)I
    .registers 3

    const/4 v0, 0x1

    if-eqz p0, :cond_13

    const/4 v1, 0x2

    if-eq p0, v0, :cond_12

    if-eq p0, v1, :cond_10

    const/4 v0, 0x3

    if-eq p0, v0, :cond_d

    const/4 p0, -0x1

    return p0

    :cond_d
    const/16 p0, 0x8

    return p0

    :cond_10
    const/4 p0, 0x4

    return p0

    :cond_12
    return v1

    :cond_13
    return v0
.end method

.method public static warmDecoderInfoCache(Ljava/lang/String;ZZ)V
    .registers 3

    .line 101
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;
    :try_end_3
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_c

    :catch_4
    move-exception p0

    const-string p1, "MediaCodecUtil"

    const-string p2, "Codec warming failed"

    .line 104
    invoke-static {p1, p2, p0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c
    return-void
.end method
