.class public Lcom/qiniu/android/http/request/RequestTransaction;
.super Ljava/lang/Object;
.source "RequestTransaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;
    }
.end annotation


# instance fields
.field private final config:Lcom/qiniu/android/storage/Configuration;

.field private final key:Ljava/lang/String;

.field private regionRequest:Lcom/qiniu/android/http/request/HttpRegionRequest;

.field private requestInfo:Lcom/qiniu/android/http/request/UploadRequestInfo;

.field private requestState:Lcom/qiniu/android/http/request/UploadRequestState;

.field private final token:Lcom/qiniu/android/storage/UpToken;

.field private final uploadOption:Lcom/qiniu/android/storage/UploadOptions;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/http/request/IUploadRegion;Lcom/qiniu/android/http/request/IUploadRegion;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;)V
    .registers 7

    .line 72
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/qiniu/android/http/request/RequestTransaction;-><init>(Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/UploadOptions;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;)V

    .line 73
    invoke-direct {p0, p3, p4}, Lcom/qiniu/android/http/request/RequestTransaction;->initData(Lcom/qiniu/android/http/request/IUploadRegion;Lcom/qiniu/android/http/request/IUploadRegion;)V

    return-void
.end method

.method private constructor <init>(Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/UploadOptions;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;)V
    .registers 5

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/qiniu/android/http/request/RequestTransaction;->config:Lcom/qiniu/android/storage/Configuration;

    .line 81
    iput-object p2, p0, Lcom/qiniu/android/http/request/RequestTransaction;->uploadOption:Lcom/qiniu/android/storage/UploadOptions;

    .line 82
    iput-object p3, p0, Lcom/qiniu/android/http/request/RequestTransaction;->key:Ljava/lang/String;

    .line 83
    iput-object p4, p0, Lcom/qiniu/android/http/request/RequestTransaction;->token:Lcom/qiniu/android/storage/UpToken;

    .line 84
    invoke-static {}, Lcom/qiniu/android/http/UserAgent;->instance()Lcom/qiniu/android/http/UserAgent;

    move-result-object p1

    iget-object p2, p4, Lcom/qiniu/android/storage/UpToken;->accessKey:Ljava/lang/String;

    if-eqz p2, :cond_14

    goto :goto_16

    :cond_14
    const-string p2, ""

    :goto_16
    invoke-virtual {p1, p2}, Lcom/qiniu/android/http/UserAgent;->getUa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qiniu/android/http/request/RequestTransaction;->userAgent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/UploadOptions;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qiniu/android/storage/Configuration;",
            "Lcom/qiniu/android/storage/UploadOptions;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qiniu/android/storage/UpToken;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/qiniu/android/http/request/RequestTransaction;-><init>(Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/UploadOptions;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;)V

    .line 61
    new-instance p1, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;

    invoke-direct {p1}, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;-><init>()V

    .line 62
    invoke-static {p3, p4}, Lcom/qiniu/android/common/ZoneInfo;->buildInfo(Ljava/util/List;Ljava/lang/String;)Lcom/qiniu/android/common/ZoneInfo;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/qiniu/android/http/request/IUploadRegion;->setupRegionData(Lcom/qiniu/android/common/ZoneInfo;)V

    .line 63
    invoke-direct {p0, p1, p1}, Lcom/qiniu/android/http/request/RequestTransaction;->initData(Lcom/qiniu/android/http/request/IUploadRegion;Lcom/qiniu/android/http/request/IUploadRegion;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/qiniu/android/storage/UpToken;",
            ")V"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/qiniu/android/storage/Configuration$Builder;

    invoke-direct {v0}, Lcom/qiniu/android/storage/Configuration$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/qiniu/android/storage/Configuration$Builder;->build()Lcom/qiniu/android/storage/Configuration;

    move-result-object v2

    invoke-static {}, Lcom/qiniu/android/storage/UploadOptions;->defaultOptions()Lcom/qiniu/android/storage/UploadOptions;

    move-result-object v3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/qiniu/android/http/request/RequestTransaction;-><init>(Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/UploadOptions;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;)V

    return-void
.end method

.method static synthetic access$000(Lcom/qiniu/android/http/request/RequestTransaction;Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lorg/json/JSONObject;Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V
    .registers 5

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qiniu/android/http/request/RequestTransaction;->completeAction(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lorg/json/JSONObject;Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V

    return-void
.end method

.method private completeAction(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lorg/json/JSONObject;Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V
    .registers 6

    const/4 v0, 0x0

    .line 548
    iput-object v0, p0, Lcom/qiniu/android/http/request/RequestTransaction;->requestInfo:Lcom/qiniu/android/http/request/UploadRequestInfo;

    .line 549
    iput-object v0, p0, Lcom/qiniu/android/http/request/RequestTransaction;->regionRequest:Lcom/qiniu/android/http/request/HttpRegionRequest;

    .line 550
    iput-object v0, p0, Lcom/qiniu/android/http/request/RequestTransaction;->regionRequest:Lcom/qiniu/android/http/request/HttpRegionRequest;

    if-eqz p4, :cond_c

    .line 553
    invoke-interface {p4, p1, p2, p3}, Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;->complete(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lorg/json/JSONObject;)V

    :cond_c
    return-void
.end method

.method private initData(Lcom/qiniu/android/http/request/IUploadRegion;Lcom/qiniu/android/http/request/IUploadRegion;)V
    .registers 11

    .line 90
    new-instance v0, Lcom/qiniu/android/http/request/UploadRequestState;

    invoke-direct {v0}, Lcom/qiniu/android/http/request/UploadRequestState;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/http/request/RequestTransaction;->requestState:Lcom/qiniu/android/http/request/UploadRequestState;

    .line 91
    new-instance v0, Lcom/qiniu/android/http/request/UploadRequestInfo;

    invoke-direct {v0}, Lcom/qiniu/android/http/request/UploadRequestInfo;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/http/request/RequestTransaction;->requestInfo:Lcom/qiniu/android/http/request/UploadRequestInfo;

    .line 92
    invoke-interface {p1}, Lcom/qiniu/android/http/request/IUploadRegion;->getZoneInfo()Lcom/qiniu/android/common/ZoneInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qiniu/android/common/ZoneInfo;->getRegionId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/qiniu/android/http/request/UploadRequestInfo;->targetRegionId:Ljava/lang/String;

    .line 93
    iget-object p1, p0, Lcom/qiniu/android/http/request/RequestTransaction;->requestInfo:Lcom/qiniu/android/http/request/UploadRequestInfo;

    invoke-interface {p2}, Lcom/qiniu/android/http/request/IUploadRegion;->getZoneInfo()Lcom/qiniu/android/common/ZoneInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qiniu/android/common/ZoneInfo;->getRegionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/qiniu/android/http/request/UploadRequestInfo;->currentRegionId:Ljava/lang/String;

    .line 94
    iget-object v6, p0, Lcom/qiniu/android/http/request/RequestTransaction;->requestInfo:Lcom/qiniu/android/http/request/UploadRequestInfo;

    iget-object v4, p0, Lcom/qiniu/android/http/request/RequestTransaction;->token:Lcom/qiniu/android/storage/UpToken;

    iget-object p1, v4, Lcom/qiniu/android/storage/UpToken;->bucket:Ljava/lang/String;

    iput-object p1, v6, Lcom/qiniu/android/http/request/UploadRequestInfo;->bucket:Ljava/lang/String;

    .line 95
    iget-object p1, p0, Lcom/qiniu/android/http/request/RequestTransaction;->key:Ljava/lang/String;

    iput-object p1, v6, Lcom/qiniu/android/http/request/UploadRequestInfo;->key:Ljava/lang/String;

    .line 96
    new-instance p1, Lcom/qiniu/android/http/request/HttpRegionRequest;

    iget-object v2, p0, Lcom/qiniu/android/http/request/RequestTransaction;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v3, p0, Lcom/qiniu/android/http/request/RequestTransaction;->uploadOption:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v7, p0, Lcom/qiniu/android/http/request/RequestTransaction;->requestState:Lcom/qiniu/android/http/request/UploadRequestState;

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/qiniu/android/http/request/HttpRegionRequest;-><init>(Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/http/request/IUploadRegion;Lcom/qiniu/android/http/request/UploadRequestInfo;Lcom/qiniu/android/http/request/UploadRequestState;)V

    iput-object p1, p0, Lcom/qiniu/android/http/request/RequestTransaction;->regionRequest:Lcom/qiniu/android/http/request/HttpRegionRequest;

    return-void
.end method

.method private resumeV2EncodeKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-nez p1, :cond_7

    const-string v0, "~"

    goto :goto_12

    .line 536
    :cond_7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_12

    .line 539
    :cond_e
    invoke-static {p1}, Lcom/qiniu/android/utils/UrlSafeBase64;->encodeToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_12
    return-object v0
.end method


# virtual methods
.method public completeParts(ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 442
    iget-object v4, v0, Lcom/qiniu/android/http/request/RequestTransaction;->requestInfo:Lcom/qiniu/android/http/request/UploadRequestInfo;

    const-string v5, "complete_part"

    iput-object v5, v4, Lcom/qiniu/android/http/request/UploadRequestInfo;->requestType:Ljava/lang/String;

    if-eqz v2, :cond_115

    .line 444
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_17

    goto/16 :goto_115

    :cond_17
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 452
    iget-object v5, v0, Lcom/qiniu/android/http/request/RequestTransaction;->token:Lcom/qiniu/android/storage/UpToken;

    iget-object v5, v5, Lcom/qiniu/android/storage/UpToken;->token:Ljava/lang/String;

    if-eqz v5, :cond_21

    goto :goto_23

    :cond_21
    const-string v5, ""

    :goto_23
    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "UpToken %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 453
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const-string v5, "Authorization"

    .line 454
    invoke-virtual {v11, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "Content-Type"

    const-string v5, "application/octet-stream"

    .line 455
    invoke-virtual {v11, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    iget-object v4, v0, Lcom/qiniu/android/http/request/RequestTransaction;->userAgent:Ljava/lang/String;

    const-string v5, "User-Agent"

    invoke-virtual {v11, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/buckets/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/qiniu/android/http/request/RequestTransaction;->token:Lcom/qiniu/android/storage/UpToken;

    iget-object v5, v5, Lcom/qiniu/android/storage/UpToken;->bucket:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 459
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/objects/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/qiniu/android/http/request/RequestTransaction;->key:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/qiniu/android/http/request/RequestTransaction;->resumeV2EncodeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 460
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/uploads/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 461
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 463
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 464
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 465
    :goto_9f
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_b6

    .line 466
    new-instance v7, Lorg/json/JSONObject;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    invoke-direct {v7, v9}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v6, v6, 0x1

    goto :goto_9f

    :cond_b6
    const-string v2, "parts"

    .line 468
    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_c2

    const-string v2, "fname"

    .line 471
    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    :cond_c2
    iget-object v1, v0, Lcom/qiniu/android/http/request/RequestTransaction;->uploadOption:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v1, v1, Lcom/qiniu/android/storage/UploadOptions;->mimeType:Ljava/lang/String;

    if-eqz v1, :cond_cd

    const-string v2, "mimeType"

    .line 474
    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    :cond_cd
    iget-object v1, v0, Lcom/qiniu/android/http/request/RequestTransaction;->uploadOption:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v1, v1, Lcom/qiniu/android/storage/UploadOptions;->params:Ljava/util/Map;

    if-eqz v1, :cond_e1

    .line 477
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, v0, Lcom/qiniu/android/http/request/RequestTransaction;->uploadOption:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v2, v2, Lcom/qiniu/android/storage/UploadOptions;->params:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v2, "customVars"

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    :cond_e1
    iget-object v1, v0, Lcom/qiniu/android/http/request/RequestTransaction;->uploadOption:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v1, v1, Lcom/qiniu/android/storage/UploadOptions;->metaDataParam:Ljava/util/Map;

    if-eqz v1, :cond_f5

    .line 480
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, v0, Lcom/qiniu/android/http/request/RequestTransaction;->uploadOption:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v2, v2, Lcom/qiniu/android/storage/UploadOptions;->metaDataParam:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v2, "metaData"

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    :cond_f5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 484
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 485
    new-instance v12, Lcom/qiniu/android/http/request/RequestTransaction$15;

    invoke-direct {v12, p0}, Lcom/qiniu/android/http/request/RequestTransaction$15;-><init>(Lcom/qiniu/android/http/request/RequestTransaction;)V

    .line 492
    iget-object v7, v0, Lcom/qiniu/android/http/request/RequestTransaction;->regionRequest:Lcom/qiniu/android/http/request/HttpRegionRequest;

    const/4 v13, 0x0

    new-instance v14, Lcom/qiniu/android/http/request/RequestTransaction$16;

    invoke-direct {v14, p0, v3}, Lcom/qiniu/android/http/request/RequestTransaction$16;-><init>(Lcom/qiniu/android/http/request/RequestTransaction;Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V

    move/from16 v9, p1

    invoke-virtual/range {v7 .. v14}, Lcom/qiniu/android/http/request/HttpRegionRequest;->post(Ljava/lang/String;Z[BLjava/util/Map;Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V

    return-void

    :cond_115
    :goto_115
    const-string v1, "partInfoArray"

    .line 445
    invoke-static {v1}, Lcom/qiniu/android/http/ResponseInfo;->invalidArgument(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v1

    if-eqz v3, :cond_123

    const/4 v2, 0x0

    .line 447
    iget-object v4, v1, Lcom/qiniu/android/http/ResponseInfo;->response:Lorg/json/JSONObject;

    invoke-interface {v3, v1, v2, v4}, Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;->complete(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lorg/json/JSONObject;)V

    :cond_123
    return-void
.end method

.method public initPart(ZLcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V
    .registers 12

    .line 356
    iget-object v0, p0, Lcom/qiniu/android/http/request/RequestTransaction;->requestInfo:Lcom/qiniu/android/http/request/UploadRequestInfo;

    const-string v1, "init_parts"

    iput-object v1, v0, Lcom/qiniu/android/http/request/UploadRequestInfo;->requestType:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 358
    iget-object v1, p0, Lcom/qiniu/android/http/request/RequestTransaction;->token:Lcom/qiniu/android/storage/UpToken;

    iget-object v1, v1, Lcom/qiniu/android/storage/UpToken;->token:Ljava/lang/String;

    if-eqz v1, :cond_10

    goto :goto_12

    :cond_10
    const-string v1, ""

    :goto_12
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "UpToken %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 359
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Authorization"

    .line 360
    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Content-Type"

    const-string v1, "application/octet-stream"

    .line 361
    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v0, p0, Lcom/qiniu/android/http/request/RequestTransaction;->userAgent:Ljava/lang/String;

    const-string v1, "User-Agent"

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/buckets/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qiniu/android/http/request/RequestTransaction;->token:Lcom/qiniu/android/storage/UpToken;

    iget-object v1, v1, Lcom/qiniu/android/storage/UpToken;->bucket:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/objects/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qiniu/android/http/request/RequestTransaction;->key:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/qiniu/android/http/request/RequestTransaction;->resumeV2EncodeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 366
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/uploads"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 368
    new-instance v6, Lcom/qiniu/android/http/request/RequestTransaction$11;

    invoke-direct {v6, p0}, Lcom/qiniu/android/http/request/RequestTransaction$11;-><init>(Lcom/qiniu/android/http/request/RequestTransaction;)V

    .line 375
    iget-object v1, p0, Lcom/qiniu/android/http/request/RequestTransaction;->regionRequest:Lcom/qiniu/android/http/request/HttpRegionRequest;

    const/4 v4, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcom/qiniu/android/http/request/RequestTransaction$12;

    invoke-direct {v8, p0, p2}, Lcom/qiniu/android/http/request/RequestTransaction$12;-><init>(Lcom/qiniu/android/http/request/RequestTransaction;Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V

    move v3, p1

    invoke-virtual/range {v1 .. v8}, Lcom/qiniu/android/http/request/HttpRegionRequest;->post(Ljava/lang/String;Z[BLjava/util/Map;Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V

    return-void
.end method

.method public makeBlock(JJ[BZLcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V
    .registers 21

    move-object v0, p0

    .line 200
    iget-object v1, v0, Lcom/qiniu/android/http/request/RequestTransaction;->requestInfo:Lcom/qiniu/android/http/request/UploadRequestInfo;

    const-string v2, "mkblk"

    iput-object v2, v1, Lcom/qiniu/android/http/request/UploadRequestInfo;->requestType:Ljava/lang/String;

    .line 201
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/qiniu/android/http/request/UploadRequestInfo;->fileOffset:Ljava/lang/Long;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 203
    iget-object v2, v0, Lcom/qiniu/android/http/request/RequestTransaction;->token:Lcom/qiniu/android/storage/UpToken;

    iget-object v2, v2, Lcom/qiniu/android/storage/UpToken;->token:Ljava/lang/String;

    const-string v3, ""

    if-eqz v2, :cond_19

    goto :goto_1a

    :cond_19
    move-object v2, v3

    :goto_1a
    const/4 v4, 0x0

    aput-object v2, v1, v4

    const-string v2, "UpToken %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 204
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Authorization"

    .line 205
    invoke-virtual {v8, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Content-Type"

    const-string v2, "application/octet-stream"

    .line 206
    invoke-virtual {v8, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v1, v0, Lcom/qiniu/android/http/request/RequestTransaction;->userAgent:Ljava/lang/String;

    const-string v2, "User-Agent"

    invoke-virtual {v8, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/mkblk/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v4, p3

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Lcom/qiniu/android/utils/Crc32;->bytes([B)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    new-instance v9, Lcom/qiniu/android/http/request/RequestTransaction$5;

    invoke-direct {v9, p0, v1}, Lcom/qiniu/android/http/request/RequestTransaction$5;-><init>(Lcom/qiniu/android/http/request/RequestTransaction;Ljava/lang/String;)V

    .line 230
    iget-object v4, v0, Lcom/qiniu/android/http/request/RequestTransaction;->regionRequest:Lcom/qiniu/android/http/request/HttpRegionRequest;

    new-instance v11, Lcom/qiniu/android/http/request/RequestTransaction$6;

    move-object/from16 v1, p8

    invoke-direct {v11, p0, v1}, Lcom/qiniu/android/http/request/RequestTransaction$6;-><init>(Lcom/qiniu/android/http/request/RequestTransaction;Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V

    move/from16 v6, p6

    move-object/from16 v7, p5

    move-object/from16 v10, p7

    invoke-virtual/range {v4 .. v11}, Lcom/qiniu/android/http/request/HttpRegionRequest;->post(Ljava/lang/String;Z[BLjava/util/Map;Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V

    return-void
.end method

.method public makeFile(JLjava/lang/String;[Ljava/lang/String;ZLcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V
    .registers 22

    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    .line 291
    iget-object v3, v0, Lcom/qiniu/android/http/request/RequestTransaction;->requestInfo:Lcom/qiniu/android/http/request/UploadRequestInfo;

    const-string v4, "mkfile"

    iput-object v4, v3, Lcom/qiniu/android/http/request/UploadRequestInfo;->requestType:Ljava/lang/String;

    if-nez v1, :cond_1a

    const-string v1, "invalid blockContexts"

    .line 294
    invoke-static {v1}, Lcom/qiniu/android/http/ResponseInfo;->invalidArgument(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v1

    const/4 v3, 0x0

    .line 295
    iget-object v4, v1, Lcom/qiniu/android/http/ResponseInfo;->response:Lorg/json/JSONObject;

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/qiniu/android/http/request/RequestTransaction;->completeAction(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lorg/json/JSONObject;Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V

    return-void

    :cond_1a
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 299
    iget-object v5, v0, Lcom/qiniu/android/http/request/RequestTransaction;->token:Lcom/qiniu/android/storage/UpToken;

    iget-object v5, v5, Lcom/qiniu/android/storage/UpToken;->token:Ljava/lang/String;

    if-eqz v5, :cond_24

    goto :goto_26

    :cond_24
    const-string v5, ""

    :goto_26
    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "UpToken %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 300
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const-string v5, "Authorization"

    .line 301
    invoke-virtual {v11, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "Content-Type"

    const-string v5, "application/octet-stream"

    .line 302
    invoke-virtual {v11, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v4, v0, Lcom/qiniu/android/http/request/RequestTransaction;->userAgent:Ljava/lang/String;

    const-string v5, "User-Agent"

    invoke-virtual {v11, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v4, v3, [Ljava/lang/Object;

    .line 305
    iget-object v5, v0, Lcom/qiniu/android/http/request/RequestTransaction;->uploadOption:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v5, v5, Lcom/qiniu/android/storage/UploadOptions;->mimeType:Ljava/lang/String;

    invoke-static {v5}, Lcom/qiniu/android/utils/UrlSafeBase64;->encodeToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const-string v5, "/mimeType/%s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 306
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/mkfile/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, p1

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 308
    iget-object v5, v0, Lcom/qiniu/android/http/request/RequestTransaction;->key:Ljava/lang/String;

    if-eqz v5, :cond_90

    new-array v7, v3, [Ljava/lang/Object;

    .line 309
    invoke-static {v5}, Lcom/qiniu/android/utils/UrlSafeBase64;->encodeToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v6

    const-string v5, "/key/%s"

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 310
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 313
    :cond_90
    iget-object v5, v0, Lcom/qiniu/android/http/request/RequestTransaction;->uploadOption:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v5, v5, Lcom/qiniu/android/storage/UploadOptions;->params:Ljava/util/Map;

    const-string v7, "/"

    if-eqz v5, :cond_e1

    .line 314
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 315
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a0
    :goto_a0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 316
    iget-object v9, v0, Lcom/qiniu/android/http/request/RequestTransaction;->uploadOption:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v9, v9, Lcom/qiniu/android/storage/UploadOptions;->params:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_a0

    .line 318
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/qiniu/android/utils/UrlSafeBase64;->encodeToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 319
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_a0

    .line 324
    :cond_e1
    iget-object v5, v0, Lcom/qiniu/android/http/request/RequestTransaction;->uploadOption:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v5, v5, Lcom/qiniu/android/storage/UploadOptions;->metaDataParam:Ljava/util/Map;

    if-eqz v5, :cond_130

    .line 325
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 326
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_ef
    :goto_ef
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_130

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 327
    iget-object v9, v0, Lcom/qiniu/android/http/request/RequestTransaction;->uploadOption:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v9, v9, Lcom/qiniu/android/storage/UploadOptions;->metaDataParam:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_ef

    .line 329
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/qiniu/android/utils/UrlSafeBase64;->encodeToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 330
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_ef

    :cond_130
    new-array v3, v3, [Ljava/lang/Object;

    .line 335
    invoke-static/range {p3 .. p3}, Lcom/qiniu/android/utils/UrlSafeBase64;->encodeToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v6

    const-string v5, "/fname/%s"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 336
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v3, ","

    .line 338
    invoke-static {v1, v3}, Lcom/qiniu/android/utils/StringUtils;->join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 339
    new-instance v12, Lcom/qiniu/android/http/request/RequestTransaction$9;

    invoke-direct {v12, p0}, Lcom/qiniu/android/http/request/RequestTransaction$9;-><init>(Lcom/qiniu/android/http/request/RequestTransaction;)V

    .line 345
    iget-object v7, v0, Lcom/qiniu/android/http/request/RequestTransaction;->regionRequest:Lcom/qiniu/android/http/request/HttpRegionRequest;

    const/4 v13, 0x0

    new-instance v14, Lcom/qiniu/android/http/request/RequestTransaction$10;

    invoke-direct {v14, p0, v2}, Lcom/qiniu/android/http/request/RequestTransaction$10;-><init>(Lcom/qiniu/android/http/request/RequestTransaction;Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V

    move/from16 v9, p5

    invoke-virtual/range {v7 .. v14}, Lcom/qiniu/android/http/request/HttpRegionRequest;->post(Ljava/lang/String;Z[BLjava/util/Map;Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V

    return-void
.end method

.method public queryUploadHosts(ZLcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V
    .registers 11

    .line 102
    iget-object v0, p0, Lcom/qiniu/android/http/request/RequestTransaction;->requestInfo:Lcom/qiniu/android/http/request/UploadRequestInfo;

    const-string v1, "uc_query"

    iput-object v1, v0, Lcom/qiniu/android/http/request/UploadRequestInfo;->requestType:Ljava/lang/String;

    .line 104
    new-instance v6, Lcom/qiniu/android/http/request/RequestTransaction$1;

    invoke-direct {v6, p0}, Lcom/qiniu/android/http/request/RequestTransaction$1;-><init>(Lcom/qiniu/android/http/request/RequestTransaction;)V

    .line 111
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 112
    iget-object v0, p0, Lcom/qiniu/android/http/request/RequestTransaction;->userAgent:Ljava/lang/String;

    const-string v1, "User-Agent"

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 113
    iget-object v1, p0, Lcom/qiniu/android/http/request/RequestTransaction;->token:Lcom/qiniu/android/storage/UpToken;

    iget-object v2, v1, Lcom/qiniu/android/storage/UpToken;->accessKey:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    iget-object v1, v1, Lcom/qiniu/android/storage/UpToken;->bucket:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {}, Lcom/qiniu/android/utils/Utils;->sdkVerion()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {}, Lcom/qiniu/android/utils/Utils;->sdkLanguage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "/v4/query?ak=%s&bucket=%s&sdk_version=%s&sdk_name=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 114
    iget-object v2, p0, Lcom/qiniu/android/http/request/RequestTransaction;->regionRequest:Lcom/qiniu/android/http/request/HttpRegionRequest;

    new-instance v7, Lcom/qiniu/android/http/request/RequestTransaction$2;

    invoke-direct {v7, p0, p2}, Lcom/qiniu/android/http/request/RequestTransaction$2;-><init>(Lcom/qiniu/android/http/request/RequestTransaction;Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V

    move v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/qiniu/android/http/request/HttpRegionRequest;->get(Ljava/lang/String;ZLjava/util/Map;Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V

    return-void
.end method

.method public reportLog([BLjava/lang/String;ZLcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V
    .registers 14

    .line 505
    iget-object v0, p0, Lcom/qiniu/android/http/request/RequestTransaction;->requestInfo:Lcom/qiniu/android/http/request/UploadRequestInfo;

    const-string v1, "uplog"

    iput-object v1, v0, Lcom/qiniu/android/http/request/UploadRequestInfo;->requestType:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 507
    iget-object v1, p0, Lcom/qiniu/android/http/request/RequestTransaction;->token:Lcom/qiniu/android/storage/UpToken;

    iget-object v1, v1, Lcom/qiniu/android/storage/UpToken;->token:Ljava/lang/String;

    if-eqz v1, :cond_10

    goto :goto_12

    :cond_10
    const-string v1, ""

    :goto_12
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "UpToken %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 508
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Authorization"

    .line 509
    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Content-Type"

    const-string v1, "text/plain"

    .line 510
    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    iget-object v0, p0, Lcom/qiniu/android/http/request/RequestTransaction;->userAgent:Ljava/lang/String;

    const-string v1, "User-Agent"

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_3a

    const-string v0, "X-Log-Client-Id"

    .line 514
    invoke-virtual {v5, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    :cond_3a
    new-instance v6, Lcom/qiniu/android/http/request/RequestTransaction$17;

    invoke-direct {v6, p0}, Lcom/qiniu/android/http/request/RequestTransaction$17;-><init>(Lcom/qiniu/android/http/request/RequestTransaction;)V

    .line 524
    iget-object v1, p0, Lcom/qiniu/android/http/request/RequestTransaction;->regionRequest:Lcom/qiniu/android/http/request/HttpRegionRequest;

    invoke-static {p1}, Lcom/qiniu/android/utils/GZipUtil;->gZip([B)[B

    move-result-object v4

    const/4 v7, 0x0

    new-instance v8, Lcom/qiniu/android/http/request/RequestTransaction$18;

    invoke-direct {v8, p0, p4}, Lcom/qiniu/android/http/request/RequestTransaction$18;-><init>(Lcom/qiniu/android/http/request/RequestTransaction;Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V

    const-string v2, "/log/4?compressed=gzip"

    move v3, p3

    invoke-virtual/range {v1 .. v8}, Lcom/qiniu/android/http/request/HttpRegionRequest;->post(Ljava/lang/String;Z[BLjava/util/Map;Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V

    return-void
.end method

.method public uploadChunk(Ljava/lang/String;J[BJZLcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V
    .registers 26

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    .line 246
    iget-object v3, v0, Lcom/qiniu/android/http/request/RequestTransaction;->requestInfo:Lcom/qiniu/android/http/request/UploadRequestInfo;

    const-string v4, "bput"

    iput-object v4, v3, Lcom/qiniu/android/http/request/UploadRequestInfo;->requestType:Ljava/lang/String;

    add-long v4, p2, v1

    .line 247
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lcom/qiniu/android/http/request/UploadRequestInfo;->fileOffset:Ljava/lang/Long;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 249
    iget-object v5, v0, Lcom/qiniu/android/http/request/RequestTransaction;->token:Lcom/qiniu/android/storage/UpToken;

    iget-object v5, v5, Lcom/qiniu/android/storage/UpToken;->token:Ljava/lang/String;

    const-string v6, ""

    if-eqz v5, :cond_1e

    goto :goto_1f

    :cond_1e
    move-object v5, v6

    :goto_1f
    const/4 v7, 0x0

    aput-object v5, v4, v7

    const-string v5, "UpToken %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 250
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    const-string v5, "Authorization"

    .line 251
    invoke-virtual {v12, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "Content-Type"

    const-string v5, "application/octet-stream"

    .line 252
    invoke-virtual {v12, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v4, v0, Lcom/qiniu/android/http/request/RequestTransaction;->userAgent:Ljava/lang/String;

    const-string v5, "User-Agent"

    invoke-virtual {v12, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v7

    .line 255
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    const-string v1, "/bput/%s/%s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Lcom/qiniu/android/utils/Crc32;->bytes([B)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 258
    new-instance v13, Lcom/qiniu/android/http/request/RequestTransaction$7;

    invoke-direct {v13, v0, v1}, Lcom/qiniu/android/http/request/RequestTransaction$7;-><init>(Lcom/qiniu/android/http/request/RequestTransaction;Ljava/lang/String;)V

    .line 277
    iget-object v8, v0, Lcom/qiniu/android/http/request/RequestTransaction;->regionRequest:Lcom/qiniu/android/http/request/HttpRegionRequest;

    new-instance v15, Lcom/qiniu/android/http/request/RequestTransaction$8;

    move-object/from16 v1, p9

    invoke-direct {v15, v0, v1}, Lcom/qiniu/android/http/request/RequestTransaction$8;-><init>(Lcom/qiniu/android/http/request/RequestTransaction;Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V

    move/from16 v10, p7

    move-object/from16 v11, p4

    move-object/from16 v14, p8

    invoke-virtual/range {v8 .. v15}, Lcom/qiniu/android/http/request/HttpRegionRequest;->post(Ljava/lang/String;Z[BLjava/util/Map;Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V

    return-void
.end method

.method public uploadFormData([BLjava/lang/String;ZLcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 128
    iget-object v2, v0, Lcom/qiniu/android/http/request/RequestTransaction;->requestInfo:Lcom/qiniu/android/http/request/UploadRequestInfo;

    const-string v3, "form"

    iput-object v3, v2, Lcom/qiniu/android/http/request/UploadRequestInfo;->requestType:Ljava/lang/String;

    .line 130
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 131
    iget-object v3, v0, Lcom/qiniu/android/http/request/RequestTransaction;->uploadOption:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v3, v3, Lcom/qiniu/android/storage/UploadOptions;->params:Ljava/util/Map;

    if-eqz v3, :cond_18

    .line 132
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 134
    :cond_18
    iget-object v3, v0, Lcom/qiniu/android/http/request/RequestTransaction;->uploadOption:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v3, v3, Lcom/qiniu/android/storage/UploadOptions;->metaDataParam:Ljava/util/Map;

    if-eqz v3, :cond_21

    .line 135
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 138
    :cond_21
    iget-object v3, v0, Lcom/qiniu/android/http/request/RequestTransaction;->key:Ljava/lang/String;

    if-eqz v3, :cond_32

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_32

    .line 139
    iget-object v3, v0, Lcom/qiniu/android/http/request/RequestTransaction;->key:Ljava/lang/String;

    const-string v4, "key"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_32
    iget-object v3, v0, Lcom/qiniu/android/http/request/RequestTransaction;->token:Lcom/qiniu/android/storage/UpToken;

    iget-object v3, v3, Lcom/qiniu/android/storage/UpToken;->token:Ljava/lang/String;

    if-eqz v3, :cond_39

    goto :goto_3b

    :cond_39
    const-string v3, ""

    :goto_3b
    const-string v4, "token"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v3, v0, Lcom/qiniu/android/http/request/RequestTransaction;->uploadOption:Lcom/qiniu/android/storage/UploadOptions;

    iget-boolean v3, v3, Lcom/qiniu/android/storage/UploadOptions;->checkCrc:Z

    if-eqz v3, :cond_53

    .line 145
    invoke-static/range {p1 .. p1}, Lcom/qiniu/android/utils/Crc32;->bytes([B)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "crc32"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_53
    const-string v3, "werghnvt54wef654rjuhgb56trtg34tweuyrgf"

    const-string v4, "Content-Disposition: form-data"

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 153
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_64
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v7, :cond_99

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 154
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v11

    aput-object v4, v8, v10

    aput-object v7, v8, v9

    const-string v7, "--%s\r\n%s; name=\"%s\"\r\n\r\n"

    .line 155
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v12, v7, v11

    const-string v8, "%s\r\n"

    .line 156
    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_64

    .line 159
    :cond_99
    invoke-static/range {p2 .. p2}, Lcom/qiniu/android/utils/Utils;->formEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v11

    aput-object v4, v6, v10

    const-string v4, "file"

    aput-object v4, v6, v9

    aput-object v2, v6, v8

    const/4 v2, 0x4

    .line 161
    iget-object v4, v0, Lcom/qiniu/android/http/request/RequestTransaction;->uploadOption:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v4, v4, Lcom/qiniu/android/storage/UploadOptions;->mimeType:Ljava/lang/String;

    aput-object v4, v6, v2

    const-string v2, "--%s\r\n%s; name=\"%s\"; filename=\"%s\"\nContent-Type:%s\r\n\r\n"

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v3, v4, v11

    const-string v6, "\r\n--%s--\r\n"

    .line 162
    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 164
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 165
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 166
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 167
    array-length v6, v5

    array-length v7, v2

    add-int/2addr v6, v7

    array-length v7, v1

    add-int/2addr v6, v7

    array-length v7, v4

    add-int/2addr v6, v7

    new-array v15, v6, [B

    .line 168
    array-length v7, v5

    invoke-static {v5, v11, v15, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    array-length v7, v5

    array-length v8, v2

    invoke-static {v2, v11, v15, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    array-length v7, v5

    array-length v8, v2

    add-int/2addr v7, v8

    array-length v8, v1

    invoke-static {v1, v11, v15, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    array-length v5, v5

    array-length v2, v2

    add-int/2addr v5, v2

    array-length v1, v1

    add-int/2addr v5, v1

    array-length v1, v4

    invoke-static {v4, v11, v15, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "multipart/form-data; boundary="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Content-Type"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Content-Length"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v2, v0, Lcom/qiniu/android/http/request/RequestTransaction;->userAgent:Ljava/lang/String;

    const-string v3, "User-Agent"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    new-instance v2, Lcom/qiniu/android/http/request/RequestTransaction$3;

    invoke-direct {v2, v0}, Lcom/qiniu/android/http/request/RequestTransaction$3;-><init>(Lcom/qiniu/android/http/request/RequestTransaction;)V

    .line 185
    iget-object v12, v0, Lcom/qiniu/android/http/request/RequestTransaction;->regionRequest:Lcom/qiniu/android/http/request/HttpRegionRequest;

    const/4 v13, 0x0

    new-instance v3, Lcom/qiniu/android/http/request/RequestTransaction$4;

    move-object/from16 v4, p5

    invoke-direct {v3, v0, v4}, Lcom/qiniu/android/http/request/RequestTransaction$4;-><init>(Lcom/qiniu/android/http/request/RequestTransaction;Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V

    move/from16 v14, p3

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, p4

    move-object/from16 v19, v3

    invoke-virtual/range {v12 .. v19}, Lcom/qiniu/android/http/request/HttpRegionRequest;->post(Ljava/lang/String;Z[BLjava/util/Map;Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V

    return-void
.end method

.method public uploadPart(ZLjava/lang/String;I[BLcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V
    .registers 16

    .line 391
    iget-object v0, p0, Lcom/qiniu/android/http/request/RequestTransaction;->requestInfo:Lcom/qiniu/android/http/request/UploadRequestInfo;

    const-string v1, "upload_part"

    iput-object v1, v0, Lcom/qiniu/android/http/request/UploadRequestInfo;->requestType:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 393
    iget-object v1, p0, Lcom/qiniu/android/http/request/RequestTransaction;->token:Lcom/qiniu/android/storage/UpToken;

    iget-object v1, v1, Lcom/qiniu/android/storage/UpToken;->token:Ljava/lang/String;

    if-eqz v1, :cond_10

    goto :goto_12

    :cond_10
    const-string v1, ""

    :goto_12
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "UpToken %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 394
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Authorization"

    .line 395
    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Content-Type"

    const-string v1, "application/octet-stream"

    .line 396
    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    iget-object v0, p0, Lcom/qiniu/android/http/request/RequestTransaction;->userAgent:Ljava/lang/String;

    const-string v1, "User-Agent"

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    iget-object v0, p0, Lcom/qiniu/android/http/request/RequestTransaction;->uploadOption:Lcom/qiniu/android/storage/UploadOptions;

    iget-boolean v0, v0, Lcom/qiniu/android/storage/UploadOptions;->checkCrc:Z

    if-eqz v0, :cond_44

    .line 399
    invoke-static {p4}, Lcom/qiniu/android/utils/MD5;->encrypt([B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_44

    const-string v1, "Content-MD5"

    .line 401
    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    :cond_44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/buckets/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qiniu/android/http/request/RequestTransaction;->token:Lcom/qiniu/android/storage/UpToken;

    iget-object v1, v1, Lcom/qiniu/android/storage/UpToken;->bucket:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/objects/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qiniu/android/http/request/RequestTransaction;->key:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/qiniu/android/http/request/RequestTransaction;->resumeV2EncodeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 407
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/uploads/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 409
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 411
    new-instance v6, Lcom/qiniu/android/http/request/RequestTransaction$13;

    invoke-direct {v6, p0}, Lcom/qiniu/android/http/request/RequestTransaction$13;-><init>(Lcom/qiniu/android/http/request/RequestTransaction;)V

    .line 428
    iget-object v1, p0, Lcom/qiniu/android/http/request/RequestTransaction;->regionRequest:Lcom/qiniu/android/http/request/HttpRegionRequest;

    new-instance v8, Lcom/qiniu/android/http/request/RequestTransaction$14;

    invoke-direct {v8, p0, p6}, Lcom/qiniu/android/http/request/RequestTransaction$14;-><init>(Lcom/qiniu/android/http/request/RequestTransaction;Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V

    move v3, p1

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v8}, Lcom/qiniu/android/http/request/HttpRegionRequest;->put(Ljava/lang/String;Z[BLjava/util/Map;Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V

    return-void
.end method
