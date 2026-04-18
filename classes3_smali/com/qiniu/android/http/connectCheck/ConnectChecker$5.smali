.class Lcom/qiniu/android/http/connectCheck/ConnectChecker$5;
.super Ljava/lang/Object;
.source "ConnectChecker.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/http/connectCheck/ConnectChecker;->checkHost(Ljava/lang/String;Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$completeHandler:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;

.field final synthetic val$hasCallback:[Z

.field final synthetic val$timeoutMetrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;


# direct methods
.method constructor <init>([ZLcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;)V
    .registers 4

    .line 117
    iput-object p1, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$5;->val$hasCallback:[Z

    iput-object p2, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$5;->val$timeoutMetrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    iput-object p3, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$5;->val$completeHandler:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 120
    monitor-enter p0

    .line 121
    :try_start_1
    iget-object v0, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$5;->val$hasCallback:[Z

    const/4 v1, 0x0

    aget-boolean v2, v0, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    .line 122
    monitor-exit p0

    return-object v3

    :cond_b
    const/4 v2, 0x1

    .line 124
    aput-boolean v2, v0, v1

    .line 125
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_1c

    .line 126
    iget-object v0, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$5;->val$timeoutMetrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    invoke-virtual {v0}, Lcom/qiniu/android/http/metrics/UploadMetrics;->end()V

    .line 127
    iget-object v0, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$5;->val$completeHandler:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;

    iget-object v1, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$5;->val$timeoutMetrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    invoke-interface {v0, v1}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;->complete(Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;)V

    return-object v3

    :catchall_1c
    move-exception v0

    .line 125
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0
.end method
