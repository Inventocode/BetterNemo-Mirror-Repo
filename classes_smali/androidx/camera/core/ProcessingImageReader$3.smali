.class Landroidx/camera/core/ProcessingImageReader$3;
.super Ljava/lang/Object;
.source "ProcessingImageReader.java"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ProcessingImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/utils/futures/FutureCallback<",
        "Ljava/util/List<",
        "Landroidx/camera/core/ImageProxy;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/core/ProcessingImageReader;


# direct methods
.method public static synthetic $r8$lambda$2WHtegmfErRnTOyfWSgRsgsEBWs(Landroidx/camera/core/ProcessingImageReader$OnProcessingErrorCallback;Ljava/lang/Exception;)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/camera/core/ProcessingImageReader$3;->lambda$onSuccess$0(Landroidx/camera/core/ProcessingImageReader$OnProcessingErrorCallback;Ljava/lang/Exception;)V

    return-void
.end method

.method constructor <init>(Landroidx/camera/core/ProcessingImageReader;)V
    .registers 2

    .line 106
    iput-object p1, p0, Landroidx/camera/core/ProcessingImageReader$3;->this$0:Landroidx/camera/core/ProcessingImageReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onSuccess$0(Landroidx/camera/core/ProcessingImageReader$OnProcessingErrorCallback;Ljava/lang/Exception;)V
    .registers 3

    .line 131
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 130
    invoke-interface {p0, v0, p1}, Landroidx/camera/core/ProcessingImageReader$OnProcessingErrorCallback;->notifyProcessingError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .registers 2

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 106
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroidx/camera/core/ProcessingImageReader$3;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/ImageProxy;",
            ">;)V"
        }
    .end annotation

    .line 112
    iget-object p1, p0, Landroidx/camera/core/ProcessingImageReader$3;->this$0:Landroidx/camera/core/ProcessingImageReader;

    iget-object p1, p1, Landroidx/camera/core/ProcessingImageReader;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 113
    :try_start_5
    iget-object v0, p0, Landroidx/camera/core/ProcessingImageReader$3;->this$0:Landroidx/camera/core/ProcessingImageReader;

    iget-boolean v1, v0, Landroidx/camera/core/ProcessingImageReader;->mClosed:Z

    if-eqz v1, :cond_d

    .line 114
    monitor-exit p1

    return-void

    :cond_d
    const/4 v1, 0x1

    .line 116
    iput-boolean v1, v0, Landroidx/camera/core/ProcessingImageReader;->mProcessing:Z

    .line 117
    iget-object v1, v0, Landroidx/camera/core/ProcessingImageReader;->mSettableImageProxyBundle:Landroidx/camera/core/SettableImageProxyBundle;

    .line 118
    iget-object v2, v0, Landroidx/camera/core/ProcessingImageReader;->mOnProcessingErrorCallback:Landroidx/camera/core/ProcessingImageReader$OnProcessingErrorCallback;

    .line 119
    iget-object v3, v0, Landroidx/camera/core/ProcessingImageReader;->mErrorCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 120
    monitor-exit p1
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_4c

    .line 122
    :try_start_17
    iget-object p1, v0, Landroidx/camera/core/ProcessingImageReader;->mCaptureProcessor:Landroidx/camera/core/impl/CaptureProcessor;

    invoke-interface {p1, v1}, Landroidx/camera/core/impl/CaptureProcessor;->process(Landroidx/camera/core/impl/ImageProxyBundle;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1c} :catch_1d

    goto :goto_37

    :catch_1d
    move-exception p1

    .line 124
    iget-object v0, p0, Landroidx/camera/core/ProcessingImageReader$3;->this$0:Landroidx/camera/core/ProcessingImageReader;

    iget-object v0, v0, Landroidx/camera/core/ProcessingImageReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_23
    iget-object v1, p0, Landroidx/camera/core/ProcessingImageReader$3;->this$0:Landroidx/camera/core/ProcessingImageReader;

    iget-object v1, v1, Landroidx/camera/core/ProcessingImageReader;->mSettableImageProxyBundle:Landroidx/camera/core/SettableImageProxyBundle;

    invoke-virtual {v1}, Landroidx/camera/core/SettableImageProxyBundle;->reset()V

    if-eqz v2, :cond_36

    if-eqz v3, :cond_36

    .line 129
    new-instance v1, Landroidx/camera/core/ProcessingImageReader$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, v2, p1}, Landroidx/camera/core/ProcessingImageReader$3$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/core/ProcessingImageReader$OnProcessingErrorCallback;Ljava/lang/Exception;)V

    invoke-interface {v3, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 133
    :cond_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_23 .. :try_end_37} :catchall_49

    .line 136
    :goto_37
    iget-object p1, p0, Landroidx/camera/core/ProcessingImageReader$3;->this$0:Landroidx/camera/core/ProcessingImageReader;

    iget-object p1, p1, Landroidx/camera/core/ProcessingImageReader;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 137
    :try_start_3c
    iget-object v0, p0, Landroidx/camera/core/ProcessingImageReader$3;->this$0:Landroidx/camera/core/ProcessingImageReader;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/camera/core/ProcessingImageReader;->mProcessing:Z

    .line 138
    monitor-exit p1
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_46

    .line 140
    invoke-virtual {v0}, Landroidx/camera/core/ProcessingImageReader;->closeAndCompleteFutureIfNecessary()V

    return-void

    :catchall_46
    move-exception v0

    .line 138
    :try_start_47
    monitor-exit p1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v0

    :catchall_49
    move-exception p1

    .line 133
    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw p1

    :catchall_4c
    move-exception v0

    .line 120
    :try_start_4d
    monitor-exit p1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v0
.end method
