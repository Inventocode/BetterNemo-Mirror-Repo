.class Lcom/qiniu/android/http/request/HttpRegionRequest;
.super Ljava/lang/Object;
.source "HttpRegionRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;
    }
.end annotation


# instance fields
.field private final config:Lcom/qiniu/android/storage/Configuration;

.field private currentServer:Lcom/qiniu/android/http/request/IUploadServer;

.field private final region:Lcom/qiniu/android/http/request/IUploadRegion;

.field private final requestInfo:Lcom/qiniu/android/http/request/UploadRequestInfo;

.field private requestMetrics:Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

.field private requestState:Lcom/qiniu/android/http/request/UploadRequestState;

.field private singleRequest:Lcom/qiniu/android/http/request/HttpSingleRequest;


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/http/request/IUploadRegion;Lcom/qiniu/android/http/request/UploadRequestInfo;Lcom/qiniu/android/http/request/UploadRequestState;)V
    .registers 13

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->config:Lcom/qiniu/android/storage/Configuration;

    .line 41
    iput-object p4, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->region:Lcom/qiniu/android/http/request/IUploadRegion;

    .line 42
    iput-object p5, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->requestInfo:Lcom/qiniu/android/http/request/UploadRequestInfo;

    .line 43
    iput-object p6, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->requestState:Lcom/qiniu/android/http/request/UploadRequestState;

    .line 45
    new-instance p4, Lcom/qiniu/android/http/request/HttpSingleRequest;

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/qiniu/android/http/request/HttpSingleRequest;-><init>(Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/http/request/UploadRequestInfo;Lcom/qiniu/android/http/request/UploadRequestState;)V

    iput-object p4, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->singleRequest:Lcom/qiniu/android/http/request/HttpSingleRequest;

    return-void
.end method

.method static synthetic access$000(Lcom/qiniu/android/http/request/HttpRegionRequest;)Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->requestMetrics:Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    return-object p0
.end method

.method static synthetic access$100(Lcom/qiniu/android/http/request/HttpRegionRequest;)Lcom/qiniu/android/storage/Configuration;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->config:Lcom/qiniu/android/storage/Configuration;

    return-object p0
.end method

