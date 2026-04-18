.class Lcom/qiniu/android/storage/PartsUpload;
.super Lcom/qiniu/android/storage/BaseUpload;
.source "PartsUpload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/storage/PartsUpload$UploadFileDataCompleteHandler;,
        Lcom/qiniu/android/storage/PartsUpload$UploadFileCompleteHandler;,
        Lcom/qiniu/android/storage/PartsUpload$UploadFileRestDataCompleteHandler;
    }
.end annotation


# instance fields
.field private uploadDataErrorResponse:Lorg/json/JSONObject;

.field private uploadDataErrorResponseInfo:Lcom/qiniu/android/http/ResponseInfo;

.field uploadPerformer:Lcom/qiniu/android/storage/PartsUploadPerformer;


# direct methods
.method protected constructor <init>(Lcom/qiniu/android/storage/UploadSource;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/Recorder;Ljava/lang/String;Lcom/qiniu/android/storage/BaseUpload$UpTaskCompletionHandler;)V
    .registers 9

    .line 29
    invoke-direct/range {p0 .. p8}, Lcom/qiniu/android/storage/BaseUpload;-><init>(Lcom/qiniu/android/storage/UploadSource;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/Recorder;Ljava/lang/String;Lcom/qiniu/android/storage/BaseUpload$UpTaskCompletionHandler;)V

    return-void
.end method

.method static synthetic access$000(Lcom/qiniu/android/storage/PartsUpload;)Lcom/qiniu/android/http/ResponseInfo;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/qiniu/android/storage/PartsUpload;->uploadDataErrorResponseInfo:Lcom/qiniu/android/http/ResponseInfo;

    return-object p0
.end method

