.class public Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;
.super Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;
.source "MediaCodecVideoRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;,
        Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;
    }
.end annotation


# static fields
.field private static final INITIAL_FORMAT_MAX_INPUT_SIZE_SCALE_FACTOR:F = 1.5f

.field private static final KEY_CROP_BOTTOM:Ljava/lang/String; = "crop-bottom"

.field private static final KEY_CROP_LEFT:Ljava/lang/String; = "crop-left"

.field private static final KEY_CROP_RIGHT:Ljava/lang/String; = "crop-right"

.field private static final KEY_CROP_TOP:Ljava/lang/String; = "crop-top"

.field private static final STANDARD_LONG_EDGE_VIDEO_PX:[I

.field private static final TAG:Ljava/lang/String; = "MediaCodecVideoRenderer"

.field private static final TUNNELING_EOS_PRESENTATION_TIME_US:J = 0x7fffffffffffffffL

.field private static deviceNeedsSetOutputSurfaceWorkaround:Z

.field private static evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z


# instance fields
.field private final allowedJoiningTimeMs:J

.field private buffersInCodecCount:I

.field private codecHandlesHdr10PlusOutOfBandMetadata:Z

.field private codecMaxValues:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

.field private codecNeedsSetOutputSurfaceWorkaround:Z

.field private consecutiveDroppedFrameCount:I

.field private final context:Landroid/content/Context;

.field private currentHeight:I

.field private currentPixelWidthHeightRatio:F

.field private currentUnappliedRotationDegrees:I

.field private currentWidth:I

.field private final deviceNeedsNoPostProcessWorkaround:Z

.field private droppedFrameAccumulationStartTimeMs:J

.field private droppedFrames:I

.field private dummySurface:Lcom/google/android/exoplayer2/video/DummySurface;

.field private final eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

.field private frameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

.field private final frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

.field private haveReportedFirstFrameRenderedForCurrentSurface:Z

.field private initialPositionUs:J

.field private joiningDeadlineMs:J

.field private lastBufferPresentationTimeUs:J

.field private lastRenderRealtimeUs:J

.field private final maxDroppedFramesToNotify:I

.field private mayRenderFirstFrameAfterEnableIfNotStarted:Z

.field private renderedFirstFrameAfterEnable:Z

.field private renderedFirstFrameAfterReset:Z

.field private reportedVideoSize:Lcom/google/android/exoplayer2/video/VideoSize;

.field private scalingMode:I

.field private surface:Landroid/view/Surface;

.field private totalVideoFrameProcessingOffsetUs:J

.field private tunneling:Z

.field private tunnelingAudioSessionId:I

.field tunnelingOnFrameRenderedListener:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

.field private videoFrameProcessingOffsetCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 102
    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->STANDARD_LONG_EDGE_VIDEO_PX:[I

    return-void

    :array_a
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V
    .registers 21

    const/high16 v10, 0x41f00000  # 30.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    .line 272
    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;IF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;IF)V
    .registers 18

    move-object v6, p0

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p6

    move/from16 v5, p10

    .line 315
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;-><init>(ILcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;ZF)V

    move-wide v0, p4

    .line 321
    iput-wide v0, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    move/from16 v0, p9

    .line 322
    iput v0, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maxDroppedFramesToNotify:I

    .line 323
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 324
    new-instance v1, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    .line 325
    new-instance v0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    move-object v1, p7

    move-object v2, p8

    invoke-direct {v0, p7, p8}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;)V

    iput-object v0, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    .line 326
    invoke-static {}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->deviceNeedsNoPostProcessWorkaround()Z

    move-result v0

    iput-boolean v0, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->deviceNeedsNoPostProcessWorkaround:Z

    const-wide v0, -0x7fffffffffffffffL  # -4.9E-324

    .line 327
    iput-wide v0, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    const/4 v0, -0x1

    .line 328
    iput v0, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    .line 329
    iput v0, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    const/high16 v0, -0x40800000  # -1.0f

    .line 330
    iput v0, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    const/4 v0, 0x1

    .line 331
    iput v0, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->scalingMode:I

    const/4 v0, 0x0

    .line 332
    iput v0, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    .line 333
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearReportedVideoSize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;)V
    .registers 5

    const-wide/16 v0, 0x0

    .line 162
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;J)V
    .registers 13

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 173
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V
    .registers 19

    .line 200
    sget-object v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;->DEFAULT:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;

    const/4 v6, 0x0

    const/high16 v10, 0x41f00000  # 30.0f

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;IF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V
    .registers 20

    .line 234
    sget-object v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;->DEFAULT:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;

    const/high16 v10, 0x41f00000  # 30.0f

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;IF)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;)V
    .registers 1

    .line 93
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->onProcessedTunneledEndOfStream()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .registers 2

    .line 93
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setPendingPlaybackException(Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method

.method private clearRenderedFirstFrame()V
    .registers 3

    const/4 v0, 0x0

    .line 1237
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterReset:Z

    .line 1242
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1a

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_1a

    .line 1243
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getCodec()Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1246
    new-instance v1, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;-><init>(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    :cond_1a
    return-void
.end method

.method private clearReportedVideoSize()V
    .registers 2

    const/4 v0, 0x0

    .line 1267
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->reportedVideoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    return-void
.end method

.method private static configureTunnelingV21(Landroid/media/MediaFormat;I)V
    .registers 4

    const-string v0, "tunneled-playback"

    const/4 v1, 0x1

    .line 1336
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    const-string v0, "audio-session-id"

    .line 1337
    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method private static deviceNeedsNoPostProcessWorkaround()Z
    .registers 2

    .line 1634
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "NVIDIA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static evaluateDeviceNeedsSetOutputSurfaceWorkaround()Z
    .registers 13

    .line 1691
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/16 v5, 0x1c

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-gt v0, v5, :cond_6d

    .line 1697
    sget-object v10, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_850

    :goto_1a
    const/4 v10, -0x1

    goto :goto_68

    :sswitch_1c
    const-string v11, "machuca"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_25

    goto :goto_1a

    :cond_25
    const/4 v10, 0x6

    goto :goto_68

    :sswitch_27
    const-string v11, "once"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_30

    goto :goto_1a

    :cond_30
    const/4 v10, 0x5

    goto :goto_68

    :sswitch_32
    const-string v11, "magnolia"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3b

    goto :goto_1a

    :cond_3b
    const/4 v10, 0x4

    goto :goto_68

    :sswitch_3d
    const-string v11, "oneday"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_46

    goto :goto_1a

    :cond_46
    const/4 v10, 0x3

    goto :goto_68

    :sswitch_48
    const-string v11, "dangalUHD"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_51

    goto :goto_1a

    :cond_51
    const/4 v10, 0x2

    goto :goto_68

    :sswitch_53
    const-string v11, "dangalFHD"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5c

    goto :goto_1a

    :cond_5c
    const/4 v10, 0x1

    goto :goto_68

    :sswitch_5e
    const-string v11, "dangal"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_67

    goto :goto_1a

    :cond_67
    const/4 v10, 0x0

    :goto_68
    packed-switch v10, :pswitch_data_86e

    goto :goto_6d

    :pswitch_6c  #0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6
    return v9

    :cond_6d
    :goto_6d
    const/16 v10, 0x1b

    if-gt v0, v10, :cond_7c

    .line 1710
    sget-object v11, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v12, "HWEML"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7c

    return v9

    :cond_7c
    const/16 v11, 0x1a

    if-gt v0, v11, :cond_84e

    .line 1735
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_880

    :goto_8c
    const/4 v1, -0x1

    goto/16 :goto_81a

    :sswitch_8f
    const-string v1, "HWWAS-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_98

    goto :goto_8c

    :cond_98
    const/16 v1, 0x8b

    goto/16 :goto_81a

    :sswitch_9c
    const-string v1, "HWVNS-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a5

    goto :goto_8c

    :cond_a5
    const/16 v1, 0x8a

    goto/16 :goto_81a

    :sswitch_a9
    const-string v1, "ELUGA_Prim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    goto :goto_8c

    :cond_b2
    const/16 v1, 0x89

    goto/16 :goto_81a

    :sswitch_b6
    const-string v1, "ELUGA_Note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bf

    goto :goto_8c

    :cond_bf
    const/16 v1, 0x88

    goto/16 :goto_81a

    :sswitch_c3
    const-string v1, "ASUS_X00AD_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cc

    goto :goto_8c

    :cond_cc
    const/16 v1, 0x87

    goto/16 :goto_81a

    :sswitch_d0
    const-string v1, "HWCAM-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d9

    goto :goto_8c

    :cond_d9
    const/16 v1, 0x86

    goto/16 :goto_81a

    :sswitch_dd
    const-string v1, "HWBLN-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e6

    goto :goto_8c

    :cond_e6
    const/16 v1, 0x85

    goto/16 :goto_81a

    :sswitch_ea
    const-string v1, "DM-01K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    goto :goto_8c

    :cond_f3
    const/16 v1, 0x84

    goto/16 :goto_81a

    :sswitch_f7
    const-string v1, "BRAVIA_ATV3_4K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_100

    goto :goto_8c

    :cond_100
    const/16 v1, 0x83

    goto/16 :goto_81a

    :sswitch_104
    const-string v1, "Infinix-X572"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e

    goto/16 :goto_8c

    :cond_10e
    const/16 v1, 0x82

    goto/16 :goto_81a

    :sswitch_112
    const-string v1, "PB2-670M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11c

    goto/16 :goto_8c

    :cond_11c
    const/16 v1, 0x81

    goto/16 :goto_81a

    :sswitch_120
    const-string v1, "santoni"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12a

    goto/16 :goto_8c

    :cond_12a
    const/16 v1, 0x80

    goto/16 :goto_81a

    :sswitch_12e
    const-string v1, "iball8735_9806"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_138

    goto/16 :goto_8c

    :cond_138
    const/16 v1, 0x7f

    goto/16 :goto_81a

    :sswitch_13c
    const-string v1, "CPH1715"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_146

    goto/16 :goto_8c

    :cond_146
    const/16 v1, 0x7e

    goto/16 :goto_81a

    :sswitch_14a
    const-string v1, "CPH1609"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_154

    goto/16 :goto_8c

    :cond_154
    const/16 v1, 0x7d

    goto/16 :goto_81a

    :sswitch_158
    const-string v1, "woods_f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_162

    goto/16 :goto_8c

    :cond_162
    const/16 v1, 0x7c

    goto/16 :goto_81a

    :sswitch_166
    const-string v1, "htc_e56ml_dtul"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_170

    goto/16 :goto_8c

    :cond_170
    const/16 v1, 0x7b

    goto/16 :goto_81a

    :sswitch_174
    const-string v1, "EverStar_S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17e

    goto/16 :goto_8c

    :cond_17e
    const/16 v1, 0x7a

    goto/16 :goto_81a

    :sswitch_182
    const-string v1, "hwALE-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18c

    goto/16 :goto_8c

    :cond_18c
    const/16 v1, 0x79

    goto/16 :goto_81a

    :sswitch_190
    const-string v1, "itel_S41"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19a

    goto/16 :goto_8c

    :cond_19a
    const/16 v1, 0x78

    goto/16 :goto_81a

    :sswitch_19e
    const-string v1, "LS-5017"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a8

    goto/16 :goto_8c

    :cond_1a8
    const/16 v1, 0x77

    goto/16 :goto_81a

    :sswitch_1ac
    const-string v1, "panell_d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b6

    goto/16 :goto_8c

    :cond_1b6
    const/16 v1, 0x76

    goto/16 :goto_81a

    :sswitch_1ba
    const-string v1, "j2xlteins"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c4

    goto/16 :goto_8c

    :cond_1c4
    const/16 v1, 0x75

    goto/16 :goto_81a

    :sswitch_1c8
    const-string v1, "A7000plus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d2

    goto/16 :goto_8c

    :cond_1d2
    const/16 v1, 0x74

    goto/16 :goto_81a

    :sswitch_1d6
    const-string v1, "manning"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e0

    goto/16 :goto_8c

    :cond_1e0
    const/16 v1, 0x73

    goto/16 :goto_81a

    :sswitch_1e4
    const-string v1, "GIONEE_WBL7519"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ee

    goto/16 :goto_8c

    :cond_1ee
    const/16 v1, 0x72

    goto/16 :goto_81a

    :sswitch_1f2
    const-string v1, "GIONEE_WBL7365"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1fc

    goto/16 :goto_8c

    :cond_1fc
    const/16 v1, 0x71

    goto/16 :goto_81a

    :sswitch_200
    const-string v1, "GIONEE_WBL5708"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20a

    goto/16 :goto_8c

    :cond_20a
    const/16 v1, 0x70

    goto/16 :goto_81a

    :sswitch_20e
    const-string v1, "QM16XE_U"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_218

    goto/16 :goto_8c

    :cond_218
    const/16 v1, 0x6f

    goto/16 :goto_81a

    :sswitch_21c
    const-string v1, "Pixi5-10_4G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_226

    goto/16 :goto_8c

    :cond_226
    const/16 v1, 0x6e

    goto/16 :goto_81a

    :sswitch_22a
    const-string v1, "TB3-850M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_234

    goto/16 :goto_8c

    :cond_234
    const/16 v1, 0x6d

    goto/16 :goto_81a

    :sswitch_238
    const-string v1, "TB3-850F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_242

    goto/16 :goto_8c

    :cond_242
    const/16 v1, 0x6c

    goto/16 :goto_81a

    :sswitch_246
    const-string v1, "TB3-730X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_250

    goto/16 :goto_8c

    :cond_250
    const/16 v1, 0x6b

    goto/16 :goto_81a

    :sswitch_254
    const-string v1, "TB3-730F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25e

    goto/16 :goto_8c

    :cond_25e
    const/16 v1, 0x6a

    goto/16 :goto_81a

    :sswitch_262
    const-string v1, "A7020a48"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26c

    goto/16 :goto_8c

    :cond_26c
    const/16 v1, 0x69

    goto/16 :goto_81a

    :sswitch_270
    const-string v1, "A7010a48"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27a

    goto/16 :goto_8c

    :cond_27a
    const/16 v1, 0x68

    goto/16 :goto_81a

    :sswitch_27e
    const-string v1, "griffin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_288

    goto/16 :goto_8c

    :cond_288
    const/16 v1, 0x67

    goto/16 :goto_81a

    :sswitch_28c
    const-string v1, "marino_f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_296

    goto/16 :goto_8c

    :cond_296
    const/16 v1, 0x66

    goto/16 :goto_81a

    :sswitch_29a
    const-string v1, "CPY83_I00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a4

    goto/16 :goto_8c

    :cond_2a4
    const/16 v1, 0x65

    goto/16 :goto_81a

    :sswitch_2a8
    const-string v1, "A2016a40"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b2

    goto/16 :goto_8c

    :cond_2b2
    const/16 v1, 0x64

    goto/16 :goto_81a

    :sswitch_2b6
    const-string v1, "le_x6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c0

    goto/16 :goto_8c

    :cond_2c0
    const/16 v1, 0x63

    goto/16 :goto_81a

    :sswitch_2c4
    const-string v1, "l5460"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2ce

    goto/16 :goto_8c

    :cond_2ce
    const/16 v1, 0x62

    goto/16 :goto_81a

    :sswitch_2d2
    const-string v1, "i9031"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2dc

    goto/16 :goto_8c

    :cond_2dc
    const/16 v1, 0x61

    goto/16 :goto_81a

    :sswitch_2e0
    const-string v1, "X3_HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2ea

    goto/16 :goto_8c

    :cond_2ea
    const/16 v1, 0x60

    goto/16 :goto_81a

    :sswitch_2ee
    const-string v1, "V23GB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f8

    goto/16 :goto_8c

    :cond_2f8
    const/16 v1, 0x5f

    goto/16 :goto_81a

    :sswitch_2fc
    const-string v1, "Q4310"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_306

    goto/16 :goto_8c

    :cond_306
    const/16 v1, 0x5e

    goto/16 :goto_81a

    :sswitch_30a
    const-string v1, "Q4260"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_314

    goto/16 :goto_8c

    :cond_314
    const/16 v1, 0x5d

    goto/16 :goto_81a

    :sswitch_318
    const-string v1, "PRO7S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_322

    goto/16 :goto_8c

    :cond_322
    const/16 v1, 0x5c

    goto/16 :goto_81a

    :sswitch_326
    const-string v1, "F3311"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_330

    goto/16 :goto_8c

    :cond_330
    const/16 v1, 0x5b

    goto/16 :goto_81a

    :sswitch_334
    const-string v1, "F3215"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33e

    goto/16 :goto_8c

    :cond_33e
    const/16 v1, 0x5a

    goto/16 :goto_81a

    :sswitch_342
    const-string v1, "F3213"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34c

    goto/16 :goto_8c

    :cond_34c
    const/16 v1, 0x59

    goto/16 :goto_81a

    :sswitch_350
    const-string v1, "F3211"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35a

    goto/16 :goto_8c

    :cond_35a
    const/16 v1, 0x58

    goto/16 :goto_81a

    :sswitch_35e
    const-string v1, "F3116"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_368

    goto/16 :goto_8c

    :cond_368
    const/16 v1, 0x57

    goto/16 :goto_81a

    :sswitch_36c
    const-string v1, "F3113"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_376

    goto/16 :goto_8c

    :cond_376
    const/16 v1, 0x56

    goto/16 :goto_81a

    :sswitch_37a
    const-string v1, "F3111"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_384

    goto/16 :goto_8c

    :cond_384
    const/16 v1, 0x55

    goto/16 :goto_81a

    :sswitch_388
    const-string v1, "E5643"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_392

    goto/16 :goto_8c

    :cond_392
    const/16 v1, 0x54

    goto/16 :goto_81a

    :sswitch_396
    const-string v1, "A1601"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a0

    goto/16 :goto_8c

    :cond_3a0
    const/16 v1, 0x53

    goto/16 :goto_81a

    :sswitch_3a4
    const-string v1, "Aura_Note_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3ae

    goto/16 :goto_8c

    :cond_3ae
    const/16 v1, 0x52

    goto/16 :goto_81a

    :sswitch_3b2
    const-string v1, "602LV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3bc

    goto/16 :goto_8c

    :cond_3bc
    const/16 v1, 0x51

    goto/16 :goto_81a

    :sswitch_3c0
    const-string v1, "601LV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3ca

    goto/16 :goto_8c

    :cond_3ca
    const/16 v1, 0x50

    goto/16 :goto_81a

    :sswitch_3ce
    const-string v1, "MEIZU_M5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d8

    goto/16 :goto_8c

    :cond_3d8
    const/16 v1, 0x4f

    goto/16 :goto_81a

    :sswitch_3dc
    const-string v1, "p212"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e6

    goto/16 :goto_8c

    :cond_3e6
    const/16 v1, 0x4e

    goto/16 :goto_81a

    :sswitch_3ea
    const-string v1, "mido"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f4

    goto/16 :goto_8c

    :cond_3f4
    const/16 v1, 0x4d

    goto/16 :goto_81a

    :sswitch_3f8
    const-string v1, "kate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_402

    goto/16 :goto_8c

    :cond_402
    const/16 v1, 0x4c

    goto/16 :goto_81a

    :sswitch_406
    const-string v1, "fugu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_410

    goto/16 :goto_8c

    :cond_410
    const/16 v1, 0x4b

    goto/16 :goto_81a

    :sswitch_414
    const-string v1, "XE2X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41e

    goto/16 :goto_8c

    :cond_41e
    const/16 v1, 0x4a

    goto/16 :goto_81a

    :sswitch_422
    const-string v1, "Q427"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42c

    goto/16 :goto_8c

    :cond_42c
    const/16 v1, 0x49

    goto/16 :goto_81a

    :sswitch_430
    const-string v1, "Q350"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43a

    goto/16 :goto_8c

    :cond_43a
    const/16 v1, 0x48

    goto/16 :goto_81a

    :sswitch_43e
    const-string v1, "P681"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_448

    goto/16 :goto_8c

    :cond_448
    const/16 v1, 0x47

    goto/16 :goto_81a

    :sswitch_44c
    const-string v1, "F04J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_456

    goto/16 :goto_8c

    :cond_456
    const/16 v1, 0x46

    goto/16 :goto_81a

    :sswitch_45a
    const-string v1, "F04H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_464

    goto/16 :goto_8c

    :cond_464
    const/16 v1, 0x45

    goto/16 :goto_81a

    :sswitch_468
    const-string v1, "F03H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_472

    goto/16 :goto_8c

    :cond_472
    const/16 v1, 0x44

    goto/16 :goto_81a

    :sswitch_476
    const-string v1, "F02H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_480

    goto/16 :goto_8c

    :cond_480
    const/16 v1, 0x43

    goto/16 :goto_81a

    :sswitch_484
    const-string v1, "F01J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48e

    goto/16 :goto_8c

    :cond_48e
    const/16 v1, 0x42

    goto/16 :goto_81a

    :sswitch_492
    const-string v1, "F01H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49c

    goto/16 :goto_8c

    :cond_49c
    const/16 v1, 0x41

    goto/16 :goto_81a

    :sswitch_4a0
    const-string v1, "1714"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4aa

    goto/16 :goto_8c

    :cond_4aa
    const/16 v1, 0x40

    goto/16 :goto_81a

    :sswitch_4ae
    const-string v1, "1713"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b8

    goto/16 :goto_8c

    :cond_4b8
    const/16 v1, 0x3f

    goto/16 :goto_81a

    :sswitch_4bc
    const-string v1, "1601"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c6

    goto/16 :goto_8c

    :cond_4c6
    const/16 v1, 0x3e

    goto/16 :goto_81a

    :sswitch_4ca
    const-string v1, "flo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d4

    goto/16 :goto_8c

    :cond_4d4
    const/16 v1, 0x3d

    goto/16 :goto_81a

    :sswitch_4d8
    const-string v1, "deb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e2

    goto/16 :goto_8c

    :cond_4e2
    const/16 v1, 0x3c

    goto/16 :goto_81a

    :sswitch_4e6
    const-string v1, "cv3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f0

    goto/16 :goto_8c

    :cond_4f0
    const/16 v1, 0x3b

    goto/16 :goto_81a

    :sswitch_4f4
    const-string v1, "cv1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4fe

    goto/16 :goto_8c

    :cond_4fe
    const/16 v1, 0x3a

    goto/16 :goto_81a

    :sswitch_502
    const-string v1, "Z80"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50c

    goto/16 :goto_8c

    :cond_50c
    const/16 v1, 0x39

    goto/16 :goto_81a

    :sswitch_510
    const-string v1, "QX1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51a

    goto/16 :goto_8c

    :cond_51a
    const/16 v1, 0x38

    goto/16 :goto_81a

    :sswitch_51e
    const-string v1, "PLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_528

    goto/16 :goto_8c

    :cond_528
    const/16 v1, 0x37

    goto/16 :goto_81a

    :sswitch_52c
    const-string v1, "P85"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_536

    goto/16 :goto_8c

    :cond_536
    const/16 v1, 0x36

    goto/16 :goto_81a

    :sswitch_53a
    const-string v1, "MX6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_544

    goto/16 :goto_8c

    :cond_544
    const/16 v1, 0x35

    goto/16 :goto_81a

    :sswitch_548
    const-string v1, "M5c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_552

    goto/16 :goto_8c

    :cond_552
    const/16 v1, 0x34

    goto/16 :goto_81a

    :sswitch_556
    const-string v1, "M04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_560

    goto/16 :goto_8c

    :cond_560
    const/16 v1, 0x33

    goto/16 :goto_81a

    :sswitch_564
    const-string v1, "JGZ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56e

    goto/16 :goto_8c

    :cond_56e
    const/16 v1, 0x32

    goto/16 :goto_81a

    :sswitch_572
    const-string v1, "mh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57c

    goto/16 :goto_8c

    :cond_57c
    const/16 v1, 0x31

    goto/16 :goto_81a

    :sswitch_580
    const-string v1, "b5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58a

    goto/16 :goto_8c

    :cond_58a
    const/16 v1, 0x30

    goto/16 :goto_81a

    :sswitch_58e
    const-string v1, "V5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_598

    goto/16 :goto_8c

    :cond_598
    const/16 v1, 0x2f

    goto/16 :goto_81a

    :sswitch_59c
    const-string v1, "V1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a6

    goto/16 :goto_8c

    :cond_5a6
    const/16 v1, 0x2e

    goto/16 :goto_81a

    :sswitch_5aa
    const-string v1, "Q5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b4

    goto/16 :goto_8c

    :cond_5b4
    const/16 v1, 0x2d

    goto/16 :goto_81a

    :sswitch_5b8
    const-string v1, "C1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c2

    goto/16 :goto_8c

    :cond_5c2
    const/16 v1, 0x2c

    goto/16 :goto_81a

    :sswitch_5c6
    const-string v1, "woods_fn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d0

    goto/16 :goto_8c

    :cond_5d0
    const/16 v1, 0x2b

    goto/16 :goto_81a

    :sswitch_5d4
    const-string v1, "ELUGA_A3_Pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5de

    goto/16 :goto_8c

    :cond_5de
    const/16 v1, 0x2a

    goto/16 :goto_81a

    :sswitch_5e2
    const-string v1, "Z12_PRO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5ec

    goto/16 :goto_8c

    :cond_5ec
    const/16 v1, 0x29

    goto/16 :goto_81a

    :sswitch_5f0
    const-string v1, "BLACK-1X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5fa

    goto/16 :goto_8c

    :cond_5fa
    const/16 v1, 0x28

    goto/16 :goto_81a

    :sswitch_5fe
    const-string v1, "taido_row"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_608

    goto/16 :goto_8c

    :cond_608
    const/16 v1, 0x27

    goto/16 :goto_81a

    :sswitch_60c
    const-string v1, "Pixi4-7_3G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_616

    goto/16 :goto_8c

    :cond_616
    const/16 v1, 0x26

    goto/16 :goto_81a

    :sswitch_61a
    const-string v1, "GIONEE_GBL7360"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_624

    goto/16 :goto_8c

    :cond_624
    const/16 v1, 0x25

    goto/16 :goto_81a

    :sswitch_628
    const-string v1, "GiONEE_CBL7513"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_632

    goto/16 :goto_8c

    :cond_632
    const/16 v1, 0x24

    goto/16 :goto_81a

    :sswitch_636
    const-string v1, "OnePlus5T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_640

    goto/16 :goto_8c

    :cond_640
    const/16 v1, 0x23

    goto/16 :goto_81a

    :sswitch_644
    const-string v1, "whyred"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64e

    goto/16 :goto_8c

    :cond_64e
    const/16 v1, 0x22

    goto/16 :goto_81a

    :sswitch_652
    const-string v1, "watson"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65c

    goto/16 :goto_8c

    :cond_65c
    const/16 v1, 0x21

    goto/16 :goto_81a

    :sswitch_660
    const-string v1, "SVP-DTV15"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66a

    goto/16 :goto_8c

    :cond_66a
    const/16 v1, 0x20

    goto/16 :goto_81a

    :sswitch_66e
    const-string v1, "A7000-a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_678

    goto/16 :goto_8c

    :cond_678
    const/16 v1, 0x1f

    goto/16 :goto_81a

    :sswitch_67c
    const-string v1, "nicklaus_f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_686

    goto/16 :goto_8c

    :cond_686
    const/16 v1, 0x1e

    goto/16 :goto_81a

    :sswitch_68a
    const-string v1, "tcl_eu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_694

    goto/16 :goto_8c

    :cond_694
    const/16 v1, 0x1d

    goto/16 :goto_81a

    :sswitch_698
    const-string v1, "ELUGA_Ray_X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a2

    goto/16 :goto_8c

    :cond_6a2
    const/16 v1, 0x1c

    goto/16 :goto_81a

    :sswitch_6a6
    const-string v1, "s905x018"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b0

    goto/16 :goto_8c

    :cond_6b0
    const/16 v1, 0x1b

    goto/16 :goto_81a

    :sswitch_6b4
    const-string v1, "A10-70L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6be

    goto/16 :goto_8c

    :cond_6be
    const/16 v1, 0x1a

    goto/16 :goto_81a

    :sswitch_6c2
    const-string v1, "A10-70F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6cc

    goto/16 :goto_8c

    :cond_6cc
    const/16 v1, 0x19

    goto/16 :goto_81a

    :sswitch_6d0
    const-string v1, "namath"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6da

    goto/16 :goto_8c

    :cond_6da
    const/16 v1, 0x18

    goto/16 :goto_81a

    :sswitch_6de
    const-string v1, "Slate_Pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e8

    goto/16 :goto_8c

    :cond_6e8
    const/16 v1, 0x17

    goto/16 :goto_81a

    :sswitch_6ec
    const-string v1, "iris60"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f6

    goto/16 :goto_8c

    :cond_6f6
    const/16 v1, 0x16

    goto/16 :goto_81a

    :sswitch_6fa
    const-string v1, "BRAVIA_ATV2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_704

    goto/16 :goto_8c

    :cond_704
    const/16 v1, 0x15

    goto/16 :goto_81a

    :sswitch_708
    const-string v1, "GiONEE_GBL7319"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_712

    goto/16 :goto_8c

    :cond_712
    const/16 v1, 0x14

    goto/16 :goto_81a

    :sswitch_716
    const-string v1, "panell_dt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_720

    goto/16 :goto_8c

    :cond_720
    const/16 v1, 0x13

    goto/16 :goto_81a

    :sswitch_724
    const-string v1, "panell_ds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72e

    goto/16 :goto_8c

    :cond_72e
    const/16 v1, 0x12

    goto/16 :goto_81a

    :sswitch_732
    const-string v1, "panell_dl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73c

    goto/16 :goto_8c

    :cond_73c
    const/16 v1, 0x11

    goto/16 :goto_81a

    :sswitch_740
    const-string v1, "vernee_M5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74a

    goto/16 :goto_8c

    :cond_74a
    const/16 v1, 0x10

    goto/16 :goto_81a

    :sswitch_74e
    const-string v1, "pacificrim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_758

    goto/16 :goto_8c

    :cond_758
    const/16 v1, 0xf

    goto/16 :goto_81a

    :sswitch_75c
    const-string v1, "Phantom6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_766

    goto/16 :goto_8c

    :cond_766
    const/16 v1, 0xe

    goto/16 :goto_81a

    :sswitch_76a
    const-string v1, "ComioS1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_774

    goto/16 :goto_8c

    :cond_774
    const/16 v1, 0xd

    goto/16 :goto_81a

    :sswitch_778
    const-string v1, "XT1663"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_782

    goto/16 :goto_8c

    :cond_782
    const/16 v1, 0xc

    goto/16 :goto_81a

    :sswitch_786
    const-string v1, "RAIJIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_790

    goto/16 :goto_8c

    :cond_790
    const/16 v1, 0xb

    goto/16 :goto_81a

    :sswitch_794
    const-string v1, "AquaPowerM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79e

    goto/16 :goto_8c

    :cond_79e
    const/16 v1, 0xa

    goto/16 :goto_81a

    :sswitch_7a2
    const-string v1, "PGN611"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7ac

    goto/16 :goto_8c

    :cond_7ac
    const/16 v1, 0x9

    goto/16 :goto_81a

    :sswitch_7b0
    const-string v1, "PGN610"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7ba

    goto/16 :goto_8c

    :cond_7ba
    const/16 v1, 0x8

    goto :goto_81a

    :sswitch_7bd
    const-string v1, "PGN528"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c7

    goto/16 :goto_8c

    :cond_7c7
    const/4 v1, 0x7

    goto :goto_81a

    :sswitch_7c9
    const-string v2, "NX573J"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81a

    goto/16 :goto_8c

    :sswitch_7d3
    const-string v1, "NX541J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7dd

    goto/16 :goto_8c

    :cond_7dd
    const/4 v1, 0x5

    goto :goto_81a

    :sswitch_7df
    const-string v1, "CP8676_I02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e9

    goto/16 :goto_8c

    :cond_7e9
    const/4 v1, 0x4

    goto :goto_81a

    :sswitch_7eb
    const-string v1, "K50a40"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f5

    goto/16 :goto_8c

    :cond_7f5
    const/4 v1, 0x3

    goto :goto_81a

    :sswitch_7f7
    const-string v1, "GIONEE_SWW1631"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_801

    goto/16 :goto_8c

    :cond_801
    const/4 v1, 0x2

    goto :goto_81a

    :sswitch_803
    const-string v1, "GIONEE_SWW1627"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80d

    goto/16 :goto_8c

    :cond_80d
    const/4 v1, 0x1

    goto :goto_81a

    :sswitch_80f
    const-string v1, "GIONEE_SWW1609"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_819

    goto/16 :goto_8c

    :cond_819
    const/4 v1, 0x0

    :cond_81a
    :goto_81a
    packed-switch v1, :pswitch_data_ab2

    .line 1880
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_bce

    :goto_829
    const/4 v6, -0x1

    goto :goto_849

    :sswitch_82b
    const-string v1, "AFTN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_849

    goto :goto_829

    :sswitch_834
    const-string v1, "AFTA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83d

    goto :goto_829

    :cond_83d
    const/4 v6, 0x1

    goto :goto_849

    :sswitch_83f
    const-string v1, "JSN-L21"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_848

    goto :goto_829

    :cond_848
    const/4 v6, 0x0

    :cond_849
    :goto_849
    packed-switch v6, :pswitch_data_bdc

    goto :goto_84e

    :pswitch_84d  #0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2a, 0x2b, 0x2c, 0x2d, 0x2e, 0x2f, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3a, 0x3b, 0x3c, 0x3d, 0x3e, 0x3f, 0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x5b, 0x5c, 0x5d, 0x5e, 0x5f, 0x60, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a, 0x7b, 0x7c, 0x7d, 0x7e, 0x7f, 0x80, 0x81, 0x82, 0x83, 0x84, 0x85, 0x86, 0x87, 0x88, 0x89, 0x8a, 0x8b, 0x0, 0x1, 0x2
    return v9

    :cond_84e
    :goto_84e
    return v8

    nop

    :sswitch_data_850
    .sparse-switch
        -0x4fd0ea5f -> :sswitch_5e
        -0x48b8f57f -> :sswitch_53
        -0x48b8bd30 -> :sswitch_48
        -0x3c588c8a -> :sswitch_3d
        -0x3de1850 -> :sswitch_32
        0x341e81 -> :sswitch_27
        0x31316ffa -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_86e
    .packed-switch 0x0
        :pswitch_6c  #00000000
        :pswitch_6c  #00000001
        :pswitch_6c  #00000002
        :pswitch_6c  #00000003
        :pswitch_6c  #00000004
        :pswitch_6c  #00000005
        :pswitch_6c  #00000006
    .end packed-switch

    :sswitch_data_880
    .sparse-switch
        -0x7fd6c3bd -> :sswitch_80f
        -0x7fd6c381 -> :sswitch_803
        -0x7fd6c368 -> :sswitch_7f7
        -0x7d026749 -> :sswitch_7eb
        -0x78929d6a -> :sswitch_7df
        -0x75f50a1e -> :sswitch_7d3
        -0x75f4fe9d -> :sswitch_7c9
        -0x736f875c -> :sswitch_7bd
        -0x736f83c2 -> :sswitch_7b0
        -0x736f83c1 -> :sswitch_7a2
        -0x7327ce1c -> :sswitch_794
        -0x705c574b -> :sswitch_786
        -0x651ebb62 -> :sswitch_778
        -0x6423293b -> :sswitch_76a
        -0x604f5117 -> :sswitch_75c
        -0x5f691e13 -> :sswitch_74e
        -0x5ca40cc4 -> :sswitch_740
        -0x58520ec1 -> :sswitch_732
        -0x58520eba -> :sswitch_724
        -0x58520eb9 -> :sswitch_716
        -0x4eaed329 -> :sswitch_708
        -0x4892fb4f -> :sswitch_6fa
        -0x465b3df3 -> :sswitch_6ec
        -0x43e6c939 -> :sswitch_6de
        -0x3ec0fcc5 -> :sswitch_6d0
        -0x3b33cca0 -> :sswitch_6c2
        -0x3b33cc9a -> :sswitch_6b4
        -0x398ae3f6 -> :sswitch_6a6
        -0x391f0fb4 -> :sswitch_698
        -0x346837ae -> :sswitch_68a
        -0x323788e3 -> :sswitch_67c
        -0x30f57652 -> :sswitch_66e
        -0x2f88a116 -> :sswitch_660
        -0x2f61ed98 -> :sswitch_652
        -0x2efd0837 -> :sswitch_644
        -0x2e9e9441 -> :sswitch_636
        -0x2247b8b1 -> :sswitch_628
        -0x1f0fa2b7 -> :sswitch_61a
        -0x19af3b41 -> :sswitch_60c
        -0x114fad3e -> :sswitch_5fe
        -0x10dae90b -> :sswitch_5f0
        -0x1084b7b7 -> :sswitch_5e2
        -0xa5988e9 -> :sswitch_5d4
        -0x35f9fbf -> :sswitch_5c6
        0x84e -> :sswitch_5b8
        0xa04 -> :sswitch_5aa
        0xa9b -> :sswitch_59c
        0xa9f -> :sswitch_58e
        0xc13 -> :sswitch_580
        0xd9b -> :sswitch_572
        0x11ebd -> :sswitch_564
        0x12711 -> :sswitch_556
        0x127db -> :sswitch_548
        0x12beb -> :sswitch_53a
        0x1334d -> :sswitch_52c
        0x135c9 -> :sswitch_51e
        0x13aea -> :sswitch_510
        0x158d2 -> :sswitch_502
        0x1821e -> :sswitch_4f4
        0x18220 -> :sswitch_4e6
        0x18401 -> :sswitch_4d8
        0x18c69 -> :sswitch_4ca
        0x1716e6 -> :sswitch_4bc
        0x171ac8 -> :sswitch_4ae
        0x171ac9 -> :sswitch_4a0
        0x208c61 -> :sswitch_492
        0x208c63 -> :sswitch_484
        0x208c80 -> :sswitch_476
        0x208c9f -> :sswitch_468
        0x208cbe -> :sswitch_45a
        0x208cc0 -> :sswitch_44c
        0x252f5f -> :sswitch_43e
        0x25981d -> :sswitch_430
        0x259b88 -> :sswitch_422
        0x290a13 -> :sswitch_414
        0x3021fd -> :sswitch_406
        0x321e47 -> :sswitch_3f8
        0x332327 -> :sswitch_3ea
        0x33ab63 -> :sswitch_3dc
        0x27691fb -> :sswitch_3ce
        0x30f8881 -> :sswitch_3c0
        0x30f8c42 -> :sswitch_3b2
        0x349f581 -> :sswitch_3a4
        0x3ab0ea7 -> :sswitch_396
        0x3e53ea5 -> :sswitch_388
        0x3f25a44 -> :sswitch_37a
        0x3f25a46 -> :sswitch_36c
        0x3f25a49 -> :sswitch_35e
        0x3f25e05 -> :sswitch_350
        0x3f25e07 -> :sswitch_342
        0x3f25e09 -> :sswitch_334
        0x3f261c6 -> :sswitch_326
        0x48dce49 -> :sswitch_318
        0x48dd589 -> :sswitch_30a
        0x48dd8af -> :sswitch_2fc
        0x4d36832 -> :sswitch_2ee
        0x4f0b0e7 -> :sswitch_2e0
        0x5e2479e -> :sswitch_2d2
        0x60acc05 -> :sswitch_2c4
        0x6214744 -> :sswitch_2b6
        0x9d91379 -> :sswitch_2a8
        0xadc0551 -> :sswitch_29a
        0xea056b3 -> :sswitch_28c
        0x1121dbc3 -> :sswitch_27e
        0x1255818c -> :sswitch_270
        0x1263990d -> :sswitch_262
        0x12d90f3a -> :sswitch_254
        0x12d90f4c -> :sswitch_246
        0x12d98b1b -> :sswitch_238
        0x12d98b22 -> :sswitch_22a
        0x1844c711 -> :sswitch_21c
        0x1e3e8044 -> :sswitch_20e
        0x2f5336ed -> :sswitch_200
        0x2f54115e -> :sswitch_1f2
        0x2f541849 -> :sswitch_1e4
        0x31cf010e -> :sswitch_1d6
        0x36ad82f4 -> :sswitch_1c8
        0x391a0b61 -> :sswitch_1ba
        0x3f3728cd -> :sswitch_1ac
        0x448ec687 -> :sswitch_19e
        0x46260f63 -> :sswitch_190
        0x4c505106 -> :sswitch_182
        0x4de67084 -> :sswitch_174
        0x506ac5a9 -> :sswitch_166
        0x5abad9cd -> :sswitch_158
        0x64d2e6e9 -> :sswitch_14a
        0x64d2eac5 -> :sswitch_13c
        0x65e4085b -> :sswitch_12e
        0x6f373556 -> :sswitch_120
        0x719f1dcb -> :sswitch_112
        0x75d9a0f0 -> :sswitch_104
        0x7796d144 -> :sswitch_f7
        0x785bcb26 -> :sswitch_ea
        0x78fc0e50 -> :sswitch_dd
        0x790521fb -> :sswitch_d0
        0x7933207f -> :sswitch_c3
        0x7a05a409 -> :sswitch_b6
        0x7a0696bd -> :sswitch_a9
        0x7a16dfe7 -> :sswitch_9c
        0x7a1f0e95 -> :sswitch_8f
    .end sparse-switch

    :pswitch_data_ab2
    .packed-switch 0x0
        :pswitch_84d  #00000000
        :pswitch_84d  #00000001
        :pswitch_84d  #00000002
        :pswitch_84d  #00000003
        :pswitch_84d  #00000004
        :pswitch_84d  #00000005
        :pswitch_84d  #00000006
        :pswitch_84d  #00000007
        :pswitch_84d  #00000008
        :pswitch_84d  #00000009
        :pswitch_84d  #0000000a
        :pswitch_84d  #0000000b
        :pswitch_84d  #0000000c
        :pswitch_84d  #0000000d
        :pswitch_84d  #0000000e
        :pswitch_84d  #0000000f
        :pswitch_84d  #00000010
        :pswitch_84d  #00000011
        :pswitch_84d  #00000012
        :pswitch_84d  #00000013
        :pswitch_84d  #00000014
        :pswitch_84d  #00000015
        :pswitch_84d  #00000016
        :pswitch_84d  #00000017
        :pswitch_84d  #00000018
        :pswitch_84d  #00000019
        :pswitch_84d  #0000001a
        :pswitch_84d  #0000001b
        :pswitch_84d  #0000001c
        :pswitch_84d  #0000001d
        :pswitch_84d  #0000001e
        :pswitch_84d  #0000001f
        :pswitch_84d  #00000020
        :pswitch_84d  #00000021
        :pswitch_84d  #00000022
        :pswitch_84d  #00000023
        :pswitch_84d  #00000024
        :pswitch_84d  #00000025
        :pswitch_84d  #00000026
        :pswitch_84d  #00000027
        :pswitch_84d  #00000028
        :pswitch_84d  #00000029
        :pswitch_84d  #0000002a
        :pswitch_84d  #0000002b
        :pswitch_84d  #0000002c
        :pswitch_84d  #0000002d
        :pswitch_84d  #0000002e
        :pswitch_84d  #0000002f
        :pswitch_84d  #00000030
        :pswitch_84d  #00000031
        :pswitch_84d  #00000032
        :pswitch_84d  #00000033
        :pswitch_84d  #00000034
        :pswitch_84d  #00000035
        :pswitch_84d  #00000036
        :pswitch_84d  #00000037
        :pswitch_84d  #00000038
        :pswitch_84d  #00000039
        :pswitch_84d  #0000003a
        :pswitch_84d  #0000003b
        :pswitch_84d  #0000003c
        :pswitch_84d  #0000003d
        :pswitch_84d  #0000003e
        :pswitch_84d  #0000003f
        :pswitch_84d  #00000040
        :pswitch_84d  #00000041
        :pswitch_84d  #00000042
        :pswitch_84d  #00000043
        :pswitch_84d  #00000044
        :pswitch_84d  #00000045
        :pswitch_84d  #00000046
        :pswitch_84d  #00000047
        :pswitch_84d  #00000048
        :pswitch_84d  #00000049
        :pswitch_84d  #0000004a
        :pswitch_84d  #0000004b
        :pswitch_84d  #0000004c
        :pswitch_84d  #0000004d
        :pswitch_84d  #0000004e
        :pswitch_84d  #0000004f
        :pswitch_84d  #00000050
        :pswitch_84d  #00000051
        :pswitch_84d  #00000052
        :pswitch_84d  #00000053
        :pswitch_84d  #00000054
        :pswitch_84d  #00000055
        :pswitch_84d  #00000056
        :pswitch_84d  #00000057
        :pswitch_84d  #00000058
        :pswitch_84d  #00000059
        :pswitch_84d  #0000005a
        :pswitch_84d  #0000005b
        :pswitch_84d  #0000005c
        :pswitch_84d  #0000005d
        :pswitch_84d  #0000005e
        :pswitch_84d  #0000005f
        :pswitch_84d  #00000060
        :pswitch_84d  #00000061
        :pswitch_84d  #00000062
        :pswitch_84d  #00000063
        :pswitch_84d  #00000064
        :pswitch_84d  #00000065
        :pswitch_84d  #00000066
        :pswitch_84d  #00000067
        :pswitch_84d  #00000068
        :pswitch_84d  #00000069
        :pswitch_84d  #0000006a
        :pswitch_84d  #0000006b
        :pswitch_84d  #0000006c
        :pswitch_84d  #0000006d
        :pswitch_84d  #0000006e
        :pswitch_84d  #0000006f
        :pswitch_84d  #00000070
        :pswitch_84d  #00000071
        :pswitch_84d  #00000072
        :pswitch_84d  #00000073
        :pswitch_84d  #00000074
        :pswitch_84d  #00000075
        :pswitch_84d  #00000076
        :pswitch_84d  #00000077
        :pswitch_84d  #00000078
        :pswitch_84d  #00000079
        :pswitch_84d  #0000007a
        :pswitch_84d  #0000007b
        :pswitch_84d  #0000007c
        :pswitch_84d  #0000007d
        :pswitch_84d  #0000007e
        :pswitch_84d  #0000007f
        :pswitch_84d  #00000080
        :pswitch_84d  #00000081
        :pswitch_84d  #00000082
        :pswitch_84d  #00000083
        :pswitch_84d  #00000084
        :pswitch_84d  #00000085
        :pswitch_84d  #00000086
        :pswitch_84d  #00000087
        :pswitch_84d  #00000088
        :pswitch_84d  #00000089
        :pswitch_84d  #0000008a
        :pswitch_84d  #0000008b
    .end packed-switch

    :sswitch_data_bce
    .sparse-switch
        -0x236fe21d -> :sswitch_83f
        0x1e9d52 -> :sswitch_834
        0x1e9d5f -> :sswitch_82b
    .end sparse-switch

    :pswitch_data_bdc
    .packed-switch 0x0
        :pswitch_84d  #00000000
        :pswitch_84d  #00000001
        :pswitch_84d  #00000002
    .end packed-switch
.end method

.method private static getCodecMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I
    .registers 12

    .line 1552
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->width:I

    .line 1553
    iget v1, p1, Lcom/google/android/exoplayer2/Format;->height:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_c8

    if-ne v1, v2, :cond_b

    goto/16 :goto_c8

    .line 1559
    :cond_b
    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v4, "video/dolby-vision"

    .line 1560
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "video/avc"

    const/4 v6, 0x1

    const-string v7, "video/hevc"

    const/4 v8, 0x2

    if-eqz v4, :cond_34

    .line 1568
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Lcom/google/android/exoplayer2/Format;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_33

    .line 1570
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v3, 0x200

    if-eq p1, v3, :cond_31

    if-eq p1, v6, :cond_31

    if-ne p1, v8, :cond_33

    :cond_31
    move-object v3, v5

    goto :goto_34

    :cond_33
    move-object v3, v7

    .line 1582
    :cond_34
    :goto_34
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v4, 0x4

    const/4 v9, 0x3

    sparse-switch p1, :sswitch_data_ca

    :goto_40
    const/4 v6, -0x1

    goto :goto_7d

    :sswitch_42
    const-string p1, "video/x-vnd.on2.vp9"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4b

    goto :goto_40

    :cond_4b
    const/4 v6, 0x5

    goto :goto_7d

    :sswitch_4d
    const-string p1, "video/x-vnd.on2.vp8"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_56

    goto :goto_40

    :cond_56
    const/4 v6, 0x4

    goto :goto_7d

    :sswitch_58
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5f

    goto :goto_40

    :cond_5f
    const/4 v6, 0x3

    goto :goto_7d

    :sswitch_61
    const-string p1, "video/mp4v-es"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6a

    goto :goto_40

    :cond_6a
    const/4 v6, 0x2

    goto :goto_7d

    :sswitch_6c
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7d

    goto :goto_40

    :sswitch_73
    const-string p1, "video/3gpp"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7c

    goto :goto_40

    :cond_7c
    const/4 v6, 0x0

    :cond_7d
    :goto_7d
    packed-switch v6, :pswitch_data_e4

    return v2

    .line 1589
    :pswitch_81  #0x3
    sget-object p1, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v3, "BRAVIA 4K 2015"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_bb

    sget-object v3, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string v4, "Amazon"

    .line 1590
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_aa

    const-string v3, "KFSOWI"

    .line 1591
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_bb

    const-string v3, "AFTS"

    .line 1592
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_aa

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->secure:Z

    if-eqz p0, :cond_aa

    goto :goto_bb

    :cond_aa
    const/16 p0, 0x10

    .line 1598
    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result p1

    invoke-static {v1, p0}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v0

    mul-int p1, p1, v0

    mul-int/lit8 p1, p1, 0x10

    mul-int/lit8 v0, p1, 0x10

    goto :goto_c1

    :cond_bb
    :goto_bb
    return v2

    :pswitch_bc  #0x1, 0x5
    mul-int v0, v0, v1

    goto :goto_c2

    :pswitch_bf  #0x0, 0x2, 0x4
    mul-int v0, v0, v1

    :goto_c1
    const/4 v4, 0x2

    :goto_c2
    mul-int/lit8 v0, v0, 0x3

    mul-int/lit8 v4, v4, 0x2

    .line 1616
    div-int/2addr v0, v4

    return v0

    :cond_c8
    :goto_c8
    return v2

    nop

    :sswitch_data_ca
    .sparse-switch
        -0x63306f58 -> :sswitch_73
        -0x63185e82 -> :sswitch_6c
        0x46cdc642 -> :sswitch_61
        0x4f62373a -> :sswitch_58
        0x5f50bed8 -> :sswitch_4d
        0x5f50bed9 -> :sswitch_42
    .end sparse-switch

    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_bf  #00000000
        :pswitch_bc  #00000001
        :pswitch_bf  #00000002
        :pswitch_81  #00000003
        :pswitch_bf  #00000004
        :pswitch_bc  #00000005
    .end packed-switch
.end method

.method private static getCodecMaxSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)Landroid/graphics/Point;
    .registers 15

    .line 1483
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->height:I

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->width:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_9

    const/4 v3, 0x1

    goto :goto_a

    :cond_9
    const/4 v3, 0x0

    :goto_a
    if-eqz v3, :cond_e

    move v4, v0

    goto :goto_f

    :cond_e
    move v4, v1

    :goto_f
    if-eqz v3, :cond_12

    move v0, v1

    :cond_12
    int-to-float v1, v0

    int-to-float v5, v4

    div-float/2addr v1, v5

    .line 1487
    sget-object v5, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->STANDARD_LONG_EDGE_VIDEO_PX:[I

    array-length v6, v5

    :goto_18
    const/4 v7, 0x0

    if-ge v2, v6, :cond_6f

    aget v8, v5, v2

    int-to-float v9, v8

    mul-float v9, v9, v1

    float-to-int v9, v9

    if-le v8, v4, :cond_6f

    if-gt v9, v0, :cond_26

    goto :goto_6f

    .line 1492
    :cond_26
    sget v10, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v11, 0x15

    if-lt v10, v11, :cond_47

    if-eqz v3, :cond_30

    move v7, v9

    goto :goto_31

    :cond_30
    move v7, v8

    :goto_31
    if-eqz v3, :cond_34

    goto :goto_35

    :cond_34
    move v8, v9

    .line 1494
    :goto_35
    invoke-virtual {p0, v7, v8}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->alignVideoSizeV21(II)Landroid/graphics/Point;

    move-result-object v7

    .line 1497
    iget v8, p1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    .line 1498
    iget v9, v7, Landroid/graphics/Point;->x:I

    iget v10, v7, Landroid/graphics/Point;->y:I

    float-to-double v11, v8

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isVideoSizeAndRateSupportedV21(IID)Z

    move-result v8

    if-eqz v8, :cond_6c

    return-object v7

    :cond_47
    const/16 v10, 0x10

    .line 1504
    :try_start_49
    invoke-static {v8, v10}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v8

    mul-int/lit8 v8, v8, 0x10

    .line 1505
    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v9

    mul-int/lit8 v9, v9, 0x10

    mul-int v10, v8, v9

    .line 1506
    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize()I

    move-result v11

    if-gt v10, v11, :cond_6c

    .line 1507
    new-instance p0, Landroid/graphics/Point;

    if-eqz v3, :cond_63

    move p1, v9

    goto :goto_64

    :cond_63
    move p1, v8

    :goto_64
    if-eqz v3, :cond_67

    goto :goto_68

    :cond_67
    move v8, v9

    .line 1509
    :goto_68
    invoke-direct {p0, p1, v8}, Landroid/graphics/Point;-><init>(II)V
    :try_end_6b
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_49 .. :try_end_6b} :catch_6f

    return-object p0

    :cond_6c
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :catch_6f
    :cond_6f
    :goto_6f
    return-object v7
.end method

.method private static getDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lcom/google/android/exoplayer2/Format;",
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

    .line 415
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 417
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 420
    :cond_9
    invoke-interface {p0, v0, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    .line 422
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfosSortedByFormatSupport(Ljava/util/List;Lcom/google/android/exoplayer2/Format;)Ljava/util/List;

    move-result-object v1

    const-string v2, "video/dolby-vision"

    .line 423
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 429
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Lcom/google/android/exoplayer2/Format;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_47

    .line 431
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_3e

    const/16 v0, 0x100

    if-ne p1, v0, :cond_30

    goto :goto_3e

    :cond_30
    const/16 v0, 0x200

    if-ne p1, v0, :cond_47

    const-string p1, "video/avc"

    .line 439
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    .line 438
    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_47

    :cond_3e
    :goto_3e
    const-string p1, "video/hevc"

    .line 435
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    .line 434
    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 444
    :cond_47
    :goto_47
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected static getMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I
    .registers 5

    .line 1529
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_20

    .line 1533
    iget-object p0, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_d
    if-ge v0, p0, :cond_1c

    .line 1535
    iget-object v2, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1537
    :cond_1c
    iget p0, p1, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    add-int/2addr p0, v1

    return p0

    .line 1539
    :cond_20
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodecMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I

    move-result p0

    return p0
.end method

.method private static isBufferLate(J)Z
    .registers 5

    const-wide/16 v0, -0x7530

    cmp-long v2, p0, v0

    if-gez v2, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private static isBufferVeryLate(J)Z
    .registers 5

    const-wide/32 v0, -0x7a120

    cmp-long v2, p0, v0

    if-gez v2, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method private maybeNotifyDroppedFrames()V
    .registers 7

    .line 1294
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    if-lez v0, :cond_18

    .line 1295
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1296
    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    sub-long v2, v0, v2

    .line 1297
    iget-object v4, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget v5, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->droppedFrames(IJ)V

    const/4 v2, 0x0

    .line 1298
    iput v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 1299
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    :cond_18
    return-void
.end method

.method private maybeNotifyVideoFrameProcessingOffset()V
    .registers 5

    .line 1304
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    if-eqz v0, :cond_12

    .line 1305
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->reportVideoFrameProcessingOffset(JI)V

    const-wide/16 v0, 0x0

    .line 1307
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    const/4 v0, 0x0

    .line 1308
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    :cond_12
    return-void
.end method

.method private maybeNotifyVideoSizeChanged()V
    .registers 6

    .line 1271
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    iget v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    if-eq v2, v1, :cond_39

    :cond_9
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->reportedVideoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    if-eqz v1, :cond_25

    iget v2, v1, Lcom/google/android/exoplayer2/video/VideoSize;->width:I

    if-ne v2, v0, :cond_25

    iget v0, v1, Lcom/google/android/exoplayer2/video/VideoSize;->height:I

    iget v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    if-ne v0, v2, :cond_25

    iget v0, v1, Lcom/google/android/exoplayer2/video/VideoSize;->unappliedRotationDegrees:I

    iget v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentUnappliedRotationDegrees:I

    if-ne v0, v2, :cond_25

    iget v0, v1, Lcom/google/android/exoplayer2/video/VideoSize;->pixelWidthHeightRatio:F

    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_39

    .line 1277
    :cond_25
    new-instance v0, Lcom/google/android/exoplayer2/video/VideoSize;

    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    iget v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    iget v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentUnappliedRotationDegrees:I

    iget v4, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/video/VideoSize;-><init>(IIIF)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->reportedVideoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    .line 1283
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V

    :cond_39
    return-void
.end method

.method private maybeRenotifyRenderedFirstFrame()V
    .registers 3

    .line 1261
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->haveReportedFirstFrameRenderedForCurrentSurface:Z

    if-eqz v0, :cond_b

    .line 1262
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Ljava/lang/Object;)V

    :cond_b
    return-void
.end method

.method private maybeRenotifyVideoSizeChanged()V
    .registers 3

    .line 1288
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->reportedVideoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    if-eqz v0, :cond_9

    .line 1289
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V

    :cond_9
    return-void
.end method

.method private notifyFrameMetadataListener(JJLcom/google/android/exoplayer2/Format;)V
    .registers 13

    .line 1008
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    if-eqz v0, :cond_e

    .line 1010
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getCodecOutputMediaFormat()Landroid/media/MediaFormat;

    move-result-object v6

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 1009
    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;->onVideoFrameAboutToBeRendered(JJLcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V

    :cond_e
    return-void
.end method

.method private onProcessedTunneledEndOfStream()V
    .registers 1

    .line 1025
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setPendingOutputEndOfStream()V

    return-void
.end method

.method private releaseDummySurface()V
    .registers 4

    .line 1222
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Lcom/google/android/exoplayer2/video/DummySurface;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    .line 1223
    iput-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    .line 1225
    :cond_9
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/video/DummySurface;->release()V

    .line 1226
    iput-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Lcom/google/android/exoplayer2/video/DummySurface;

    return-void
.end method

.method private static setHdr10PlusInfoV29(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;[B)V
    .registers 4

    .line 1324
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "hdr10-plus-info"

    .line 1325
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1326
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->setParameters(Landroid/os/Bundle;)V

    return-void
.end method

.method private setJoiningDeadlineMs()V
    .registers 6

    .line 1231
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_10

    .line 1232
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    add-long/2addr v0, v2

    goto :goto_15

    :cond_10
    const-wide v0, -0x7fffffffffffffffL  # -4.9E-324

    .line 1233
    :goto_15
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    return-void
.end method

.method private setOutput(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 589
    instance-of v0, p1, Landroid/view/Surface;

    if-eqz v0, :cond_7

    check-cast p1, Landroid/view/Surface;

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    if-nez p1, :cond_26

    .line 593
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Lcom/google/android/exoplayer2/video/DummySurface;

    if-eqz v0, :cond_10

    move-object p1, v0

    goto :goto_26

    .line 596
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getCodecInfo()Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 597
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->shouldUseDummySurface(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 598
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->secure:Z

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/video/DummySurface;->newInstanceV17(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/video/DummySurface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Lcom/google/android/exoplayer2/video/DummySurface;

    .line 605
    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-eq v0, p1, :cond_6e

    .line 606
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    .line 607
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->onSurfaceChanged(Landroid/view/Surface;)V

    const/4 v0, 0x0

    .line 608
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->haveReportedFirstFrameRenderedForCurrentSurface:Z

    .line 610
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BaseRenderer;->getState()I

    move-result v0

    .line 611
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getCodec()Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    move-result-object v1

    if-eqz v1, :cond_54

    .line 613
    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_4e

    if-eqz p1, :cond_4e

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround:Z

    if-nez v2, :cond_4e

    .line 614
    invoke-virtual {p0, v1, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->setOutputSurfaceV23(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;Landroid/view/Surface;)V

    goto :goto_54

    .line 616
    :cond_4e
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    .line 617
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    :cond_54
    :goto_54
    if-eqz p1, :cond_67

    .line 620
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Lcom/google/android/exoplayer2/video/DummySurface;

    if-eq p1, v1, :cond_67

    .line 622
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeRenotifyVideoSizeChanged()V

    .line 624
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    const/4 p1, 0x2

    if-ne v0, p1, :cond_7a

    .line 626
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->setJoiningDeadlineMs()V

    goto :goto_7a

    .line 630
    :cond_67
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearReportedVideoSize()V

    .line 631
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    goto :goto_7a

    :cond_6e
    if-eqz p1, :cond_7a

    .line 633
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Lcom/google/android/exoplayer2/video/DummySurface;

    if-eq p1, v0, :cond_7a

    .line 636
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeRenotifyVideoSizeChanged()V

    .line 637
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeRenotifyRenderedFirstFrame()V

    :cond_7a
    :goto_7a
    return-void
.end method

.method private shouldUseDummySurface(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z
    .registers 4

    .line 1214
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_20

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-nez v0, :cond_20

    iget-object v0, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 1216
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->secure:Z

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 1217
    invoke-static {p1}, Lcom/google/android/exoplayer2/video/DummySurface;->isSecureSupported(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_20

    :cond_1e
    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    return p1
.end method


# virtual methods
.method protected canReuseCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
    .registers 12

    .line 689
    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->canReuseCodec(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    move-result-object v0

    .line 691
    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->discardReasons:I

    .line 692
    iget v2, p3, Lcom/google/android/exoplayer2/Format;->width:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecMaxValues:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget v4, v3, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->width:I

    if-gt v2, v4, :cond_14

    iget v2, p3, Lcom/google/android/exoplayer2/Format;->height:I

    iget v3, v3, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->height:I

    if-le v2, v3, :cond_16

    :cond_14
    or-int/lit16 v1, v1, 0x100

    .line 695
    :cond_16
    invoke-static {p1, p3}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecMaxValues:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget v3, v3, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    if-le v2, v3, :cond_22

    or-int/lit8 v1, v1, 0x40

    :cond_22
    move v7, v1

    .line 699
    new-instance v1, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    iget-object v3, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    if-eqz v7, :cond_2c

    const/4 p1, 0x0

    const/4 v6, 0x0

    goto :goto_2f

    .line 703
    :cond_2c
    iget p1, v0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->result:I

    move v6, p1

    :goto_2f
    move-object v2, v1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;II)V

    return-object v1
.end method

.method protected codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "OMX.google"

    .line 1660
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    return p1

    .line 1664
    :cond_a
    const-class p1, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    monitor-enter p1

    .line 1665
    :try_start_d
    sget-boolean v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z

    if-nez v0, :cond_1a

    .line 1666
    invoke-static {}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->evaluateDeviceNeedsSetOutputSurfaceWorkaround()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->deviceNeedsSetOutputSurfaceWorkaround:Z

    const/4 v0, 0x1

    .line 1667
    sput-boolean v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z

    .line 1669
    :cond_1a
    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_1e

    .line 1670
    sget-boolean p1, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->deviceNeedsSetOutputSurfaceWorkaround:Z

    return p1

    :catchall_1e
    move-exception v0

    .line 1669
    :try_start_1f
    monitor-exit p1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0
.end method

.method protected createDecoderException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;
    .registers 5

    .line 1470
    new-instance v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoDecoderException;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoDecoderException;-><init>(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/view/Surface;)V

    return-object v0
.end method

.method protected dropOutputBuffer(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;IJ)V
    .registers 5

    const-string p3, "dropVideoBuffer"

    .line 1108
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 1109
    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    .line 1110
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    const/4 p1, 0x1

    .line 1111
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->updateDroppedBufferCounters(I)V

    return-void
.end method

.method protected getCodecMaxValues(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;
    .registers 16

    .line 1415
    iget v0, p2, Lcom/google/android/exoplayer2/Format;->width:I

    .line 1416
    iget v1, p2, Lcom/google/android/exoplayer2/Format;->height:I

    .line 1417
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I

    move-result v2

    .line 1418
    array-length v3, p3

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-ne v3, v4, :cond_25

    if-eq v2, v5, :cond_1f

    .line 1422
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodecMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I

    move-result p1

    if-eq p1, v5, :cond_1f

    int-to-float p2, v2

    const/high16 p3, 0x3fc00000  # 1.5f

    mul-float p2, p2, p3

    float-to-int p2, p2

    .line 1430
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1433
    :cond_1f
    new-instance p1, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;-><init>(III)V

    return-object p1

    .line 1436
    :cond_25
    array-length v3, p3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_29
    if-ge v7, v3, :cond_6d

    aget-object v9, p3, v7

    .line 1437
    iget-object v10, p2, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    if-eqz v10, :cond_43

    iget-object v10, v9, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    if-nez v10, :cond_43

    .line 1440
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v9

    iget-object v10, p2, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/Format$Builder;->setColorInfo(Lcom/google/android/exoplayer2/video/ColorInfo;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v9

    .line 1442
    :cond_43
    invoke-virtual {p1, p2, v9}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->canReuseCodec(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    move-result-object v10

    iget v10, v10, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->result:I

    if-eqz v10, :cond_6a

    .line 1443
    iget v10, v9, Lcom/google/android/exoplayer2/Format;->width:I

    if-eq v10, v5, :cond_56

    iget v11, v9, Lcom/google/android/exoplayer2/Format;->height:I

    if-ne v11, v5, :cond_54

    goto :goto_56

    :cond_54
    const/4 v11, 0x0

    goto :goto_57

    :cond_56
    :goto_56
    const/4 v11, 0x1

    :goto_57
    or-int/2addr v8, v11

    .line 1445
    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1446
    iget v10, v9, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1447
    invoke-static {p1, v9}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I

    move-result v9

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_6a
    add-int/lit8 v7, v7, 0x1

    goto :goto_29

    :cond_6d
    if-eqz v8, :cond_d5

    const/16 p3, 0x42

    .line 1451
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Resolutions unknown. Codec max resolution: "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "x"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaCodecVideoRenderer"

    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodecMaxSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)Landroid/graphics/Point;

    move-result-object v3

    if-eqz v3, :cond_d5

    .line 1454
    iget v5, v3, Landroid/graphics/Point;->x:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1455
    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1460
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    .line 1459
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodecMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I

    move-result p1

    .line 1457
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 p1, 0x39

    .line 1461
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Codec max resolution adjusted to: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    :cond_d5
    new-instance p1, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;-><init>(III)V

    return-object p1
.end method

.method protected getCodecNeedsEosPropagation()Z
    .registers 3

    .line 649
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_c

    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected getCodecOperatingRateV23(FLcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)F
    .registers 9

    .line 727
    array-length p2, p3

    const/high16 v0, -0x40800000  # -1.0f

    const/4 v1, 0x0

    const/high16 v2, -0x40800000  # -1.0f

    :goto_6
    if-ge v1, p2, :cond_17

    aget-object v3, p3, v1

    .line 728
    iget v3, v3, Lcom/google/android/exoplayer2/Format;->frameRate:F

    cmpl-float v4, v3, v0

    if-eqz v4, :cond_14

    .line 730
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_17
    cmpl-float p2, v2, v0

    if-nez p2, :cond_1c

    goto :goto_1e

    :cond_1c
    mul-float v0, v2, p1

    :goto_1e
    return v0
.end method

.method protected getDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;Z)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lcom/google/android/exoplayer2/Format;",
            "Z)",
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

    .line 406
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getMediaCodecConfiguration(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;F)Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;
    .registers 14
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 659
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Lcom/google/android/exoplayer2/video/DummySurface;

    if-eqz v0, :cond_d

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/video/DummySurface;->secure:Z

    iget-boolean v1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->secure:Z

    if-eq v0, v1, :cond_d

    .line 661
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->releaseDummySurface()V

    .line 663
    :cond_d
    iget-object v4, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->codecMimeType:Ljava/lang/String;

    .line 664
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BaseRenderer;->getStreamFormats()[Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getCodecMaxValues(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecMaxValues:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    .line 665
    iget-boolean v7, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->deviceNeedsNoPostProcessWorkaround:Z

    .line 672
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_23

    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    move v8, v0

    goto :goto_25

    :cond_23
    const/4 v0, 0x0

    const/4 v8, 0x0

    :goto_25
    move-object v2, p0

    move-object v3, p2

    move v6, p4

    .line 666
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getMediaFormat(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;FZI)Landroid/media/MediaFormat;

    move-result-object p4

    .line 673
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-nez v0, :cond_4f

    .line 674
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->shouldUseDummySurface(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 677
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Lcom/google/android/exoplayer2/video/DummySurface;

    if-nez v0, :cond_44

    .line 678
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    iget-boolean v1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->secure:Z

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/video/DummySurface;->newInstanceV17(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/video/DummySurface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Lcom/google/android/exoplayer2/video/DummySurface;

    .line 680
    :cond_44
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Lcom/google/android/exoplayer2/video/DummySurface;

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    goto :goto_4f

    .line 675
    :cond_49
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 682
    :cond_4f
    :goto_4f
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    invoke-static {p1, p4, p2, v0, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->createForVideoDecoding(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/media/MediaFormat;Lcom/google/android/exoplayer2/Format;Landroid/view/Surface;Landroid/media/MediaCrypto;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;

    move-result-object p1

    return-object p1
.end method

.method protected getMediaFormat(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;FZI)Landroid/media/MediaFormat;
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1363
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    const-string v1, "mime"

    .line 1365
    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->width:I

    const-string v1, "width"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1367
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->height:I

    const-string v1, "height"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1368
    iget-object p2, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->setCsdBuffers(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 1370
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    const-string v1, "frame-rate"

    invoke-static {v0, v1, p2}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetFloat(Landroid/media/MediaFormat;Ljava/lang/String;F)V

    .line 1371
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    const-string v1, "rotation-degrees"

    invoke-static {v0, v1, p2}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1372
    iget-object p2, p1, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetColorInfo(Landroid/media/MediaFormat;Lcom/google/android/exoplayer2/video/ColorInfo;)V

    .line 1373
    iget-object p2, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "video/dolby-vision"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4d

    .line 1376
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Lcom/google/android/exoplayer2/Format;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_4d

    .line 1378
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 1379
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "profile"

    .line 1378
    invoke-static {v0, p2, p1}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1383
    :cond_4d
    iget p1, p3, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->width:I

    const-string p2, "max-width"

    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1384
    iget p1, p3, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->height:I

    const-string p2, "max-height"

    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1385
    iget p1, p3, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    const-string p2, "max-input-size"

    invoke-static {v0, p2, p1}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1388
    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 p2, 0x17

    const/4 p3, 0x0

    if-lt p1, p2, :cond_79

    const-string p1, "priority"

    .line 1389
    invoke-virtual {v0, p1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 p1, -0x40800000  # -1.0f

    cmpl-float p1, p4, p1

    if-eqz p1, :cond_79

    const-string p1, "operating-rate"

    .line 1391
    invoke-virtual {v0, p1, p4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_79
    if-eqz p5, :cond_86

    const/4 p1, 0x1

    const-string p2, "no-post-process"

    .line 1395
    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "auto-frc"

    .line 1396
    invoke-virtual {v0, p1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_86
    if-eqz p6, :cond_8b

    .line 1399
    invoke-static {v0, p6}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->configureTunnelingV21(Landroid/media/MediaFormat;I)V

    :cond_8b
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "MediaCodecVideoRenderer"

    return-object v0
.end method

.method protected getSurface()Landroid/view/Surface;
    .registers 2

    .line 1674
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method protected handleInputBufferSupplementalData(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .registers 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 840
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecHandlesHdr10PlusOutOfBandMetadata:Z

    if-nez v0, :cond_5

    return-void

    .line 843
    :cond_5
    iget-object p1, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 844
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_4f

    .line 846
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 847
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 848
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 849
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 850
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/4 v5, 0x0

    .line 851
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v6, -0x4b

    if-ne v0, v6, :cond_4f

    const/16 v0, 0x3c

    if-ne v1, v0, :cond_4f

    const/4 v0, 0x1

    if-ne v2, v0, :cond_4f

    const/4 v0, 0x4

    if-ne v3, v0, :cond_4f

    if-nez v4, :cond_4f

    .line 859
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 860
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 861
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 862
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getCodec()Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->setHdr10PlusInfoV29(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;[B)V

    :cond_4f
    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4d

    const/4 v0, 0x7

    if-eq p1, v0, :cond_48

    const/16 v0, 0xa

    if-eq p1, v0, :cond_34

    const/4 v0, 0x4

    if-eq p1, v0, :cond_20

    const/4 v0, 0x5

    if-eq p1, v0, :cond_14

    .line 583
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/BaseRenderer;->handleMessage(ILjava/lang/Object;)V

    goto :goto_50

    .line 562
    :cond_14
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->setChangeFrameRateStrategy(I)V

    goto :goto_50

    .line 555
    :cond_20
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->scalingMode:I

    .line 556
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getCodec()Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    move-result-object p1

    if-eqz p1, :cond_50

    .line 558
    iget p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->scalingMode:I

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->setVideoScalingMode(I)V

    goto :goto_50

    .line 568
    :cond_34
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 569
    iget p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    if-eq p2, p1, :cond_50

    .line 570
    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    .line 571
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz p1, :cond_50

    .line 572
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    goto :goto_50

    .line 565
    :cond_48
    check-cast p2, Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    iput-object p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    goto :goto_50

    .line 552
    :cond_4d
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->setOutput(Ljava/lang/Object;)V

    :cond_50
    :goto_50
    return-void
.end method

.method public isReady()Z
    .registers 10

    .line 480
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isReady()Z

    move-result v0

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL  # -4.9E-324

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterReset:Z

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Lcom/google/android/exoplayer2/video/DummySurface;

    if-eqz v0, :cond_18

    iget-object v4, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-eq v4, v0, :cond_22

    .line 483
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getCodec()Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_25

    .line 486
    :cond_22
    iput-wide v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    return v1

    .line 488
    :cond_25
    iget-wide v4, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    const/4 v0, 0x0

    cmp-long v6, v4, v2

    if-nez v6, :cond_2d

    return v0

    .line 491
    :cond_2d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_38

    return v1

    .line 496
    :cond_38
    iput-wide v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    return v0
.end method

.method protected maybeDropBuffersToKeyframe(JZ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1127
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/BaseRenderer;->skipSource(J)I

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return p1

    .line 1131
    :cond_8
    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedToKeyframeCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedToKeyframeCount:I

    .line 1134
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    add-int/2addr v0, p1

    if-eqz p3, :cond_1b

    .line 1136
    iget p1, p2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    add-int/2addr p1, v0

    iput p1, p2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    goto :goto_1e

    .line 1138
    :cond_1b
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->updateDroppedBufferCounters(I)V

    .line 1140
    :goto_1e
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->flushOrReinitializeCodec()Z

    return v1
.end method

.method maybeNotifyRenderedFirstFrame()V
    .registers 4

    const/4 v0, 0x1

    .line 1252
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterEnable:Z

    .line 1253
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterReset:Z

    if-nez v1, :cond_12

    .line 1254
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterReset:Z

    .line 1255
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Ljava/lang/Object;)V

    .line 1256
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->haveReportedFirstFrameRenderedForCurrentSurface:Z

    :cond_12
    return-void
.end method

.method protected onCodecError(Ljava/lang/Exception;)V
    .registers 4

    const-string v0, "MediaCodecVideoRenderer"

    const-string v1, "Video codec error"

    .line 756
    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 757
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->videoCodecError(Ljava/lang/Exception;)V

    return-void
.end method

.method protected onCodecInitialized(Ljava/lang/String;JJ)V
    .registers 12

    .line 739
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    .line 740
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround:Z

    .line 742
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getCodecInfo()Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isHdr10PlusOutOfBandMetadataSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->codecHandlesHdr10PlusOutOfBandMetadata:Z

    .line 743
    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_39

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz p1, :cond_39

    .line 744
    new-instance p1, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    .line 745
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getCodec()Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;-><init>(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    :cond_39
    return-void
.end method

.method protected onCodecReleased(Ljava/lang/String;)V
    .registers 3

    .line 751
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->decoderReleased(Ljava/lang/String;)V

    return-void
.end method

.method protected onDisabled()V
    .registers 4

    .line 523
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearReportedVideoSize()V

    .line 524
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    const/4 v0, 0x0

    .line 525
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->haveReportedFirstFrameRenderedForCurrentSurface:Z

    .line 526
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->onDisabled()V

    const/4 v0, 0x0

    .line 527
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    .line 529
    :try_start_11
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onDisabled()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_1c

    .line 531
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void

    :catchall_1c
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 532
    throw v0
.end method

.method protected onEnabled(ZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 450
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onEnabled(ZZ)V

    .line 451
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BaseRenderer;->getConfiguration()Lcom/google/android/exoplayer2/RendererConfiguration;

    move-result-object p1

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/RendererConfiguration;->tunneling:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    .line 452
    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    if-eqz v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v1, 0x1

    :goto_14
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 453
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eq v1, p1, :cond_20

    .line 454
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    .line 455
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    .line 457
    :cond_20
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->enabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 458
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->onEnabled()V

    .line 459
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->mayRenderFirstFrameAfterEnableIfNotStarted:Z

    .line 460
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterEnable:Z

    return-void
.end method

.method protected onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 764
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    move-result-object v0

    .line 765
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object p1, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->inputFormatChanged(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    return-object v0
.end method

.method protected onOutputFormatChanged(Lcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V
    .registers 9

    .line 794
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getCodec()Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 797
    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->scalingMode:I

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->setVideoScalingMode(I)V

    .line 799
    :cond_b
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_18

    .line 800
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->width:I

    iput p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    .line 801
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->height:I

    iput p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    goto :goto_69

    .line 803
    :cond_18
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "crop-right"

    .line 805
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "crop-top"

    const-string v3, "crop-bottom"

    const-string v4, "crop-left"

    const/4 v5, 0x1

    if-eqz v1, :cond_3e

    .line 806
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 807
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 808
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    const/4 v1, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x0

    :goto_3f
    if-eqz v1, :cond_4c

    .line 811
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v0, v4

    add-int/2addr v0, v5

    goto :goto_52

    :cond_4c
    const-string v0, "width"

    .line 812
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_52
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    if-eqz v1, :cond_61

    .line 815
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr v0, p2

    add-int/2addr v0, v5

    goto :goto_67

    :cond_61
    const-string v0, "height"

    .line 816
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_67
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    .line 818
    :goto_69
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    iput p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    .line 819
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_8b

    .line 823
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_7d

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_8f

    .line 824
    :cond_7d
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    .line 825
    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    iput v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    .line 826
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    const/high16 v0, 0x3f800000  # 1.0f

    div-float/2addr v0, p2

    .line 827
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    goto :goto_8f

    .line 831
    :cond_8b
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    iput p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->currentUnappliedRotationDegrees:I

    .line 833
    :cond_8f
    :goto_8f
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->onFormatChanged(F)V

    return-void
.end method

.method protected onPositionReset(JZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 465
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPositionReset(JZ)V

    .line 466
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    .line 467
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->onPositionReset()V

    const-wide p1, -0x7fffffffffffffffL  # -4.9E-324

    .line 468
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastBufferPresentationTimeUs:J

    .line 469
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->initialPositionUs:J

    const/4 v0, 0x0

    .line 470
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    if-eqz p3, :cond_1d

    .line 472
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->setJoiningDeadlineMs()V

    goto :goto_1f

    .line 474
    :cond_1d
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    :goto_1f
    return-void
.end method

.method protected onProcessedOutputBuffer(J)V
    .registers 3

    .line 1031
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onProcessedOutputBuffer(J)V

    .line 1032
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-nez p1, :cond_d

    .line 1033
    iget p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    :cond_d
    return-void
.end method

.method protected onProcessedStreamChange()V
    .registers 1

    .line 1039
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onProcessedStreamChange()V

    .line 1040
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    return-void
.end method

.method protected onProcessedTunneledBuffer(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1016
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateOutputFormatForTime(J)V

    .line 1017
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged()V

    .line 1018
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    .line 1019
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    .line 1020
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->onProcessedOutputBuffer(J)V

    return-void
.end method

.method protected onQueueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 782
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->tunneling:Z

    if-nez v0, :cond_a

    .line 783
    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    .line 785
    :cond_a
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_17

    if-eqz v0, :cond_17

    .line 788
    iget-wide v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->onProcessedTunneledBuffer(J)V

    :cond_17
    return-void
.end method

.method protected onReset()V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 539
    :try_start_0
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onReset()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_b

    .line 541
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Lcom/google/android/exoplayer2/video/DummySurface;

    if-eqz v0, :cond_a

    .line 542
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->releaseDummySurface()V

    :cond_a
    return-void

    :catchall_b
    move-exception v0

    .line 541
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Lcom/google/android/exoplayer2/video/DummySurface;

    if-eqz v1, :cond_13

    .line 542
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->releaseDummySurface()V

    .line 544
    :cond_13
    throw v0
.end method

.method protected onStarted()V
    .registers 6

    .line 503
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onStarted()V

    const/4 v0, 0x0

    .line 504
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 505
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    .line 506
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastRenderRealtimeUs:J

    const-wide/16 v1, 0x0

    .line 507
    iput-wide v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    .line 508
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    .line 509
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->onStarted()V

    return-void
.end method

.method protected onStopped()V
    .registers 3

    const-wide v0, -0x7fffffffffffffffL  # -4.9E-324

    .line 514
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    .line 515
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyDroppedFrames()V

    .line 516
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyVideoFrameProcessingOffset()V

    .line 517
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->onStopped()V

    .line 518
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onStopped()V

    return-void
.end method

.method protected processOutputBuffer(JJLcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/exoplayer2/Format;)Z
    .registers 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-wide/from16 v7, p1

    move-object/from16 v9, p5

    move/from16 v10, p7

    move-wide/from16 v0, p10

    .line 881
    invoke-static/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    iget-wide v2, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->initialPositionUs:J

    const-wide v4, -0x7fffffffffffffffL  # -4.9E-324

    cmp-long v11, v2, v4

    if-nez v11, :cond_1a

    .line 884
    iput-wide v7, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->initialPositionUs:J

    .line 887
    :cond_1a
    iget-wide v2, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastBufferPresentationTimeUs:J

    cmp-long v11, v0, v2

    if-eqz v11, :cond_27

    .line 888
    iget-object v2, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->onNextFrame(J)V

    .line 889
    iput-wide v0, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastBufferPresentationTimeUs:J

    .line 892
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getOutputStreamOffsetUs()J

    move-result-wide v2

    sub-long v11, v0, v2

    const/4 v13, 0x1

    if-eqz p12, :cond_36

    if-nez p13, :cond_36

    .line 896
    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->skipOutputBuffer(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;IJ)V

    return v13

    .line 901
    :cond_36
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getPlaybackSpeed()F

    move-result v14

    float-to-double v14, v14

    .line 902
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/BaseRenderer;->getState()I

    move-result v4

    const/4 v5, 0x2

    const/16 v16, 0x0

    if-ne v4, v5, :cond_46

    const/4 v4, 0x1

    goto :goto_47

    :cond_46
    const/4 v4, 0x0

    .line 903
    :goto_47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    mul-long v17, v17, v19

    sub-long/2addr v0, v7

    long-to-double v0, v0

    div-double/2addr v0, v14

    double-to-long v0, v0

    if-eqz v4, :cond_58

    sub-long v14, v17, p3

    sub-long/2addr v0, v14

    .line 914
    :cond_58
    iget-object v5, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    iget-object v14, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dummySurface:Lcom/google/android/exoplayer2/video/DummySurface;

    if-ne v5, v14, :cond_6c

    .line 916
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->isBufferLate(J)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 917
    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->skipOutputBuffer(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;IJ)V

    .line 918
    invoke-virtual {v6, v0, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    return v13

    :cond_6b
    return v16

    .line 924
    :cond_6c
    iget-wide v14, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastRenderRealtimeUs:J

    sub-long v14, v17, v14

    .line 926
    iget-boolean v5, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterEnable:Z

    if-nez v5, :cond_7b

    if-nez v4, :cond_7f

    .line 927
    iget-boolean v5, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->mayRenderFirstFrameAfterEnableIfNotStarted:Z

    if-eqz v5, :cond_83

    goto :goto_7f

    .line 928
    :cond_7b
    iget-boolean v5, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterReset:Z

    if-nez v5, :cond_83

    :cond_7f
    :goto_7f
    move-wide/from16 p10, v14

    const/4 v5, 0x1

    goto :goto_86

    :cond_83
    move-wide/from16 p10, v14

    const/4 v5, 0x0

    .line 930
    :goto_86
    iget-wide v13, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    const-wide v17, -0x7fffffffffffffffL  # -4.9E-324

    cmp-long v15, v13, v17

    if-nez v15, :cond_a3

    cmp-long v13, v7, v2

    if-ltz v13, :cond_a3

    if-nez v5, :cond_a1

    if-eqz v4, :cond_a3

    move-wide/from16 v2, p10

    .line 934
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->shouldForceRenderOutputBuffer(JJ)Z

    move-result v2

    if-eqz v2, :cond_a3

    :cond_a1
    const/4 v2, 0x1

    goto :goto_a4

    :cond_a3
    const/4 v2, 0x0

    :goto_a4
    const/16 v13, 0x15

    if-eqz v2, :cond_d1

    .line 936
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    move-object/from16 p8, p0

    move-wide/from16 p9, v11

    move-wide/from16 p11, v2

    move-object/from16 p13, p14

    .line 937
    invoke-direct/range {p8 .. p13}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->notifyFrameMetadataListener(JJLcom/google/android/exoplayer2/Format;)V

    .line 938
    sget v4, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-lt v4, v13, :cond_c9

    move-object/from16 p8, p0

    move-object/from16 p9, p5

    move/from16 p10, p7

    move-wide/from16 p11, v11

    move-wide/from16 p13, v2

    .line 939
    invoke-virtual/range {p8 .. p14}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderOutputBufferV21(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;IJJ)V

    goto :goto_cc

    .line 941
    :cond_c9
    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderOutputBuffer(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;IJ)V

    .line 943
    :goto_cc
    invoke-virtual {v6, v0, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    :goto_cf
    const/4 v0, 0x1

    return v0

    :cond_d1
    if-eqz v4, :cond_189

    .line 947
    iget-wide v2, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->initialPositionUs:J

    cmp-long v4, v7, v2

    if-nez v4, :cond_db

    goto/16 :goto_189

    .line 952
    :cond_db
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    mul-long v0, v0, v19

    add-long/2addr v0, v2

    .line 956
    iget-object v4, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    invoke-virtual {v4, v0, v1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->adjustReleaseTime(J)J

    move-result-wide v14

    sub-long v0, v14, v2

    .line 957
    div-long v3, v0, v19

    .line 959
    iget-wide v0, v6, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    const-wide v17, -0x7fffffffffffffffL  # -4.9E-324

    cmp-long v2, v0, v17

    if-eqz v2, :cond_f9

    const/4 v5, 0x1

    goto :goto_fa

    :cond_f9
    const/4 v5, 0x0

    :goto_fa
    move-object/from16 v0, p0

    move-wide v1, v3

    move-wide/from16 v17, v3

    move-wide/from16 v3, p3

    move v13, v5

    move/from16 v5, p13

    .line 960
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->shouldDropBuffersToKeyframe(JJZ)Z

    move-result v0

    if-eqz v0, :cond_111

    .line 961
    invoke-virtual {v6, v7, v8, v13}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeDropBuffersToKeyframe(JZ)Z

    move-result v0

    if-eqz v0, :cond_111

    return v16

    :cond_111
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    move-wide/from16 v3, p3

    move/from16 v5, p13

    .line 963
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->shouldDropOutputBuffer(JJZ)Z

    move-result v0

    if-eqz v0, :cond_12e

    if-eqz v13, :cond_125

    .line 965
    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->skipOutputBuffer(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;IJ)V

    goto :goto_128

    .line 967
    :cond_125
    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->dropOutputBuffer(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;IJ)V

    :goto_128
    move-wide/from16 v0, v17

    .line 969
    invoke-virtual {v6, v0, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    goto :goto_cf

    :cond_12e
    move-wide/from16 v0, v17

    .line 973
    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_158

    const-wide/32 v2, 0xc350

    cmp-long v4, v0, v2

    if-gez v4, :cond_189

    move-object/from16 p8, p0

    move-wide/from16 p9, v11

    move-wide/from16 p11, v14

    move-object/from16 p13, p14

    .line 976
    invoke-direct/range {p8 .. p13}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->notifyFrameMetadataListener(JJLcom/google/android/exoplayer2/Format;)V

    move-object/from16 p9, p5

    move/from16 p10, p7

    move-wide/from16 p11, v11

    move-wide/from16 p13, v14

    .line 977
    invoke-virtual/range {p8 .. p14}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderOutputBufferV21(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;IJJ)V

    .line 978
    invoke-virtual {v6, v0, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    goto/16 :goto_cf

    :cond_158
    const-wide/16 v2, 0x7530

    cmp-long v4, v0, v2

    if-gez v4, :cond_189

    const-wide/16 v2, 0x2af8

    cmp-long v4, v0, v2

    if-lez v4, :cond_176

    const-wide/16 v2, 0x2710

    sub-long v3, v0, v2

    .line 989
    :try_start_168
    div-long v3, v3, v19

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_16d
    .catch Ljava/lang/InterruptedException; {:try_start_168 .. :try_end_16d} :catch_16e

    goto :goto_176

    .line 991
    :catch_16e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return v16

    :cond_176
    :goto_176
    move-object/from16 p8, p0

    move-wide/from16 p9, v11

    move-wide/from16 p11, v14

    move-object/from16 p13, p14

    .line 995
    invoke-direct/range {p8 .. p13}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->notifyFrameMetadataListener(JJLcom/google/android/exoplayer2/Format;)V

    .line 996
    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->renderOutputBuffer(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;IJ)V

    .line 997
    invoke-virtual {v6, v0, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    goto/16 :goto_cf

    :cond_189
    :goto_189
    return v16
.end method

.method protected renderOutputBuffer(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;IJ)V
    .registers 7

    .line 1181
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged()V

    const-string p3, "releaseOutputBuffer"

    .line 1182
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 1183
    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    .line 1184
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 1185
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastRenderRealtimeUs:J

    .line 1186
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr p2, p3

    iput p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    const/4 p1, 0x0

    .line 1187
    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 1188
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    return-void
.end method

.method protected renderOutputBufferV21(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;IJJ)V
    .registers 7

    .line 1203
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged()V

    const-string p3, "releaseOutputBuffer"

    .line 1204
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 1205
    invoke-interface {p1, p2, p5, p6}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IJ)V

    .line 1206
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 1207
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    mul-long p1, p1, p3

    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->lastRenderRealtimeUs:J

    .line 1208
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    const/4 p1, 0x0

    .line 1209
    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 1210
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    return-void
.end method

.method protected resetCodecStateForFlush()V
    .registers 2

    .line 710
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->resetCodecStateForFlush()V

    const/4 v0, 0x0

    .line 711
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    return-void
.end method

.method protected setOutputSurfaceV23(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;Landroid/view/Surface;)V
    .registers 3

    .line 1331
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setPlaybackSpeed(FF)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 717
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setPlaybackSpeed(FF)V

    .line 718
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseHelper:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;->onPlaybackSpeed(F)V

    return-void
.end method

.method protected shouldDropBuffersToKeyframe(JJZ)Z
    .registers 6

    .line 1069
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->isBufferVeryLate(J)Z

    move-result p1

    if-eqz p1, :cond_a

    if-nez p5, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method protected shouldDropOutputBuffer(JJZ)Z
    .registers 6

    .line 1054
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->isBufferLate(J)Z

    move-result p1

    if-eqz p1, :cond_a

    if-nez p5, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method protected shouldForceRenderOutputBuffer(JJ)Z
    .registers 6

    .line 1083
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->isBufferLate(J)Z

    move-result p1

    if-eqz p1, :cond_f

    const-wide/32 p1, 0x186a0

    cmp-long v0, p3, p1

    if-lez v0, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return p1
.end method

.method protected shouldInitCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z
    .registers 3

    .line 643
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-nez v0, :cond_d

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->shouldUseDummySurface(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x1

    :goto_e
    return p1
.end method

.method protected skipOutputBuffer(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;IJ)V
    .registers 5

    const-string p3, "skipVideoBuffer"

    .line 1094
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 1095
    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    .line 1096
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 1097
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    return-void
.end method

.method protected supportsFormat(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 345
    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 346
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 347
    invoke-static {v1}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result p1

    return p1

    .line 349
    :cond_e
    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 353
    :goto_16
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;

    move-result-object v3

    if-eqz v0, :cond_26

    .line 358
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 361
    invoke-static {p1, p2, v1, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;

    move-result-object v3

    .line 367
    :cond_26
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 368
    invoke-static {v2}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result p1

    return p1

    .line 370
    :cond_31
    invoke-static {p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->supportsFormatDrm(Lcom/google/android/exoplayer2/Format;)Z

    move-result v4

    if-nez v4, :cond_3d

    const/4 p1, 0x2

    .line 371
    invoke-static {p1}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result p1

    return p1

    .line 374
    :cond_3d
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 375
    invoke-virtual {v3, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isFormatSupported(Lcom/google/android/exoplayer2/Format;)Z

    move-result v4

    .line 378
    invoke-virtual {v3, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Lcom/google/android/exoplayer2/Format;)Z

    move-result v3

    if-eqz v3, :cond_50

    const/16 v3, 0x10

    goto :goto_52

    :cond_50
    const/16 v3, 0x8

    :goto_52
    if-eqz v4, :cond_72

    .line 384
    invoke-static {p1, p2, v0, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->getDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;

    move-result-object p1

    .line 389
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_72

    .line 390
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 391
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isFormatSupported(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 392
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Lcom/google/android/exoplayer2/Format;)Z

    move-result p1

    if-eqz p1, :cond_72

    const/16 v1, 0x20

    :cond_72
    if-eqz v4, :cond_76

    const/4 p1, 0x4

    goto :goto_77

    :cond_76
    const/4 p1, 0x3

    .line 399
    :goto_77
    invoke-static {p1, v3, v1}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(III)I

    move-result p1

    return p1
.end method

.method protected updateDroppedBufferCounters(I)V
    .registers 4

    .line 1151
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedBufferCount:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedBufferCount:I

    .line 1152
    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 1153
    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 1154
    iget p1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 1155
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 1156
    iget p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maxDroppedFramesToNotify:I

    if-lez p1, :cond_24

    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    if-lt v0, p1, :cond_24

    .line 1157
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyDroppedFrames()V

    :cond_24
    return-void
.end method

.method protected updateVideoFrameProcessingOffsetCounters(J)V
    .registers 5

    .line 1167
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->addVideoFrameProcessingOffset(J)V

    .line 1168
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    .line 1169
    iget p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    return-void
.end method
