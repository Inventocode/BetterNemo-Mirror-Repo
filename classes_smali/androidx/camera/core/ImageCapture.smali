.class public final Landroidx/camera/core/ImageCapture;
.super Landroidx/camera/core/UseCase;
.source "ImageCapture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/ImageCapture$Builder;,
        Landroidx/camera/core/ImageCapture$ImageCaptureRequest;,
        Landroidx/camera/core/ImageCapture$Metadata;,
        Landroidx/camera/core/ImageCapture$OutputFileResults;,
        Landroidx/camera/core/ImageCapture$OutputFileOptions;,
        Landroidx/camera/core/ImageCapture$Defaults;,
        Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;,
        Landroidx/camera/core/ImageCapture$OnImageSavedCallback;,
        Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONFIG:Landroidx/camera/core/ImageCapture$Defaults;

.field static final EXIF_ROTATION_AVAILABILITY:Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;


# instance fields
.field private mCaptureBundle:Landroidx/camera/core/impl/CaptureBundle;

.field private mCaptureConfig:Landroidx/camera/core/impl/CaptureConfig;

.field private final mCaptureMode:I

.field private mCaptureProcessor:Landroidx/camera/core/impl/CaptureProcessor;

.field private final mClosingListener:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

.field private mCropAspectRatio:Landroid/util/Rational;

.field private mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mFlashMode:I

.field private final mFlashType:I

.field private final mImageCaptureControl:Landroidx/camera/core/imagecapture/ImageCaptureControl;

.field private mImageCaptureRequestProcessor:Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;

.field private mImagePipeline:Landroidx/camera/core/imagecapture/ImagePipeline;

.field mImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

.field private mImageReaderCloseFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field final mIoExecutor:Ljava/util/concurrent/Executor;

.field private final mLockedFlashMode:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxCaptureStages:I

.field private mMetadataMatchingCaptureCallback:Landroidx/camera/core/impl/CameraCaptureCallback;

.field mProcessingImageReader:Landroidx/camera/core/ProcessingImageReader;

.field final mSequentialIoExecutor:Ljava/util/concurrent/Executor;

.field mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

.field private mTakePictureManager:Landroidx/camera/core/imagecapture/TakePictureManager;

.field mUseProcessingPipeline:Z

.field private mUseSoftwareJpeg:Z


