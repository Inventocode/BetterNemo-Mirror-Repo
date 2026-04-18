.class public Landroidx/camera/core/imagecapture/TakePictureManager;
.super Ljava/lang/Object;
.source "TakePictureManager.java"

# interfaces
.implements Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;


# instance fields
.field final mImageCaptureControl:Landroidx/camera/core/imagecapture/ImageCaptureControl;

.field final mImagePipeline:Landroidx/camera/core/imagecapture/ImagePipeline;

.field mInFlightRequest:Landroidx/camera/core/imagecapture/RequestWithCallback;

.field final mNewRequests:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Landroidx/camera/core/imagecapture/TakePictureRequest;",
            ">;"
        }
    .end annotation
.end field

.field mPaused:Z


# direct methods
.method public static synthetic $r8$lambda$-bPg_V8GpljUVsmpRIyVGT2n-dI(Landroidx/camera/core/imagecapture/TakePictureManager;Landroidx/camera/core/imagecapture/ProcessingRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/camera/core/imagecapture/TakePictureManager;->lambda$issueNextRequest$0(Landroidx/camera/core/imagecapture/ProcessingRequest;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Nzu5ojqIV2b8aNDH-PAy0kzMxx4(Landroidx/camera/core/imagecapture/TakePictureManager;)V
    .registers 1

    invoke-direct {p0}, Landroidx/camera/core/imagecapture/TakePictureManager;->lambda$trackCurrentRequest$1()V

    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/imagecapture/ImageCaptureControl;Landroidx/camera/core/imagecapture/ImagePipeline;)V
    .registers 4

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mNewRequests:Ljava/util/Deque;

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mPaused:Z

    .line 90
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 91
    iput-object p1, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mImageCaptureControl:Landroidx/camera/core/imagecapture/ImageCaptureControl;

    .line 92
    iput-object p2, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mImagePipeline:Landroidx/camera/core/imagecapture/ImagePipeline;

    .line 93
    invoke-virtual {p2, p0}, Landroidx/camera/core/imagecapture/ImagePipeline;->setOnImageCloseListener(Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;)V

    return-void
.end method

.method private synthetic lambda$issueNextRequest$0(Landroidx/camera/core/imagecapture/ProcessingRequest;)V
    .registers 3

    .line 184
    iget-object v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mImagePipeline:Landroidx/camera/core/imagecapture/ImagePipeline;

    invoke-virtual {v0, p1}, Landroidx/camera/core/imagecapture/ImagePipeline;->postProcess(Landroidx/camera/core/imagecapture/ProcessingRequest;)V

    return-void
.end method

.method private synthetic lambda$trackCurrentRequest$1()V
    .registers 2

    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mInFlightRequest:Landroidx/camera/core/imagecapture/RequestWithCallback;

    .line 195
    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureManager;->issueNextRequest()V

    return-void
.end method

.method private submitCameraRequest(Landroidx/camera/core/imagecapture/CameraRequest;Ljava/lang/Runnable;)V
    .registers 5

    .line 208
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 209
    iget-object v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mImageCaptureControl:Landroidx/camera/core/imagecapture/ImageCaptureControl;

    invoke-interface {v0}, Landroidx/camera/core/imagecapture/ImageCaptureControl;->lockFlashMode()V

    .line 210
    iget-object v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mImageCaptureControl:Landroidx/camera/core/imagecapture/ImageCaptureControl;

    .line 211
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/CameraRequest;->getCaptureConfigs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/camera/core/imagecapture/ImageCaptureControl;->submitStillCaptureRequests(Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 212
    new-instance v1, Landroidx/camera/core/imagecapture/TakePictureManager$1;

    invoke-direct {v1, p0, p2, p1}, Landroidx/camera/core/imagecapture/TakePictureManager$1;-><init>(Landroidx/camera/core/imagecapture/TakePictureManager;Ljava/lang/Runnable;Landroidx/camera/core/imagecapture/CameraRequest;)V

    .line 231
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    .line 212
    invoke-static {v0, v1, p1}, Landroidx/camera/core/impl/utils/futures/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private trackCurrentRequest(Landroidx/camera/core/imagecapture/RequestWithCallback;)V
    .registers 4

    .line 191
    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureManager;->hasInFlightRequest()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 192
    iput-object p1, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mInFlightRequest:Landroidx/camera/core/imagecapture/RequestWithCallback;

    .line 193
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/RequestWithCallback;->getCaptureFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v0, Landroidx/camera/core/imagecapture/TakePictureManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroidx/camera/core/imagecapture/TakePictureManager$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/core/imagecapture/TakePictureManager;)V

    .line 196
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 193
    invoke-interface {p1, v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public abortRequests()V
    .registers 5

    .line 134
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 135
    new-instance v0, Landroidx/camera/core/ImageCaptureException;

    const/4 v1, 0x3

    const-string v2, "Camera is closed."

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    iget-object v1, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mNewRequests:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/imagecapture/TakePictureRequest;

    .line 140
    invoke-virtual {v2, v0}, Landroidx/camera/core/imagecapture/TakePictureRequest;->onError(Landroidx/camera/core/ImageCaptureException;)V

    goto :goto_12

    .line 142
    :cond_22
    iget-object v1, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mNewRequests:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->clear()V

    .line 145
    iget-object v1, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mInFlightRequest:Landroidx/camera/core/imagecapture/RequestWithCallback;

    if-eqz v1, :cond_2e

    .line 147
    invoke-virtual {v1, v0}, Landroidx/camera/core/imagecapture/RequestWithCallback;->abort(Landroidx/camera/core/ImageCaptureException;)V

    :cond_2e
    return-void
.end method

.method hasInFlightRequest()Z
    .registers 2

    .line 236
    iget-object v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mInFlightRequest:Landroidx/camera/core/imagecapture/RequestWithCallback;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method issueNextRequest()V
    .registers 4

    .line 156
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    const-string v0, "TakePictureManager"

    const-string v1, "Issue the next TakePictureRequest."

    .line 157
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureManager;->hasInFlightRequest()Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "There is already a request in-flight."

    .line 159
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 162
    :cond_16
    iget-boolean v1, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mPaused:Z

    if-eqz v1, :cond_20

    const-string v1, "The class is paused."

    .line 163
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 166
    :cond_20
    iget-object v1, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mImagePipeline:Landroidx/camera/core/imagecapture/ImagePipeline;

    invoke-virtual {v1}, Landroidx/camera/core/imagecapture/ImagePipeline;->getCapacity()I

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, "Too many acquire images. Close image to be able to process next."

    .line 167
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 170
    :cond_2e
    iget-object v1, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mNewRequests:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/imagecapture/TakePictureRequest;

    if-nez v1, :cond_3e

    const-string v1, "No new request."

    .line 172
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 176
    :cond_3e
    new-instance v0, Landroidx/camera/core/imagecapture/RequestWithCallback;

    invoke-direct {v0, v1}, Landroidx/camera/core/imagecapture/RequestWithCallback;-><init>(Landroidx/camera/core/imagecapture/TakePictureRequest;)V

    .line 177
    invoke-direct {p0, v0}, Landroidx/camera/core/imagecapture/TakePictureManager;->trackCurrentRequest(Landroidx/camera/core/imagecapture/RequestWithCallback;)V

    .line 180
    iget-object v2, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mImagePipeline:Landroidx/camera/core/imagecapture/ImagePipeline;

    .line 181
    invoke-virtual {v2, v1, v0}, Landroidx/camera/core/imagecapture/ImagePipeline;->createRequests(Landroidx/camera/core/imagecapture/TakePictureRequest;Landroidx/camera/core/imagecapture/TakePictureCallback;)Landroidx/core/util/Pair;

    move-result-object v0

    .line 182
    iget-object v1, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroidx/camera/core/imagecapture/CameraRequest;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Landroidx/camera/core/imagecapture/CameraRequest;

    .line 183
    iget-object v0, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/core/imagecapture/ProcessingRequest;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/camera/core/imagecapture/ProcessingRequest;

    .line 184
    new-instance v2, Landroidx/camera/core/imagecapture/TakePictureManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Landroidx/camera/core/imagecapture/TakePictureManager$$ExternalSyntheticLambda2;-><init>(Landroidx/camera/core/imagecapture/TakePictureManager;Landroidx/camera/core/imagecapture/ProcessingRequest;)V

    invoke-direct {p0, v1, v2}, Landroidx/camera/core/imagecapture/TakePictureManager;->submitCameraRequest(Landroidx/camera/core/imagecapture/CameraRequest;Ljava/lang/Runnable;)V

    return-void
.end method

.method public offerRequest(Landroidx/camera/core/imagecapture/TakePictureRequest;)V
    .registers 3

    .line 103
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 104
    iget-object v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mNewRequests:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureManager;->issueNextRequest()V

    return-void
.end method

.method public onImageClose(Landroidx/camera/core/ImageProxy;)V
    .registers 3

    .line 241
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v0, Landroidx/camera/core/imagecapture/TakePictureManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/camera/core/imagecapture/TakePictureManager$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/core/imagecapture/TakePictureManager;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pause()V
    .registers 2

    .line 113
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mPaused:Z

    return-void
.end method

.method public resume()V
    .registers 2

    .line 124
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mPaused:Z

    .line 126
    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureManager;->issueNextRequest()V

    return-void
.end method
