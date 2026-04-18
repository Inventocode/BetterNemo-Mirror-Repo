.class Lcom/qiniu/android/storage/PartsUploadPerformerV1;
.super Lcom/qiniu/android/storage/PartsUploadPerformer;
.source "PartsUploadPerformerV1.java"


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/UploadSource;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/Configuration;Ljava/lang/String;)V
    .registers 8

    .line 24
    invoke-direct/range {p0 .. p7}, Lcom/qiniu/android/storage/PartsUploadPerformer;-><init>(Lcom/qiniu/android/storage/UploadSource;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/Configuration;Ljava/lang/String;)V

    return-void
.end method

.method private makeBlock(Lcom/qiniu/android/storage/UploadBlock;Lcom/qiniu/android/storage/UploadData;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;)V
    .registers 14

    .line 152
    invoke-virtual {p0}, Lcom/qiniu/android/storage/PartsUploadPerformer;->createUploadRequestTransaction()Lcom/qiniu/android/http/request/RequestTransaction;

    move-result-object v0

    .line 153
    iget-wide v1, p1, Lcom/qiniu/android/storage/UploadBlock;->offset:J

    iget p1, p1, Lcom/qiniu/android/storage/UploadBlock;->size:I

    int-to-long v3, p1

    iget-object v5, p2, Lcom/qiniu/android/storage/UploadData;->data:[B

    new-instance v8, Lcom/qiniu/android/storage/PartsUploadPerformerV1$4;

    invoke-direct {v8, p0, v0, p4}, Lcom/qiniu/android/storage/PartsUploadPerformerV1$4;-><init>(Lcom/qiniu/android/storage/PartsUploadPerformerV1;Lcom/qiniu/android/http/request/RequestTransaction;Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;)V

    const/4 v6, 0x1

    move-object v7, p3

    invoke-virtual/range {v0 .. v8}, Lcom/qiniu/android/http/request/RequestTransaction;->makeBlock(JJ[BZLcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V

    return-void
.end method

.method private uploadChunk(Lcom/qiniu/android/storage/UploadBlock;Lcom/qiniu/android/storage/UploadData;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;)V
    .registers 15

    .line 168
    invoke-virtual {p0}, Lcom/qiniu/android/storage/PartsUploadPerformer;->createUploadRequestTransaction()Lcom/qiniu/android/http/request/RequestTransaction;

    move-result-object v0

    .line 169
    iget-object v1, p1, Lcom/qiniu/android/storage/UploadBlock;->ctx:Ljava/lang/String;

    iget-wide v2, p1, Lcom/qiniu/android/storage/UploadBlock;->offset:J

    iget-object v4, p2, Lcom/qiniu/android/storage/UploadData;->data:[B

    iget-wide v5, p2, Lcom/qiniu/android/storage/UploadData;->offset:J

    new-instance v9, Lcom/qiniu/android/storage/PartsUploadPerformerV1$5;

    invoke-direct {v9, p0, v0, p4}, Lcom/qiniu/android/storage/PartsUploadPerformerV1$5;-><init>(Lcom/qiniu/android/storage/PartsUploadPerformerV1;Lcom/qiniu/android/http/request/RequestTransaction;Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;)V

    const/4 v7, 0x1

    move-object v8, p3

    invoke-virtual/range {v0 .. v9}, Lcom/qiniu/android/http/request/RequestTransaction;->uploadChunk(Ljava/lang/String;J[BJZLcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V

    return-void
.end method


# virtual methods
.method completeUpload(Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;)V
    .registers 11

    .line 124
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

    check-cast v0, Lcom/qiniu/android/storage/UploadInfoV1;

    .line 127
    invoke-virtual {v0}, Lcom/qiniu/android/storage/UploadInfoV1;->allBlocksContexts()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 129
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1d

    .line 130
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    move-object v6, v1

    .line 133
    invoke-virtual {p0}, Lcom/qiniu/android/storage/PartsUploadPerformer;->createUploadRequestTransaction()Lcom/qiniu/android/http/request/RequestTransaction;

    move-result-object v2

    .line 134
    invoke-virtual {v0}, Lcom/qiniu/android/storage/UploadInfo;->getSourceSize()J

    move-result-wide v3

    iget-object v5, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->fileName:Ljava/lang/String;

    const/4 v7, 0x1

    new-instance v8, Lcom/qiniu/android/storage/PartsUploadPerformerV1$3;

    invoke-direct {v8, p0, v2, p1}, Lcom/qiniu/android/storage/PartsUploadPerformerV1$3;-><init>(Lcom/qiniu/android/storage/PartsUploadPerformerV1;Lcom/qiniu/android/http/request/RequestTransaction;Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;)V

    invoke-virtual/range {v2 .. v8}, Lcom/qiniu/android/http/request/RequestTransaction;->makeFile(JLjava/lang/String;[Ljava/lang/String;ZLcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V

    return-void
.end method

.method getDefaultUploadInfo()Lcom/qiniu/android/storage/UploadInfo;
    .registers 4

    .line 37
    new-instance v0, Lcom/qiniu/android/storage/UploadInfoV1;

    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadSource:Lcom/qiniu/android/storage/UploadSource;

    iget-object v2, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->config:Lcom/qiniu/android/storage/Configuration;

    invoke-direct {v0, v1, v2}, Lcom/qiniu/android/storage/UploadInfoV1;-><init>(Lcom/qiniu/android/storage/UploadSource;Lcom/qiniu/android/storage/Configuration;)V

    return-object v0
.end method

.method getUploadInfoFromJson(Lcom/qiniu/android/storage/UploadSource;Lorg/json/JSONObject;)Lcom/qiniu/android/storage/UploadInfo;
    .registers 3

    if-nez p2, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 32
    :cond_4
    invoke-static {p1, p2}, Lcom/qiniu/android/storage/UploadInfoV1;->infoFromJson(Lcom/qiniu/android/storage/UploadSource;Lorg/json/JSONObject;)Lcom/qiniu/android/storage/UploadInfoV1;

    move-result-object p1

    return-object p1
.end method

.method serverInit(Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;)V
    .registers 4

    .line 42
    invoke-static {}, Lcom/qiniu/android/http/ResponseInfo;->successResponse()Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 43
    invoke-interface {p1, v0, v1, v1}, Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;->complete(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lorg/json/JSONObject;)V

    return-void
.end method

.method uploadNextData(Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;)V
    .registers 9

    .line 48
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

    check-cast v0, Lcom/qiniu/android/storage/UploadInfoV1;

    .line 52
    monitor-enter p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    :try_start_7
    invoke-virtual {v0}, Lcom/qiniu/android/storage/UploadInfoV1;->nextUploadBlock()Lcom/qiniu/android/storage/UploadBlock;

    move-result-object v3

    .line 55
    invoke-virtual {v0, v3}, Lcom/qiniu/android/storage/UploadInfoV1;->nextUploadData(Lcom/qiniu/android/storage/UploadBlock;)Lcom/qiniu/android/storage/UploadData;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 57
    sget-object v5, Lcom/qiniu/android/storage/UploadData$State;->Uploading:Lcom/qiniu/android/storage/UploadData$State;

    invoke-virtual {v4, v5}, Lcom/qiniu/android/storage/UploadData;->updateState(Lcom/qiniu/android/storage/UploadData$State;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_b0
    .catchall {:try_start_7 .. :try_end_16} :catchall_ae

    .line 67
    :cond_16
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_ae

    if-eqz v3, :cond_72

    if-nez v4, :cond_1c

    goto :goto_72

    .line 83
    :cond_1c
    new-instance v1, Lcom/qiniu/android/storage/PartsUploadPerformerV1$1;

    invoke-direct {v1, p0, v4}, Lcom/qiniu/android/storage/PartsUploadPerformerV1$1;-><init>(Lcom/qiniu/android/storage/PartsUploadPerformerV1;Lcom/qiniu/android/storage/UploadData;)V

    .line 90
    new-instance v2, Lcom/qiniu/android/storage/PartsUploadPerformerV1$2;

    invoke-direct {v2, p0, v3, v4, p1}, Lcom/qiniu/android/storage/PartsUploadPerformerV1$2;-><init>(Lcom/qiniu/android/storage/PartsUploadPerformerV1;Lcom/qiniu/android/storage/UploadBlock;Lcom/qiniu/android/storage/UploadData;Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;)V

    .line 113
    invoke-virtual {v0, v4}, Lcom/qiniu/android/storage/UploadInfoV1;->isFirstData(Lcom/qiniu/android/storage/UploadData;)Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "key:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->key:Ljava/lang/String;

    invoke-static {v0}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " makeBlock"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 115
    invoke-direct {p0, v3, v4, v1, v2}, Lcom/qiniu/android/storage/PartsUploadPerformerV1;->makeBlock(Lcom/qiniu/android/storage/UploadBlock;Lcom/qiniu/android/storage/UploadData;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;)V

    goto :goto_71

    .line 117
    :cond_4f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "key:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->key:Ljava/lang/String;

    invoke-static {v0}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " makeBlock"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 118
    invoke-direct {p0, v3, v4, v1, v2}, Lcom/qiniu/android/storage/PartsUploadPerformerV1;->uploadChunk(Lcom/qiniu/android/storage/UploadBlock;Lcom/qiniu/android/storage/UploadData;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;)V

    :goto_71
    return-void

    .line 70
    :cond_72
    :goto_72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->key:Ljava/lang/String;

    invoke-static {v3}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " no chunk left"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

    invoke-virtual {v0}, Lcom/qiniu/android/storage/UploadInfo;->getSourceSize()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_a4

    const-string v0, "file is empty"

    .line 73
    invoke-static {v0}, Lcom/qiniu/android/http/ResponseInfo;->zeroSize(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v0

    goto :goto_aa

    :cond_a4
    const-string v0, "no chunk left"

    .line 75
    invoke-static {v0}, Lcom/qiniu/android/http/ResponseInfo;->sdkInteriorError(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v0

    .line 77
    :goto_aa
    invoke-interface {p1, v1, v0, v2, v2}, Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;->complete(ZLcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lorg/json/JSONObject;)V

    return-void

    :catchall_ae
    move-exception p1

    goto :goto_df

    :catch_b0
    move-exception v0

    .line 61
    :try_start_b1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->key:Ljava/lang/String;

    invoke-static {v4}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qiniu/android/http/ResponseInfo;->localIOError(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v0

    .line 64
    invoke-interface {p1, v1, v0, v2, v2}, Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;->complete(ZLcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lorg/json/JSONObject;)V

    .line 65
    monitor-exit p0

    return-void

    .line 67
    :goto_df
    monitor-exit p0
    :try_end_e0
    .catchall {:try_start_b1 .. :try_end_e0} :catchall_ae

    throw p1
.end method