.method static synthetic access$100(Lcom/qiniu/android/storage/PartsUpload;)Lorg/json/JSONObject;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/qiniu/android/storage/PartsUpload;->uploadDataErrorResponse:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic access$200(Lcom/qiniu/android/storage/PartsUpload;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
    .registers 3

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/qiniu/android/storage/PartsUpload;->setErrorResponse(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    return-void
.end method

.method private reportBlock()V
    .registers 9

    .line 265
    iget-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->token:Lcom/qiniu/android/storage/UpToken;

    if-eqz v0, :cond_168

    invoke-virtual {v0}, Lcom/qiniu/android/storage/UpToken;->isValid()Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_168

    .line 269
    :cond_c
    invoke-virtual {p0}, Lcom/qiniu/android/storage/BaseUpload;->getCurrentRegionRequestMetrics()Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_18

    .line 271
    new-instance v0, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    invoke-direct {v0, v1}, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;-><init>(Lcom/qiniu/android/http/request/IUploadRegion;)V

    .line 275
    :cond_18
    invoke-virtual {p0}, Lcom/qiniu/android/storage/BaseUpload;->getCurrentRegion()Lcom/qiniu/android/http/request/IUploadRegion;

    move-result-object v2

    if-eqz v2, :cond_3f

    invoke-virtual {p0}, Lcom/qiniu/android/storage/BaseUpload;->getCurrentRegion()Lcom/qiniu/android/http/request/IUploadRegion;

    move-result-object v2

    invoke-interface {v2}, Lcom/qiniu/android/http/request/IUploadRegion;->getZoneInfo()Lcom/qiniu/android/common/ZoneInfo;

    move-result-object v2

    if-eqz v2, :cond_3f

    invoke-virtual {p0}, Lcom/qiniu/android/storage/BaseUpload;->getCurrentRegion()Lcom/qiniu/android/http/request/IUploadRegion;

    move-result-object v2

    invoke-interface {v2}, Lcom/qiniu/android/http/request/IUploadRegion;->getZoneInfo()Lcom/qiniu/android/common/ZoneInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/qiniu/android/common/ZoneInfo;->regionId:Ljava/lang/String;

    if-eqz v2, :cond_3f

    .line 276
    invoke-virtual {p0}, Lcom/qiniu/android/storage/BaseUpload;->getCurrentRegion()Lcom/qiniu/android/http/request/IUploadRegion;

    move-result-object v2

    invoke-interface {v2}, Lcom/qiniu/android/http/request/IUploadRegion;->getZoneInfo()Lcom/qiniu/android/common/ZoneInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/qiniu/android/common/ZoneInfo;->regionId:Ljava/lang/String;

    goto :goto_40

    :cond_3f
    move-object v2, v1

    .line 279
    :goto_40
    invoke-virtual {p0}, Lcom/qiniu/android/storage/BaseUpload;->getTargetRegion()Lcom/qiniu/android/http/request/IUploadRegion;

    move-result-object v3

    if-eqz v3, :cond_66

    invoke-virtual {p0}, Lcom/qiniu/android/storage/BaseUpload;->getTargetRegion()Lcom/qiniu/android/http/request/IUploadRegion;

    move-result-object v3

    invoke-interface {v3}, Lcom/qiniu/android/http/request/IUploadRegion;->getZoneInfo()Lcom/qiniu/android/common/ZoneInfo;

    move-result-object v3

    if-eqz v3, :cond_66

    invoke-virtual {p0}, Lcom/qiniu/android/storage/BaseUpload;->getTargetRegion()Lcom/qiniu/android/http/request/IUploadRegion;

    move-result-object v3

    invoke-interface {v3}, Lcom/qiniu/android/http/request/IUploadRegion;->getZoneInfo()Lcom/qiniu/android/common/ZoneInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/qiniu/android/common/ZoneInfo;->regionId:Ljava/lang/String;

    if-eqz v3, :cond_66

    .line 280
    invoke-virtual {p0}, Lcom/qiniu/android/storage/BaseUpload;->getTargetRegion()Lcom/qiniu/android/http/request/IUploadRegion;

    move-result-object v1

    invoke-interface {v1}, Lcom/qiniu/android/http/request/IUploadRegion;->getZoneInfo()Lcom/qiniu/android/common/ZoneInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/qiniu/android/common/ZoneInfo;->regionId:Ljava/lang/String;

    .line 283
    :cond_66
    new-instance v3, Lcom/qiniu/android/collect/ReportItem;

    invoke-direct {v3}, Lcom/qiniu/android/collect/ReportItem;-><init>()V

    const-string v4, "block"

    const-string v5, "log_type"

    .line 284
    invoke-virtual {v3, v4, v5}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    invoke-static {}, Lcom/qiniu/android/utils/Utils;->currentTimestamp()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "up_time"

    invoke-virtual {v3, v4, v5}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    iget-object v4, p0, Lcom/qiniu/android/storage/BaseUpload;->key:Ljava/lang/String;

    const-string v5, "target_key"

    invoke-virtual {v3, v4, v5}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    iget-object v4, p0, Lcom/qiniu/android/storage/BaseUpload;->token:Lcom/qiniu/android/storage/UpToken;

    iget-object v4, v4, Lcom/qiniu/android/storage/UpToken;->bucket:Ljava/lang/String;

    const-string v5, "target_bucket"

    invoke-virtual {v3, v4, v5}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "target_region_id"

    .line 288
    invoke-virtual {v3, v2, v4}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "current_region_id"

    .line 289
    invoke-virtual {v3, v1, v2}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    invoke-virtual {v0}, Lcom/qiniu/android/http/metrics/UploadMetrics;->totalElapsedTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "total_elapsed_time"

    invoke-virtual {v3, v1, v2}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0}, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;->bytesSend()Ljava/lang/Long;

    move-result-object v1

    const-string v2, "bytes_sent"

    invoke-virtual {v3, v1, v2}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUpload;->uploadPerformer:Lcom/qiniu/android/storage/PartsUploadPerformer;

    iget-object v1, v1, Lcom/qiniu/android/storage/PartsUploadPerformer;->recoveredFrom:Ljava/lang/Long;

    const-string v2, "recovered_from"

    invoke-virtual {v3, v1, v2}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lcom/qiniu/android/storage/BaseUpload;->uploadSource:Lcom/qiniu/android/storage/UploadSource;

    invoke-interface {v1}, Lcom/qiniu/android/storage/UploadSource;->getSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "file_size"

    invoke-virtual {v3, v1, v2}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUpload;->uploadDataErrorResponseInfo:Lcom/qiniu/android/http/ResponseInfo;

    if-nez v1, :cond_fd

    iget-object v1, p0, Lcom/qiniu/android/storage/BaseUpload;->uploadSource:Lcom/qiniu/android/storage/UploadSource;

    invoke-interface {v1}, Lcom/qiniu/android/storage/UploadSource;->getSize()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-lez v6, :cond_fd

    invoke-virtual {v0}, Lcom/qiniu/android/http/metrics/UploadMetrics;->totalElapsedTime()J

    move-result-wide v1

    cmp-long v6, v1, v4

    if-lez v6, :cond_fd

    .line 297
    iget-object v1, p0, Lcom/qiniu/android/storage/BaseUpload;->uploadSource:Lcom/qiniu/android/storage/UploadSource;

    invoke-interface {v1}, Lcom/qiniu/android/storage/UploadSource;->getSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0}, Lcom/qiniu/android/http/metrics/UploadMetrics;->totalElapsedTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qiniu/android/utils/Utils;->calculateSpeed(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "perceptive_speed"

    invoke-virtual {v3, v0, v1}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    :cond_fd
    invoke-static {}, Lcom/qiniu/android/utils/Utils;->getCurrentProcessID()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "pid"

    invoke-virtual {v3, v0, v1}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    invoke-static {}, Lcom/qiniu/android/utils/Utils;->getCurrentThreadID()Ljava/lang/Long;

    move-result-object v0

    const-string v1, "tid"

    invoke-virtual {v3, v0, v1}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->config:Lcom/qiniu/android/storage/Configuration;

    const-string v1, "up_api_version"

    if-eqz v0, :cond_124

    iget v0, v0, Lcom/qiniu/android/storage/Configuration;->resumeUploadVersion:I

    sget v2, Lcom/qiniu/android/storage/Configuration;->RESUME_UPLOAD_VERSION_V1:I

    if-ne v0, v2, :cond_124

    const/4 v0, 0x1

    .line 304
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_12c

    :cond_124
    const/4 v0, 0x2

    .line 306
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    :goto_12c
    invoke-static {}, Lcom/qiniu/android/utils/Utils;->currentTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "client_time"

    invoke-virtual {v3, v0, v1}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    invoke-static {}, Lcom/qiniu/android/utils/Utils;->systemName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "os_name"

    invoke-virtual {v3, v0, v1}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    invoke-static {}, Lcom/qiniu/android/utils/Utils;->systemVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "os_version"

    invoke-virtual {v3, v0, v1}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    invoke-static {}, Lcom/qiniu/android/utils/Utils;->sdkLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdk_name"

    invoke-virtual {v3, v0, v1}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    invoke-static {}, Lcom/qiniu/android/utils/Utils;->sdkVerion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdk_version"

    invoke-virtual {v3, v0, v1}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    invoke-static {}, Lcom/qiniu/android/collect/UploadInfoReporter;->getInstance()Lcom/qiniu/android/collect/UploadInfoReporter;

    move-result-object v0

    iget-object v1, p0, Lcom/qiniu/android/storage/BaseUpload;->token:Lcom/qiniu/android/storage/UpToken;

    iget-object v1, v1, Lcom/qiniu/android/storage/UpToken;->token:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/qiniu/android/collect/UploadInfoReporter;->report(Lcom/qiniu/android/collect/ReportItem;Ljava/lang/String;)V

    :cond_168
    :goto_168
    return-void
.end method

.method private setErrorResponse(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 58
    :cond_3
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUpload;->uploadDataErrorResponseInfo:Lcom/qiniu/android/http/ResponseInfo;

    if-eqz v0, :cond_d

    iget v0, p1, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v1, -0x9

    if-eq v0, v1, :cond_18

    .line 59
    :cond_d
    iput-object p1, p0, Lcom/qiniu/android/storage/PartsUpload;->uploadDataErrorResponseInfo:Lcom/qiniu/android/http/ResponseInfo;

    if-nez p2, :cond_16

    .line 61
    iget-object p1, p1, Lcom/qiniu/android/http/ResponseInfo;->response:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/qiniu/android/storage/PartsUpload;->uploadDataErrorResponse:Lorg/json/JSONObject;

    goto :goto_18

    .line 63
    :cond_16
    iput-object p2, p0, Lcom/qiniu/android/storage/PartsUpload;->uploadDataErrorResponse:Lorg/json/JSONObject;

    :cond_18
    :goto_18
    return-void
.end method

.method private shouldRemoveUploadInfoRecord(Lcom/qiniu/android/http/ResponseInfo;)Z
    .registers 3

    if-eqz p1, :cond_18

    .line 260
    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result v0

    if-nez v0, :cond_16

    iget p1, p1, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v0, 0x264

    if-eq p1, v0, :cond_16

    const/16 v0, 0x266

    if-eq p1, v0, :cond_16

    const/16 v0, 0x2bd

    if-ne p1, v0, :cond_18

    :cond_16
    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1
.end method


# virtual methods
.method protected completeAction(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
    .registers 4

    .line 249
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUpload;->uploadPerformer:Lcom/qiniu/android/storage/PartsUploadPerformer;

    invoke-virtual {v0}, Lcom/qiniu/android/storage/PartsUploadPerformer;->closeFile()V

    .line 250
    invoke-direct {p0, p1}, Lcom/qiniu/android/storage/PartsUpload;->shouldRemoveUploadInfoRecord(Lcom/qiniu/android/http/ResponseInfo;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 251
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUpload;->uploadPerformer:Lcom/qiniu/android/storage/PartsUploadPerformer;

    invoke-virtual {v0}, Lcom/qiniu/android/storage/PartsUploadPerformer;->removeUploadInfoRecord()V

    .line 254
    :cond_10
    invoke-super {p0, p1, p2}, Lcom/qiniu/android/storage/BaseUpload;->completeAction(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    .line 256
    invoke-direct {p0}, Lcom/qiniu/android/storage/PartsUpload;->reportBlock()V

    return-void
.end method

.method protected completeUpload(Lcom/qiniu/android/storage/PartsUpload$UploadFileCompleteHandler;)V
    .registers 4

    .line 235
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUpload;->uploadPerformer:Lcom/qiniu/android/storage/PartsUploadPerformer;

    new-instance v1, Lcom/qiniu/android/storage/PartsUpload$5;

    invoke-direct {v1, p0, p1}, Lcom/qiniu/android/storage/PartsUpload$5;-><init>(Lcom/qiniu/android/storage/PartsUpload;Lcom/qiniu/android/storage/PartsUpload$UploadFileCompleteHandler;)V

    invoke-virtual {v0, v1}, Lcom/qiniu/android/storage/PartsUploadPerformer;->completeUpload(Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;)V

    return-void
.end method

.method protected initData()V
    .registers 10

    .line 34
    invoke-super {p0}, Lcom/qiniu/android/storage/BaseUpload;->initData()V

    .line 36
    iget-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->config:Lcom/qiniu/android/storage/Configuration;

    const-string v1, "key:"

    if-eqz v0, :cond_43

    iget v0, v0, Lcom/qiniu/android/storage/Configuration;->resumeUploadVersion:I

    sget v2, Lcom/qiniu/android/storage/Configuration;->RESUME_UPLOAD_VERSION_V1:I

    if-ne v0, v2, :cond_43

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qiniu/android/storage/BaseUpload;->key:Ljava/lang/String;

    invoke-static {v1}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " 分片V1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 38
    new-instance v0, Lcom/qiniu/android/storage/PartsUploadPerformerV1;

    iget-object v2, p0, Lcom/qiniu/android/storage/BaseUpload;->uploadSource:Lcom/qiniu/android/storage/UploadSource;

    iget-object v3, p0, Lcom/qiniu/android/storage/BaseUpload;->fileName:Ljava/lang/String;

    iget-object v4, p0, Lcom/qiniu/android/storage/BaseUpload;->key:Ljava/lang/String;

    iget-object v5, p0, Lcom/qiniu/android/storage/BaseUpload;->token:Lcom/qiniu/android/storage/UpToken;

    iget-object v6, p0, Lcom/qiniu/android/storage/BaseUpload;->option:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v7, p0, Lcom/qiniu/android/storage/BaseUpload;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v8, p0, Lcom/qiniu/android/storage/BaseUpload;->recorderKey:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/qiniu/android/storage/PartsUploadPerformerV1;-><init>(Lcom/qiniu/android/storage/UploadSource;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/Configuration;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qiniu/android/storage/PartsUpload;->uploadPerformer:Lcom/qiniu/android/storage/PartsUploadPerformer;

    goto :goto_76

    .line 40
    :cond_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qiniu/android/storage/BaseUpload;->key:Ljava/lang/String;

    invoke-static {v1}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " 分片V2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 41
    new-instance v0, Lcom/qiniu/android/storage/PartsUploadPerformerV2;

    iget-object v2, p0, Lcom/qiniu/android/storage/BaseUpload;->uploadSource:Lcom/qiniu/android/storage/UploadSource;

    iget-object v3, p0, Lcom/qiniu/android/storage/BaseUpload;->fileName:Ljava/lang/String;

    iget-object v4, p0, Lcom/qiniu/android/storage/BaseUpload;->key:Ljava/lang/String;

    iget-object v5, p0, Lcom/qiniu/android/storage/BaseUpload;->token:Lcom/qiniu/android/storage/UpToken;

    iget-object v6, p0, Lcom/qiniu/android/storage/BaseUpload;->option:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v7, p0, Lcom/qiniu/android/storage/BaseUpload;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v8, p0, Lcom/qiniu/android/storage/BaseUpload;->recorderKey:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/qiniu/android/storage/PartsUploadPerformerV2;-><init>(Lcom/qiniu/android/storage/UploadSource;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/Configuration;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qiniu/android/storage/PartsUpload;->uploadPerformer:Lcom/qiniu/android/storage/PartsUploadPerformer;

    :goto_76
    return-void
.end method

.method isAllUploaded()Z
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUpload;->uploadPerformer:Lcom/qiniu/android/storage/PartsUploadPerformer;

    iget-object v0, v0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 49
    :cond_8
    invoke-virtual {v0}, Lcom/qiniu/android/storage/UploadInfo;->isAllUploaded()Z

    move-result v0

    return v0
.end method

.method protected performUploadRestData(Lcom/qiniu/android/storage/PartsUpload$UploadFileRestDataCompleteHandler;)V
    .registers 3

    .line 187
    invoke-virtual {p0}, Lcom/qiniu/android/storage/PartsUpload;->isAllUploaded()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 188
    invoke-interface {p1}, Lcom/qiniu/android/storage/PartsUpload$UploadFileRestDataCompleteHandler;->complete()V

    return-void

    .line 192
    :cond_a
    new-instance v0, Lcom/qiniu/android/storage/PartsUpload$2;

    invoke-direct {v0, p0, p1}, Lcom/qiniu/android/storage/PartsUpload$2;-><init>(Lcom/qiniu/android/storage/PartsUpload;Lcom/qiniu/android/storage/PartsUpload$UploadFileRestDataCompleteHandler;)V

    invoke-virtual {p0, v0}, Lcom/qiniu/android/storage/PartsUpload;->uploadNextData(Lcom/qiniu/android/storage/PartsUpload$UploadFileDataCompleteHandler;)V

    return-void
.end method

.method protected prepareToUpload()I
    .registers 5

    .line 70
    invoke-super {p0}, Lcom/qiniu/android/storage/BaseUpload;->prepareToUpload()I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    .line 75
    :cond_7
    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUpload;->uploadPerformer:Lcom/qiniu/android/storage/PartsUploadPerformer;

    iget-object v1, v1, Lcom/qiniu/android/storage/PartsUploadPerformer;->currentRegion:Lcom/qiniu/android/http/request/IUploadRegion;

    const-string v2, "key:"

    if-eqz v1, :cond_3a

    invoke-interface {v1}, Lcom/qiniu/android/http/request/IUploadRegion;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 76
    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUpload;->uploadPerformer:Lcom/qiniu/android/storage/PartsUploadPerformer;

    iget-object v1, v1, Lcom/qiniu/android/storage/PartsUploadPerformer;->currentRegion:Lcom/qiniu/android/http/request/IUploadRegion;

    invoke-virtual {p0, v1}, Lcom/qiniu/android/storage/BaseUpload;->insertRegionAtFirst(Lcom/qiniu/android/http/request/IUploadRegion;)V

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qiniu/android/storage/BaseUpload;->key:Ljava/lang/String;

    invoke-static {v3}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " 使用缓存region"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    goto :goto_43

    .line 79
    :cond_3a
    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUpload;->uploadPerformer:Lcom/qiniu/android/storage/PartsUploadPerformer;

    invoke-virtual {p0}, Lcom/qiniu/android/storage/BaseUpload;->getCurrentRegion()Lcom/qiniu/android/http/request/IUploadRegion;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/qiniu/android/storage/PartsUploadPerformer;->switchRegion(Lcom/qiniu/android/http/request/IUploadRegion;)V

    .line 82
    :goto_43
    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUpload;->uploadPerformer:Lcom/qiniu/android/storage/PartsUploadPerformer;

    if-eqz v1, :cond_7f

    iget-object v1, v1, Lcom/qiniu/android/storage/PartsUploadPerformer;->currentRegion:Lcom/qiniu/android/http/request/IUploadRegion;

    if-eqz v1, :cond_7f

    invoke-interface {v1}, Lcom/qiniu/android/http/request/IUploadRegion;->getZoneInfo()Lcom/qiniu/android/common/ZoneInfo;

    move-result-object v1

    if-eqz v1, :cond_7f

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qiniu/android/storage/BaseUpload;->key:Ljava/lang/String;

    invoke-static {v2}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " region:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qiniu/android/storage/PartsUpload;->uploadPerformer:Lcom/qiniu/android/storage/PartsUploadPerformer;

    iget-object v2, v2, Lcom/qiniu/android/storage/PartsUploadPerformer;->currentRegion:Lcom/qiniu/android/http/request/IUploadRegion;

    invoke-interface {v2}, Lcom/qiniu/android/http/request/IUploadRegion;->getZoneInfo()Lcom/qiniu/android/common/ZoneInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/qiniu/android/common/ZoneInfo;->regionId:Ljava/lang/String;

    invoke-static {v2}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 86
    :cond_7f
    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUpload;->uploadPerformer:Lcom/qiniu/android/storage/PartsUploadPerformer;

    invoke-virtual {v1}, Lcom/qiniu/android/storage/PartsUploadPerformer;->canReadFile()Z

    move-result v1

    if-nez v1, :cond_88

    const/4 v0, -0x7

    :cond_88
    return v0
.end method

.method protected serverInit(Lcom/qiniu/android/storage/PartsUpload$UploadFileCompleteHandler;)V
    .registers 4

    .line 207
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUpload;->uploadPerformer:Lcom/qiniu/android/storage/PartsUploadPerformer;

    new-instance v1, Lcom/qiniu/android/storage/PartsUpload$3;

    invoke-direct {v1, p0, p1}, Lcom/qiniu/android/storage/PartsUpload$3;-><init>(Lcom/qiniu/android/storage/PartsUpload;Lcom/qiniu/android/storage/PartsUpload$UploadFileCompleteHandler;)V

    invoke-virtual {v0, v1}, Lcom/qiniu/android/storage/PartsUploadPerformer;->serverInit(Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;)V

    return-void
.end method

.method protected startToUpload()V
    .registers 3

    .line 118
    invoke-super {p0}, Lcom/qiniu/android/storage/BaseUpload;->startToUpload()V

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/qiniu/android/storage/PartsUpload;->uploadDataErrorResponse:Lorg/json/JSONObject;

    .line 121
    iput-object v0, p0, Lcom/qiniu/android/storage/PartsUpload;->uploadDataErrorResponseInfo:Lcom/qiniu/android/http/ResponseInfo;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qiniu/android/storage/BaseUpload;->key:Ljava/lang/String;

    invoke-static {v1}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " serverInit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 126
    new-instance v0, Lcom/qiniu/android/storage/PartsUpload$1;

    invoke-direct {v0, p0}, Lcom/qiniu/android/storage/PartsUpload$1;-><init>(Lcom/qiniu/android/storage/PartsUpload;)V

    invoke-virtual {p0, v0}, Lcom/qiniu/android/storage/PartsUpload;->serverInit(Lcom/qiniu/android/storage/PartsUpload$UploadFileCompleteHandler;)V

    return-void
.end method

.method protected switchRegion()Z
    .registers 4

    .line 96
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUpload;->uploadPerformer:Lcom/qiniu/android/storage/PartsUploadPerformer;

    invoke-virtual {v0}, Lcom/qiniu/android/storage/PartsUploadPerformer;->couldReloadInfo()Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUpload;->uploadPerformer:Lcom/qiniu/android/storage/PartsUploadPerformer;

    invoke-virtual {v0}, Lcom/qiniu/android/storage/PartsUploadPerformer;->reloadInfo()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_5f

    .line 100
    :cond_11
    invoke-super {p0}, Lcom/qiniu/android/storage/BaseUpload;->switchRegion()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 102
    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUpload;->uploadPerformer:Lcom/qiniu/android/storage/PartsUploadPerformer;

    invoke-virtual {p0}, Lcom/qiniu/android/storage/BaseUpload;->getCurrentRegion()Lcom/qiniu/android/http/request/IUploadRegion;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qiniu/android/storage/PartsUploadPerformer;->switchRegion(Lcom/qiniu/android/http/request/IUploadRegion;)V

    .line 103
    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUpload;->uploadPerformer:Lcom/qiniu/android/storage/PartsUploadPerformer;

    if-eqz v1, :cond_5e

    iget-object v1, v1, Lcom/qiniu/android/storage/PartsUploadPerformer;->currentRegion:Lcom/qiniu/android/http/request/IUploadRegion;

    if-eqz v1, :cond_5e

    invoke-interface {v1}, Lcom/qiniu/android/http/request/IUploadRegion;->getZoneInfo()Lcom/qiniu/android/common/ZoneInfo;

    move-result-object v1

    if-eqz v1, :cond_5e

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qiniu/android/storage/BaseUpload;->key:Ljava/lang/String;

    invoke-static {v2}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " region:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qiniu/android/storage/PartsUpload;->uploadPerformer:Lcom/qiniu/android/storage/PartsUploadPerformer;

    iget-object v2, v2, Lcom/qiniu/android/storage/PartsUploadPerformer;->currentRegion:Lcom/qiniu/android/http/request/IUploadRegion;

    invoke-interface {v2}, Lcom/qiniu/android/http/request/IUploadRegion;->getZoneInfo()Lcom/qiniu/android/common/ZoneInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/qiniu/android/common/ZoneInfo;->regionId:Ljava/lang/String;

    invoke-static {v2}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    :cond_5e
    return v0

    :cond_5f
    :goto_5f
    const/4 v0, 0x0

    return v0
.end method

.method protected switchRegionAndUpload()Z
    .registers 2

    .line 112
    invoke-direct {p0}, Lcom/qiniu/android/storage/PartsUpload;->reportBlock()V

    .line 113
    invoke-super {p0}, Lcom/qiniu/android/storage/BaseUpload;->switchRegionAndUpload()Z

    move-result v0

    return v0
.end method

.method protected uploadNextData(Lcom/qiniu/android/storage/PartsUpload$UploadFileDataCompleteHandler;)V
    .registers 4

    .line 221
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUpload;->uploadPerformer:Lcom/qiniu/android/storage/PartsUploadPerformer;

    new-instance v1, Lcom/qiniu/android/storage/PartsUpload$4;

    invoke-direct {v1, p0, p1}, Lcom/qiniu/android/storage/PartsUpload$4;-><init>(Lcom/qiniu/android/storage/PartsUpload;Lcom/qiniu/android/storage/PartsUpload$UploadFileDataCompleteHandler;)V

    invoke-virtual {v0, v1}, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadNextData(Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;)V

    return-void
.end method

.method protected uploadRestData(Lcom/qiniu/android/storage/PartsUpload$UploadFileRestDataCompleteHandler;)V
    .registers 4

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qiniu/android/storage/BaseUpload;->key:Ljava/lang/String;

    invoke-static {v1}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " 串行分片"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 183
    invoke-virtual {p0, p1}, Lcom/qiniu/android/storage/PartsUpload;->performUploadRestData(Lcom/qiniu/android/storage/PartsUpload$UploadFileRestDataCompleteHandler;)V

    return-void
.end method