.method static synthetic access$200(Lcom/qiniu/android/http/request/HttpRegionRequest;Lcom/qiniu/android/http/ResponseInfo;)Lcom/qiniu/android/http/request/IUploadServer;
    .registers 2

    .line 19
    invoke-direct {p0, p1}, Lcom/qiniu/android/http/request/HttpRegionRequest;->getNextServer(Lcom/qiniu/android/http/ResponseInfo;)Lcom/qiniu/android/http/request/IUploadServer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/qiniu/android/http/request/HttpRegionRequest;Lcom/qiniu/android/http/request/IUploadServer;Ljava/lang/String;Z[BLjava/util/Map;Ljava/lang/String;Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V
    .registers 10

    .line 19
    invoke-direct/range {p0 .. p9}, Lcom/qiniu/android/http/request/HttpRegionRequest;->performRequest(Lcom/qiniu/android/http/request/IUploadServer;Ljava/lang/String;Z[BLjava/util/Map;Ljava/lang/String;Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V

    return-void
.end method

.method static synthetic access$400(Lcom/qiniu/android/http/request/HttpRegionRequest;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V
    .registers 4

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/qiniu/android/http/request/HttpRegionRequest;->completeAction(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V

    return-void
.end method

.method private completeAction(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V
    .registers 5

    .line 151
    iget-object v0, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->requestMetrics:Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    invoke-virtual {v0}, Lcom/qiniu/android/http/metrics/UploadMetrics;->end()V

    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->singleRequest:Lcom/qiniu/android/http/request/HttpSingleRequest;

    if-eqz p3, :cond_f

    .line 154
    iget-object v0, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->requestMetrics:Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    invoke-interface {p3, p1, v0, p2}, Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;->complete(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lorg/json/JSONObject;)V

    :cond_f
    return-void
.end method

.method private getNextServer(Lcom/qiniu/android/http/ResponseInfo;)Lcom/qiniu/android/http/request/IUploadServer;
    .registers 5

    .line 160
    iget-object v0, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->requestState:Lcom/qiniu/android/http/request/UploadRequestState;

    if-eqz v0, :cond_12

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->isTlsError()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 161
    iget-object v0, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->requestState:Lcom/qiniu/android/http/request/UploadRequestState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qiniu/android/http/request/UploadRequestState;->setUseOldServer(Z)V

    .line 164
    :cond_12
    iget-object v0, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->region:Lcom/qiniu/android/http/request/IUploadRegion;

    iget-object v1, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->requestState:Lcom/qiniu/android/http/request/UploadRequestState;

    iget-object v2, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->currentServer:Lcom/qiniu/android/http/request/IUploadServer;

    invoke-interface {v0, v1, p1, v2}, Lcom/qiniu/android/http/request/IUploadRegion;->getNextServer(Lcom/qiniu/android/http/request/UploadRequestState;Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/request/IUploadServer;)Lcom/qiniu/android/http/request/IUploadServer;

    move-result-object p1

    return-object p1
.end method

.method private performRequest(Lcom/qiniu/android/http/request/IUploadServer;Ljava/lang/String;Z[BLjava/util/Map;Ljava/lang/String;Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qiniu/android/http/request/IUploadServer;",
            "Ljava/lang/String;",
            "Z[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;",
            "Lcom/qiniu/android/http/request/handler/RequestProgressHandler;",
            "Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;",
            ")V"
        }
    .end annotation

    move-object v10, p0

    move-object/from16 v11, p1

    const/4 v0, 0x0

    if-eqz v11, :cond_df

    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/qiniu/android/http/request/IUploadServer;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_df

    invoke-virtual/range {p1 .. p1}, Lcom/qiniu/android/http/request/IUploadServer;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_df

    .line 98
    :cond_18
    iput-object v11, v10, Lcom/qiniu/android/http/request/HttpRegionRequest;->currentServer:Lcom/qiniu/android/http/request/IUploadServer;

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/qiniu/android/http/request/IUploadServer;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-virtual/range {p1 .. p1}, Lcom/qiniu/android/http/request/IUploadServer;->getIp()Ljava/lang/String;

    move-result-object v2

    .line 103
    iget-object v3, v10, Lcom/qiniu/android/http/request/HttpRegionRequest;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v3, v3, Lcom/qiniu/android/storage/Configuration;->urlConverter:Lcom/qiniu/android/http/UrlConverter;

    if-eqz v3, :cond_2d

    .line 105
    invoke-interface {v3, v1}, Lcom/qiniu/android/http/UrlConverter;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    :cond_2d
    move-object v0, v2

    .line 108
    :goto_2e
    iget-object v2, v10, Lcom/qiniu/android/http/request/HttpRegionRequest;->config:Lcom/qiniu/android/storage/Configuration;

    iget-boolean v2, v2, Lcom/qiniu/android/storage/Configuration;->useHttps:Z

    if-eqz v2, :cond_37

    const-string v2, "https://"

    goto :goto_39

    :cond_37
    const-string v2, "http://"

    .line 109
    :goto_39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_49

    move-object/from16 v2, p2

    goto :goto_4b

    :cond_49
    const-string v2, ""

    :goto_4b
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 110
    new-instance v12, Lcom/qiniu/android/http/request/Request;

    iget-object v2, v10, Lcom/qiniu/android/http/request/HttpRegionRequest;->config:Lcom/qiniu/android/storage/Configuration;

    iget v9, v2, Lcom/qiniu/android/storage/Configuration;->connectTimeout:I

    move-object v4, v12

    move-object/from16 v6, p6

    move-object/from16 v7, p5

    move-object/from16 v8, p4

    invoke-direct/range {v4 .. v9}, Lcom/qiniu/android/http/request/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BI)V

    .line 111
    iput-object v1, v12, Lcom/qiniu/android/http/request/Request;->host:Ljava/lang/String;

    .line 112
    iput-object v0, v12, Lcom/qiniu/android/http/request/Request;->ip:Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/qiniu/android/http/request/HttpRegionRequest;->requestInfo:Lcom/qiniu/android/http/request/UploadRequestInfo;

    iget-object v2, v2, Lcom/qiniu/android/http/request/UploadRequestInfo;->key:Ljava/lang/String;

    invoke-static {v2}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " url:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/qiniu/android/http/request/Request;->urlString:Ljava/lang/String;

    .line 115
    invoke-static {v2}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {v0}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/qiniu/android/http/request/HttpRegionRequest;->requestInfo:Lcom/qiniu/android/http/request/UploadRequestInfo;

    iget-object v1, v1, Lcom/qiniu/android/http/request/UploadRequestInfo;->key:Ljava/lang/String;

    invoke-static {v1}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " headers:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/qiniu/android/http/request/Request;->allHeaders:Ljava/util/Map;

    .line 117
    invoke-static {v1}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 119
    iget-object v13, v10, Lcom/qiniu/android/http/request/HttpRegionRequest;->singleRequest:Lcom/qiniu/android/http/request/HttpSingleRequest;

    new-instance v14, Lcom/qiniu/android/http/request/HttpRegionRequest$1;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object v5, v12

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/qiniu/android/http/request/HttpRegionRequest$1;-><init>(Lcom/qiniu/android/http/request/HttpRegionRequest;Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Ljava/lang/String;ZLcom/qiniu/android/http/request/Request;Ljava/util/Map;Ljava/lang/String;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V

    move-object v0, v13

    move-object v1, v12

    move-object/from16 v2, p1

    move/from16 v3, p3

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/qiniu/android/http/request/HttpSingleRequest;->request(Lcom/qiniu/android/http/request/Request;Lcom/qiniu/android/http/request/IUploadServer;ZLcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpSingleRequest$RequestCompleteHandler;)V

    return-void

    :cond_df
    :goto_df
    const-string v1, "server error"

    .line 93
    invoke-static {v1}, Lcom/qiniu/android/http/ResponseInfo;->sdkInteriorError(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v1

    move-object/from16 v2, p9

    .line 94
    invoke-direct {p0, v1, v0, v2}, Lcom/qiniu/android/http/request/HttpRegionRequest;->completeAction(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V

    return-void
.end method


# virtual methods
.method get(Ljava/lang/String;ZLjava/util/Map;Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;",
            "Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;",
            ")V"
        }
    .end annotation

    move-object v10, p0

    .line 53
    new-instance v0, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    iget-object v1, v10, Lcom/qiniu/android/http/request/HttpRegionRequest;->region:Lcom/qiniu/android/http/request/IUploadRegion;

    invoke-direct {v0, v1}, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;-><init>(Lcom/qiniu/android/http/request/IUploadRegion;)V

    iput-object v0, v10, Lcom/qiniu/android/http/request/HttpRegionRequest;->requestMetrics:Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    .line 54
    invoke-virtual {v0}, Lcom/qiniu/android/http/metrics/UploadMetrics;->start()V

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, v0}, Lcom/qiniu/android/http/request/HttpRegionRequest;->getNextServer(Lcom/qiniu/android/http/ResponseInfo;)Lcom/qiniu/android/http/request/IUploadServer;

    move-result-object v1

    const/4 v4, 0x0

    const-string v6, "GET"

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move-object v7, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/qiniu/android/http/request/HttpRegionRequest;->performRequest(Lcom/qiniu/android/http/request/IUploadServer;Ljava/lang/String;Z[BLjava/util/Map;Ljava/lang/String;Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V

    return-void
.end method

.method post(Ljava/lang/String;Z[BLjava/util/Map;Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;",
            "Lcom/qiniu/android/http/request/handler/RequestProgressHandler;",
            "Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;",
            ")V"
        }
    .end annotation

    move-object v10, p0

    .line 65
    new-instance v0, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    iget-object v1, v10, Lcom/qiniu/android/http/request/HttpRegionRequest;->region:Lcom/qiniu/android/http/request/IUploadRegion;

    invoke-direct {v0, v1}, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;-><init>(Lcom/qiniu/android/http/request/IUploadRegion;)V

    iput-object v0, v10, Lcom/qiniu/android/http/request/HttpRegionRequest;->requestMetrics:Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    .line 66
    invoke-virtual {v0}, Lcom/qiniu/android/http/metrics/UploadMetrics;->start()V

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, v0}, Lcom/qiniu/android/http/request/HttpRegionRequest;->getNextServer(Lcom/qiniu/android/http/ResponseInfo;)Lcom/qiniu/android/http/request/IUploadServer;

    move-result-object v1

    const-string v6, "POST"

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/qiniu/android/http/request/HttpRegionRequest;->performRequest(Lcom/qiniu/android/http/request/IUploadServer;Ljava/lang/String;Z[BLjava/util/Map;Ljava/lang/String;Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V

    return-void
.end method

.method put(Ljava/lang/String;Z[BLjava/util/Map;Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;",
            "Lcom/qiniu/android/http/request/handler/RequestProgressHandler;",
            "Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;",
            ")V"
        }
    .end annotation

    move-object v10, p0

    .line 77
    new-instance v0, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    iget-object v1, v10, Lcom/qiniu/android/http/request/HttpRegionRequest;->region:Lcom/qiniu/android/http/request/IUploadRegion;

    invoke-direct {v0, v1}, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;-><init>(Lcom/qiniu/android/http/request/IUploadRegion;)V

    iput-object v0, v10, Lcom/qiniu/android/http/request/HttpRegionRequest;->requestMetrics:Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    .line 78
    invoke-virtual {v0}, Lcom/qiniu/android/http/metrics/UploadMetrics;->start()V

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, v0}, Lcom/qiniu/android/http/request/HttpRegionRequest;->getNextServer(Lcom/qiniu/android/http/ResponseInfo;)Lcom/qiniu/android/http/request/IUploadServer;

    move-result-object v1

    const-string v6, "PUT"

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/qiniu/android/http/request/HttpRegionRequest;->performRequest(Lcom/qiniu/android/http/request/IUploadServer;Ljava/lang/String;Z[BLjava/util/Map;Ljava/lang/String;Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V

    return-void
.end method
