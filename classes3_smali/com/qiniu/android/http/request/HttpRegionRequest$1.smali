.class Lcom/qiniu/android/http/request/HttpRegionRequest$1;
.super Ljava/lang/Object;
.source "HttpRegionRequest.java"

# interfaces
.implements Lcom/qiniu/android/http/request/HttpSingleRequest$RequestCompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/http/request/HttpRegionRequest;->performRequest(Lcom/qiniu/android/http/request/IUploadServer;Ljava/lang/String;Z[BLjava/util/Map;Ljava/lang/String;Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/http/request/HttpRegionRequest;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$completeHandler:Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;

.field final synthetic val$header:Ljava/util/Map;

.field final synthetic val$isAsync:Z

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$progressHandler:Lcom/qiniu/android/http/request/handler/RequestProgressHandler;

.field final synthetic val$request:Lcom/qiniu/android/http/request/Request;

.field final synthetic val$shouldRetryHandler:Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/request/HttpRegionRequest;Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Ljava/lang/String;ZLcom/qiniu/android/http/request/Request;Ljava/util/Map;Ljava/lang/String;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V
    .registers 10

    .line 119
    iput-object p1, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->this$0:Lcom/qiniu/android/http/request/HttpRegionRequest;

    iput-object p2, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$shouldRetryHandler:Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;

    iput-object p3, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$action:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$isAsync:Z

    iput-object p5, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$request:Lcom/qiniu/android/http/request/Request;

    iput-object p6, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$header:Ljava/util/Map;

    iput-object p7, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$method:Ljava/lang/String;

    iput-object p8, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$progressHandler:Lcom/qiniu/android/http/request/handler/RequestProgressHandler;

    iput-object p9, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$completeHandler:Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/qiniu/android/http/ResponseInfo;Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qiniu/android/http/ResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->this$0:Lcom/qiniu/android/http/request/HttpRegionRequest;

    invoke-static {v0}, Lcom/qiniu/android/http/request/HttpRegionRequest;->access$000(Lcom/qiniu/android/http/request/HttpRegionRequest;)Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;->addMetricsList(Ljava/util/List;)V

    .line 125
    iget-object p2, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$shouldRetryHandler:Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;

    invoke-interface {p2, p1, p3}, Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;->shouldRetry(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_52

    iget-object p2, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->this$0:Lcom/qiniu/android/http/request/HttpRegionRequest;

    .line 126
    invoke-static {p2}, Lcom/qiniu/android/http/request/HttpRegionRequest;->access$100(Lcom/qiniu/android/http/request/HttpRegionRequest;)Lcom/qiniu/android/storage/Configuration;

    move-result-object p2

    iget-boolean p2, p2, Lcom/qiniu/android/storage/Configuration;->allowBackupHost:Z

    if-eqz p2, :cond_52

    .line 127
    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->couldRegionRetry()Z

    move-result p2

    if-eqz p2, :cond_52

    .line 129
    iget-object p2, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->this$0:Lcom/qiniu/android/http/request/HttpRegionRequest;

    invoke-static {p2, p1}, Lcom/qiniu/android/http/request/HttpRegionRequest;->access$200(Lcom/qiniu/android/http/request/HttpRegionRequest;Lcom/qiniu/android/http/ResponseInfo;)Lcom/qiniu/android/http/request/IUploadServer;

    move-result-object v2

    if-eqz v2, :cond_46

    .line 131
    iget-object v1, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->this$0:Lcom/qiniu/android/http/request/HttpRegionRequest;

    iget-object v3, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$action:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$isAsync:Z

    iget-object p1, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$request:Lcom/qiniu/android/http/request/Request;

    iget-object v5, p1, Lcom/qiniu/android/http/request/Request;->httpBody:[B

    iget-object v6, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$header:Ljava/util/Map;

    iget-object v7, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$method:Ljava/lang/String;

    iget-object v8, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$shouldRetryHandler:Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;

    iget-object v9, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$progressHandler:Lcom/qiniu/android/http/request/handler/RequestProgressHandler;

    iget-object v10, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$completeHandler:Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;

    invoke-static/range {v1 .. v10}, Lcom/qiniu/android/http/request/HttpRegionRequest;->access$300(Lcom/qiniu/android/http/request/HttpRegionRequest;Lcom/qiniu/android/http/request/IUploadServer;Ljava/lang/String;Z[BLjava/util/Map;Ljava/lang/String;Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V

    .line 132
    iget-object p1, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$request:Lcom/qiniu/android/http/request/Request;

    iput-object v0, p1, Lcom/qiniu/android/http/request/Request;->httpBody:[B

    goto :goto_5d

    .line 134
    :cond_46
    iget-object p2, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$request:Lcom/qiniu/android/http/request/Request;

    iput-object v0, p2, Lcom/qiniu/android/http/request/Request;->httpBody:[B

    .line 135
    iget-object p2, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->this$0:Lcom/qiniu/android/http/request/HttpRegionRequest;

    iget-object v0, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$completeHandler:Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;

    invoke-static {p2, p1, p3, v0}, Lcom/qiniu/android/http/request/HttpRegionRequest;->access$400(Lcom/qiniu/android/http/request/HttpRegionRequest;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V

    goto :goto_5d

    .line 138
    :cond_52
    iget-object p2, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$request:Lcom/qiniu/android/http/request/Request;

    iput-object v0, p2, Lcom/qiniu/android/http/request/Request;->httpBody:[B

    .line 139
    iget-object p2, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->this$0:Lcom/qiniu/android/http/request/HttpRegionRequest;

    iget-object v0, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$completeHandler:Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;

    invoke-static {p2, p1, p3, v0}, Lcom/qiniu/android/http/request/HttpRegionRequest;->access$400(Lcom/qiniu/android/http/request/HttpRegionRequest;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V

    :goto_5d
    return-void
.end method
