.class Lcom/qiniu/android/http/request/HttpSingleRequest$1;
.super Ljava/lang/Object;
.source "HttpSingleRequest.java"

# interfaces
.implements Lcom/qiniu/android/http/request/handler/CheckCancelHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/http/request/HttpSingleRequest;->retryRequest(Lcom/qiniu/android/http/request/Request;Lcom/qiniu/android/http/request/IUploadServer;ZLcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpSingleRequest$RequestCompleteHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/http/request/HttpSingleRequest;


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/request/HttpSingleRequest;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$1;->this$0:Lcom/qiniu/android/http/request/HttpSingleRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkCancel()Z
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$1;->this$0:Lcom/qiniu/android/http/request/HttpSingleRequest;

    invoke-static {v0}, Lcom/qiniu/android/http/request/HttpSingleRequest;->access$000(Lcom/qiniu/android/http/request/HttpSingleRequest;)Lcom/qiniu/android/http/request/UploadRequestState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qiniu/android/http/request/UploadRequestState;->isUserCancel()Z

    move-result v0

    if-nez v0, :cond_22

    .line 82
    iget-object v1, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$1;->this$0:Lcom/qiniu/android/http/request/HttpSingleRequest;

    invoke-static {v1}, Lcom/qiniu/android/http/request/HttpSingleRequest;->access$100(Lcom/qiniu/android/http/request/HttpSingleRequest;)Lcom/qiniu/android/storage/UploadOptions;

    move-result-object v1

    iget-object v1, v1, Lcom/qiniu/android/storage/UploadOptions;->cancellationSignal:Lcom/qiniu/android/storage/UpCancellationSignal;

    if-eqz v1, :cond_22

    .line 83
    iget-object v0, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$1;->this$0:Lcom/qiniu/android/http/request/HttpSingleRequest;

    invoke-static {v0}, Lcom/qiniu/android/http/request/HttpSingleRequest;->access$100(Lcom/qiniu/android/http/request/HttpSingleRequest;)Lcom/qiniu/android/storage/UploadOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/qiniu/android/storage/UploadOptions;->cancellationSignal:Lcom/qiniu/android/storage/UpCancellationSignal;

    invoke-interface {v0}, Lcom/qiniu/android/http/CancellationHandler;->isCancelled()Z

    move-result v0

    :cond_22
    return v0
.end method
