.class final Landroidx/camera/camera2/internal/ZslControlImpl;
.super Ljava/lang/Object;
.source "ZslControlImpl.java"

# interfaces
.implements Landroidx/camera/camera2/internal/ZslControl;


# instance fields
.field private final mCameraCharacteristicsCompat:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

.field final mImageRingBuffer:Landroidx/camera/core/internal/utils/ZslRingBuffer;

.field private mIsPrivateReprocessingSupported:Z

.field private mIsZslDisabledByFlashMode:Z

.field private mIsZslDisabledByUseCaseConfig:Z

.field private mMetadataMatchingCaptureCallback:Landroidx/camera/core/impl/CameraCaptureCallback;

.field private mReprocessingImageDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

.field mReprocessingImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

.field mReprocessingImageWriter:Landroid/media/ImageWriter;

.field private final mReprocessingInputSizeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Wa17j4whoBMxTMlDJbFtPxRw-n0(Landroidx/camera/camera2/internal/ZslControlImpl;Landroidx/camera/core/impl/ImageReaderProxy;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/ZslControlImpl;->lambda$addZslConfig$1(Landroidx/camera/core/impl/ImageReaderProxy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hLcsGE-uZoj_DQG5DCZ1FZPp4_4(Landroidx/camera/core/ImageProxy;)V
    .registers 1

    invoke-static {p0}, Landroidx/camera/camera2/internal/ZslControlImpl;->lambda$new$0(Landroidx/camera/core/ImageProxy;)V

    return-void
.end method

.method constructor <init>(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)V
    .registers 4

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->mIsZslDisabledByUseCaseConfig:Z

    .line 86
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->mIsZslDisabledByFlashMode:Z

    .line 87
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->mIsPrivateReprocessingSupported:Z

    .line 98
    iput-object p1, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->mCameraCharacteristicsCompat:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    const/4 v0, 0x4

    .line 100
    invoke-static {p1, v0}, Landroidx/camera/camera2/internal/ZslUtil;->isCapabilitySupported(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;I)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->mIsPrivateReprocessingSupported:Z

    .line 103
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/ZslControlImpl;->createReprocessingInputSizeMap(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->mReprocessingInputSizeMap:Ljava/util/Map;

    .line 105
    new-instance p1, Landroidx/camera/core/internal/utils/ZslRingBuffer;

    sget-object v0, Landroidx/camera/camera2/internal/ZslControlImpl$$ExternalSyntheticLambda1;->INSTANCE:Landroidx/camera/camera2/internal/ZslControlImpl$$ExternalSyntheticLambda1;

    const/4 v1, 0x3

    invoke-direct {p1, v1, v0}, Landroidx/camera/core/internal/utils/ZslRingBuffer;-><init>(ILandroidx/camera/core/internal/utils/RingBuffer$OnRemoveCallback;)V

    iput-object p1, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->mImageRingBuffer:Landroidx/camera/core/internal/utils/ZslRingBuffer;

    return-void
.end method

.method private cleanup()V
    .registers 6

    .line 247
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->mImageRingBuffer:Landroidx/camera/core/internal/utils/ZslRingBuffer;

    .line 248
    :goto_2
    invoke-virtual {v0}, Landroidx/camera/core/internal/utils/ArrayRingBuffer;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 249
    invoke-virtual {v0}, Landroidx/camera/core/internal/utils/ArrayRingBuffer;->dequeue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/ImageProxy;

    .line 250
    invoke-interface {v1}, Landroidx/camera/core/ImageProxy;->close()V

    goto :goto_2

    .line 253
    :cond_12
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->mReprocessingImageDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    .line 255
    iget-object v2, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->mReprocessingImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    if-eqz v2, :cond_2d

    .line 257
    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->getTerminationFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    .line 258
    new-instance v4, Landroidx/camera/camera2/internal/ZslControlImpl$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2}, Landroidx/camera/camera2/internal/ZslControlImpl$$ExternalSyntheticLambda2;-><init>(Landroidx/camera/core/SafeCloseImageReaderProxy;)V

    .line 259
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    .line 257
    invoke-interface {v3, v4, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 260
    iput-object v1, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->mReprocessingImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    .line 262
    :cond_2d
    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    .line 263
    iput-object v1, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->mReprocessingImageDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 266
    :cond_32
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->mReprocessingImageWriter:Landroid/media/ImageWriter;

    if-eqz v0, :cond_3b

    .line 268
    invoke-virtual {v0}, Landroid/media/ImageWriter;->close()V

    .line 269
    iput-object v1, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->mReprocessingImageWriter:Landroid/media/ImageWriter;

    :cond_3b
    return-void
.end method

.method private createReprocessingInputSizeMap(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 276
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 277
    invoke-virtual {p1, v0}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-eqz p1, :cond_3d

    .line 280
    invoke-virtual {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputFormats()[I

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_3d

    .line 284
    :cond_11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 285
    invoke-virtual {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputFormats()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v2, :cond_3c

    aget v5, v1, v4

    .line 286
    invoke-virtual {p1, v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v6

    if-eqz v6, :cond_39

    .line 289
    new-instance v7, Landroidx/camera/core/impl/utils/CompareSizesByArea;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroidx/camera/core/impl/utils/CompareSizesByArea;-><init>(Z)V

    invoke-static {v6, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 293
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aget-object v6, v6, v3

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_3c
    return-object v0

    .line 281
    :cond_3d
    :goto_3d
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method private isJpegValidOutputForInputFormat(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;I)Z
    .registers 7

    .line 302
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 303
    invoke-virtual {p1, v0}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/4 v0, 0x0

    if-nez p1, :cond_c

    return v0

    .line 310
    :cond_c
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getValidOutputFormatsForInput(I)[I

    move-result-object p1

    if-nez p1, :cond_13

    return v0

    .line 314
    :cond_13
    array-length p2, p1

    const/4 v1, 0x0

    :goto_15
    if-ge v1, p2, :cond_22

    aget v2, p1, v1

    const/16 v3, 0x100

    if-ne v2, v3, :cond_1f

    const/4 p1, 0x1

    return p1

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_22
    return v0
.end method

.method private synthetic lambda$addZslConfig$1(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .registers 4

    .line 163
    :try_start_0
    invoke-interface {p1}, Landroidx/camera/core/impl/ImageReaderProxy;->acquireLatestImage()Landroidx/camera/core/ImageProxy;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 165
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->mImageRingBuffer:Landroidx/camera/core/internal/utils/ZslRingBuffer;

    invoke-virtual {v0, p1}, Landroidx/camera/core/internal/utils/ZslRingBuffer;->enqueue(Landroidx/camera/core/ImageProxy;)V
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_27

    :catch_c
    move-exception p1

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to acquire latest image IllegalStateException = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ZslControlImpl"

    .line 168
    invoke-static {v0, p1}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    :goto_27
    return-void
.end method

.method private static synthetic lambda$new$0(Landroidx/camera/core/ImageProxy;)V
    .registers 1

    .line 107
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->close()V

    return-void
.end method


# virtual methods
.method public addZslConfig(Landroidx/camera/core/impl/SessionConfig$Builder;)V
    .registers 8

    .line 132
    invoke-direct {p0}, Landroidx/camera/camera2/internal/ZslControlImpl;->cleanup()V

    .line 138
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->mIsZslDisabledByUseCaseConfig:Z

    if-eqz v0, :cond_8

    return-void

    .line 144
    :cond_8
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->mIsPrivateReprocessingSupported:Z

    if-eqz v0, :cond_bf

    iget-object v0, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->mReprocessingInputSizeMap:Ljava/util/Map;

    .line 145
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_bf

    iget-object v0, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->mReprocessingInputSizeMap:Ljava/util/Map;

    const/16 v1, 0x22

    .line 146
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bf

    iget-object v0, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->mCameraCharacteristicsCompat:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    .line 147
    invoke-direct {p0, v0, v1}, Landroidx/camera/camera2/internal/ZslControlImpl;->isJpegValidOutputForInputFormat(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;I)Z

    move-result v0

    if-nez v0, :cond_2c

    goto/16 :goto_bf

    .line 152
    :cond_2c
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->mReprocessingInputSizeMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 153
    new-instance v2, Landroidx/camera/core/MetadataImageReader;

    .line 154
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 155
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    const/16 v4, 0x9

    invoke-direct {v2, v3, v0, v1, v4}, Landroidx/camera/core/MetadataImageReader;-><init>(IIII)V

    .line 158
    invoke-virtual {v2}, Landroidx/camera/core/MetadataImageReader;->getCameraCaptureCallback()Landroidx/camera/core/impl/CameraCaptureCallback;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->mMetadataMatchingCaptureCallback:Landroidx/camera/core/impl/CameraCaptureCallback;

    .line 159
    new-instance v0, Landroidx/camera/core/SafeCloseImageReaderProxy;

    invoke-direct {v0, v2}, Landroidx/camera/core/SafeCloseImageReaderProxy;-><init>(Landroidx/camera/core/impl/ImageReaderProxy;)V

    iput-object v0, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->mReprocessingImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    .line 160
    new-instance v0, Landroidx/camera/camera2/internal/ZslControlImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/internal/ZslControlImpl$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/internal/ZslControlImpl;)V

    .line 172
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->ioExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 160
    invoke-virtual {v2, v0, v3}, Landroidx/camera/core/MetadataImageReader;->setOnImageAvailableListener(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V

    .line 175
    new-instance v0, Landroidx/camera/core/impl/ImmediateSurface;

    iget-object v2, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->mReprocessingImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    .line 176
    invoke-virtual {v2}, Landroidx/camera/core/SafeCloseImageReaderProxy;->getSurface()Landroid/view/Surface;

    move-result-object v2

    new-instance v3, Landroid/util/Size;

    iget-object v4, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->mReprocessingImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    .line 177
    invoke-virtual {v4}, Landroidx/camera/core/SafeCloseImageReaderProxy;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->mReprocessingImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    .line 178
    invoke-virtual {v5}, Landroidx/camera/core/SafeCloseImageReaderProxy;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v0, v2, v3, v1}, Landroidx/camera/core/impl/ImmediateSurface;-><init>(Landroid/view/Surface;Landroid/util/Size;I)V

    iput-object v0, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->mReprocessingImageDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 181
    iget-object v1, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->mReprocessingImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    .line 182
    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->getTerminationFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 183
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/camera/camera2/internal/ZslControlImpl$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Landroidx/camera/camera2/internal/ZslControlImpl$$ExternalSyntheticLambda2;-><init>(Landroidx/camera/core/SafeCloseImageReaderProxy;)V

    .line 184
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 182
    invoke-interface {v0, v2, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 185
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->mReprocessingImageDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->addSurface(Landroidx/camera/core/impl/DeferrableSurface;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 188
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->mMetadataMatchingCaptureCallback:Landroidx/camera/core/impl/CameraCaptureCallback;

    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->addCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 189
    new-instance v0, Landroidx/camera/camera2/internal/ZslControlImpl$1;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/internal/ZslControlImpl$1;-><init>(Landroidx/camera/camera2/internal/ZslControlImpl;)V

    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->addSessionStateCallback(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 207
    new-instance v0, Landroid/hardware/camera2/params/InputConfiguration;

    iget-object v1, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->mReprocessingImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    .line 208
    invoke-virtual {v1}, Landroidx/camera/core/SafeCloseImageReaderProxy;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->mReprocessingImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    .line 209
    invoke-virtual {v2}, Landroidx/camera/core/SafeCloseImageReaderProxy;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->mReprocessingImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    .line 210
    invoke-virtual {v3}, Landroidx/camera/core/SafeCloseImageReaderProxy;->getImageFormat()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    .line 207
    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->setInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)Landroidx/camera/core/impl/SessionConfig$Builder;

    :cond_bf
    :goto_bf
    return-void
.end method

.method public dequeueImageFromBuffer()Landroidx/camera/core/ImageProxy;
    .registers 3

    .line 218
    :try_start_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->mImageRingBuffer:Landroidx/camera/core/internal/utils/ZslRingBuffer;

    invoke-virtual {v0}, Landroidx/camera/core/internal/utils/ArrayRingBuffer;->dequeue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/ImageProxy;
    :try_end_8
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_11

    :catch_9
    const-string v0, "ZslControlImpl"

    const-string v1, "dequeueImageFromBuffer no such element"

    .line 220
    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_11
    return-object v0
.end method

.method public enqueueImageToImageWriter(Landroidx/camera/core/ImageProxy;)Z
    .registers 5

    .line 229
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImage()Landroid/media/Image;

    move-result-object p1

    .line 231
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_31

    iget-object v0, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->mReprocessingImageWriter:Landroid/media/ImageWriter;

    if-eqz v0, :cond_31

    if-eqz p1, :cond_31

    .line 233
    :try_start_11
    invoke-static {v0, p1}, Landroidx/camera/core/internal/compat/ImageWriterCompat;->queueInputImage(Landroid/media/ImageWriter;Landroid/media/Image;)V
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_14} :catch_16

    const/4 p1, 0x1

    return p1

    :catch_16
    move-exception p1

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueImageToImageWriter throws IllegalStateException = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ZslControlImpl"

    .line 235
    invoke-static {v0, p1}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    return v1
.end method

.method public isZslDisabledByFlashMode()Z
    .registers 2

    .line 127
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->mIsZslDisabledByFlashMode:Z

    return v0
.end method

.method public isZslDisabledByUserCaseConfig()Z
    .registers 2

    .line 117
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->mIsZslDisabledByUseCaseConfig:Z

    return v0
.end method

.method public setZslDisabledByFlashMode(Z)V
    .registers 2

    .line 122
    iput-boolean p1, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->mIsZslDisabledByFlashMode:Z

    return-void
.end method

.method public setZslDisabledByUserCaseConfig(Z)V
    .registers 2

    .line 112
    iput-boolean p1, p0, Landroidx/camera/camera2/internal/ZslControlImpl;->mIsZslDisabledByUseCaseConfig:Z

    return-void
.end method
