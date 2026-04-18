.class final Landroidx/camera/core/ProcessingSurface;
.super Landroidx/camera/core/impl/DeferrableSurface;
.source "ProcessingSurface.java"


# instance fields
.field private final mCameraCaptureCallback:Landroidx/camera/core/impl/CameraCaptureCallback;

.field final mCaptureProcessor:Landroidx/camera/core/impl/CaptureProcessor;

.field final mCaptureStage:Landroidx/camera/core/impl/CaptureStage;

.field private final mImageReaderHandler:Landroid/os/Handler;

.field private final mInputImageReader:Landroidx/camera/core/MetadataImageReader;

.field private final mInputSurface:Landroid/view/Surface;

.field final mLock:Ljava/lang/Object;

.field private final mOutputDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

.field mReleased:Z

.field private final mResolution:Landroid/util/Size;

.field private mTagBundleKey:Ljava/lang/String;

.field private final mTransformedListener:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;


# direct methods
.method public static synthetic $r8$lambda$18LRdxYesVYyVxVloEQKOtEg0ww(Landroidx/camera/core/ProcessingSurface;)V
    .registers 1

    invoke-direct {p0}, Landroidx/camera/core/ProcessingSurface;->release()V

    return-void
.end method

.method public static synthetic $r8$lambda$GmPfxlMj6O4ZbQPJ9TtTK3X0-xA(Landroidx/camera/core/ProcessingSurface;Landroid/view/Surface;)Landroid/view/Surface;
    .registers 2

    invoke-direct {p0, p1}, Landroidx/camera/core/ProcessingSurface;->lambda$provideSurface$1(Landroid/view/Surface;)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$S_kJ_hzSyay6pbMlqHEH79wEJ28(Landroidx/camera/core/ProcessingSurface;Landroidx/camera/core/impl/ImageReaderProxy;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/camera/core/ProcessingSurface;->lambda$new$0(Landroidx/camera/core/impl/ImageReaderProxy;)V

    return-void
.end method

.method constructor <init>(IIILandroid/os/Handler;Landroidx/camera/core/impl/CaptureStage;Landroidx/camera/core/impl/CaptureProcessor;Landroidx/camera/core/impl/DeferrableSurface;Ljava/lang/String;)V
    .registers 13

    .line 117
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    invoke-direct {p0, v0, p3}, Landroidx/camera/core/impl/DeferrableSurface;-><init>(Landroid/util/Size;I)V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/ProcessingSurface;->mLock:Ljava/lang/Object;

    .line 59
    new-instance v0, Landroidx/camera/core/ProcessingSurface$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroidx/camera/core/ProcessingSurface$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/core/ProcessingSurface;)V

    iput-object v0, p0, Landroidx/camera/core/ProcessingSurface;->mTransformedListener:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    const/4 v1, 0x0

    .line 66
    iput-boolean v1, p0, Landroidx/camera/core/ProcessingSurface;->mReleased:Z

    .line 118
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p1, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Landroidx/camera/core/ProcessingSurface;->mResolution:Landroid/util/Size;

    if-eqz p4, :cond_25

    .line 121
    iput-object p4, p0, Landroidx/camera/core/ProcessingSurface;->mImageReaderHandler:Landroid/os/Handler;

    goto :goto_32

    .line 123
    :cond_25
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p4

    if-eqz p4, :cond_7b

    .line 131
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Landroidx/camera/core/ProcessingSurface;->mImageReaderHandler:Landroid/os/Handler;

    .line 134
    :goto_32
    iget-object p4, p0, Landroidx/camera/core/ProcessingSurface;->mImageReaderHandler:Landroid/os/Handler;

    invoke-static {p4}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->newHandlerExecutor(Landroid/os/Handler;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p4

    .line 137
    new-instance v2, Landroidx/camera/core/MetadataImageReader;

    const/4 v3, 0x2

    invoke-direct {v2, p1, p2, p3, v3}, Landroidx/camera/core/MetadataImageReader;-><init>(IIII)V

    iput-object v2, p0, Landroidx/camera/core/ProcessingSurface;->mInputImageReader:Landroidx/camera/core/MetadataImageReader;

    .line 142
    invoke-virtual {v2, v0, p4}, Landroidx/camera/core/MetadataImageReader;->setOnImageAvailableListener(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V

    .line 143
    invoke-virtual {v2}, Landroidx/camera/core/MetadataImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/ProcessingSurface;->mInputSurface:Landroid/view/Surface;

    .line 144
    invoke-virtual {v2}, Landroidx/camera/core/MetadataImageReader;->getCameraCaptureCallback()Landroidx/camera/core/impl/CameraCaptureCallback;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/ProcessingSurface;->mCameraCaptureCallback:Landroidx/camera/core/impl/CameraCaptureCallback;

    .line 147
    iput-object p6, p0, Landroidx/camera/core/ProcessingSurface;->mCaptureProcessor:Landroidx/camera/core/impl/CaptureProcessor;

    .line 148
    invoke-interface {p6, v1}, Landroidx/camera/core/impl/CaptureProcessor;->onResolutionUpdate(Landroid/util/Size;)V

    .line 149
    iput-object p5, p0, Landroidx/camera/core/ProcessingSurface;->mCaptureStage:Landroidx/camera/core/impl/CaptureStage;

    .line 152
    iput-object p7, p0, Landroidx/camera/core/ProcessingSurface;->mOutputDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 154
    iput-object p8, p0, Landroidx/camera/core/ProcessingSurface;->mTagBundleKey:Ljava/lang/String;

    .line 156
    invoke-virtual {p7}, Landroidx/camera/core/impl/DeferrableSurface;->getSurface()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance p2, Landroidx/camera/core/ProcessingSurface$1;

    invoke-direct {p2, p0}, Landroidx/camera/core/ProcessingSurface$1;-><init>(Landroidx/camera/core/ProcessingSurface;)V

    .line 169
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p3

    .line 156
    invoke-static {p1, p2, p3}, Landroidx/camera/core/impl/utils/futures/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 171
    invoke-virtual {p0}, Landroidx/camera/core/impl/DeferrableSurface;->getTerminationFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance p2, Landroidx/camera/core/ProcessingSurface$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Landroidx/camera/core/ProcessingSurface$$ExternalSyntheticLambda2;-><init>(Landroidx/camera/core/ProcessingSurface;)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    .line 126
    :cond_7b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Creating a ProcessingSurface requires a non-null Handler, or be created  on a thread with a Looper."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private synthetic lambda$new$0(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .registers 3

    .line 61
    iget-object v0, p0, Landroidx/camera/core/ProcessingSurface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_3
    invoke-virtual {p0, p1}, Landroidx/camera/core/ProcessingSurface;->imageIncoming(Landroidx/camera/core/impl/ImageReaderProxy;)V

    .line 63
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method private synthetic lambda$provideSurface$1(Landroid/view/Surface;)Landroid/view/Surface;
    .registers 2

    .line 181
    iget-object p1, p0, Landroidx/camera/core/ProcessingSurface;->mInputSurface:Landroid/view/Surface;

    return-object p1
.end method

.method private release()V
    .registers 3

    .line 210
    iget-object v0, p0, Landroidx/camera/core/ProcessingSurface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_3
    iget-boolean v1, p0, Landroidx/camera/core/ProcessingSurface;->mReleased:Z

    if-eqz v1, :cond_9

    .line 212
    monitor-exit v0

    return-void

    .line 215
    :cond_9
    iget-object v1, p0, Landroidx/camera/core/ProcessingSurface;->mInputImageReader:Landroidx/camera/core/MetadataImageReader;

    invoke-virtual {v1}, Landroidx/camera/core/MetadataImageReader;->clearOnImageAvailableListener()V

    .line 219
    iget-object v1, p0, Landroidx/camera/core/ProcessingSurface;->mInputImageReader:Landroidx/camera/core/MetadataImageReader;

    invoke-virtual {v1}, Landroidx/camera/core/MetadataImageReader;->close()V

    .line 220
    iget-object v1, p0, Landroidx/camera/core/ProcessingSurface;->mInputSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 223
    iget-object v1, p0, Landroidx/camera/core/ProcessingSurface;->mOutputDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {v1}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    const/4 v1, 0x1

    .line 225
    iput-boolean v1, p0, Landroidx/camera/core/ProcessingSurface;->mReleased:Z

    .line 226
    monitor-exit v0

    return-void

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method


# virtual methods
.method getCameraCaptureCallback()Landroidx/camera/core/impl/CameraCaptureCallback;
    .registers 4

    .line 191
    iget-object v0, p0, Landroidx/camera/core/ProcessingSurface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 192
    :try_start_3
    iget-boolean v1, p0, Landroidx/camera/core/ProcessingSurface;->mReleased:Z

    if-nez v1, :cond_b

    .line 196
    iget-object v1, p0, Landroidx/camera/core/ProcessingSurface;->mCameraCaptureCallback:Landroidx/camera/core/impl/CameraCaptureCallback;

    monitor-exit v0

    return-object v1

    .line 193
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ProcessingSurface already released!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_13
    move-exception v1

    .line 197
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method imageIncoming(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .registers 6

    const-string v0, "ProcessingSurfaceTextur"

    .line 233
    iget-boolean v1, p0, Landroidx/camera/core/ProcessingSurface;->mReleased:Z

    if-eqz v1, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x0

    .line 239
    :try_start_8
    invoke-interface {p1}, Landroidx/camera/core/impl/ImageReaderProxy;->acquireNextImage()Landroidx/camera/core/ImageProxy;

    move-result-object v1
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_c} :catch_d

    goto :goto_13

    :catch_d
    move-exception p1

    const-string v2, "Failed to acquire next image."

    .line 241
    invoke-static {v0, v2, p1}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_13
    if-nez v1, :cond_16

    return-void

    .line 248
    :cond_16
    invoke-interface {v1}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object p1

    if-nez p1, :cond_20

    .line 250
    invoke-interface {v1}, Landroidx/camera/core/ImageProxy;->close()V

    return-void

    .line 254
    :cond_20
    invoke-interface {p1}, Landroidx/camera/core/ImageInfo;->getTagBundle()Landroidx/camera/core/impl/TagBundle;

    move-result-object p1

    iget-object v2, p0, Landroidx/camera/core/ProcessingSurface;->mTagBundleKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroidx/camera/core/impl/TagBundle;->getTag(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_32

    .line 256
    invoke-interface {v1}, Landroidx/camera/core/ImageProxy;->close()V

    return-void

    .line 260
    :cond_32
    iget-object v2, p0, Landroidx/camera/core/ProcessingSurface;->mCaptureStage:Landroidx/camera/core/impl/CaptureStage;

    invoke-interface {v2}, Landroidx/camera/core/impl/CaptureStage;->getId()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_56

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImageProxyBundle does not contain this id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-interface {v1}, Landroidx/camera/core/ImageProxy;->close()V

    goto :goto_6b

    .line 264
    :cond_56
    new-instance p1, Landroidx/camera/core/impl/SingleImageProxyBundle;

    iget-object v2, p0, Landroidx/camera/core/ProcessingSurface;->mTagBundleKey:Ljava/lang/String;

    invoke-direct {p1, v1, v2}, Landroidx/camera/core/impl/SingleImageProxyBundle;-><init>(Landroidx/camera/core/ImageProxy;Ljava/lang/String;)V

    .line 269
    :try_start_5d
    invoke-virtual {p0}, Landroidx/camera/core/impl/DeferrableSurface;->incrementUseCount()V
    :try_end_60
    .catch Landroidx/camera/core/impl/DeferrableSurface$SurfaceClosedException; {:try_start_5d .. :try_end_60} :catch_6c

    .line 276
    iget-object v0, p0, Landroidx/camera/core/ProcessingSurface;->mCaptureProcessor:Landroidx/camera/core/impl/CaptureProcessor;

    invoke-interface {v0, p1}, Landroidx/camera/core/impl/CaptureProcessor;->process(Landroidx/camera/core/impl/ImageProxyBundle;)V

    .line 277
    invoke-virtual {p1}, Landroidx/camera/core/impl/SingleImageProxyBundle;->close()V

    .line 279
    invoke-virtual {p0}, Landroidx/camera/core/impl/DeferrableSurface;->decrementUseCount()V

    :goto_6b
    return-void

    :catch_6c
    const-string v1, "The ProcessingSurface has been closed. Don\'t process the incoming image."

    .line 271
    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p1}, Landroidx/camera/core/impl/SingleImageProxyBundle;->close()V

    return-void
.end method

.method public provideSurface()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Landroidx/camera/core/ProcessingSurface;->mOutputDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->getSurface()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/FutureChain;->from(Lcom/google/common/util/concurrent/ListenableFuture;)Landroidx/camera/core/impl/utils/futures/FutureChain;

    move-result-object v0

    new-instance v1, Landroidx/camera/core/ProcessingSurface$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/camera/core/ProcessingSurface$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/core/ProcessingSurface;)V

    .line 181
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/camera/core/impl/utils/futures/FutureChain;->transform(Landroidx/arch/core/util/Function;Ljava/util/concurrent/Executor;)Landroidx/camera/core/impl/utils/futures/FutureChain;

    move-result-object v0

    return-object v0
.end method
