.class public final Landroidx/camera/core/VideoCapture;
.super Landroidx/camera/core/UseCase;
.source "VideoCapture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/VideoCapture$Api23Impl;,
        Landroidx/camera/core/VideoCapture$Builder;,
        Landroidx/camera/core/VideoCapture$Defaults;,
        Landroidx/camera/core/VideoCapture$VideoEncoderInitStatus;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CamcorderQuality:[I

.field public static final DEFAULT_CONFIG:Landroidx/camera/core/VideoCapture$Defaults;


# instance fields
.field private mAudioBitRate:I

.field private mAudioChannelCount:I

.field private mAudioEncoder:Landroid/media/MediaCodec;

.field private mAudioHandlerThread:Landroid/os/HandlerThread;

.field private volatile mAudioRecorder:Landroid/media/AudioRecord;

.field private mAudioSampleRate:I

.field mCameraSurface:Landroid/view/Surface;

.field private mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

.field private final mEndOfAudioStreamSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mEndOfVideoStreamSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mIsAudioEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile mIsRecording:Z

.field private final mMuxerLock:Ljava/lang/Object;

.field private mRecordingFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

.field mVideoEncoder:Landroid/media/MediaCodec;

.field private mVideoHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method public static synthetic $r8$lambda$_JVErJ9i9kCqYUUGWiW0YPTzhvI(ZLandroid/media/MediaCodec;)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/camera/core/VideoCapture;->lambda$releaseCameraSurface$7(ZLandroid/media/MediaCodec;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nGm6ixcqIwXQ9Uz6sLgyMXPK2aE(Landroidx/camera/core/VideoCapture;)V
    .registers 1

    invoke-direct {p0}, Landroidx/camera/core/VideoCapture;->lambda$stopRecording$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$pFXPMCy4Z1n_8LWnkUvVoDWdli0(Landroidx/camera/core/VideoCapture;)V
    .registers 1

    invoke-direct {p0}, Landroidx/camera/core/VideoCapture;->lambda$onDetached$6()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 176
    new-instance v0, Landroidx/camera/core/VideoCapture$Defaults;

    invoke-direct {v0}, Landroidx/camera/core/VideoCapture$Defaults;-><init>()V

    sput-object v0, Landroidx/camera/core/VideoCapture;->DEFAULT_CONFIG:Landroidx/camera/core/VideoCapture$Defaults;

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 184
    fill-array-data v0, :array_10

    sput-object v0, Landroidx/camera/core/VideoCapture;->CamcorderQuality:[I

    return-void

    :array_10
    .array-data 4
        0x8
        0x6
        0x5
        0x4
    .end array-data
.end method

.method private autoConfigAudioRecordSource(Landroidx/camera/core/impl/VideoCaptureConfig;)Landroid/media/AudioRecord;
    .registers 13

    const-string v0, "VideoCapture"

    .line 1105
    iget v1, p0, Landroidx/camera/core/VideoCapture;->mAudioChannelCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    const/16 v1, 0x10

    goto :goto_c

    :cond_a
    const/16 v1, 0xc

    .line 1111
    :goto_c
    :try_start_c
    iget v3, p0, Landroidx/camera/core/VideoCapture;->mAudioSampleRate:I

    const/4 v9, 0x2

    .line 1112
    invoke-static {v3, v1, v9}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v3

    if-gtz v3, :cond_19

    .line 1116
    invoke-virtual {p1}, Landroidx/camera/core/impl/VideoCaptureConfig;->getAudioMinBufferSize()I

    move-result v3

    :cond_19
    move p1, v3

    .line 1119
    new-instance v10, Landroid/media/AudioRecord;

    const/4 v4, 0x5

    iget v5, p0, Landroidx/camera/core/VideoCapture;->mAudioSampleRate:I

    const/4 v7, 0x2

    mul-int/lit8 v8, p1, 0x2

    move-object v3, v10

    move v6, v1

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 1127
    invoke-virtual {v10}, Landroid/media/AudioRecord;->getState()I

    move-result v3

    if-ne v3, v2, :cond_62

    .line 1129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "source: 5 audioSampleRate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroidx/camera/core/VideoCapture;->mAudioSampleRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " channelConfig: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " audioFormat: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bufferSize: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/camera/core/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_5b} :catch_5c

    return-object v10

    :catch_5c
    move-exception p1

    const-string v1, "Exception, keep trying."

    .line 1144
    invoke-static {v0, v1, p1}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_62
    const/4 p1, 0x0

    return-object p1
.end method

.method private createAudioMediaFormat()Landroid/media/MediaFormat;
    .registers 4

    .line 1090
    iget v0, p0, Landroidx/camera/core/VideoCapture;->mAudioSampleRate:I

    iget v1, p0, Landroidx/camera/core/VideoCapture;->mAudioChannelCount:I

    const-string v2, "audio/mp4a-latm"

    .line 1091
    invoke-static {v2, v0, v1}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "aac-profile"

    const/4 v2, 0x2

    .line 1093
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1095
    iget v1, p0, Landroidx/camera/core/VideoCapture;->mAudioBitRate:I

    const-string v2, "bitrate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object v0
.end method

.method private static createVideoMediaFormat(Landroidx/camera/core/impl/VideoCaptureConfig;Landroid/util/Size;)Landroid/media/MediaFormat;
    .registers 4

    .line 272
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    const-string v1, "video/avc"

    .line 271
    invoke-static {v1, v0, p1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    const-string v0, "color-format"

    const v1, 0x7f000789

    .line 273
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 274
    invoke-virtual {p0}, Landroidx/camera/core/impl/VideoCaptureConfig;->getBitRate()I

    move-result v0

    const-string v1, "bitrate"

    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 275
    invoke-virtual {p0}, Landroidx/camera/core/impl/VideoCaptureConfig;->getVideoFrameRate()I

    move-result v0

    const-string v1, "frame-rate"

    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 276
    invoke-virtual {p0}, Landroidx/camera/core/impl/VideoCaptureConfig;->getIFrameInterval()I

    move-result p0

    const-string v0, "i-frame-interval"

    invoke-virtual {p1, v0, p0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object p1
.end method

.method private synthetic lambda$onDetached$6()V
    .registers 1

    .line 565
    invoke-direct {p0}, Landroidx/camera/core/VideoCapture;->releaseResources()V

    return-void
.end method

.method private static synthetic lambda$releaseCameraSurface$7(ZLandroid/media/MediaCodec;)V
    .registers 2

    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    .line 634
    invoke-virtual {p1}, Landroid/media/MediaCodec;->release()V

    :cond_7
    return-void
.end method

.method private synthetic lambda$stopRecording$5()V
    .registers 1

    .line 533
    invoke-virtual {p0}, Landroidx/camera/core/VideoCapture;->stopRecording()V

    return-void
.end method

.method private releaseAudioInputResource()V
    .registers 3

    .line 584
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mAudioHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 585
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mAudioEncoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 586
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 587
    iput-object v1, p0, Landroidx/camera/core/VideoCapture;->mAudioEncoder:Landroid/media/MediaCodec;

    .line 590
    :cond_f
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mAudioRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1a

    .line 591
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mAudioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 592
    iput-object v1, p0, Landroidx/camera/core/VideoCapture;->mAudioRecorder:Landroid/media/AudioRecord;

    :cond_1a
    return-void
.end method

.method private releaseCameraSurface(Z)V
    .registers 5

    .line 622
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    if-nez v0, :cond_5

    return-void

    .line 626
    :cond_5
    iget-object v1, p0, Landroidx/camera/core/VideoCapture;->mVideoEncoder:Landroid/media/MediaCodec;

    .line 630
    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    .line 631
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->getTerminationFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v2, Landroidx/camera/core/VideoCapture$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1, v1}, Landroidx/camera/core/VideoCapture$$ExternalSyntheticLambda3;-><init>(ZLandroid/media/MediaCodec;)V

    .line 636
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 631
    invoke-interface {v0, v2, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_21

    .line 639
    iput-object v0, p0, Landroidx/camera/core/VideoCapture;->mVideoEncoder:Landroid/media/MediaCodec;

    .line 641
    :cond_21
    iput-object v0, p0, Landroidx/camera/core/VideoCapture;->mCameraSurface:Landroid/view/Surface;

    .line 642
    iput-object v0, p0, Landroidx/camera/core/VideoCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    return-void
.end method

.method private releaseResources()V
    .registers 2

    .line 573
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mVideoHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 576
    invoke-direct {p0}, Landroidx/camera/core/VideoCapture;->releaseAudioInputResource()V

    .line 578
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mCameraSurface:Landroid/view/Surface;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    .line 579
    invoke-direct {p0, v0}, Landroidx/camera/core/VideoCapture;->releaseCameraSurface(Z)V

    :cond_10
    return-void
.end method

.method private setAudioParametersByCamcorderProfile(Landroid/util/Size;Ljava/lang/String;)V
    .registers 10

    const/4 v0, 0x0

    .line 1156
    :try_start_1
    sget-object v1, Landroidx/camera/core/VideoCapture;->CamcorderQuality:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_44

    aget v4, v1, v3

    .line 1157
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5, v4}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 1158
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5, v4}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v4

    .line 1159
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget v6, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    if-ne v5, v6, :cond_3a

    .line 1160
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v5

    iget v6, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-ne v5, v6, :cond_3a

    .line 1161
    iget p1, v4, Landroid/media/CamcorderProfile;->audioChannels:I

    iput p1, p0, Landroidx/camera/core/VideoCapture;->mAudioChannelCount:I

    .line 1162
    iget p1, v4, Landroid/media/CamcorderProfile;->audioSampleRate:I

    iput p1, p0, Landroidx/camera/core/VideoCapture;->mAudioSampleRate:I

    .line 1163
    iget p1, v4, Landroid/media/CamcorderProfile;->audioBitRate:I

    iput p1, p0, Landroidx/camera/core/VideoCapture;->mAudioBitRate:I
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_37} :catch_3d

    const/4 p1, 0x1

    const/4 v0, 0x1

    goto :goto_44

    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :catch_3d
    const-string p1, "VideoCapture"

    const-string p2, "The camera Id is not an integer because the camera may be a removable device. Use the default values for the audio related settings."

    .line 1170
    invoke-static {p1, p2}, Landroidx/camera/core/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_44
    :goto_44
    if-nez v0, :cond_5e

    .line 1177
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/impl/VideoCaptureConfig;

    .line 1178
    invoke-virtual {p1}, Landroidx/camera/core/impl/VideoCaptureConfig;->getAudioChannelCount()I

    move-result p2

    iput p2, p0, Landroidx/camera/core/VideoCapture;->mAudioChannelCount:I

    .line 1179
    invoke-virtual {p1}, Landroidx/camera/core/impl/VideoCaptureConfig;->getAudioSampleRate()I

    move-result p2

    iput p2, p0, Landroidx/camera/core/VideoCapture;->mAudioSampleRate:I

    .line 1180
    invoke-virtual {p1}, Landroidx/camera/core/impl/VideoCaptureConfig;->getAudioBitRate()I

    move-result p1

    iput p1, p0, Landroidx/camera/core/VideoCapture;->mAudioBitRate:I

    :cond_5e
    return-void
.end method


# virtual methods
.method public getDefaultConfig(ZLandroidx/camera/core/impl/UseCaseConfigFactory;)Landroidx/camera/core/impl/UseCaseConfig;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/camera/core/impl/UseCaseConfigFactory;",
            ")",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;"
        }
    .end annotation

    .line 291
    sget-object v0, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->VIDEO_CAPTURE:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, Landroidx/camera/core/impl/UseCaseConfigFactory;->getConfig(Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;I)Landroidx/camera/core/impl/Config;

    move-result-object p2

    if-eqz p1, :cond_13

    .line 296
    sget-object p1, Landroidx/camera/core/VideoCapture;->DEFAULT_CONFIG:Landroidx/camera/core/VideoCapture$Defaults;

    invoke-virtual {p1}, Landroidx/camera/core/VideoCapture$Defaults;->getConfig()Landroidx/camera/core/impl/VideoCaptureConfig;

    move-result-object p1

    invoke-static {p2, p1}, Landroidx/camera/core/impl/Config$-CC;->mergeConfigs(Landroidx/camera/core/impl/Config;Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/Config;

    move-result-object p2

    :cond_13
    if-nez p2, :cond_17

    const/4 p1, 0x0

    goto :goto_1f

    .line 300
    :cond_17
    invoke-virtual {p0, p2}, Landroidx/camera/core/VideoCapture;->getUseCaseConfigBuilder(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/UseCaseConfig$Builder;

    move-result-object p1

    invoke-interface {p1}, Landroidx/camera/core/impl/UseCaseConfig$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object p1

    :goto_1f
    return-object p1
.end method

.method public getUseCaseConfigBuilder(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/UseCaseConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/Config;",
            ")",
            "Landroidx/camera/core/impl/UseCaseConfig$Builder<",
            "***>;"
        }
    .end annotation

    .line 605
    invoke-static {p1}, Landroidx/camera/core/VideoCapture$Builder;->fromConfig(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object p1

    return-object p1
.end method

.method public onAttached()V
    .registers 3

    .line 312
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraX-video encoding thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/camera/core/VideoCapture;->mVideoHandlerThread:Landroid/os/HandlerThread;

    .line 313
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraX-audio encoding thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/camera/core/VideoCapture;->mAudioHandlerThread:Landroid/os/HandlerThread;

    .line 316
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mVideoHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 317
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroidx/camera/core/VideoCapture;->mVideoHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 320
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mAudioHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 321
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroidx/camera/core/VideoCapture;->mAudioHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public onDetached()V
    .registers 4

    .line 562
    invoke-virtual {p0}, Landroidx/camera/core/VideoCapture;->stopRecording()V

    .line 564
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mRecordingFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_14

    .line 565
    new-instance v1, Landroidx/camera/core/VideoCapture$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroidx/camera/core/VideoCapture$$ExternalSyntheticLambda2;-><init>(Landroidx/camera/core/VideoCapture;)V

    .line 566
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    .line 565
    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_17

    .line 568
    :cond_14
    invoke-direct {p0}, Landroidx/camera/core/VideoCapture;->releaseResources()V

    :goto_17
    return-void
.end method

.method public onStateDetached()V
    .registers 1

    .line 617
    invoke-virtual {p0}, Landroidx/camera/core/VideoCapture;->stopRecording()V

    return-void
.end method

.method protected onSuggestedResolutionUpdated(Landroid/util/Size;)Landroid/util/Size;
    .registers 5

    .line 334
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mCameraSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1c

    .line 335
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 336
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 337
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 338
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    .line 339
    invoke-direct {p0, v0}, Landroidx/camera/core/VideoCapture;->releaseCameraSurface(Z)V

    :cond_1c
    :try_start_1c
    const-string v0, "video/avc"

    .line 343
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/VideoCapture;->mVideoEncoder:Landroid/media/MediaCodec;

    const-string v0, "audio/mp4a-latm"

    .line 344
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/VideoCapture;->mAudioEncoder:Landroid/media/MediaCodec;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_2c} :catch_37

    .line 349
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroidx/camera/core/VideoCapture;->setupEncoder(Ljava/lang/String;Landroid/util/Size;)V

    .line 351
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->notifyActive()V

    return-object p1

    :catch_37
    move-exception p1

    .line 346
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create MediaCodec due to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setupEncoder(Ljava/lang/String;Landroid/util/Size;)V
    .registers 11

    .line 665
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/VideoCaptureConfig;

    .line 668
    iget-object v1, p0, Landroidx/camera/core/VideoCapture;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->reset()V

    .line 669
    sget-object v1, Landroidx/camera/core/VideoCapture$VideoEncoderInitStatus;->VIDEO_ENCODER_INIT_STATUS_UNINITIALIZED:Landroidx/camera/core/VideoCapture$VideoEncoderInitStatus;

    .line 673
    :try_start_d
    iget-object v1, p0, Landroidx/camera/core/VideoCapture;->mVideoEncoder:Landroid/media/MediaCodec;

    .line 674
    invoke-static {v0, p2}, Landroidx/camera/core/VideoCapture;->createVideoMediaFormat(Landroidx/camera/core/impl/VideoCaptureConfig;Landroid/util/Size;)Landroid/media/MediaFormat;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 673
    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_18
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_d .. :try_end_18} :catch_b2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_18} :catch_af
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_18} :catch_af

    .line 709
    iget-object v1, p0, Landroidx/camera/core/VideoCapture;->mCameraSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    .line 710
    invoke-direct {p0, v2}, Landroidx/camera/core/VideoCapture;->releaseCameraSurface(Z)V

    .line 712
    :cond_20
    iget-object v1, p0, Landroidx/camera/core/VideoCapture;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v1

    .line 713
    iput-object v1, p0, Landroidx/camera/core/VideoCapture;->mCameraSurface:Landroid/view/Surface;

    .line 715
    invoke-static {v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->createFrom(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object v5

    iput-object v5, p0, Landroidx/camera/core/VideoCapture;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 717
    iget-object v5, p0, Landroidx/camera/core/VideoCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    if-eqz v5, :cond_35

    .line 718
    invoke-virtual {v5}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    .line 720
    :cond_35
    new-instance v5, Landroidx/camera/core/impl/ImmediateSurface;

    iget-object v6, p0, Landroidx/camera/core/VideoCapture;->mCameraSurface:Landroid/view/Surface;

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getImageFormat()I

    move-result v7

    invoke-direct {v5, v6, p2, v7}, Landroidx/camera/core/impl/ImmediateSurface;-><init>(Landroid/view/Surface;Landroid/util/Size;I)V

    iput-object v5, p0, Landroidx/camera/core/VideoCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 721
    invoke-virtual {v5}, Landroidx/camera/core/impl/DeferrableSurface;->getTerminationFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v5

    .line 722
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Landroidx/camera/core/VideoCapture$$ExternalSyntheticLambda0;

    invoke-direct {v6, v1}, Landroidx/camera/core/VideoCapture$$ExternalSyntheticLambda0;-><init>(Landroid/view/Surface;)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 721
    invoke-interface {v5, v6, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 725
    iget-object v1, p0, Landroidx/camera/core/VideoCapture;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    iget-object v5, p0, Landroidx/camera/core/VideoCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SessionConfig$Builder;->addNonRepeatingSurface(Landroidx/camera/core/impl/DeferrableSurface;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 727
    iget-object v1, p0, Landroidx/camera/core/VideoCapture;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    new-instance v5, Landroidx/camera/core/VideoCapture$1;

    invoke-direct {v5, p0, p1, p2}, Landroidx/camera/core/VideoCapture$1;-><init>(Landroidx/camera/core/VideoCapture;Ljava/lang/String;Landroid/util/Size;)V

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SessionConfig$Builder;->addErrorListener(Landroidx/camera/core/impl/SessionConfig$ErrorListener;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 743
    iget-object v1, p0, Landroidx/camera/core/VideoCapture;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/camera/core/UseCase;->updateSessionConfig(Landroidx/camera/core/impl/SessionConfig;)V

    .line 747
    iget-object v1, p0, Landroidx/camera/core/VideoCapture;->mIsAudioEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 749
    invoke-direct {p0, p2, p1}, Landroidx/camera/core/VideoCapture;->setAudioParametersByCamcorderProfile(Landroid/util/Size;Ljava/lang/String;)V

    .line 750
    iget-object p1, p0, Landroidx/camera/core/VideoCapture;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->reset()V

    .line 751
    iget-object p1, p0, Landroidx/camera/core/VideoCapture;->mAudioEncoder:Landroid/media/MediaCodec;

    .line 752
    invoke-direct {p0}, Landroidx/camera/core/VideoCapture;->createAudioMediaFormat()Landroid/media/MediaFormat;

    move-result-object p2

    .line 751
    invoke-virtual {p1, p2, v4, v4, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 754
    iget-object p1, p0, Landroidx/camera/core/VideoCapture;->mAudioRecorder:Landroid/media/AudioRecord;

    if-eqz p1, :cond_8e

    .line 755
    iget-object p1, p0, Landroidx/camera/core/VideoCapture;->mAudioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {p1}, Landroid/media/AudioRecord;->release()V

    .line 757
    :cond_8e
    invoke-direct {p0, v0}, Landroidx/camera/core/VideoCapture;->autoConfigAudioRecordSource(Landroidx/camera/core/impl/VideoCaptureConfig;)Landroid/media/AudioRecord;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/VideoCapture;->mAudioRecorder:Landroid/media/AudioRecord;

    .line 759
    iget-object p1, p0, Landroidx/camera/core/VideoCapture;->mAudioRecorder:Landroid/media/AudioRecord;

    if-nez p1, :cond_a4

    const-string p1, "VideoCapture"

    const-string p2, "AudioRecord object cannot initialized correctly!"

    .line 760
    invoke-static {p1, p2}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    iget-object p1, p0, Landroidx/camera/core/VideoCapture;->mIsAudioEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 764
    :cond_a4
    iget-object p1, p0, Landroidx/camera/core/VideoCapture;->mMuxerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 767
    :try_start_a7
    monitor-exit p1
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_ad

    .line 768
    iput-boolean v2, p0, Landroidx/camera/core/VideoCapture;->mIsRecording:Z

    return-void

    .line 767
    :goto_ab
    :try_start_ab
    monitor-exit p1
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_ad

    throw p2

    :catchall_ad
    move-exception p2

    goto :goto_ab

    .line 703
    :catch_af
    sget-object p1, Landroidx/camera/core/VideoCapture$VideoEncoderInitStatus;->VIDEO_ENCODER_INIT_STATUS_INITIALIZED_FAILED:Landroidx/camera/core/VideoCapture$VideoEncoderInitStatus;

    return-void

    :catch_b2
    move-exception p1

    .line 680
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_10b

    .line 681
    invoke-static {p1}, Landroidx/camera/core/VideoCapture$Api23Impl;->getCodecExceptionErrorCode(Landroid/media/MediaCodec$CodecException;)I

    move-result p2

    .line 682
    invoke-virtual {p1}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x44c

    if-ne p2, v0, :cond_e6

    const-string v0, "VideoCapture"

    .line 684
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CodecException: code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " diagnostic: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/camera/core/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    sget-object p1, Landroidx/camera/core/VideoCapture$VideoEncoderInitStatus;->VIDEO_ENCODER_INIT_STATUS_INSUFFICIENT_RESOURCE:Landroidx/camera/core/VideoCapture$VideoEncoderInitStatus;

    goto :goto_10d

    :cond_e6
    const/16 v0, 0x44d

    if-ne p2, v0, :cond_10d

    const-string v0, "VideoCapture"

    .line 690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CodecException: code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " diagnostic: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/camera/core/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    sget-object p1, Landroidx/camera/core/VideoCapture$VideoEncoderInitStatus;->VIDEO_ENCODER_INIT_STATUS_RESOURCE_RECLAIMED:Landroidx/camera/core/VideoCapture$VideoEncoderInitStatus;

    goto :goto_10d

    .line 697
    :cond_10b
    sget-object p1, Landroidx/camera/core/VideoCapture$VideoEncoderInitStatus;->VIDEO_ENCODER_INIT_STATUS_INITIALIZED_FAILED:Landroidx/camera/core/VideoCapture$VideoEncoderInitStatus;

    :cond_10d
    :goto_10d
    return-void
.end method

.method public stopRecording()V
    .registers 3

    .line 532
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_17

    .line 533
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Landroidx/camera/core/VideoCapture$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroidx/camera/core/VideoCapture$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/core/VideoCapture;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_17
    const-string v0, "VideoCapture"

    const-string v1, "stopRecording"

    .line 536
    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->clearSurfaces()Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 539
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    iget-object v1, p0, Landroidx/camera/core/VideoCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->addNonRepeatingSurface(Landroidx/camera/core/impl/DeferrableSurface;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 540
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/camera/core/UseCase;->updateSessionConfig(Landroidx/camera/core/impl/SessionConfig;)V

    .line 541
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->notifyUpdated()V

    .line 543
    iget-boolean v0, p0, Landroidx/camera/core/VideoCapture;->mIsRecording:Z

    if-eqz v0, :cond_4e

    .line 544
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mIsAudioEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_49

    .line 546
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mEndOfAudioStreamSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_4e

    .line 549
    :cond_49
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mEndOfVideoStreamSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_4e
    :goto_4e
    return-void
.end method