# direct methods
.method public static synthetic $r8$lambda$A8KZyPLxUdobZ1KngyNDq_AL8P0(Ljava/util/List;)Ljava/lang/Void;
    .registers 1

    invoke-static {p0}, Landroidx/camera/core/ImageCapture;->lambda$submitStillCaptureRequest$12(Ljava/util/List;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BqJgs3Aq5x0Z6r8cGA8dgqI2TQ0(Landroidx/camera/core/ImageCapture;Ljava/lang/String;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/core/ImageCapture;->lambda$createPipelineWithNode$11(Ljava/lang/String;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Dobvxml5F1eyPLeboyCQYkPDz_o(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/camera/core/ImageCapture;->lambda$sendImageCaptureRequest$5(Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GZzd7qRT9QyXBuYilqRjFJjyQJY(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroidx/camera/core/ImageCapture;->lambda$issueTakePicture$10(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I7UTa3RxZR3O0FUPcwy7Ann_Pbg(Landroidx/camera/core/ImageCapture;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/camera/core/ImageCapture;->lambda$takePicture$3(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LVHsZNZ-4KzFQK7u_8v1v1_dDlM(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .registers 1

    invoke-static {p0}, Landroidx/camera/core/ImageCapture;->lambda$takePictureInternal$8(Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MRsPMEgVc1Ibp-ZnRVAZzPS4PEk(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$ImageCaptureRequest;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/camera/core/ImageCapture;->lambda$takePictureInternal$9(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UesA91pjsC5O5unBSSzD_m6opNk(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 2

    invoke-direct {p0, p1}, Landroidx/camera/core/ImageCapture;->takePictureInternal(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_WfH2DY_Y7w7gVRaJtj4Dkx9afc(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/impl/ImageReaderProxy;)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/camera/core/ImageCapture;->lambda$takePictureInternal$7(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/impl/ImageReaderProxy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cHvrZxnMq3EVEchLeEqHkJa81lY(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/core/ImageCapture;->lambda$takePicture$4(Landroidx/camera/core/ImageCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lmzQY0TNrLPUP9Vd_Iw9x2otYJI(Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V
    .registers 1

    invoke-static {p0}, Landroidx/camera/core/ImageCapture;->lambda$sendImageCaptureRequest$6(Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mvTMjagwhY0A72T4B9vTItEfS_4(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .registers 1

    invoke-static {p0}, Landroidx/camera/core/ImageCapture;->lambda$new$0(Landroidx/camera/core/impl/ImageReaderProxy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uWyJYreAIltff04ZNJP8TzL7NOQ(Landroidx/camera/core/ImageCapture;Ljava/lang/String;Landroidx/camera/core/impl/ImageCaptureConfig;Landroid/util/Size;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroidx/camera/core/ImageCapture;->lambda$createPipeline$2(Ljava/lang/String;Landroidx/camera/core/impl/ImageCaptureConfig;Landroid/util/Size;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yclWqwcLM4UlF73nEIz9B3Qfr3c(Landroidx/camera/core/internal/YuvToJpegProcessor;Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/camera/core/ImageCapture;->lambda$createPipeline$1(Landroidx/camera/core/internal/YuvToJpegProcessor;Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 270
    new-instance v0, Landroidx/camera/core/ImageCapture$Defaults;

    invoke-direct {v0}, Landroidx/camera/core/ImageCapture$Defaults;-><init>()V

    sput-object v0, Landroidx/camera/core/ImageCapture;->DEFAULT_CONFIG:Landroidx/camera/core/ImageCapture$Defaults;

    .line 285
    new-instance v0, Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;

    invoke-direct {v0}, Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;-><init>()V

    sput-object v0, Landroidx/camera/core/ImageCapture;->EXIF_ROTATION_AVAILABILITY:Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;

    return-void
.end method

.method constructor <init>(Landroidx/camera/core/impl/ImageCaptureConfig;)V
    .registers 4

    .line 375
    invoke-direct {p0, p1}, Landroidx/camera/core/UseCase;-><init>(Landroidx/camera/core/impl/UseCaseConfig;)V

    const/4 p1, 0x0

    .line 282
    iput-boolean p1, p0, Landroidx/camera/core/ImageCapture;->mUseProcessingPipeline:Z

    .line 288
    sget-object v0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda5;->INSTANCE:Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda5;

    iput-object v0, p0, Landroidx/camera/core/ImageCapture;->mClosingListener:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    .line 302
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/camera/core/ImageCapture;->mLockedFlashMode:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, -0x1

    .line 314
    iput v0, p0, Landroidx/camera/core/ImageCapture;->mFlashMode:I

    .line 317
    iput-object v1, p0, Landroidx/camera/core/ImageCapture;->mCropAspectRatio:Landroid/util/Rational;

    .line 340
    iput-boolean p1, p0, Landroidx/camera/core/ImageCapture;->mUseSoftwareJpeg:Z

    .line 356
    invoke-static {v1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/ImageCapture;->mImageReaderCloseFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1855
    new-instance v0, Landroidx/camera/core/ImageCapture$7;

    invoke-direct {v0, p0}, Landroidx/camera/core/ImageCapture$7;-><init>(Landroidx/camera/core/ImageCapture;)V

    iput-object v0, p0, Landroidx/camera/core/ImageCapture;->mImageCaptureControl:Landroidx/camera/core/imagecapture/ImageCaptureControl;

    .line 377
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/ImageCaptureConfig;

    .line 379
    sget-object v1, Landroidx/camera/core/impl/ImageCaptureConfig;->OPTION_IMAGE_CAPTURE_MODE:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v0, v1}, Landroidx/camera/core/impl/ReadableConfig;->containsOption(Landroidx/camera/core/impl/Config$Option;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 380
    invoke-virtual {v0}, Landroidx/camera/core/impl/ImageCaptureConfig;->getCaptureMode()I

    move-result v1

    iput v1, p0, Landroidx/camera/core/ImageCapture;->mCaptureMode:I

    goto :goto_3e

    :cond_3b
    const/4 v1, 0x1

    .line 382
    iput v1, p0, Landroidx/camera/core/ImageCapture;->mCaptureMode:I

    .line 385
    :goto_3e
    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/ImageCaptureConfig;->getFlashType(I)I

    move-result p1

    iput p1, p0, Landroidx/camera/core/ImageCapture;->mFlashType:I

    .line 388
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->ioExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/ImageCaptureConfig;->getIoExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 387
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Landroidx/camera/core/ImageCapture;->mIoExecutor:Ljava/util/concurrent/Executor;

    .line 389
    invoke-static {p1}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->newSequentialExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/ImageCapture;->mSequentialIoExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private abortImageCaptureRequests()V
    .registers 3

    .line 1171
    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->mImageCaptureRequestProcessor:Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;

    if-eqz v0, :cond_10

    .line 1172
    new-instance v0, Landroidx/camera/core/CameraClosedException;

    const-string v1, "Camera is closed."

    invoke-direct {v0, v1}, Landroidx/camera/core/CameraClosedException;-><init>(Ljava/lang/String;)V

    .line 1173
    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->mImageCaptureRequestProcessor:Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;

    invoke-virtual {v1, v0}, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->cancelRequests(Ljava/lang/Throwable;)V

    :cond_10
    return-void
.end method

.method private clearPipelineWithNode()V
    .registers 3

    const-string v0, "ImageCapture"

    const-string v1, "clearPipelineWithNode"

    .line 2036
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2038
    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->mImagePipeline:Landroidx/camera/core/imagecapture/ImagePipeline;

    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/ImagePipeline;->close()V

    const/4 v0, 0x0

    .line 2039
    iput-object v0, p0, Landroidx/camera/core/ImageCapture;->mImagePipeline:Landroidx/camera/core/imagecapture/ImagePipeline;

    .line 2040
    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->mTakePictureManager:Landroidx/camera/core/imagecapture/TakePictureManager;

    invoke-virtual {v1}, Landroidx/camera/core/imagecapture/TakePictureManager;->abortRequests()V

    .line 2041
    iput-object v0, p0, Landroidx/camera/core/ImageCapture;->mTakePictureManager:Landroidx/camera/core/imagecapture/TakePictureManager;

    return-void
.end method

.method static computeDispatchCropRect(Landroid/graphics/Rect;Landroid/util/Rational;ILandroid/util/Size;I)Landroid/graphics/Rect;
    .registers 5

    if-eqz p0, :cond_7

    .line 1138
    invoke-static {p0, p2, p3, p4}, Landroidx/camera/core/internal/utils/ImageUtil;->computeCropRectFromDispatchInfo(Landroid/graphics/Rect;ILandroid/util/Size;I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_7
    if-eqz p1, :cond_2b

    .line 1143
    rem-int/lit16 p4, p4, 0xb4

    if-eqz p4, :cond_1b

    .line 1144
    new-instance p0, Landroid/util/Rational;

    .line 1145
    invoke-virtual {p1}, Landroid/util/Rational;->getDenominator()I

    move-result p2

    .line 1146
    invoke-virtual {p1}, Landroid/util/Rational;->getNumerator()I

    move-result p1

    invoke-direct {p0, p2, p1}, Landroid/util/Rational;-><init>(II)V

    move-object p1, p0

    .line 1148
    :cond_1b
    invoke-static {p3, p1}, Landroidx/camera/core/internal/utils/ImageUtil;->isAspectRatioValid(Landroid/util/Size;Landroid/util/Rational;)Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 1150
    invoke-static {p3, p1}, Landroidx/camera/core/internal/utils/ImageUtil;->computeCropRectFromAspectRatio(Landroid/util/Size;Landroid/util/Rational;)Landroid/graphics/Rect;

    move-result-object p0

    .line 1149
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Rect;

    return-object p0

    .line 1154
    :cond_2b
    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p1

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p2

    const/4 p3, 0x0

    invoke-direct {p0, p3, p3, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method private createPipelineWithNode(Ljava/lang/String;Landroidx/camera/core/impl/ImageCaptureConfig;Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;
    .registers 9

    .line 1936
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p3, v1, v3

    const-string v4, "createPipelineWithNode(cameraId: %s, resolution: %s)"

    .line 1937
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "ImageCapture"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->mImagePipeline:Landroidx/camera/core/imagecapture/ImagePipeline;

    if-nez v1, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 1940
    new-instance v1, Landroidx/camera/core/imagecapture/ImagePipeline;

    invoke-direct {v1, p2, p3}, Landroidx/camera/core/imagecapture/ImagePipeline;-><init>(Landroidx/camera/core/impl/ImageCaptureConfig;Landroid/util/Size;)V

    iput-object v1, p0, Landroidx/camera/core/ImageCapture;->mImagePipeline:Landroidx/camera/core/imagecapture/ImagePipeline;

    .line 1941
    iget-object p2, p0, Landroidx/camera/core/ImageCapture;->mTakePictureManager:Landroidx/camera/core/imagecapture/TakePictureManager;

    if-nez p2, :cond_2d

    const/4 v2, 0x1

    :cond_2d
    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 1942
    new-instance p2, Landroidx/camera/core/imagecapture/TakePictureManager;

    iget-object p3, p0, Landroidx/camera/core/ImageCapture;->mImageCaptureControl:Landroidx/camera/core/imagecapture/ImageCaptureControl;

    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->mImagePipeline:Landroidx/camera/core/imagecapture/ImagePipeline;

    invoke-direct {p2, p3, v1}, Landroidx/camera/core/imagecapture/TakePictureManager;-><init>(Landroidx/camera/core/imagecapture/ImageCaptureControl;Landroidx/camera/core/imagecapture/ImagePipeline;)V

    iput-object p2, p0, Landroidx/camera/core/ImageCapture;->mTakePictureManager:Landroidx/camera/core/imagecapture/TakePictureManager;

    .line 1944
    iget-object p2, p0, Landroidx/camera/core/ImageCapture;->mImagePipeline:Landroidx/camera/core/imagecapture/ImagePipeline;

    invoke-virtual {p2}, Landroidx/camera/core/imagecapture/ImagePipeline;->createSessionConfigBuilder()Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object p2

    .line 1945
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p3, v1, :cond_54

    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->getCaptureMode()I

    move-result p3

    if-ne p3, v0, :cond_54

    .line 1946
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCameraControl()Landroidx/camera/core/impl/CameraControlInternal;

    move-result-object p3

    invoke-interface {p3, p2}, Landroidx/camera/core/impl/CameraControlInternal;->addZslConfig(Landroidx/camera/core/impl/SessionConfig$Builder;)V

    .line 1948
    :cond_54
    new-instance p3, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0, p1}, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda6;-><init>(Landroidx/camera/core/ImageCapture;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroidx/camera/core/impl/SessionConfig$Builder;->addErrorListener(Landroidx/camera/core/impl/SessionConfig$ErrorListener;)Landroidx/camera/core/impl/SessionConfig$Builder;

    return-object p2
.end method

.method static enforceSoftwareJpegConstraints(Landroidx/camera/core/impl/MutableConfig;)Z
    .registers 8

    .line 1614
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Landroidx/camera/core/impl/ImageCaptureConfig;->OPTION_USE_SOFTWARE_JPEG_ENCODER:Landroidx/camera/core/impl/Config$Option;

    .line 1615
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v1, v2}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1614
    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_53

    const/4 v0, 0x1

    .line 1617
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    const-string v6, "ImageCapture"

    if-ge v4, v5, :cond_2f

    .line 1618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Software JPEG only supported on API 26+, but current API level is "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1623
    :cond_2f
    sget-object v4, Landroidx/camera/core/impl/ImageCaptureConfig;->OPTION_BUFFER_FORMAT:Landroidx/camera/core/impl/Config$Option;

    const/4 v5, 0x0

    invoke-interface {p0, v4, v5}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_48

    .line 1624
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x100

    if-eq v4, v5, :cond_48

    const-string v0, "Software JPEG cannot be used with non-JPEG output buffer format."

    .line 1625
    invoke-static {v6, v0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    :cond_48
    move v3, v0

    :goto_49
    if-nez v3, :cond_53

    const-string v0, "Unable to support software JPEG. Disabling."

    .line 1630
    invoke-static {v6, v0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    invoke-interface {p0, v1, v2}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    :cond_53
    return v3
.end method

.method private getCaptureBundle(Landroidx/camera/core/impl/CaptureBundle;)Landroidx/camera/core/impl/CaptureBundle;
    .registers 4

    .line 1834
    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->mCaptureBundle:Landroidx/camera/core/impl/CaptureBundle;

    invoke-interface {v0}, Landroidx/camera/core/impl/CaptureBundle;->getCaptureStages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1835
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_13

    .line 1839
    :cond_f
    invoke-static {v0}, Landroidx/camera/core/CaptureBundles;->createCaptureBundle(Ljava/util/List;)Landroidx/camera/core/impl/CaptureBundle;

    move-result-object p1

    :cond_13
    :goto_13
    return-object p1
.end method

.method private getCaptureStageSize(Landroidx/camera/core/impl/ImageCaptureConfig;)I
    .registers 3

    const/4 v0, 0x0

    .line 1916
    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/ImageCaptureConfig;->getCaptureBundle(Landroidx/camera/core/impl/CaptureBundle;)Landroidx/camera/core/impl/CaptureBundle;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_9

    return v0

    .line 1920
    :cond_9
    invoke-interface {p1}, Landroidx/camera/core/impl/CaptureBundle;->getCaptureStages()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_10

    return v0

    .line 1924
    :cond_10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method static getError(Ljava/lang/Throwable;)I
    .registers 2

    .line 1597
    instance-of v0, p0, Landroidx/camera/core/CameraClosedException;

    if-eqz v0, :cond_6

    const/4 p0, 0x3

    return p0

    .line 1599
    :cond_6
    instance-of v0, p0, Landroidx/camera/core/ImageCaptureException;

    if-eqz v0, :cond_11

    .line 1600
    check-cast p0, Landroidx/camera/core/ImageCaptureException;

    invoke-virtual {p0}, Landroidx/camera/core/ImageCaptureException;->getImageCaptureError()I

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method private getJpegQualityForImageCaptureRequest(Landroidx/camera/core/impl/CameraInternal;Z)I
    .registers 5

    if-eqz p2, :cond_3e

    .line 1216
    invoke-virtual {p0, p1}, Landroidx/camera/core/UseCase;->getRelativeRotation(Landroidx/camera/core/impl/CameraInternal;)I

    move-result p1

    .line 1217
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getAttachedSurfaceResolution()Landroid/util/Size;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Landroid/util/Size;

    .line 1224
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getViewPortCropRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->mCropAspectRatio:Landroid/util/Rational;

    invoke-static {v0, v1, p1, p2, p1}, Landroidx/camera/core/ImageCapture;->computeDispatchCropRect(Landroid/graphics/Rect;Landroid/util/Rational;ILandroid/util/Size;I)Landroid/graphics/Rect;

    move-result-object p1

    .line 1226
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 1227
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    .line 1226
    invoke-static {v0, p2, v1, p1}, Landroidx/camera/core/internal/utils/ImageUtil;->shouldCropImage(IIII)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 1238
    iget p1, p0, Landroidx/camera/core/ImageCapture;->mCaptureMode:I

    if-nez p1, :cond_36

    const/16 p1, 0x64

    goto :goto_42

    :cond_36
    const/16 p1, 0x5f

    goto :goto_42

    .line 1240
    :cond_39
    invoke-direct {p0}, Landroidx/camera/core/ImageCapture;->getJpegQualityInternal()I

    move-result p1

    goto :goto_42

    .line 1247
    :cond_3e
    invoke-direct {p0}, Landroidx/camera/core/ImageCapture;->getJpegQualityInternal()I

    move-result p1

    :goto_42
    return p1
.end method

.method private getJpegQualityInternal()I
    .registers 4

    .line 1295
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/ImageCaptureConfig;

    .line 1297
    sget-object v1, Landroidx/camera/core/impl/ImageCaptureConfig;->OPTION_JPEG_COMPRESSION_QUALITY:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v0, v1}, Landroidx/camera/core/impl/ReadableConfig;->containsOption(Landroidx/camera/core/impl/Config$Option;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1298
    invoke-virtual {v0}, Landroidx/camera/core/impl/ImageCaptureConfig;->getJpegQuality()I

    move-result v0

    return v0

    .line 1301
    :cond_13
    iget v0, p0, Landroidx/camera/core/ImageCapture;->mCaptureMode:I

    if-eqz v0, :cond_3f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3c

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1e

    goto :goto_3c

    .line 1308
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CaptureMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/camera/core/ImageCapture;->mCaptureMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    :goto_3c
    const/16 v0, 0x5f

    return v0

    :cond_3f
    const/16 v0, 0x64

    return v0
.end method

.method private getTakePictureCropRect()Landroid/graphics/Rect;
    .registers 6

    .line 2012
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getViewPortCropRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2013
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getAttachedSurfaceResolution()Landroid/util/Size;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Landroid/util/Size;

    if-eqz v0, :cond_10

    return-object v0

    .line 2016
    :cond_10
    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->mCropAspectRatio:Landroid/util/Rational;

    invoke-static {v0}, Landroidx/camera/core/internal/utils/ImageUtil;->isAspectRatioValid(Landroid/util/Rational;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 2017
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/camera/core/impl/CameraInternal;

    invoke-virtual {p0, v0}, Landroidx/camera/core/UseCase;->getRelativeRotation(Landroidx/camera/core/impl/CameraInternal;)I

    move-result v0

    .line 2018
    new-instance v2, Landroid/util/Rational;

    iget-object v3, p0, Landroidx/camera/core/ImageCapture;->mCropAspectRatio:Landroid/util/Rational;

    .line 2019
    invoke-virtual {v3}, Landroid/util/Rational;->getDenominator()I

    move-result v3

    iget-object v4, p0, Landroidx/camera/core/ImageCapture;->mCropAspectRatio:Landroid/util/Rational;

    .line 2020
    invoke-virtual {v4}, Landroid/util/Rational;->getNumerator()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/Rational;-><init>(II)V

    .line 2021
    invoke-static {v0}, Landroidx/camera/core/impl/utils/TransformUtils;->is90or270(I)Z

    move-result v0

    if-eqz v0, :cond_3d

    goto :goto_3f

    .line 2022
    :cond_3d
    iget-object v2, p0, Landroidx/camera/core/ImageCapture;->mCropAspectRatio:Landroid/util/Rational;

    .line 2023
    :goto_3f
    invoke-static {v1, v2}, Landroidx/camera/core/internal/utils/ImageUtil;->computeCropRectFromAspectRatio(Landroid/util/Size;Landroid/util/Rational;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    return-object v0

    .line 2025
    :cond_49
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private static isImageFormatSupported(Ljava/util/List;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/util/Size;",
            ">;>;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 741
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 742
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_24
    return v0
.end method

.method private isNodeEnabled()Z
    .registers 6

    .line 1889
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 1890
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/ImageCaptureConfig;

    .line 1891
    invoke-virtual {v0}, Landroidx/camera/core/impl/ImageCaptureConfig;->getImageReaderProxyProvider()Landroidx/camera/core/ImageReaderProxyProvider;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    return v2

    .line 1895
    :cond_11
    invoke-direct {p0}, Landroidx/camera/core/ImageCapture;->isSessionProcessorEnabledInCurrentCamera()Z

    move-result v1

    if-eqz v1, :cond_18

    return v2

    .line 1899
    :cond_18
    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->mCaptureProcessor:Landroidx/camera/core/impl/CaptureProcessor;

    if-eqz v1, :cond_1d

    return v2

    .line 1903
    :cond_1d
    invoke-direct {p0, v0}, Landroidx/camera/core/ImageCapture;->getCaptureStageSize(Landroidx/camera/core/impl/ImageCaptureConfig;)I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_25

    return v2

    .line 1907
    :cond_25
    sget-object v1, Landroidx/camera/core/impl/ImageInputConfig;->OPTION_INPUT_FORMAT:Landroidx/camera/core/impl/Config$Option;

    const/16 v3, 0x100

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Landroidx/camera/core/impl/ReadableConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_3f

    return v2

    .line 1912
    :cond_3f
    iget-boolean v0, p0, Landroidx/camera/core/ImageCapture;->mUseProcessingPipeline:Z

    return v0
.end method

.method private isSessionProcessorEnabledInCurrentCamera()Z
    .registers 4

    .line 590
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 594
    :cond_8
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInternal;->getExtendedConfig()Landroidx/camera/core/impl/CameraConfig;

    move-result-object v0

    const/4 v2, 0x0

    .line 595
    invoke-interface {v0, v2}, Landroidx/camera/core/impl/CameraConfig;->getSessionProcessor(Landroidx/camera/core/impl/SessionProcessor;)Landroidx/camera/core/impl/SessionProcessor;

    move-result-object v0

    if-eqz v0, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1
.end method

.method private static synthetic lambda$createPipeline$1(Landroidx/camera/core/internal/YuvToJpegProcessor;Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)V
    .registers 4

    .line 521
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_10

    .line 526
    iget v0, p1, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mJpegQuality:I

    invoke-virtual {p0, v0}, Landroidx/camera/core/internal/YuvToJpegProcessor;->setJpegQuality(I)V

    .line 532
    iget p1, p1, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mRotationDegrees:I

    invoke-virtual {p0, p1}, Landroidx/camera/core/internal/YuvToJpegProcessor;->setRotationDegrees(I)V

    :cond_10
    return-void
.end method

.method private synthetic lambda$createPipeline$2(Ljava/lang/String;Landroidx/camera/core/impl/ImageCaptureConfig;Landroid/util/Size;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V
    .registers 6

    .line 562
    iget-object p4, p0, Landroidx/camera/core/ImageCapture;->mImageCaptureRequestProcessor:Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;

    if-eqz p4, :cond_9

    .line 563
    invoke-virtual {p4}, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->pullOutUnfinishedRequests()Ljava/util/List;

    move-result-object p4

    goto :goto_d

    .line 564
    :cond_9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p4

    .line 566
    :goto_d
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->clearPipeline()V

    .line 570
    invoke-virtual {p0, p1}, Landroidx/camera/core/UseCase;->isCurrentCamera(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_42

    .line 572
    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/core/ImageCapture;->createPipeline(Ljava/lang/String;Landroidx/camera/core/impl/ImageCaptureConfig;Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/ImageCapture;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 574
    iget-object p1, p0, Landroidx/camera/core/ImageCapture;->mImageCaptureRequestProcessor:Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;

    if-eqz p1, :cond_36

    .line 576
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_36

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;

    .line 577
    iget-object p3, p0, Landroidx/camera/core/ImageCapture;->mImageCaptureRequestProcessor:Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;

    invoke-virtual {p3, p2}, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->sendRequest(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)V

    goto :goto_24

    .line 581
    :cond_36
    iget-object p1, p0, Landroidx/camera/core/ImageCapture;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/camera/core/UseCase;->updateSessionConfig(Landroidx/camera/core/impl/SessionConfig;)V

    .line 582
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->notifyReset()V

    :cond_42
    return-void
.end method

.method private synthetic lambda$createPipelineWithNode$11(Ljava/lang/String;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V
    .registers 4

    .line 1951
    invoke-virtual {p0, p1}, Landroidx/camera/core/UseCase;->isCurrentCamera(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 1952
    iget-object p1, p0, Landroidx/camera/core/ImageCapture;->mTakePictureManager:Landroidx/camera/core/imagecapture/TakePictureManager;

    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/TakePictureManager;->pause()V

    .line 1954
    iget-object p1, p0, Landroidx/camera/core/ImageCapture;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/camera/core/UseCase;->updateSessionConfig(Landroidx/camera/core/impl/SessionConfig;)V

    .line 1955
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->notifyReset()V

    .line 1956
    iget-object p1, p0, Landroidx/camera/core/ImageCapture;->mTakePictureManager:Landroidx/camera/core/imagecapture/TakePictureManager;

    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/TakePictureManager;->resume()V

    goto :goto_20

    .line 1958
    :cond_1d
    invoke-direct {p0}, Landroidx/camera/core/ImageCapture;->clearPipelineWithNode()V

    :goto_20
    return-void
.end method

.method private static synthetic lambda$issueTakePicture$10(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 1769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Processing image failed! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageCapture"

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 1770
    invoke-virtual {p0, v0, p1, p2}, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->notifyCallbackError(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static synthetic lambda$new$0(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .registers 4

    const-string v0, "ImageCapture"

    .line 289
    :try_start_2
    invoke-interface {p0}, Landroidx/camera/core/impl/ImageReaderProxy;->acquireLatestImage()Landroidx/camera/core/ImageProxy;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_6} :catch_2c

    .line 290
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Discarding ImageProxy which was inadvertently acquired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_20

    if-eqz p0, :cond_32

    .line 291
    :try_start_1c
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->close()V
    :try_end_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_1c .. :try_end_1f} :catch_2c

    goto :goto_32

    :catchall_20
    move-exception v1

    if-eqz p0, :cond_2b

    .line 289
    :try_start_23
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_2b

    :catchall_27
    move-exception p0

    :try_start_28
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2b
    :goto_2b
    throw v1
    :try_end_2c
    .catch Ljava/lang/IllegalStateException; {:try_start_28 .. :try_end_2c} :catch_2c

    :catch_2c
    move-exception p0

    const-string v1, "Failed to acquire latest image."

    .line 292
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_32
    :goto_32
    return-void
.end method

.method private synthetic lambda$sendImageCaptureRequest$5(Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V
    .registers 6

    .line 1189
    new-instance v0, Landroidx/camera/core/ImageCaptureException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not bound to a valid Camera ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;->onError(Landroidx/camera/core/ImageCaptureException;)V

    return-void
.end method

.method private static synthetic lambda$sendImageCaptureRequest$6(Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V
    .registers 5

    .line 1196
    new-instance v0, Landroidx/camera/core/ImageCaptureException;

    const/4 v1, 0x0

    const-string v2, "Request is canceled"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;->onError(Landroidx/camera/core/ImageCaptureException;)V

    return-void
.end method

.method private static synthetic lambda$submitStillCaptureRequest$12(Ljava/util/List;)Ljava/lang/Void;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$takePicture$3(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V
    .registers 3

    .line 1018
    invoke-virtual {p0, p1, p2}, Landroidx/camera/core/ImageCapture;->takePicture(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V

    return-void
.end method

.method private synthetic lambda$takePicture$4(Landroidx/camera/core/ImageCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V
    .registers 4

    .line 1051
    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/core/ImageCapture;->takePicture(Landroidx/camera/core/ImageCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V

    return-void
.end method

.method private static synthetic lambda$takePictureInternal$7(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/impl/ImageReaderProxy;)V
    .registers 3

    .line 1332
    :try_start_0
    invoke-interface {p1}, Landroidx/camera/core/impl/ImageReaderProxy;->acquireLatestImage()Landroidx/camera/core/ImageProxy;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 1334
    invoke-virtual {p0, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1337
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    goto :goto_1f

    .line 1340
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to acquire image"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z
    :try_end_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception p1

    .line 1344
    invoke-virtual {p0, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    :cond_1f
    :goto_1f
    return-void
.end method

.method private static synthetic lambda$takePictureInternal$8(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .registers 2

    const/4 v0, 0x1

    .line 1368
    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method

.method private synthetic lambda$takePictureInternal$9(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1329
    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->mImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    new-instance v1, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda4;

    invoke-direct {v1, p2}, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda4;-><init>(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    .line 1347
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    .line 1329
    invoke-virtual {v0, v1, v2}, Landroidx/camera/core/SafeCloseImageReaderProxy;->setOnImageAvailableListener(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V

    .line 1349
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->lockFlashMode()V

    .line 1350
    invoke-virtual {p0, p1}, Landroidx/camera/core/ImageCapture;->issueTakePicture(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 1352
    new-instance v0, Landroidx/camera/core/ImageCapture$5;

    invoke-direct {v0, p0, p2}, Landroidx/camera/core/ImageCapture$5;-><init>(Landroidx/camera/core/ImageCapture;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-static {p1, v0, v1}, Landroidx/camera/core/impl/utils/futures/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 1368
    new-instance v0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda13;

    invoke-direct {v0, p1}, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda13;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 1369
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 1368
    invoke-virtual {p2, v0, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->addCancellationListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    const-string p1, "takePictureInternal"

    return-object p1
.end method

.method private sendImageCaptureRequest(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;Z)V
    .registers 15

    .line 1185
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v0

    if-nez v0, :cond_f

    .line 1188
    new-instance p3, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda10;

    invoke-direct {p3, p0, p2}, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda10;-><init>(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V

    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 1194
    :cond_f
    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->mImageCaptureRequestProcessor:Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;

    if-nez v1, :cond_1c

    .line 1195
    new-instance p3, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda9;

    invoke-direct {p3, p2}, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda9;-><init>(Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V

    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 1201
    :cond_1c
    new-instance v10, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;

    .line 1202
    invoke-virtual {p0, v0}, Landroidx/camera/core/UseCase;->getRelativeRotation(Landroidx/camera/core/impl/CameraInternal;)I

    move-result v3

    .line 1203
    invoke-direct {p0, v0, p3}, Landroidx/camera/core/ImageCapture;->getJpegQualityForImageCaptureRequest(Landroidx/camera/core/impl/CameraInternal;Z)I

    move-result v4

    iget-object v5, p0, Landroidx/camera/core/ImageCapture;->mCropAspectRatio:Landroid/util/Rational;

    .line 1205
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getViewPortCropRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 1206
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getSensorToBufferTransformMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    move-object v2, v10

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v2 .. v9}, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;-><init>(IILandroid/util/Rational;Landroid/graphics/Rect;Landroid/graphics/Matrix;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V

    .line 1201
    invoke-virtual {v1, v10}, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->sendRequest(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)V

    return-void
.end method

.method private sendInvalidCameraError(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V
    .registers 7

    .line 1996
    new-instance p1, Landroidx/camera/core/ImageCaptureException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not bound to a valid Camera ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p1, v1, v0, v2}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_23

    .line 1999
    invoke-virtual {p2, p1}, Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;->onError(Landroidx/camera/core/ImageCaptureException;)V

    goto :goto_28

    :cond_23
    if-eqz p3, :cond_29

    .line 2001
    invoke-interface {p3, p1}, Landroidx/camera/core/ImageCapture$OnImageSavedCallback;->onError(Landroidx/camera/core/ImageCaptureException;)V

    :goto_28
    return-void

    .line 2003
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must have either in-memory or on-disk callback."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private takePictureInternal(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/ImageCapture$ImageCaptureRequest;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/core/ImageProxy;",
            ">;"
        }
    .end annotation

    .line 1327
    new-instance v0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda8;-><init>(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method private takePictureWithNode(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;Landroidx/camera/core/ImageCapture$OutputFileOptions;)V
    .registers 18

    move-object v0, p0

    .line 1973
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    const-string v1, "ImageCapture"

    const-string v2, "takePictureWithNode"

    .line 1974
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v1

    if-nez v1, :cond_15

    .line 1977
    invoke-direct/range {p0 .. p3}, Landroidx/camera/core/ImageCapture;->sendInvalidCameraError(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V

    return-void

    .line 1980
    :cond_15
    iget-object v2, v0, Landroidx/camera/core/ImageCapture;->mTakePictureManager:Landroidx/camera/core/imagecapture/TakePictureManager;

    .line 1985
    invoke-direct {p0}, Landroidx/camera/core/ImageCapture;->getTakePictureCropRect()Landroid/graphics/Rect;

    move-result-object v7

    .line 1986
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getSensorToBufferTransformMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    .line 1987
    invoke-virtual {p0, v1}, Landroidx/camera/core/UseCase;->getRelativeRotation(Landroidx/camera/core/impl/CameraInternal;)I

    move-result v9

    .line 1988
    invoke-direct {p0}, Landroidx/camera/core/ImageCapture;->getJpegQualityInternal()I

    move-result v10

    .line 1989
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->getCaptureMode()I

    move-result v11

    iget-object v1, v0, Landroidx/camera/core/ImageCapture;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 1990
    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->getSingleCameraCaptureCallbacks()Ljava/util/List;

    move-result-object v12

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 1980
    invoke-static/range {v3 .. v12}, Landroidx/camera/core/imagecapture/TakePictureRequest;->of(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;Landroidx/camera/core/ImageCapture$OutputFileOptions;Landroid/graphics/Rect;Landroid/graphics/Matrix;IIILjava/util/List;)Landroidx/camera/core/imagecapture/TakePictureRequest;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/camera/core/imagecapture/TakePictureManager;->offerRequest(Landroidx/camera/core/imagecapture/TakePictureRequest;)V

    return-void
.end method

.method private trySetFlashModeToCameraControl()V
    .registers 4

    .line 1277
    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->mLockedFlashMode:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 1278
    :try_start_3
    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->mLockedFlashMode:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 1280
    monitor-exit v0

    return-void

    .line 1282
    :cond_d
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCameraControl()Landroidx/camera/core/impl/CameraControlInternal;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->getFlashMode()I

    move-result v2

    invoke-interface {v1, v2}, Landroidx/camera/core/impl/CameraControlInternal;->setFlashMode(I)V

    .line 1283
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method


# virtual methods
.method clearPipeline()V
    .registers 5

    .line 604
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 605
    invoke-direct {p0}, Landroidx/camera/core/ImageCapture;->isNodeEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 606
    invoke-direct {p0}, Landroidx/camera/core/ImageCapture;->clearPipelineWithNode()V

    return-void

    .line 609
    :cond_d
    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->mImageCaptureRequestProcessor:Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 610
    new-instance v2, Ljava/util/concurrent/CancellationException;

    const-string v3, "Request is canceled."

    invoke-direct {v2, v3}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->cancelRequests(Ljava/lang/Throwable;)V

    .line 612
    iput-object v1, p0, Landroidx/camera/core/ImageCapture;->mImageCaptureRequestProcessor:Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;

    .line 614
    :cond_1e
    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 615
    iput-object v1, p0, Landroidx/camera/core/ImageCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 616
    iput-object v1, p0, Landroidx/camera/core/ImageCapture;->mImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    .line 617
    iput-object v1, p0, Landroidx/camera/core/ImageCapture;->mProcessingImageReader:Landroidx/camera/core/ProcessingImageReader;

    .line 618
    invoke-static {v1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/core/ImageCapture;->mImageReaderCloseFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_31

    .line 621
    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    :cond_31
    return-void
.end method

.method createPipeline(Ljava/lang/String;Landroidx/camera/core/impl/ImageCaptureConfig;Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;
    .registers 18

    move-object v0, p0

    .line 397
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 398
    invoke-direct {p0}, Landroidx/camera/core/ImageCapture;->isNodeEnabled()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 399
    invoke-direct/range {p0 .. p3}, Landroidx/camera/core/ImageCapture;->createPipelineWithNode(Ljava/lang/String;Landroidx/camera/core/impl/ImageCaptureConfig;Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object v1

    return-object v1

    .line 401
    :cond_f
    invoke-static/range {p2 .. p2}, Landroidx/camera/core/impl/SessionConfig$Builder;->createFrom(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object v1

    .line 404
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x2

    if-lt v2, v3, :cond_27

    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->getCaptureMode()I

    move-result v3

    if-ne v3, v4, :cond_27

    .line 405
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCameraControl()Landroidx/camera/core/impl/CameraControlInternal;

    move-result-object v3

    invoke-interface {v3, v1}, Landroidx/camera/core/impl/CameraControlInternal;->addZslConfig(Landroidx/camera/core/impl/SessionConfig$Builder;)V

    .line 409
    :cond_27
    invoke-virtual/range {p2 .. p2}, Landroidx/camera/core/impl/ImageCaptureConfig;->getImageReaderProxyProvider()Landroidx/camera/core/ImageReaderProxyProvider;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_55

    .line 410
    new-instance v2, Landroidx/camera/core/SafeCloseImageReaderProxy;

    .line 412
    invoke-virtual/range {p2 .. p2}, Landroidx/camera/core/impl/ImageCaptureConfig;->getImageReaderProxyProvider()Landroidx/camera/core/ImageReaderProxyProvider;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getWidth()I

    move-result v7

    .line 413
    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getImageFormat()I

    move-result v9

    const/4 v10, 0x2

    const-wide/16 v11, 0x0

    .line 412
    invoke-interface/range {v6 .. v12}, Landroidx/camera/core/ImageReaderProxyProvider;->newInstance(IIIIJ)Landroidx/camera/core/impl/ImageReaderProxy;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/camera/core/SafeCloseImageReaderProxy;-><init>(Landroidx/camera/core/impl/ImageReaderProxy;)V

    iput-object v2, v0, Landroidx/camera/core/ImageCapture;->mImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    .line 414
    new-instance v2, Landroidx/camera/core/ImageCapture$1;

    invoke-direct {v2, p0}, Landroidx/camera/core/ImageCapture$1;-><init>(Landroidx/camera/core/ImageCapture;)V

    iput-object v2, v0, Landroidx/camera/core/ImageCapture;->mMetadataMatchingCaptureCallback:Landroidx/camera/core/impl/CameraCaptureCallback;

    goto/16 :goto_134

    .line 416
    :cond_55
    invoke-direct {p0}, Landroidx/camera/core/ImageCapture;->isSessionProcessorEnabledInCurrentCamera()Z

    move-result v3

    const/16 v6, 0x1a

    const/16 v7, 0x100

    if-eqz v3, :cond_10d

    .line 418
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getImageFormat()I

    move-result v3

    if-ne v3, v7, :cond_7c

    .line 419
    new-instance v2, Landroidx/camera/core/AndroidImageReaderProxy;

    .line 420
    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 421
    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getImageFormat()I

    move-result v7

    .line 420
    invoke-static {v3, v6, v7, v4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/camera/core/AndroidImageReaderProxy;-><init>(Landroid/media/ImageReader;)V

    move-object v3, v5

    goto :goto_da

    .line 422
    :cond_7c
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getImageFormat()I

    move-result v3

    const/16 v8, 0x23

    if-ne v3, v8, :cond_f2

    if-lt v2, v6, :cond_ea

    .line 426
    new-instance v2, Landroidx/camera/core/internal/YuvToJpegProcessor;

    .line 427
    invoke-direct {p0}, Landroidx/camera/core/ImageCapture;->getJpegQualityInternal()I

    move-result v3

    invoke-direct {v2, v3, v4}, Landroidx/camera/core/internal/YuvToJpegProcessor;-><init>(II)V

    .line 429
    new-instance v3, Landroidx/camera/core/ModifiableImageReaderProxy;

    .line 431
    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getWidth()I

    move-result v6

    .line 432
    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getHeight()I

    move-result v9

    .line 431
    invoke-static {v6, v9, v8, v4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v6

    invoke-direct {v3, v6}, Landroidx/camera/core/ModifiableImageReaderProxy;-><init>(Landroid/media/ImageReader;)V

    .line 436
    invoke-static {}, Landroidx/camera/core/CaptureBundles;->singleDefaultCaptureBundle()Landroidx/camera/core/impl/CaptureBundle;

    move-result-object v6

    .line 437
    new-instance v8, Landroidx/camera/core/ProcessingImageReader$Builder;

    invoke-direct {v8, v3, v6, v2}, Landroidx/camera/core/ProcessingImageReader$Builder;-><init>(Landroidx/camera/core/impl/ImageReaderProxy;Landroidx/camera/core/impl/CaptureBundle;Landroidx/camera/core/impl/CaptureProcessor;)V

    iget-object v9, v0, Landroidx/camera/core/ImageCapture;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 441
    invoke-virtual {v8, v9}, Landroidx/camera/core/ProcessingImageReader$Builder;->setPostProcessExecutor(Ljava/util/concurrent/Executor;)Landroidx/camera/core/ProcessingImageReader$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroidx/camera/core/ProcessingImageReader$Builder;->setOutputFormat(I)Landroidx/camera/core/ProcessingImageReader$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/camera/core/ProcessingImageReader$Builder;->build()Landroidx/camera/core/ProcessingImageReader;

    move-result-object v7

    .line 445
    invoke-static {}, Landroidx/camera/core/impl/MutableTagBundle;->create()Landroidx/camera/core/impl/MutableTagBundle;

    move-result-object v8

    .line 448
    invoke-virtual {v7}, Landroidx/camera/core/ProcessingImageReader;->getTagBundleKey()Ljava/lang/String;

    move-result-object v9

    .line 449
    invoke-interface {v6}, Landroidx/camera/core/impl/CaptureBundle;->getCaptureStages()Ljava/util/List;

    move-result-object v6

    const/4 v10, 0x0

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/core/impl/CaptureStage;

    invoke-interface {v6}, Landroidx/camera/core/impl/CaptureStage;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 448
    invoke-virtual {v8, v9, v6}, Landroidx/camera/core/impl/MutableTagBundle;->putTag(Ljava/lang/String;Ljava/lang/Object;)V

    .line 450
    invoke-virtual {v3, v8}, Landroidx/camera/core/ModifiableImageReaderProxy;->setImageTagBundle(Landroidx/camera/core/impl/TagBundle;)V

    move-object v3, v2

    move-object v2, v7

    .line 459
    :goto_da
    new-instance v6, Landroidx/camera/core/ImageCapture$2;

    invoke-direct {v6, p0}, Landroidx/camera/core/ImageCapture$2;-><init>(Landroidx/camera/core/ImageCapture;)V

    iput-object v6, v0, Landroidx/camera/core/ImageCapture;->mMetadataMatchingCaptureCallback:Landroidx/camera/core/impl/CameraCaptureCallback;

    .line 461
    new-instance v6, Landroidx/camera/core/SafeCloseImageReaderProxy;

    invoke-direct {v6, v2}, Landroidx/camera/core/SafeCloseImageReaderProxy;-><init>(Landroidx/camera/core/impl/ImageReaderProxy;)V

    iput-object v6, v0, Landroidx/camera/core/ImageCapture;->mImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    goto/16 :goto_1ba

    .line 454
    :cond_ea
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Does not support API level < 26"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 457
    :cond_f2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported image format:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getImageFormat()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 462
    :cond_10d
    iget-object v3, v0, Landroidx/camera/core/ImageCapture;->mCaptureProcessor:Landroidx/camera/core/impl/CaptureProcessor;

    if-nez v3, :cond_137

    iget-boolean v8, v0, Landroidx/camera/core/ImageCapture;->mUseSoftwareJpeg:Z

    if-eqz v8, :cond_116

    goto :goto_137

    .line 504
    :cond_116
    new-instance v2, Landroidx/camera/core/MetadataImageReader;

    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 505
    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getImageFormat()I

    move-result v7

    invoke-direct {v2, v3, v6, v7, v4}, Landroidx/camera/core/MetadataImageReader;-><init>(IIII)V

    .line 506
    invoke-virtual {v2}, Landroidx/camera/core/MetadataImageReader;->getCameraCaptureCallback()Landroidx/camera/core/impl/CameraCaptureCallback;

    move-result-object v3

    iput-object v3, v0, Landroidx/camera/core/ImageCapture;->mMetadataMatchingCaptureCallback:Landroidx/camera/core/impl/CameraCaptureCallback;

    .line 507
    new-instance v3, Landroidx/camera/core/SafeCloseImageReaderProxy;

    invoke-direct {v3, v2}, Landroidx/camera/core/SafeCloseImageReaderProxy;-><init>(Landroidx/camera/core/impl/ImageReaderProxy;)V

    iput-object v3, v0, Landroidx/camera/core/ImageCapture;->mImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    :goto_134
    move-object v3, v5

    goto/16 :goto_1ba

    .line 465
    :cond_137
    :goto_137
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getImageFormat()I

    move-result v9

    .line 466
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getImageFormat()I

    move-result v8

    .line 467
    iget-boolean v10, v0, Landroidx/camera/core/ImageCapture;->mUseSoftwareJpeg:Z

    if-eqz v10, :cond_180

    if-lt v2, v6, :cond_178

    const-string v2, "ImageCapture"

    const-string v3, "Using software JPEG encoder."

    .line 470
    invoke-static {v2, v3}, Landroidx/camera/core/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v2, v0, Landroidx/camera/core/ImageCapture;->mCaptureProcessor:Landroidx/camera/core/impl/CaptureProcessor;

    if-eqz v2, :cond_167

    .line 473
    new-instance v2, Landroidx/camera/core/internal/YuvToJpegProcessor;

    invoke-direct {p0}, Landroidx/camera/core/ImageCapture;->getJpegQualityInternal()I

    move-result v3

    iget v6, v0, Landroidx/camera/core/ImageCapture;->mMaxCaptureStages:I

    invoke-direct {v2, v3, v6}, Landroidx/camera/core/internal/YuvToJpegProcessor;-><init>(II)V

    .line 475
    new-instance v3, Landroidx/camera/core/CaptureProcessorPipeline;

    iget-object v6, v0, Landroidx/camera/core/ImageCapture;->mCaptureProcessor:Landroidx/camera/core/impl/CaptureProcessor;

    iget v8, v0, Landroidx/camera/core/ImageCapture;->mMaxCaptureStages:I

    iget-object v10, v0, Landroidx/camera/core/ImageCapture;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v3, v6, v8, v2, v10}, Landroidx/camera/core/CaptureProcessorPipeline;-><init>(Landroidx/camera/core/impl/CaptureProcessor;ILandroidx/camera/core/impl/CaptureProcessor;Ljava/util/concurrent/Executor;)V

    goto :goto_173

    .line 479
    :cond_167
    new-instance v2, Landroidx/camera/core/internal/YuvToJpegProcessor;

    .line 480
    invoke-direct {p0}, Landroidx/camera/core/ImageCapture;->getJpegQualityInternal()I

    move-result v3

    iget v6, v0, Landroidx/camera/core/ImageCapture;->mMaxCaptureStages:I

    invoke-direct {v2, v3, v6}, Landroidx/camera/core/internal/YuvToJpegProcessor;-><init>(II)V

    move-object v3, v2

    :goto_173
    move-object v12, v3

    move-object v3, v2

    const/16 v2, 0x100

    goto :goto_183

    .line 487
    :cond_178
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Software JPEG only supported on API 26+"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_180
    move-object v12, v3

    move-object v3, v5

    move v2, v8

    .line 492
    :goto_183
    new-instance v13, Landroidx/camera/core/ProcessingImageReader$Builder;

    .line 493
    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getWidth()I

    move-result v7

    .line 494
    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getHeight()I

    move-result v8

    iget v10, v0, Landroidx/camera/core/ImageCapture;->mMaxCaptureStages:I

    .line 497
    invoke-static {}, Landroidx/camera/core/CaptureBundles;->singleDefaultCaptureBundle()Landroidx/camera/core/impl/CaptureBundle;

    move-result-object v6

    invoke-direct {p0, v6}, Landroidx/camera/core/ImageCapture;->getCaptureBundle(Landroidx/camera/core/impl/CaptureBundle;)Landroidx/camera/core/impl/CaptureBundle;

    move-result-object v11

    move-object v6, v13

    invoke-direct/range {v6 .. v12}, Landroidx/camera/core/ProcessingImageReader$Builder;-><init>(IIIILandroidx/camera/core/impl/CaptureBundle;Landroidx/camera/core/impl/CaptureProcessor;)V

    iget-object v6, v0, Landroidx/camera/core/ImageCapture;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 499
    invoke-virtual {v13, v6}, Landroidx/camera/core/ProcessingImageReader$Builder;->setPostProcessExecutor(Ljava/util/concurrent/Executor;)Landroidx/camera/core/ProcessingImageReader$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroidx/camera/core/ProcessingImageReader$Builder;->setOutputFormat(I)Landroidx/camera/core/ProcessingImageReader$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/core/ProcessingImageReader$Builder;->build()Landroidx/camera/core/ProcessingImageReader;

    move-result-object v2

    iput-object v2, v0, Landroidx/camera/core/ImageCapture;->mProcessingImageReader:Landroidx/camera/core/ProcessingImageReader;

    .line 501
    invoke-virtual {v2}, Landroidx/camera/core/ProcessingImageReader;->getCameraCaptureCallback()Landroidx/camera/core/impl/CameraCaptureCallback;

    move-result-object v2

    iput-object v2, v0, Landroidx/camera/core/ImageCapture;->mMetadataMatchingCaptureCallback:Landroidx/camera/core/impl/CameraCaptureCallback;

    .line 502
    new-instance v2, Landroidx/camera/core/SafeCloseImageReaderProxy;

    iget-object v6, v0, Landroidx/camera/core/ImageCapture;->mProcessingImageReader:Landroidx/camera/core/ProcessingImageReader;

    invoke-direct {v2, v6}, Landroidx/camera/core/SafeCloseImageReaderProxy;-><init>(Landroidx/camera/core/impl/ImageReaderProxy;)V

    iput-object v2, v0, Landroidx/camera/core/ImageCapture;->mImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    .line 510
    :goto_1ba
    iget-object v2, v0, Landroidx/camera/core/ImageCapture;->mImageCaptureRequestProcessor:Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;

    if-eqz v2, :cond_1c8

    .line 511
    new-instance v6, Ljava/util/concurrent/CancellationException;

    const-string v7, "Request is canceled."

    invoke-direct {v6, v7}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;->cancelRequests(Ljava/lang/Throwable;)V

    .line 517
    :cond_1c8
    new-instance v2, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;

    new-instance v6, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/core/ImageCapture;)V

    if-nez v3, :cond_1d3

    move-object v7, v5

    goto :goto_1d8

    .line 519
    :cond_1d3
    new-instance v7, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda2;

    invoke-direct {v7, v3}, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda2;-><init>(Landroidx/camera/core/internal/YuvToJpegProcessor;)V

    :goto_1d8
    invoke-direct {v2, v4, v6, v7}, Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;-><init>(ILandroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor$ImageCaptor;Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor$RequestProcessCallback;)V

    iput-object v2, v0, Landroidx/camera/core/ImageCapture;->mImageCaptureRequestProcessor:Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor;

    .line 538
    iget-object v2, v0, Landroidx/camera/core/ImageCapture;->mImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    iget-object v3, v0, Landroidx/camera/core/ImageCapture;->mClosingListener:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    .line 539
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v4

    .line 538
    invoke-virtual {v2, v3, v4}, Landroidx/camera/core/SafeCloseImageReaderProxy;->setOnImageAvailableListener(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V

    .line 541
    iget-object v2, v0, Landroidx/camera/core/ImageCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    if-eqz v2, :cond_1ef

    .line 542
    invoke-virtual {v2}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    .line 545
    :cond_1ef
    new-instance v2, Landroidx/camera/core/impl/ImmediateSurface;

    iget-object v3, v0, Landroidx/camera/core/ImageCapture;->mImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    .line 546
    invoke-virtual {v3}, Landroidx/camera/core/SafeCloseImageReaderProxy;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, Landroid/view/Surface;

    new-instance v4, Landroid/util/Size;

    iget-object v6, v0, Landroidx/camera/core/ImageCapture;->mImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    .line 547
    invoke-virtual {v6}, Landroidx/camera/core/SafeCloseImageReaderProxy;->getWidth()I

    move-result v6

    iget-object v7, v0, Landroidx/camera/core/ImageCapture;->mImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    .line 548
    invoke-virtual {v7}, Landroidx/camera/core/SafeCloseImageReaderProxy;->getHeight()I

    move-result v7

    invoke-direct {v4, v6, v7}, Landroid/util/Size;-><init>(II)V

    .line 550
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getImageFormat()I

    move-result v6

    invoke-direct {v2, v3, v4, v6}, Landroidx/camera/core/impl/ImmediateSurface;-><init>(Landroid/view/Surface;Landroid/util/Size;I)V

    iput-object v2, v0, Landroidx/camera/core/ImageCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 553
    iget-object v2, v0, Landroidx/camera/core/ImageCapture;->mProcessingImageReader:Landroidx/camera/core/ProcessingImageReader;

    if-eqz v2, :cond_21f

    invoke-virtual {v2}, Landroidx/camera/core/ProcessingImageReader;->getCloseFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    goto :goto_223

    .line 554
    :cond_21f
    invoke-static {v5}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    :goto_223
    iput-object v2, v0, Landroidx/camera/core/ImageCapture;->mImageReaderCloseFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 555
    iget-object v2, v0, Landroidx/camera/core/ImageCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {v2}, Landroidx/camera/core/impl/DeferrableSurface;->getTerminationFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    iget-object v3, v0, Landroidx/camera/core/ImageCapture;->mImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroidx/camera/camera2/internal/ZslControlImpl$$ExternalSyntheticLambda2;

    invoke-direct {v4, v3}, Landroidx/camera/camera2/internal/ZslControlImpl$$ExternalSyntheticLambda2;-><init>(Landroidx/camera/core/SafeCloseImageReaderProxy;)V

    .line 556
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    .line 555
    invoke-interface {v2, v4, v3}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 558
    iget-object v2, v0, Landroidx/camera/core/ImageCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/SessionConfig$Builder;->addNonRepeatingSurface(Landroidx/camera/core/impl/DeferrableSurface;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 560
    new-instance v2, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda7;

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct {v2, p0, p1, v4, v5}, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda7;-><init>(Landroidx/camera/core/ImageCapture;Ljava/lang/String;Landroidx/camera/core/impl/ImageCaptureConfig;Landroid/util/Size;)V

    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/SessionConfig$Builder;->addErrorListener(Landroidx/camera/core/impl/SessionConfig$ErrorListener;)Landroidx/camera/core/impl/SessionConfig$Builder;

    return-object v1
.end method

.method public getCaptureMode()I
    .registers 2

    .line 932
    iget v0, p0, Landroidx/camera/core/ImageCapture;->mCaptureMode:I

    return v0
.end method

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

    .line 635
    sget-object v0, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->IMAGE_CAPTURE:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    .line 637
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->getCaptureMode()I

    move-result v1

    .line 635
    invoke-interface {p2, v0, v1}, Landroidx/camera/core/impl/UseCaseConfigFactory;->getConfig(Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;I)Landroidx/camera/core/impl/Config;

    move-result-object p2

    if-eqz p1, :cond_16

    .line 640
    sget-object p1, Landroidx/camera/core/ImageCapture;->DEFAULT_CONFIG:Landroidx/camera/core/ImageCapture$Defaults;

    invoke-virtual {p1}, Landroidx/camera/core/ImageCapture$Defaults;->getConfig()Landroidx/camera/core/impl/ImageCaptureConfig;

    move-result-object p1

    invoke-static {p2, p1}, Landroidx/camera/core/impl/Config$-CC;->mergeConfigs(Landroidx/camera/core/impl/Config;Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/Config;

    move-result-object p2

    :cond_16
    if-nez p2, :cond_1a

    const/4 p1, 0x0

    goto :goto_22

    .line 644
    :cond_1a
    invoke-virtual {p0, p2}, Landroidx/camera/core/ImageCapture;->getUseCaseConfigBuilder(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/UseCaseConfig$Builder;

    move-result-object p1

    invoke-interface {p1}, Landroidx/camera/core/impl/UseCaseConfig$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object p1

    :goto_22
    return-object p1
.end method

.method public getFlashMode()I
    .registers 4

    .line 768
    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->mLockedFlashMode:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 769
    :try_start_3
    iget v1, p0, Landroidx/camera/core/ImageCapture;->mFlashMode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9

    goto :goto_14

    .line 770
    :cond_9
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/ImageCaptureConfig;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/ImageCaptureConfig;->getFlashMode(I)I

    move-result v1

    :goto_14
    monitor-exit v0

    return v1

    :catchall_16
    move-exception v1

    .line 771
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public getTargetRotation()I
    .registers 2

    .line 858
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getTargetRotationInternal()I

    move-result v0

    return v0
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

    .line 656
    invoke-static {p1}, Landroidx/camera/core/ImageCapture$Builder;->fromConfig(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/ImageCapture$Builder;

    move-result-object p1

    return-object p1
.end method

.method issueTakePicture(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/ImageCapture$ImageCaptureRequest;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "ImageCapture"

    const-string v1, "issueTakePicture"

    .line 1733
    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1739
    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->mProcessingImageReader:Landroidx/camera/core/ProcessingImageReader;

    const-string v2, "ImageCapture has CaptureBundle with null capture stages"

    const/4 v3, 0x1

    const-string v4, "ImageCapture cannot set empty CaptureBundle."

    if-eqz v1, :cond_7d

    .line 1742
    invoke-static {}, Landroidx/camera/core/CaptureBundles;->singleDefaultCaptureBundle()Landroidx/camera/core/impl/CaptureBundle;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/camera/core/ImageCapture;->getCaptureBundle(Landroidx/camera/core/impl/CaptureBundle;)Landroidx/camera/core/impl/CaptureBundle;

    move-result-object v1

    if-nez v1, :cond_29

    .line 1744
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 1748
    :cond_29
    invoke-interface {v1}, Landroidx/camera/core/impl/CaptureBundle;->getCaptureStages()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_39

    .line 1750
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 1754
    :cond_39
    iget-object v2, p0, Landroidx/camera/core/ImageCapture;->mCaptureProcessor:Landroidx/camera/core/impl/CaptureProcessor;

    if-nez v2, :cond_4f

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_4f

    .line 1755
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No CaptureProcessor can be found to process the images captured for multiple CaptureStages."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 1760
    :cond_4f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Landroidx/camera/core/ImageCapture;->mMaxCaptureStages:I

    if-le v2, v3, :cond_63

    .line 1761
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ImageCapture has CaptureStages > Max CaptureStage size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 1765
    :cond_63
    iget-object v2, p0, Landroidx/camera/core/ImageCapture;->mProcessingImageReader:Landroidx/camera/core/ProcessingImageReader;

    invoke-virtual {v2, v1}, Landroidx/camera/core/ProcessingImageReader;->setCaptureBundle(Landroidx/camera/core/impl/CaptureBundle;)V

    .line 1766
    iget-object v2, p0, Landroidx/camera/core/ImageCapture;->mProcessingImageReader:Landroidx/camera/core/ProcessingImageReader;

    .line 1767
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda3;

    invoke-direct {v4, p1}, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda3;-><init>(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)V

    .line 1766
    invoke-virtual {v2, v3, v4}, Landroidx/camera/core/ProcessingImageReader;->setOnProcessingErrorCallback(Ljava/util/concurrent/Executor;Landroidx/camera/core/ProcessingImageReader$OnProcessingErrorCallback;)V

    .line 1773
    iget-object v2, p0, Landroidx/camera/core/ImageCapture;->mProcessingImageReader:Landroidx/camera/core/ProcessingImageReader;

    invoke-virtual {v2}, Landroidx/camera/core/ProcessingImageReader;->getTagBundleKey()Ljava/lang/String;

    move-result-object v2

    goto :goto_b4

    .line 1775
    :cond_7d
    invoke-static {}, Landroidx/camera/core/CaptureBundles;->singleDefaultCaptureBundle()Landroidx/camera/core/impl/CaptureBundle;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/camera/core/ImageCapture;->getCaptureBundle(Landroidx/camera/core/impl/CaptureBundle;)Landroidx/camera/core/impl/CaptureBundle;

    move-result-object v1

    if-nez v1, :cond_91

    .line 1777
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 1781
    :cond_91
    invoke-interface {v1}, Landroidx/camera/core/impl/CaptureBundle;->getCaptureStages()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_a1

    .line 1783
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 1787
    :cond_a1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_b3

    .line 1788
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ImageCapture have no CaptureProcess set with CaptureBundle size > 1."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    :cond_b3
    const/4 v2, 0x0

    .line 1793
    :goto_b4
    invoke-interface {v1}, Landroidx/camera/core/impl/CaptureBundle;->getCaptureStages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_bc
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_138

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/impl/CaptureStage;

    .line 1794
    new-instance v4, Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-direct {v4}, Landroidx/camera/core/impl/CaptureConfig$Builder;-><init>()V

    .line 1795
    iget-object v5, p0, Landroidx/camera/core/ImageCapture;->mCaptureConfig:Landroidx/camera/core/impl/CaptureConfig;

    invoke-virtual {v5}, Landroidx/camera/core/impl/CaptureConfig;->getTemplateType()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setTemplateType(I)V

    .line 1798
    iget-object v5, p0, Landroidx/camera/core/ImageCapture;->mCaptureConfig:Landroidx/camera/core/impl/CaptureConfig;

    invoke-virtual {v5}, Landroidx/camera/core/impl/CaptureConfig;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)V

    .line 1799
    iget-object v5, p0, Landroidx/camera/core/ImageCapture;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 1800
    invoke-virtual {v5}, Landroidx/camera/core/impl/SessionConfig$Builder;->getSingleCameraCaptureCallbacks()Ljava/util/List;

    move-result-object v5

    .line 1799
    invoke-virtual {v4, v5}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addAllCameraCaptureCallbacks(Ljava/util/Collection;)V

    .line 1802
    iget-object v5, p0, Landroidx/camera/core/ImageCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {v4, v5}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addSurface(Landroidx/camera/core/impl/DeferrableSurface;)V

    .line 1808
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getImageFormat()I

    move-result v5

    const/16 v6, 0x100

    if-ne v5, v6, :cond_113

    .line 1810
    sget-object v5, Landroidx/camera/core/ImageCapture;->EXIF_ROTATION_AVAILABILITY:Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;

    invoke-virtual {v5}, Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;->isRotationOptionSupported()Z

    move-result v5

    if-eqz v5, :cond_108

    .line 1811
    sget-object v5, Landroidx/camera/core/impl/CaptureConfig;->OPTION_ROTATION:Landroidx/camera/core/impl/Config$Option;

    iget v6, p1, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mRotationDegrees:I

    .line 1812
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1811
    invoke-virtual {v4, v5, v6}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 1814
    :cond_108
    sget-object v5, Landroidx/camera/core/impl/CaptureConfig;->OPTION_JPEG_QUALITY:Landroidx/camera/core/impl/Config$Option;

    iget v6, p1, Landroidx/camera/core/ImageCapture$ImageCaptureRequest;->mJpegQuality:I

    .line 1815
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1814
    invoke-virtual {v4, v5, v6}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 1820
    :cond_113
    invoke-interface {v3}, Landroidx/camera/core/impl/CaptureStage;->getCaptureConfig()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/camera/core/impl/CaptureConfig;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    move-result-object v5

    .line 1819
    invoke-virtual {v4, v5}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)V

    if-eqz v2, :cond_12b

    .line 1824
    invoke-interface {v3}, Landroidx/camera/core/impl/CaptureStage;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addTag(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1826
    :cond_12b
    iget-object v3, p0, Landroidx/camera/core/ImageCapture;->mMetadataMatchingCaptureCallback:Landroidx/camera/core/impl/CameraCaptureCallback;

    invoke-virtual {v4, v3}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    .line 1827
    invoke-virtual {v4}, Landroidx/camera/core/impl/CaptureConfig$Builder;->build()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bc

    .line 1830
    :cond_138
    invoke-virtual {p0, v0}, Landroidx/camera/core/ImageCapture;->submitStillCaptureRequest(Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method lockFlashMode()V
    .registers 4

    .line 1253
    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->mLockedFlashMode:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 1254
    :try_start_3
    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->mLockedFlashMode:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 1256
    monitor-exit v0

    return-void

    .line 1258
    :cond_d
    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->mLockedFlashMode:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->getFlashMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1259
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public onAttached()V
    .registers 3

    .line 1669
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/ImageCaptureConfig;

    .line 1671
    invoke-static {v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;->createFrom(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/impl/CaptureConfig$Builder;

    move-result-object v1

    .line 1672
    invoke-virtual {v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->build()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/core/ImageCapture;->mCaptureConfig:Landroidx/camera/core/impl/CaptureConfig;

    const/4 v1, 0x0

    .line 1675
    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/ImageCaptureConfig;->getCaptureProcessor(Landroidx/camera/core/impl/CaptureProcessor;)Landroidx/camera/core/impl/CaptureProcessor;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/core/ImageCapture;->mCaptureProcessor:Landroidx/camera/core/impl/CaptureProcessor;

    const/4 v1, 0x2

    .line 1676
    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/ImageCaptureConfig;->getMaxCaptureStages(I)I

    move-result v1

    iput v1, p0, Landroidx/camera/core/ImageCapture;->mMaxCaptureStages:I

    .line 1678
    invoke-static {}, Landroidx/camera/core/CaptureBundles;->singleDefaultCaptureBundle()Landroidx/camera/core/impl/CaptureBundle;

    move-result-object v1

    .line 1677
    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/ImageCaptureConfig;->getCaptureBundle(Landroidx/camera/core/impl/CaptureBundle;)Landroidx/camera/core/impl/CaptureBundle;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/core/ImageCapture;->mCaptureBundle:Landroidx/camera/core/impl/CaptureBundle;

    .line 1682
    invoke-virtual {v0}, Landroidx/camera/core/impl/ImageCaptureConfig;->isSoftwareJpegEncoderRequested()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/camera/core/ImageCapture;->mUseSoftwareJpeg:Z

    .line 1684
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v0

    const-string v1, "Attached camera cannot be null"

    .line 1685
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1687
    new-instance v0, Landroidx/camera/core/ImageCapture$6;

    invoke-direct {v0, p0}, Landroidx/camera/core/ImageCapture$6;-><init>(Landroidx/camera/core/ImageCapture;)V

    const/4 v1, 0x1

    .line 1688
    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/ImageCapture;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method protected onCameraControlReady()V
    .registers 1

    .line 757
    invoke-direct {p0}, Landroidx/camera/core/ImageCapture;->trySetFlashModeToCameraControl()V

    return-void
.end method

.method public onDetached()V
    .registers 4

    .line 1647
    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->mImageReaderCloseFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1649
    invoke-direct {p0}, Landroidx/camera/core/ImageCapture;->abortImageCaptureRequests()V

    .line 1650
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->clearPipeline()V

    const/4 v1, 0x0

    .line 1651
    iput-boolean v1, p0, Landroidx/camera/core/ImageCapture;->mUseSoftwareJpeg:Z

    .line 1656
    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 1657
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda14;

    invoke-direct {v2, v1}, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda14;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 1658
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 1657
    invoke-interface {v0, v2, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method protected onMergeConfig(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/UseCaseConfig$Builder;)Landroidx/camera/core/impl/UseCaseConfig;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/CameraInfoInternal;",
            "Landroidx/camera/core/impl/UseCaseConfig$Builder<",
            "***>;)",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;"
        }
    .end annotation

    .line 669
    invoke-interface {p2}, Landroidx/camera/core/impl/UseCaseConfig$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/impl/ImageCaptureConfig;->OPTION_CAPTURE_PROCESSOR:Landroidx/camera/core/impl/Config$Option;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroidx/camera/core/impl/ReadableConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "ImageCapture"

    if-eqz v0, :cond_26

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v0, v4, :cond_26

    const-string p1, "Requesting software JPEG due to a CaptureProcessor is set."

    .line 673
    invoke-static {v3, p1}, Landroidx/camera/core/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    invoke-interface {p2}, Landroidx/camera/core/ExtendableBuilder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object p1

    sget-object v0, Landroidx/camera/core/impl/ImageCaptureConfig;->OPTION_USE_SOFTWARE_JPEG_ENCODER:Landroidx/camera/core/impl/Config$Option;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v3}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    goto :goto_58

    .line 675
    :cond_26
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInfoInternal;->getCameraQuirks()Landroidx/camera/core/impl/Quirks;

    move-result-object p1

    const-class v0, Landroidx/camera/core/internal/compat/quirk/SoftwareJpegEncodingPreferredQuirk;

    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/Quirks;->contains(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_58

    .line 679
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2}, Landroidx/camera/core/ExtendableBuilder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v4, Landroidx/camera/core/impl/ImageCaptureConfig;->OPTION_USE_SOFTWARE_JPEG_ENCODER:Landroidx/camera/core/impl/Config$Option;

    .line 680
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 679
    invoke-interface {v0, v4, v5}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4c

    const-string p1, "Device quirk suggests software JPEG encoder, but it has been explicitly disabled."

    .line 681
    invoke-static {v3, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    :cond_4c
    const-string p1, "Requesting software JPEG due to device quirk."

    .line 684
    invoke-static {v3, p1}, Landroidx/camera/core/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    invoke-interface {p2}, Landroidx/camera/core/ExtendableBuilder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object p1

    invoke-interface {p1, v4, v5}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 690
    :cond_58
    :goto_58
    invoke-interface {p2}, Landroidx/camera/core/ExtendableBuilder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object p1

    invoke-static {p1}, Landroidx/camera/core/ImageCapture;->enforceSoftwareJpegConstraints(Landroidx/camera/core/impl/MutableConfig;)Z

    move-result p1

    .line 694
    invoke-interface {p2}, Landroidx/camera/core/ExtendableBuilder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v3, Landroidx/camera/core/impl/ImageCaptureConfig;->OPTION_BUFFER_FORMAT:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v0, v3, v2}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x23

    if-eqz v0, :cond_99

    .line 698
    invoke-interface {p2}, Landroidx/camera/core/ExtendableBuilder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v6

    invoke-interface {v6, v1, v2}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7e

    const/4 v1, 0x1

    goto :goto_7f

    :cond_7e
    const/4 v1, 0x0

    :goto_7f
    const-string v2, "Cannot set buffer format with CaptureProcessor defined."

    .line 697
    invoke-static {v1, v2}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 701
    invoke-interface {p2}, Landroidx/camera/core/ExtendableBuilder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v1

    sget-object v2, Landroidx/camera/core/impl/ImageInputConfig;->OPTION_INPUT_FORMAT:Landroidx/camera/core/impl/Config$Option;

    if-eqz p1, :cond_8d

    goto :goto_91

    .line 702
    :cond_8d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_91
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 701
    invoke-interface {v1, v2, p1}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    goto :goto_f9

    .line 704
    :cond_99
    invoke-interface {p2}, Landroidx/camera/core/ExtendableBuilder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_ec

    if-eqz p1, :cond_a6

    goto :goto_ec

    .line 710
    :cond_a6
    invoke-interface {p2}, Landroidx/camera/core/ExtendableBuilder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object p1

    sget-object v0, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_SUPPORTED_RESOLUTIONS:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p1, v0, v2}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/16 v0, 0x100

    if-nez p1, :cond_c4

    .line 713
    invoke-interface {p2}, Landroidx/camera/core/ExtendableBuilder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object p1

    sget-object v1, Landroidx/camera/core/impl/ImageInputConfig;->OPTION_INPUT_FORMAT:Landroidx/camera/core/impl/Config$Option;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    goto :goto_f9

    .line 716
    :cond_c4
    invoke-static {p1, v0}, Landroidx/camera/core/ImageCapture;->isImageFormatSupported(Ljava/util/List;I)Z

    move-result v1

    if-eqz v1, :cond_d8

    .line 717
    invoke-interface {p2}, Landroidx/camera/core/ExtendableBuilder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object p1

    sget-object v1, Landroidx/camera/core/impl/ImageInputConfig;->OPTION_INPUT_FORMAT:Landroidx/camera/core/impl/Config$Option;

    .line 718
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 717
    invoke-interface {p1, v1, v0}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    goto :goto_f9

    .line 719
    :cond_d8
    invoke-static {p1, v5}, Landroidx/camera/core/ImageCapture;->isImageFormatSupported(Ljava/util/List;I)Z

    move-result p1

    if-eqz p1, :cond_f9

    .line 720
    invoke-interface {p2}, Landroidx/camera/core/ExtendableBuilder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object p1

    sget-object v0, Landroidx/camera/core/impl/ImageInputConfig;->OPTION_INPUT_FORMAT:Landroidx/camera/core/impl/Config$Option;

    .line 721
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 720
    invoke-interface {p1, v0, v1}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    goto :goto_f9

    .line 706
    :cond_ec
    :goto_ec
    invoke-interface {p2}, Landroidx/camera/core/ExtendableBuilder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object p1

    sget-object v0, Landroidx/camera/core/impl/ImageInputConfig;->OPTION_INPUT_FORMAT:Landroidx/camera/core/impl/Config$Option;

    .line 707
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 706
    invoke-interface {p1, v0, v1}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 728
    :cond_f9
    :goto_f9
    invoke-interface {p2}, Landroidx/camera/core/ExtendableBuilder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object p1

    sget-object v0, Landroidx/camera/core/impl/ImageCaptureConfig;->OPTION_MAX_CAPTURE_STAGES:Landroidx/camera/core/impl/Config$Option;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const-string v0, "Maximum outstanding image count must be at least 1"

    .line 729
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lt p1, v4, :cond_116

    const/4 v3, 0x1

    :cond_116
    invoke-static {v3, v0}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 733
    invoke-interface {p2}, Landroidx/camera/core/impl/UseCaseConfig$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object p1

    return-object p1
.end method

.method public onStateDetached()V
    .registers 1

    .line 1166
    invoke-direct {p0}, Landroidx/camera/core/ImageCapture;->abortImageCaptureRequests()V

    return-void
.end method

.method protected onSuggestedResolutionUpdated(Landroid/util/Size;)Landroid/util/Size;
    .registers 4

    .line 1712
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 1713
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/ImageCaptureConfig;

    .line 1712
    invoke-virtual {p0, v0, v1, p1}, Landroidx/camera/core/ImageCapture;->createPipeline(Ljava/lang/String;Landroidx/camera/core/impl/ImageCaptureConfig;Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/ImageCapture;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 1715
    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/camera/core/UseCase;->updateSessionConfig(Landroidx/camera/core/impl/SessionConfig;)V

    .line 1719
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->notifyActive()V

    return-object p1
.end method

.method public setCropAspectRatio(Landroid/util/Rational;)V
    .registers 2

    .line 838
    iput-object p1, p0, Landroidx/camera/core/ImageCapture;->mCropAspectRatio:Landroid/util/Rational;

    return-void
.end method

.method public setTargetRotation(I)V
    .registers 4

    .line 905
    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->getTargetRotation()I

    move-result v0

    .line 907
    invoke-virtual {p0, p1}, Landroidx/camera/core/UseCase;->setTargetRotationInternal(I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 911
    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->mCropAspectRatio:Landroid/util/Rational;

    if-eqz v1, :cond_23

    .line 912
    invoke-static {v0}, Landroidx/camera/core/impl/utils/CameraOrientationUtil;->surfaceRotationToDegrees(I)I

    move-result v0

    .line 914
    invoke-static {p1}, Landroidx/camera/core/impl/utils/CameraOrientationUtil;->surfaceRotationToDegrees(I)I

    move-result p1

    sub-int/2addr p1, v0

    .line 916
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->mCropAspectRatio:Landroid/util/Rational;

    .line 915
    invoke-static {p1, v0}, Landroidx/camera/core/internal/utils/ImageUtil;->getRotatedAspectRatio(ILandroid/util/Rational;)Landroid/util/Rational;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/ImageCapture;->mCropAspectRatio:Landroid/util/Rational;

    :cond_23
    return-void
.end method

.method submitStillCaptureRequest(Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CaptureConfig;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2050
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2051
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCameraControl()Landroidx/camera/core/impl/CameraControlInternal;

    move-result-object v0

    iget v1, p0, Landroidx/camera/core/ImageCapture;->mCaptureMode:I

    iget v2, p0, Landroidx/camera/core/ImageCapture;->mFlashType:I

    invoke-interface {v0, p1, v1, v2}, Landroidx/camera/core/impl/CameraControlInternal;->submitStillCaptureRequests(Ljava/util/List;II)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    sget-object v0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda0;->INSTANCE:Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda0;

    .line 2053
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 2051
    invoke-static {p1, v0, v1}, Landroidx/camera/core/impl/utils/futures/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/arch/core/util/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public takePicture(Landroidx/camera/core/ImageCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V
    .registers 12

    .line 1049
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_17

    .line 1050
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda11;-><init>(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 1054
    :cond_17
    invoke-direct {p0}, Landroidx/camera/core/ImageCapture;->isNodeEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x0

    .line 1055
    invoke-direct {p0, p2, v0, p3, p1}, Landroidx/camera/core/ImageCapture;->takePictureWithNode(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;Landroidx/camera/core/ImageCapture$OutputFileOptions;)V

    return-void

    .line 1080
    :cond_22
    new-instance v6, Landroidx/camera/core/ImageCapture$3;

    invoke-direct {v6, p0, p3}, Landroidx/camera/core/ImageCapture$3;-><init>(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V

    .line 1102
    invoke-direct {p0}, Landroidx/camera/core/ImageCapture;->getJpegQualityInternal()I

    move-result v4

    .line 1106
    new-instance v0, Landroidx/camera/core/ImageCapture$4;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Landroidx/camera/core/ImageCapture$4;-><init>(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$OutputFileOptions;ILjava/util/concurrent/Executor;Landroidx/camera/core/ImageSaver$OnImageSavedCallback;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V

    .line 1129
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroidx/camera/core/ImageCapture;->sendImageCaptureRequest(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;Z)V

    return-void
.end method

.method public takePicture(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V
    .registers 5

    .line 1017
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_17

    .line 1018
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1, p2}, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda12;-><init>(Landroidx/camera/core/ImageCapture;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 1022
    :cond_17
    invoke-direct {p0}, Landroidx/camera/core/ImageCapture;->isNodeEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x0

    .line 1023
    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/camera/core/ImageCapture;->takePictureWithNode(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;Landroidx/camera/core/ImageCapture$OutputFileOptions;)V

    return-void

    :cond_22
    const/4 v0, 0x0

    .line 1028
    invoke-direct {p0, p1, p2, v0}, Landroidx/camera/core/ImageCapture;->sendImageCaptureRequest(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageCapture:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unlockFlashMode()V
    .registers 4

    .line 1263
    iget-object v0, p0, Landroidx/camera/core/ImageCapture;->mLockedFlashMode:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 1264
    :try_start_3
    iget-object v1, p0, Landroidx/camera/core/ImageCapture;->mLockedFlashMode:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_10

    .line 1267
    monitor-exit v0

    return-void

    .line 1269
    :cond_10
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Landroidx/camera/core/ImageCapture;->getFlashMode()I

    move-result v2

    if-eq v1, v2, :cond_1d

    .line 1271
    invoke-direct {p0}, Landroidx/camera/core/ImageCapture;->trySetFlashModeToCameraControl()V

    .line 1273
    :cond_1d
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method
