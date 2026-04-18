.class Lcom/qiniu/android/http/request/HttpSingleRequest$3;
.super Ljava/lang/Object;
.source "HttpSingleRequest.java"

# interfaces
.implements Lcom/qiniu/android/http/request/IRequestClient$RequestClientCompleteHandler;


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

.field final synthetic val$completeHandler:Lcom/qiniu/android/http/request/HttpSingleRequest$RequestCompleteHandler;

.field final synthetic val$isAsync:Z

.field final synthetic val$progressHandler:Lcom/qiniu/android/http/request/handler/RequestProgressHandler;

.field final synthetic val$request:Lcom/qiniu/android/http/request/Request;

.field final synthetic val$server:Lcom/qiniu/android/http/request/IUploadServer;

.field final synthetic val$shouldRetryHandler:Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/request/HttpSingleRequest;Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/Request;Lcom/qiniu/android/http/request/IUploadServer;ZLcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpSingleRequest$RequestCompleteHandler;)V
    .registers 8

    .line 106
    iput-object p1, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->this$0:Lcom/qiniu/android/http/request/HttpSingleRequest;

    iput-object p2, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$shouldRetryHandler:Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;

    iput-object p3, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$request:Lcom/qiniu/android/http/request/Request;

    iput-object p4, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$server:Lcom/qiniu/android/http/request/IUploadServer;

    iput-boolean p5, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$isAsync:Z

    iput-object p6, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$progressHandler:Lcom/qiniu/android/http/request/handler/RequestProgressHandler;

    iput-object p7, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$completeHandler:Lcom/qiniu/android/http/request/HttpSingleRequest$RequestCompleteHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;Lorg/json/JSONObject;)V
    .registers 11

    if-eqz p2, :cond_b

    .line 110
    iget-object v0, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->this$0:Lcom/qiniu/android/http/request/HttpSingleRequest;

    invoke-static {v0}, Lcom/qiniu/android/http/request/HttpSingleRequest;->access$300(Lcom/qiniu/android/http/request/HttpSingleRequest;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_b
    iget-object v0, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->this$0:Lcom/qiniu/android/http/request/HttpSingleRequest;

    invoke-static {v0, p1}, Lcom/qiniu/android/http/request/HttpSingleRequest;->access$400(Lcom/qiniu/android/http/request/HttpSingleRequest;Lcom/qiniu/android/http/ResponseInfo;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 114
    invoke-static {}, Lcom/qiniu/android/http/connectCheck/ConnectChecker;->check()Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    move-result-object v0

    if-eqz p2, :cond_1b

    .line 116
    iput-object v0, p2, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->connectCheckMetrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    .line 118
    :cond_1b
    invoke-static {v0}, Lcom/qiniu/android/http/connectCheck/ConnectChecker;->isConnected(Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check origin statusCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/qiniu/android/http/ResponseInfo;->error:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x3f1

    .line 120
    invoke-static {v0, p1}, Lcom/qiniu/android/http/ResponseInfo;->errorInfo(ILjava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p1

    :cond_44
    move-object v2, p1

    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "key:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->this$0:Lcom/qiniu/android/http/request/HttpSingleRequest;

    invoke-static {v0}, Lcom/qiniu/android/http/request/HttpSingleRequest;->access$500(Lcom/qiniu/android/http/request/HttpSingleRequest;)Lcom/qiniu/android/http/request/UploadRequestInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/qiniu/android/http/request/UploadRequestInfo;->key:Ljava/lang/String;

    invoke-static {v0}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " response:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-static {v2}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-static {p1}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 126
    iget-object p1, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$shouldRetryHandler:Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;

    if-eqz p1, :cond_b5

    invoke-interface {p1, v2, p3}, Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;->shouldRetry(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_b5

    iget-object p1, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->this$0:Lcom/qiniu/android/http/request/HttpSingleRequest;

    .line 127
    invoke-static {p1}, Lcom/qiniu/android/http/request/HttpSingleRequest;->access$600(Lcom/qiniu/android/http/request/HttpSingleRequest;)I

    move-result p1

    iget-object v0, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->this$0:Lcom/qiniu/android/http/request/HttpSingleRequest;

    invoke-static {v0}, Lcom/qiniu/android/http/request/HttpSingleRequest;->access$700(Lcom/qiniu/android/http/request/HttpSingleRequest;)Lcom/qiniu/android/storage/Configuration;

    move-result-object v0

    iget v0, v0, Lcom/qiniu/android/storage/Configuration;->retryMax:I

    if-ge p1, v0, :cond_b5

    .line 128
    invoke-virtual {v2}, Lcom/qiniu/android/http/ResponseInfo;->couldHostRetry()Z

    move-result p1

    if-eqz p1, :cond_b5

    .line 129
    iget-object p1, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->this$0:Lcom/qiniu/android/http/request/HttpSingleRequest;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/qiniu/android/http/request/HttpSingleRequest;->access$612(Lcom/qiniu/android/http/request/HttpSingleRequest;I)I

    .line 132
    :try_start_97
    iget-object p1, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->this$0:Lcom/qiniu/android/http/request/HttpSingleRequest;

    invoke-static {p1}, Lcom/qiniu/android/http/request/HttpSingleRequest;->access$700(Lcom/qiniu/android/http/request/HttpSingleRequest;)Lcom/qiniu/android/storage/Configuration;

    move-result-object p1

    iget p1, p1, Lcom/qiniu/android/storage/Configuration;->retryInterval:I

    int-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a3
    .catch Ljava/lang/InterruptedException; {:try_start_97 .. :try_end_a3} :catch_a3

    .line 135
    :catch_a3
    iget-object v0, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->this$0:Lcom/qiniu/android/http/request/HttpSingleRequest;

    iget-object v1, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$request:Lcom/qiniu/android/http/request/Request;

    iget-object v2, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$server:Lcom/qiniu/android/http/request/IUploadServer;

    iget-boolean v3, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$isAsync:Z

    iget-object v4, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$shouldRetryHandler:Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;

    iget-object v5, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$progressHandler:Lcom/qiniu/android/http/request/handler/RequestProgressHandler;

    iget-object v6, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$completeHandler:Lcom/qiniu/android/http/request/HttpSingleRequest$RequestCompleteHandler;

    invoke-static/range {v0 .. v6}, Lcom/qiniu/android/http/request/HttpSingleRequest;->access$800(Lcom/qiniu/android/http/request/HttpSingleRequest;Lcom/qiniu/android/http/request/Request;Lcom/qiniu/android/http/request/IUploadServer;ZLcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpSingleRequest$RequestCompleteHandler;)V

    goto :goto_c0

    .line 137
    :cond_b5
    iget-object v0, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->this$0:Lcom/qiniu/android/http/request/HttpSingleRequest;

    iget-object v1, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$server:Lcom/qiniu/android/http/request/IUploadServer;

    iget-object v5, p0, Lcom/qiniu/android/http/request/HttpSingleRequest$3;->val$completeHandler:Lcom/qiniu/android/http/request/HttpSingleRequest$RequestCompleteHandler;

    move-object v3, p3

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/qiniu/android/http/request/HttpSingleRequest;->access$900(Lcom/qiniu/android/http/request/HttpSingleRequest;Lcom/qiniu/android/http/request/IUploadServer;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;Lcom/qiniu/android/http/request/HttpSingleRequest$RequestCompleteHandler;)V

    :goto_c0
    return-void
.end method
