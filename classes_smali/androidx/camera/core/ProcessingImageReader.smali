.class Landroidx/camera/core/ProcessingImageReader;
.super Ljava/lang/Object;
.source "ProcessingImageReader.java"

# interfaces
.implements Landroidx/camera/core/impl/ImageReaderProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/ProcessingImageReader$OnProcessingErrorCallback;,
        Landroidx/camera/core/ProcessingImageReader$Builder;
    }
.end annotation


# instance fields
.field private final mCaptureIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mCaptureProcessor:Landroidx/camera/core/impl/CaptureProcessor;

.field private mCaptureStageReadyCallback:Landroidx/camera/core/impl/utils/futures/FutureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/utils/futures/FutureCallback<",
            "Ljava/util/List<",
            "Landroidx/camera/core/ImageProxy;",
            ">;>;"
        }
    .end annotation
.end field

.field mCloseCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mCloseFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field mClosed:Z

.field mErrorCallbackExecutor:Ljava/util/concurrent/Executor;

.field mExecutor:Ljava/util/concurrent/Executor;

.field private mImageProcessedListener:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

.field final mInputImageReader:Landroidx/camera/core/impl/ImageReaderProxy;

.field mListener:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

.field final mLock:Ljava/lang/Object;

.field mOnProcessingErrorCallback:Landroidx/camera/core/ProcessingImageReader$OnProcessingErrorCallback;

.field final mOutputImageReader:Landroidx/camera/core/impl/ImageReaderProxy;

.field final mPostProcessExecutor:Ljava/util/concurrent/Executor;

.field mProcessing:Z

.field mSettableImageProxyBundle:Landroidx/camera/core/SettableImageProxyBundle;

.field private mSettableImageProxyFutureList:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "Landroidx/camera/core/ImageProxy;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTagBundleKey:Ljava/lang/String;

.field private mTransformedListener:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

