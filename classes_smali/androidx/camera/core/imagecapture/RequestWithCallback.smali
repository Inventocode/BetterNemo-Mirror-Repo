.class Landroidx/camera/core/imagecapture/RequestWithCallback;
.super Ljava/lang/Object;
.source "RequestWithCallback.java"

# interfaces
.implements Landroidx/camera/core/imagecapture/TakePictureCallback;


# instance fields
.field private mCaptureCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mCaptureFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAborted:Z

.field private mIsComplete:Z

.field private final mTakePictureRequest:Landroidx/camera/core/imagecapture/TakePictureRequest;


# direct methods
.method public static synthetic $r8$lambda$93Da1zWfySLcgf8xbEiz3tAkZpg(Landroidx/camera/core/imagecapture/RequestWithCallback;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Landroidx/camera/core/imagecapture/RequestWithCallback;->lambda$new$0(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroidx/camera/core/imagecapture/TakePictureRequest;)V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mIsComplete:Z

    .line 51
    iput-boolean v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mIsAborted:Z

    .line 54
    iput-object p1, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mTakePictureRequest:Landroidx/camera/core/imagecapture/TakePictureRequest;

    .line 55
    new-instance p1, Landroidx/camera/core/imagecapture/RequestWithCallback$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroidx/camera/core/imagecapture/RequestWithCallback$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/core/imagecapture/RequestWithCallback;)V

    invoke-static {p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mCaptureFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method private checkOnImageCaptured()V
    .registers 3

    .line 156
    iget-object v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mCaptureFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const-string v1, "onImageCaptured() must be called before onFinalResult()"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    iput-object p1, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mCaptureCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const-string p1, "CaptureCompleteFuture"

    return-object p1
.end method

.method private markComplete()V
    .registers 4

    .line 161
    iget-boolean v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mIsComplete:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "The callback can only complete once."

    invoke-static {v0, v2}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 162
    iput-boolean v1, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mIsComplete:Z

    return-void
.end method

.method private onFailure(Landroidx/camera/core/ImageCaptureException;)V
    .registers 3

    .line 167
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 168
    iget-object v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mTakePictureRequest:Landroidx/camera/core/imagecapture/TakePictureRequest;

    invoke-virtual {v0, p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->onError(Landroidx/camera/core/ImageCaptureException;)V

    return-void
.end method


# virtual methods
.method abort(Landroidx/camera/core/ImageCaptureException;)V
    .registers 4

    .line 137
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mIsAborted:Z

    .line 139
    iget-object v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mCaptureCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 140
    invoke-direct {p0, p1}, Landroidx/camera/core/imagecapture/RequestWithCallback;->onFailure(Landroidx/camera/core/ImageCaptureException;)V

    return-void
.end method

.method getCaptureFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 151
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 152
    iget-object v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mCaptureFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method public isAborted()Z
    .registers 2

    .line 117
    iget-boolean v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mIsAborted:Z

    return v0
.end method

.method public onCaptureFailure(Landroidx/camera/core/ImageCaptureException;)V
    .registers 4

    .line 123
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 124
    iget-boolean v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mIsAborted:Z

    if-eqz v0, :cond_8

    return-void

    .line 128
    :cond_8
    invoke-direct {p0}, Landroidx/camera/core/imagecapture/RequestWithCallback;->markComplete()V

    .line 129
    iget-object v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mCaptureCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 132
    invoke-direct {p0, p1}, Landroidx/camera/core/imagecapture/RequestWithCallback;->onFailure(Landroidx/camera/core/ImageCaptureException;)V

    return-void
.end method

.method public onFinalResult(Landroidx/camera/core/ImageCapture$OutputFileResults;)V
    .registers 3

    .line 77
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 78
    iget-boolean v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mIsAborted:Z

    if-eqz v0, :cond_8

    return-void

    .line 83
    :cond_8
    invoke-direct {p0}, Landroidx/camera/core/imagecapture/RequestWithCallback;->checkOnImageCaptured()V

    .line 84
    invoke-direct {p0}, Landroidx/camera/core/imagecapture/RequestWithCallback;->markComplete()V

    .line 85
    iget-object v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mTakePictureRequest:Landroidx/camera/core/imagecapture/TakePictureRequest;

    invoke-virtual {v0, p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->onResult(Landroidx/camera/core/ImageCapture$OutputFileResults;)V

    return-void
.end method

.method public onFinalResult(Landroidx/camera/core/ImageProxy;)V
    .registers 3

    .line 91
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 92
    iget-boolean v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mIsAborted:Z

    if-eqz v0, :cond_8

    return-void

    .line 96
    :cond_8
    invoke-direct {p0}, Landroidx/camera/core/imagecapture/RequestWithCallback;->checkOnImageCaptured()V

    .line 97
    invoke-direct {p0}, Landroidx/camera/core/imagecapture/RequestWithCallback;->markComplete()V

    .line 98
    iget-object v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mTakePictureRequest:Landroidx/camera/core/imagecapture/TakePictureRequest;

    invoke-virtual {v0, p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->onResult(Landroidx/camera/core/ImageProxy;)V

    return-void
.end method

.method public onImageCaptured()V
    .registers 3

    .line 65
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 66
    iget-boolean v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mIsAborted:Z

    if-eqz v0, :cond_8

    return-void

    .line 70
    :cond_8
    iget-object v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mCaptureCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method public onProcessFailure(Landroidx/camera/core/ImageCaptureException;)V
    .registers 3

    .line 105
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 106
    iget-boolean v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mIsAborted:Z

    if-eqz v0, :cond_8

    return-void

    .line 110
    :cond_8
    invoke-direct {p0}, Landroidx/camera/core/imagecapture/RequestWithCallback;->checkOnImageCaptured()V

    .line 111
    invoke-direct {p0}, Landroidx/camera/core/imagecapture/RequestWithCallback;->markComplete()V

    .line 112
    invoke-direct {p0, p1}, Landroidx/camera/core/imagecapture/RequestWithCallback;->onFailure(Landroidx/camera/core/ImageCaptureException;)V

    return-void
.end method