.field private final mUnderlyingCaptureProcessorCloseFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$F6sayieo1PfXrRiT_pM00rk1eEo(Landroidx/camera/core/ProcessingImageReader;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Landroidx/camera/core/ProcessingImageReader;->lambda$getCloseFuture$2(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dr5KT81bjHBIsZhTkHHSrKGhFOU(Landroidx/camera/core/ProcessingImageReader;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/camera/core/ProcessingImageReader;->lambda$closeAndCompleteFutureIfNecessary$0(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rXPV3yv984HuEh6XgeYy-RvNVm4(Ljava/lang/Void;)Ljava/lang/Void;
    .registers 1

    invoke-static {p0}, Landroidx/camera/core/ProcessingImageReader;->lambda$getCloseFuture$1(Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroidx/camera/core/ProcessingImageReader$Builder;)V
    .registers 8

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/ProcessingImageReader;->mLock:Ljava/lang/Object;

    .line 69
    new-instance v0, Landroidx/camera/core/ProcessingImageReader$1;

    invoke-direct {v0, p0}, Landroidx/camera/core/ProcessingImageReader$1;-><init>(Landroidx/camera/core/ProcessingImageReader;)V

    iput-object v0, p0, Landroidx/camera/core/ProcessingImageReader;->mTransformedListener:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    .line 78
    new-instance v0, Landroidx/camera/core/ProcessingImageReader$2;

    invoke-direct {v0, p0}, Landroidx/camera/core/ProcessingImageReader$2;-><init>(Landroidx/camera/core/ProcessingImageReader;)V

    iput-object v0, p0, Landroidx/camera/core/ProcessingImageReader;->mImageProcessedListener:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    .line 105
    new-instance v0, Landroidx/camera/core/ProcessingImageReader$3;

    invoke-direct {v0, p0}, Landroidx/camera/core/ProcessingImageReader$3;-><init>(Landroidx/camera/core/ProcessingImageReader;)V

    iput-object v0, p0, Landroidx/camera/core/ProcessingImageReader;->mCaptureStageReadyCallback:Landroidx/camera/core/impl/utils/futures/FutureCallback;

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Landroidx/camera/core/ProcessingImageReader;->mClosed:Z

    .line 152
    iput-boolean v0, p0, Landroidx/camera/core/ProcessingImageReader;->mProcessing:Z

    .line 184
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/ProcessingImageReader;->mTagBundleKey:Ljava/lang/String;

    .line 186
    new-instance v0, Landroidx/camera/core/SettableImageProxyBundle;

    .line 189
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroidx/camera/core/ProcessingImageReader;->mTagBundleKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/SettableImageProxyBundle;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/camera/core/ProcessingImageReader;->mSettableImageProxyBundle:Landroidx/camera/core/SettableImageProxyBundle;

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/ProcessingImageReader;->mCaptureIdList:Ljava/util/List;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/ProcessingImageReader;->mSettableImageProxyFutureList:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 203
    iget-object v0, p1, Landroidx/camera/core/ProcessingImageReader$Builder;->mInputImageReader:Landroidx/camera/core/impl/ImageReaderProxy;

    invoke-interface {v0}, Landroidx/camera/core/impl/ImageReaderProxy;->getMaxImages()I

    move-result v0

    iget-object v1, p1, Landroidx/camera/core/ProcessingImageReader$Builder;->mCaptureBundle:Landroidx/camera/core/impl/CaptureBundle;

    .line 204
    invoke-interface {v1}, Landroidx/camera/core/impl/CaptureBundle;->getCaptureStages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_b7

    .line 209
    iget-object v0, p1, Landroidx/camera/core/ProcessingImageReader$Builder;->mInputImageReader:Landroidx/camera/core/impl/ImageReaderProxy;

    iput-object v0, p0, Landroidx/camera/core/ProcessingImageReader;->mInputImageReader:Landroidx/camera/core/impl/ImageReaderProxy;

    .line 214
    invoke-interface {v0}, Landroidx/camera/core/impl/ImageReaderProxy;->getWidth()I

    move-result v1

    .line 215
    invoke-interface {v0}, Landroidx/camera/core/impl/ImageReaderProxy;->getHeight()I

    move-result v2

    .line 217
    iget v3, p1, Landroidx/camera/core/ProcessingImageReader$Builder;->mOutputFormat:I

    const/16 v4, 0x100

    if-ne v3, v4, :cond_7b

    mul-int v1, v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x3fc00000  # 1.5f

    mul-float v1, v1, v2

    float-to-int v1, v1

    const v2, 0xfa00

    add-int/2addr v1, v2

    const/4 v2, 0x1

    .line 226
    :cond_7b
    new-instance v4, Landroidx/camera/core/AndroidImageReaderProxy;

    .line 228
    invoke-interface {v0}, Landroidx/camera/core/impl/ImageReaderProxy;->getMaxImages()I

    move-result v5

    .line 227
    invoke-static {v1, v2, v3, v5}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    invoke-direct {v4, v1}, Landroidx/camera/core/AndroidImageReaderProxy;-><init>(Landroid/media/ImageReader;)V

    iput-object v4, p0, Landroidx/camera/core/ProcessingImageReader;->mOutputImageReader:Landroidx/camera/core/impl/ImageReaderProxy;

    .line 230
    iget-object v1, p1, Landroidx/camera/core/ProcessingImageReader$Builder;->mPostProcessExecutor:Ljava/util/concurrent/Executor;

    iput-object v1, p0, Landroidx/camera/core/ProcessingImageReader;->mPostProcessExecutor:Ljava/util/concurrent/Executor;

    .line 231
    iget-object v1, p1, Landroidx/camera/core/ProcessingImageReader$Builder;->mCaptureProcessor:Landroidx/camera/core/impl/CaptureProcessor;

    iput-object v1, p0, Landroidx/camera/core/ProcessingImageReader;->mCaptureProcessor:Landroidx/camera/core/impl/CaptureProcessor;

    .line 232
    invoke-interface {v4}, Landroidx/camera/core/impl/ImageReaderProxy;->getSurface()Landroid/view/Surface;

    move-result-object v2

    iget v3, p1, Landroidx/camera/core/ProcessingImageReader$Builder;->mOutputFormat:I

    invoke-interface {v1, v2, v3}, Landroidx/camera/core/impl/CaptureProcessor;->onOutputSurface(Landroid/view/Surface;I)V

    .line 233
    new-instance v2, Landroid/util/Size;

    .line 234
    invoke-interface {v0}, Landroidx/camera/core/impl/ImageReaderProxy;->getWidth()I

    move-result v3

    invoke-interface {v0}, Landroidx/camera/core/impl/ImageReaderProxy;->getHeight()I

    move-result v0

    invoke-direct {v2, v3, v0}, Landroid/util/Size;-><init>(II)V

    .line 233
    invoke-interface {v1, v2}, Landroidx/camera/core/impl/CaptureProcessor;->onResolutionUpdate(Landroid/util/Size;)V

    .line 236
    invoke-interface {v1}, Landroidx/camera/core/impl/CaptureProcessor;->getCloseFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/ProcessingImageReader;->mUnderlyingCaptureProcessorCloseFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 238
    iget-object p1, p1, Landroidx/camera/core/ProcessingImageReader$Builder;->mCaptureBundle:Landroidx/camera/core/impl/CaptureBundle;

    invoke-virtual {p0, p1}, Landroidx/camera/core/ProcessingImageReader;->setCaptureBundle(Landroidx/camera/core/impl/CaptureBundle;)V

    return-void

    .line 205
    :cond_b7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "MetadataImageReader is smaller than CaptureBundle."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private cancelSettableImageProxyBundleFutureList()V
    .registers 4

    .line 432
    iget-object v0, p0, Landroidx/camera/core/ProcessingImageReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 433
    :try_start_3
    iget-object v1, p0, Landroidx/camera/core/ProcessingImageReader;->mSettableImageProxyFutureList:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_11

    .line 434
    iget-object v1, p0, Landroidx/camera/core/ProcessingImageReader;->mSettableImageProxyFutureList:Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 437
    :cond_11
    iget-object v1, p0, Landroidx/camera/core/ProcessingImageReader;->mSettableImageProxyBundle:Landroidx/camera/core/SettableImageProxyBundle;

    invoke-virtual {v1}, Landroidx/camera/core/SettableImageProxyBundle;->reset()V

    .line 438
    monitor-exit v0

    return-void

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private synthetic lambda$closeAndCompleteFutureIfNecessary$0(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .registers 3

    .line 300
    invoke-direct {p0}, Landroidx/camera/core/ProcessingImageReader;->cancelSettableImageProxyBundleFutureList()V

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    .line 302
    invoke-virtual {p1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method private static synthetic lambda$getCloseFuture$1(Ljava/lang/Void;)Ljava/lang/Void;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getCloseFuture$2(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 327
    iget-object v0, p0, Landroidx/camera/core/ProcessingImageReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 328
    :try_start_3
    iput-object p1, p0, Landroidx/camera/core/ProcessingImageReader;->mCloseCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 329
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    const-string p1, "ProcessingImageReader-close"

    return-object p1

    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method


# virtual methods
.method public acquireLatestImage()Landroidx/camera/core/ImageProxy;
    .registers 3

    .line 244
    iget-object v0, p0, Landroidx/camera/core/ProcessingImageReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_3
    iget-object v1, p0, Landroidx/camera/core/ProcessingImageReader;->mOutputImageReader:Landroidx/camera/core/impl/ImageReaderProxy;

    invoke-interface {v1}, Landroidx/camera/core/impl/ImageReaderProxy;->acquireLatestImage()Landroidx/camera/core/ImageProxy;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    .line 246
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public acquireNextImage()Landroidx/camera/core/ImageProxy;
    .registers 3

    .line 252
    iget-object v0, p0, Landroidx/camera/core/ProcessingImageReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 253
    :try_start_3
    iget-object v1, p0, Landroidx/camera/core/ProcessingImageReader;->mOutputImageReader:Landroidx/camera/core/impl/ImageReaderProxy;

    invoke-interface {v1}, Landroidx/camera/core/impl/ImageReaderProxy;->acquireNextImage()Landroidx/camera/core/ImageProxy;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    .line 254
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public clearOnImageAvailableListener()V
    .registers 3

    .line 388
    iget-object v0, p0, Landroidx/camera/core/ProcessingImageReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 389
    :try_start_4
    iput-object v1, p0, Landroidx/camera/core/ProcessingImageReader;->mListener:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    .line 390
    iput-object v1, p0, Landroidx/camera/core/ProcessingImageReader;->mExecutor:Ljava/util/concurrent/Executor;

    .line 391
    iget-object v1, p0, Landroidx/camera/core/ProcessingImageReader;->mInputImageReader:Landroidx/camera/core/impl/ImageReaderProxy;

    invoke-interface {v1}, Landroidx/camera/core/impl/ImageReaderProxy;->clearOnImageAvailableListener()V

    .line 392
    iget-object v1, p0, Landroidx/camera/core/ProcessingImageReader;->mOutputImageReader:Landroidx/camera/core/impl/ImageReaderProxy;

    invoke-interface {v1}, Landroidx/camera/core/impl/ImageReaderProxy;->clearOnImageAvailableListener()V

    .line 394
    iget-boolean v1, p0, Landroidx/camera/core/ProcessingImageReader;->mProcessing:Z

    if-nez v1, :cond_1b

    .line 395
    iget-object v1, p0, Landroidx/camera/core/ProcessingImageReader;->mSettableImageProxyBundle:Landroidx/camera/core/SettableImageProxyBundle;

    invoke-virtual {v1}, Landroidx/camera/core/SettableImageProxyBundle;->close()V

    .line 397
    :cond_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public close()V
    .registers 3

    .line 259
    iget-object v0, p0, Landroidx/camera/core/ProcessingImageReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 260
    :try_start_3
    iget-boolean v1, p0, Landroidx/camera/core/ProcessingImageReader;->mClosed:Z

    if-eqz v1, :cond_9

    .line 261
    monitor-exit v0

    return-void

    .line 266
    :cond_9
    iget-object v1, p0, Landroidx/camera/core/ProcessingImageReader;->mInputImageReader:Landroidx/camera/core/impl/ImageReaderProxy;

    invoke-interface {v1}, Landroidx/camera/core/impl/ImageReaderProxy;->clearOnImageAvailableListener()V

    .line 267
    iget-object v1, p0, Landroidx/camera/core/ProcessingImageReader;->mOutputImageReader:Landroidx/camera/core/impl/ImageReaderProxy;

    invoke-interface {v1}, Landroidx/camera/core/impl/ImageReaderProxy;->clearOnImageAvailableListener()V

    const/4 v1, 0x1

    .line 269
    iput-boolean v1, p0, Landroidx/camera/core/ProcessingImageReader;->mClosed:Z

    .line 270
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_20

    .line 272
    iget-object v0, p0, Landroidx/camera/core/ProcessingImageReader;->mCaptureProcessor:Landroidx/camera/core/impl/CaptureProcessor;

    invoke-interface {v0}, Landroidx/camera/core/impl/CaptureProcessor;->close()V

    .line 273
    invoke-virtual {p0}, Landroidx/camera/core/ProcessingImageReader;->closeAndCompleteFutureIfNecessary()V

    return-void

    :catchall_20
    move-exception v1

    .line 270
    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method closeAndCompleteFutureIfNecessary()V
    .registers 6

    .line 281
    iget-object v0, p0, Landroidx/camera/core/ProcessingImageReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 282
    :try_start_3
    iget-boolean v1, p0, Landroidx/camera/core/ProcessingImageReader;->mClosed:Z

    .line 283
    iget-boolean v2, p0, Landroidx/camera/core/ProcessingImageReader;->mProcessing:Z

    .line 284
    iget-object v3, p0, Landroidx/camera/core/ProcessingImageReader;->mCloseCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-eqz v1, :cond_1c

    if-nez v2, :cond_1c

    .line 290
    iget-object v4, p0, Landroidx/camera/core/ProcessingImageReader;->mInputImageReader:Landroidx/camera/core/impl/ImageReaderProxy;

    invoke-interface {v4}, Landroidx/camera/core/impl/ImageReaderProxy;->close()V

    .line 291
    iget-object v4, p0, Landroidx/camera/core/ProcessingImageReader;->mSettableImageProxyBundle:Landroidx/camera/core/SettableImageProxyBundle;

    invoke-virtual {v4}, Landroidx/camera/core/SettableImageProxyBundle;->close()V

    .line 292
    iget-object v4, p0, Landroidx/camera/core/ProcessingImageReader;->mOutputImageReader:Landroidx/camera/core/impl/ImageReaderProxy;

    invoke-interface {v4}, Landroidx/camera/core/impl/ImageReaderProxy;->close()V

    .line 294
    :cond_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_30

    if-eqz v1, :cond_2f

    if-nez v2, :cond_2f

    .line 299
    iget-object v0, p0, Landroidx/camera/core/ProcessingImageReader;->mUnderlyingCaptureProcessorCloseFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Landroidx/camera/core/ProcessingImageReader$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v3}, Landroidx/camera/core/ProcessingImageReader$$ExternalSyntheticLambda2;-><init>(Landroidx/camera/core/ProcessingImageReader;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    .line 304
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 299
    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_2f
    return-void

    :catchall_30
    move-exception v1

    .line 294
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v1
.end method

.method getCameraCaptureCallback()Landroidx/camera/core/impl/CameraCaptureCallback;
    .registers 4

    .line 450
    iget-object v0, p0, Landroidx/camera/core/ProcessingImageReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 451
    :try_start_3
    iget-object v1, p0, Landroidx/camera/core/ProcessingImageReader;->mInputImageReader:Landroidx/camera/core/impl/ImageReaderProxy;

    instance-of v2, v1, Landroidx/camera/core/MetadataImageReader;

    if-eqz v2, :cond_11

    .line 452
    check-cast v1, Landroidx/camera/core/MetadataImageReader;

    invoke-virtual {v1}, Landroidx/camera/core/MetadataImageReader;->getCameraCaptureCallback()Landroidx/camera/core/impl/CameraCaptureCallback;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 454
    :cond_11
    new-instance v1, Landroidx/camera/core/ProcessingImageReader$4;

    invoke-direct {v1, p0}, Landroidx/camera/core/ProcessingImageReader$4;-><init>(Landroidx/camera/core/ProcessingImageReader;)V

    monitor-exit v0

    return-object v1

    :catchall_18
    move-exception v1

    .line 456
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method getCloseFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Landroidx/camera/core/ProcessingImageReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 318
    :try_start_3
    iget-boolean v1, p0, Landroidx/camera/core/ProcessingImageReader;->mClosed:Z

    if-eqz v1, :cond_18

    iget-boolean v1, p0, Landroidx/camera/core/ProcessingImageReader;->mProcessing:Z

    if-nez v1, :cond_18

    .line 321
    iget-object v1, p0, Landroidx/camera/core/ProcessingImageReader;->mUnderlyingCaptureProcessorCloseFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    sget-object v2, Landroidx/camera/core/ProcessingImageReader$$ExternalSyntheticLambda0;->INSTANCE:Landroidx/camera/core/ProcessingImageReader$$ExternalSyntheticLambda0;

    .line 322
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 321
    invoke-static {v1, v2, v3}, Landroidx/camera/core/impl/utils/futures/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/arch/core/util/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    goto :goto_2d

    .line 324
    :cond_18
    iget-object v1, p0, Landroidx/camera/core/ProcessingImageReader;->mCloseFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    if-nez v1, :cond_27

    .line 325
    new-instance v1, Landroidx/camera/core/ProcessingImageReader$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroidx/camera/core/ProcessingImageReader$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/core/ProcessingImageReader;)V

    invoke-static {v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/core/ProcessingImageReader;->mCloseFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 333
    :cond_27
    iget-object v1, p0, Landroidx/camera/core/ProcessingImageReader;->mCloseFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v1}, Landroidx/camera/core/impl/utils/futures/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 335
    :goto_2d
    monitor-exit v0

    return-object v1

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public getHeight()I
    .registers 3

    .line 341
    iget-object v0, p0, Landroidx/camera/core/ProcessingImageReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 342
    :try_start_3
    iget-object v1, p0, Landroidx/camera/core/ProcessingImageReader;->mInputImageReader:Landroidx/camera/core/impl/ImageReaderProxy;

    invoke-interface {v1}, Landroidx/camera/core/impl/ImageReaderProxy;->getHeight()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    .line 343
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getImageFormat()I
    .registers 3

    .line 355
    iget-object v0, p0, Landroidx/camera/core/ProcessingImageReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 356
    :try_start_3
    iget-object v1, p0, Landroidx/camera/core/ProcessingImageReader;->mOutputImageReader:Landroidx/camera/core/impl/ImageReaderProxy;

    invoke-interface {v1}, Landroidx/camera/core/impl/ImageReaderProxy;->getImageFormat()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    .line 357
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getMaxImages()I
    .registers 3

    .line 362
    iget-object v0, p0, Landroidx/camera/core/ProcessingImageReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 363
    :try_start_3
    iget-object v1, p0, Landroidx/camera/core/ProcessingImageReader;->mInputImageReader:Landroidx/camera/core/impl/ImageReaderProxy;

    invoke-interface {v1}, Landroidx/camera/core/impl/ImageReaderProxy;->getMaxImages()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    .line 364
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 3

    .line 370
    iget-object v0, p0, Landroidx/camera/core/ProcessingImageReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    :try_start_3
    iget-object v1, p0, Landroidx/camera/core/ProcessingImageReader;->mInputImageReader:Landroidx/camera/core/impl/ImageReaderProxy;

    invoke-interface {v1}, Landroidx/camera/core/impl/ImageReaderProxy;->getSurface()Landroid/view/Surface;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    .line 372
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getTagBundleKey()Ljava/lang/String;
    .registers 2

    .line 444
    iget-object v0, p0, Landroidx/camera/core/ProcessingImageReader;->mTagBundleKey:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .registers 3

    .line 348
    iget-object v0, p0, Landroidx/camera/core/ProcessingImageReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 349
    :try_start_3
    iget-object v1, p0, Landroidx/camera/core/ProcessingImageReader;->mInputImageReader:Landroidx/camera/core/impl/ImageReaderProxy;

    invoke-interface {v1}, Landroidx/camera/core/impl/ImageReaderProxy;->getWidth()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    .line 350
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method imageIncoming(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .registers 7

    .line 488
    iget-object v0, p0, Landroidx/camera/core/ProcessingImageReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 489
    :try_start_3
    iget-boolean v1, p0, Landroidx/camera/core/ProcessingImageReader;->mClosed:Z

    if-eqz v1, :cond_9

    .line 490
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_54

    return-void

    .line 495
    :cond_9
    :try_start_9
    invoke-interface {p1}, Landroidx/camera/core/impl/ImageReaderProxy;->acquireNextImage()Landroidx/camera/core/ImageProxy;

    move-result-object p1
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_d} :catch_49
    .catchall {:try_start_9 .. :try_end_d} :catchall_47

    if-eqz p1, :cond_51

    .line 502
    :try_start_f
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v1

    invoke-interface {v1}, Landroidx/camera/core/ImageInfo;->getTagBundle()Landroidx/camera/core/impl/TagBundle;

    move-result-object v1

    iget-object v2, p0, Landroidx/camera/core/ProcessingImageReader;->mTagBundleKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/TagBundle;->getTag(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 504
    iget-object v2, p0, Landroidx/camera/core/ProcessingImageReader;->mCaptureIdList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    const-string v2, "ProcessingImageReader"

    .line 505
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImageProxyBundle does not contain this id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    goto :goto_51

    .line 508
    :cond_41
    iget-object v1, p0, Landroidx/camera/core/ProcessingImageReader;->mSettableImageProxyBundle:Landroidx/camera/core/SettableImageProxyBundle;

    invoke-virtual {v1, p1}, Landroidx/camera/core/SettableImageProxyBundle;->addImageProxy(Landroidx/camera/core/ImageProxy;)V
    :try_end_46
    .catchall {:try_start_f .. :try_end_46} :catchall_54

    goto :goto_51

    :catchall_47
    move-exception p1

    goto :goto_53

    :catch_49
    move-exception p1

    :try_start_4a
    const-string v1, "ProcessingImageReader"

    const-string v2, "Failed to acquire latest image."

    .line 497
    invoke-static {v1, v2, p1}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_47

    .line 512
    :cond_51
    :goto_51
    :try_start_51
    monitor-exit v0

    return-void

    .line 511
    :goto_53
    throw p1

    :catchall_54
    move-exception p1

    .line 512
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_51 .. :try_end_56} :catchall_54

    throw p1
.end method

.method public setCaptureBundle(Landroidx/camera/core/impl/CaptureBundle;)V
    .registers 6

    .line 402
    iget-object v0, p0, Landroidx/camera/core/ProcessingImageReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 403
    :try_start_3
    iget-boolean v1, p0, Landroidx/camera/core/ProcessingImageReader;->mClosed:Z

    if-eqz v1, :cond_9

    .line 404
    monitor-exit v0

    return-void

    .line 407
    :cond_9
    invoke-direct {p0}, Landroidx/camera/core/ProcessingImageReader;->cancelSettableImageProxyBundleFutureList()V

    .line 409
    invoke-interface {p1}, Landroidx/camera/core/impl/CaptureBundle;->getCaptureStages()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 410
    iget-object v1, p0, Landroidx/camera/core/ProcessingImageReader;->mInputImageReader:Landroidx/camera/core/impl/ImageReaderProxy;

    invoke-interface {v1}, Landroidx/camera/core/impl/ImageReaderProxy;->getMaxImages()I

    move-result v1

    invoke-interface {p1}, Landroidx/camera/core/impl/CaptureBundle;->getCaptureStages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_4b

    .line 415
    iget-object v1, p0, Landroidx/camera/core/ProcessingImageReader;->mCaptureIdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 417
    invoke-interface {p1}, Landroidx/camera/core/impl/CaptureBundle;->getCaptureStages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2f
    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/CaptureStage;

    if-eqz v2, :cond_2f

    .line 419
    iget-object v3, p0, Landroidx/camera/core/ProcessingImageReader;->mCaptureIdList:Ljava/util/List;

    invoke-interface {v2}, Landroidx/camera/core/impl/CaptureStage;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 411
    :cond_4b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "CaptureBundle is larger than InputImageReader."

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 425
    :cond_53
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/ProcessingImageReader;->mTagBundleKey:Ljava/lang/String;

    .line 426
    new-instance v1, Landroidx/camera/core/SettableImageProxyBundle;

    iget-object v2, p0, Landroidx/camera/core/ProcessingImageReader;->mCaptureIdList:Ljava/util/List;

    invoke-direct {v1, v2, p1}, Landroidx/camera/core/SettableImageProxyBundle;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object v1, p0, Landroidx/camera/core/ProcessingImageReader;->mSettableImageProxyBundle:Landroidx/camera/core/SettableImageProxyBundle;

    .line 427
    invoke-virtual {p0}, Landroidx/camera/core/ProcessingImageReader;->setupSettableImageProxyBundleCallbacks()V

    .line 428
    monitor-exit v0

    return-void

    :catchall_6b
    move-exception p1

    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_3 .. :try_end_6d} :catchall_6b

    throw p1
.end method

.method public setOnImageAvailableListener(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V
    .registers 5

    .line 378
    iget-object v0, p0, Landroidx/camera/core/ProcessingImageReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 379
    :try_start_3
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    iput-object p1, p0, Landroidx/camera/core/ProcessingImageReader;->mListener:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    .line 380
    invoke-static {p2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Landroidx/camera/core/ProcessingImageReader;->mExecutor:Ljava/util/concurrent/Executor;

    .line 381
    iget-object p1, p0, Landroidx/camera/core/ProcessingImageReader;->mInputImageReader:Landroidx/camera/core/impl/ImageReaderProxy;

    iget-object v1, p0, Landroidx/camera/core/ProcessingImageReader;->mTransformedListener:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    invoke-interface {p1, v1, p2}, Landroidx/camera/core/impl/ImageReaderProxy;->setOnImageAvailableListener(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V

    .line 382
    iget-object p1, p0, Landroidx/camera/core/ProcessingImageReader;->mOutputImageReader:Landroidx/camera/core/impl/ImageReaderProxy;

    iget-object v1, p0, Landroidx/camera/core/ProcessingImageReader;->mImageProcessedListener:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    invoke-interface {p1, v1, p2}, Landroidx/camera/core/impl/ImageReaderProxy;->setOnImageAvailableListener(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V

    .line 383
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p1
.end method

.method public setOnProcessingErrorCallback(Ljava/util/concurrent/Executor;Landroidx/camera/core/ProcessingImageReader$OnProcessingErrorCallback;)V
    .registers 4

    .line 467
    iget-object v0, p0, Landroidx/camera/core/ProcessingImageReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 468
    :try_start_3
    iput-object p1, p0, Landroidx/camera/core/ProcessingImageReader;->mErrorCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 469
    iput-object p2, p0, Landroidx/camera/core/ProcessingImageReader;->mOnProcessingErrorCallback:Landroidx/camera/core/ProcessingImageReader$OnProcessingErrorCallback;

    .line 470
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p1
.end method

.method setupSettableImageProxyBundleCallbacks()V
    .registers 5

    .line 475
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 476
    iget-object v1, p0, Landroidx/camera/core/ProcessingImageReader;->mCaptureIdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 477
    iget-object v3, p0, Landroidx/camera/core/ProcessingImageReader;->mSettableImageProxyBundle:Landroidx/camera/core/SettableImageProxyBundle;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroidx/camera/core/SettableImageProxyBundle;->getImageProxy(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 480
    :cond_25
    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->allAsList(Ljava/util/Collection;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/core/ProcessingImageReader;->mSettableImageProxyFutureList:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 482
    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->allAsList(Ljava/util/Collection;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/core/ProcessingImageReader;->mCaptureStageReadyCallback:Landroidx/camera/core/impl/utils/futures/FutureCallback;

    iget-object v2, p0, Landroidx/camera/core/ProcessingImageReader;->mPostProcessExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Landroidx/camera/core/impl/utils/futures/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method
