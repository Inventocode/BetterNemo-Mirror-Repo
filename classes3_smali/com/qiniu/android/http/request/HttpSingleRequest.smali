.class Lcom/qiniu/android/http/request/HttpSingleRequest;
.super Ljava/lang/Object;
.source "HttpSingleRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/http/request/HttpSingleRequest$RequestCompleteHandler;
    }
.end annotation


# instance fields
.field private client:Lcom/qiniu/android/http/request/IRequestClient;

.field private final config:Lcom/qiniu/android/storage/Configuration;

.field private currentRetryTime:I

.field private final requestInfo:Lcom/qiniu/android/http/request/UploadRequestInfo;

.field private requestMetricsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private final requestState:Lcom/qiniu/android/http/request/UploadRequestState;

.field private final token:Lcom/qiniu/android/storage/UpToken;

.field private final uploadOption:Lcom/qiniu/android/storage/UploadOptions;


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/http/request/UploadRequestInfo;Lcom/qiniu/android/http/request/UploadRequestState;)V
    .registers 6

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/qiniu/android/http/request/HttpSingleRequest;->config:Lcom/qiniu/android/storage/Configuration;

    .line 47
    iput-object p2, p0, Lcom/qiniu/android/http/request/HttpSingleRequest;->uploadOption:Lcom/qiniu/android/storage/UploadOptions;

    .line 48
    iput-object p3, p0, Lcom/qiniu/android/http/request/HttpSingleRequest;->token:Lcom/qiniu/android/storage/UpToken;

    .line 49
    iput-object p4, p0, Lcom/qiniu/android/http/request/HttpSingleRequest;->requestInfo:Lcom/qiniu/android/http/request/UploadRequestInfo;

    .line 50
    iput-object p5, p0, Lcom/qiniu/android/http/request/HttpSingleRequest;->requestState:Lcom/qiniu/android/http/request/UploadRequestState;

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lcom/qiniu/android/http/request/HttpSingleRequest;->currentRetryTime:I

    return-void
.end method

.method static synthetic access$000(Lcom/qiniu/android/http/request/HttpSingleRequest;)Lcom/qiniu/android/http/request/UploadRequestState;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/qiniu/android/http/request/HttpSingleRequest;->requestState:Lcom/qiniu/android/http/request/UploadRequestState;

    return-object p0
.end method

.method static synthetic access$100(Lcom/qiniu/android/http/request/HttpSingleRequest;)Lcom/qiniu/android/storage/UploadOptions;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/qiniu/android/http/request/HttpSingleRequest;->uploadOption:Lcom/qiniu/android/storage/UploadOptions;

    return-object p0
.end method

.method static synthetic access$200(Lcom/qiniu/android/http/request/HttpSingleRequest;)Lcom/qiniu/android/http/request/IRequestClient;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/qiniu/android/http/request/HttpSingleRequest;->client:Lcom/qiniu/android/http/request/IRequestClient;

    return-object p0
.end method

.method static synthetic access$300(Lcom/qiniu/android/http/request/HttpSingleRequest;)Ljava/util/ArrayList;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/qiniu/android/http/request/HttpSingleRequest;->requestMetricsList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/qiniu/android/http/request/HttpSingleRequest;Lcom/qiniu/android/http/ResponseInfo;)Z
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Lcom/qiniu/android/http/request/HttpSingleRequest;->shouldCheckConnect(Lcom/qiniu/android/http/ResponseInfo;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/qiniu/android/http/request/HttpSingleRequest;)Lcom/qiniu/android/http/request/UploadRequestInfo;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/qiniu/android/http/request/HttpSingleRequest;->requestInfo:Lcom/qiniu/android/http/request/UploadRequestInfo;

    return-object p0
.end method

.method static synthetic access$600(Lcom/qiniu/android/http/request/HttpSingleRequest;)I
    .registers 1

    .line 28
    iget p0, p0, Lcom/qiniu/android/http/request/HttpSingleRequest;->currentRetryTime:I

    return p0
.end method

.method static synthetic access$612(Lcom/qiniu/android/http/request/HttpSingleRequest;I)I
    .registers 3

    .line 28
    iget v0, p0, Lcom/qiniu/android/http/request/HttpSingleRequest;->currentRetryTime:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/qiniu/android/http/request/HttpSingleRequest;->currentRetryTime:I

    return v0
.end method

.method static synthetic access$700(Lcom/qiniu/android/http/request/HttpSingleRequest;)Lcom/qiniu/android/storage/Configuration;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/qiniu/android/http/request/HttpSingleRequest;->config:Lcom/qiniu/android/storage/Configuration;

    return-object p0
.end method

.method static synthetic access$800(Lcom/qiniu/android/http/request/HttpSingleRequest;Lcom/qiniu/android/http/request/Request;Lcom/qiniu/android/http/request/IUploadServer;ZLcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpSingleRequest$RequestCompleteHandler;)V
    .registers 7

    .line 28
    invoke-direct/range {p0 .. p6}, Lcom/qiniu/android/http/request/HttpSingleRequest;->retryRequest(Lcom/qiniu/android/http/request/Request;Lcom/qiniu/android/http/request/IUploadServer;ZLcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpSingleRequest$RequestCompleteHandler;)V

    return-void
.end method

.method static synthetic access$900(Lcom/qiniu/android/http/request/HttpSingleRequest;Lcom/qiniu/android/http/request/IUploadServer;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;Lcom/qiniu/android/http/request/HttpSingleRequest$RequestCompleteHandler;)V
    .registers 6

    .line 28
    invoke-direct/range {p0 .. p5}, Lcom/qiniu/android/http/request/HttpSingleRequest;->completeAction(Lcom/qiniu/android/http/request/IUploadServer;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;Lcom/qiniu/android/http/request/HttpSingleRequest$RequestCompleteHandler;)V

    return-void
.end method

.method private declared-synchronized completeAction(Lcom/qiniu/android/http/request/IUploadServer;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;Lcom/qiniu/android/http/request/HttpSingleRequest$RequestCompleteHandler;)V
    .registers 7

    monitor-enter p0

    .line 165
    :try_start_1
    iget-object v0, p0, Lcom/qiniu/android/http/request/HttpSingleRequest;->client:Lcom/qiniu/android/http/request/IRequestClient;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_19

    if-nez v0, :cond_7

    .line 166
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 168
    :try_start_8
    iput-object v0, p0, Lcom/qiniu/android/http/request/HttpSingleRequest;->client:Lcom/qiniu/android/http/request/IRequestClient;

    .line 170
    invoke-direct {p0, p2, p1, p4}, Lcom/qiniu/android/http/request/HttpSingleRequest;->updateHostNetworkStatus(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/request/IUploadServer;Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;)V

    .line 171
    invoke-direct {p0, p2, p1, p4}, Lcom/qiniu/android/http/request/HttpSingleRequest;->reportRequest(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/request/IUploadServer;Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;)V

    if-eqz p5, :cond_17

    .line 174
    iget-object p1, p0, Lcom/qiniu/android/http/request/HttpSingleRequest;->requestMetricsList:Ljava/util/ArrayList;

    invoke-interface {p5, p2, p1, p3}, Lcom/qiniu/android/http/request/HttpSingleRequest$RequestCompleteHandler;->complete(Lcom/qiniu/android/http/ResponseInfo;Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_19

    .line 176
    :cond_17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private reportRequest(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/request/IUploadServer;Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;)V
    .registers 14

    .line 195
    iget-object v0, p0, Lcom/qiniu/android/http/request/HttpSingleRequest;->token:Lcom/qiniu/android/storage/UpToken;

    if-eqz v0, :cond_235

    invoke-virtual {v0}, Lcom/qiniu/android/storage/UpToken;->isValid()Z

    move-result v0

    if-eqz v0, :cond_235

    iget-object v0, p0, Lcom/qiniu/android/http/request/HttpSingleRequest;->requestInfo:Lcom/qiniu/android/http/request/UploadRequestInfo;

    if-eqz v0, :cond_235

    invoke-virtual {v0}, Lcom/qiniu/android/http/request/UploadRequestInfo;->shouldReportRequestLog()Z

    move-result v0

    if-eqz v0, :cond_235

    if-nez p3, :cond_18

    goto/16 :goto_235

    .line 199
    :cond_18
    invoke-static {}, Lcom/qiniu/android/utils/Utils;->currentTimestamp()J

    move-result-wide v0

    .line 200
    new-instance v2, Lcom/qiniu/android/collect/ReportItem;

    invoke-direct {v2}, Lcom/qiniu/android/collect/ReportItem;-><init>()V

    const-string v3, "request"

    const-string v4, "log_type"

    .line 201
    invoke-virtual {v2, v3, v4}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p3}, Lcom/qiniu/android/http/metrics/UploadMetrics;->getStartDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "up_time"

    invoke-virtual {v2, v3, v4}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    invoke-static {p1}, Lcom/qiniu/android/collect/ReportItem;->requestReportStatusCode(Lcom/qiniu/android/http/ResponseInfo;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "status_code"

    invoke-virtual {v2, v3, v4}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz p1, :cond_4b

    .line 204
    iget-object v4, p1, Lcom/qiniu/android/http/ResponseInfo;->reqId:Ljava/lang/String;

    goto :goto_4c

    :cond_4b
    move-object v4, v3

    :goto_4c
    const-string v7, "req_id"

    invoke-virtual {v2, v4, v7}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    iget-object v4, p3, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->request:Lcom/qiniu/android/http/request/Request;

    if-eqz v4, :cond_58

    iget-object v4, v4, Lcom/qiniu/android/http/request/Request;->host:Ljava/lang/String;

    goto :goto_59

    :cond_58
    move-object v4, v3

    :goto_59
    const-string v7, "host"

    invoke-virtual {v2, v4, v7}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    iget-object v4, p3, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->remoteAddress:Ljava/lang/String;

    const-string v7, "remote_ip"

    invoke-virtual {v2, v4, v7}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    iget-object v4, p3, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->remotePort:Ljava/lang/Integer;

    const-string v7, "port"

    invoke-virtual {v2, v4, v7}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    iget-object v4, p0, Lcom/qiniu/android/http/request/HttpSingleRequest;->requestInfo:Lcom/qiniu/android/http/request/UploadRequestInfo;

    iget-object v4, v4, Lcom/qiniu/android/http/request/UploadRequestInfo;->bucket:Ljava/lang/String;

    const-string v7, "target_bucket"

    invoke-virtual {v2, v4, v7}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    iget-object v4, p0, Lcom/qiniu/android/http/request/HttpSingleRequest;->requestInfo:Lcom/qiniu/android/http/request/UploadRequestInfo;

    iget-object v4, v4, Lcom/qiniu/android/http/request/UploadRequestInfo;->key:Ljava/lang/String;

    const-string v7, "target_key"

    invoke-virtual {v2, v4, v7}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p3}, Lcom/qiniu/android/http/metrics/UploadMetrics;->totalElapsedTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v7, "total_elapsed_time"

    invoke-virtual {v2, v4, v7}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p3}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->totalDnsTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v7, "dns_elapsed_time"

    invoke-virtual {v2, v4, v7}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p3}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->totalConnectTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v7, "connect_elapsed_time"

    invoke-virtual {v2, v4, v7}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p3}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->totalSecureConnectTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v7, "tls_connect_elapsed_time"

    invoke-virtual {v2, v4, v7}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p3}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->totalRequestTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v7, "request_elapsed_time"

    invoke-virtual {v2, v4, v7}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p3}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->totalWaitTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v7, "wait_elapsed_time"

    invoke-virtual {v2, v4, v7}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p3}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->totalWaitTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v7, "response_elapsed_time"

    invoke-virtual {v2, v4, v7}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p3}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->totalResponseTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4, v7}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    iget-object v4, p0, Lcom/qiniu/android/http/request/HttpSingleRequest;->requestInfo:Lcom/qiniu/android/http/request/UploadRequestInfo;

    iget-object v4, v4, Lcom/qiniu/android/http/request/UploadRequestInfo;->fileOffset:Ljava/lang/Long;

    const-string v7, "file_offset"

    invoke-virtual {v2, v4, v7}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p3}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->bytesSend()Ljava/lang/Long;

    move-result-object v4

    const-string v7, "bytes_sent"

    invoke-virtual {v2, v4, v7}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p3}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->totalBytes()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v7, "bytes_total"

    invoke-virtual {v2, v4, v7}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-static {}, Lcom/qiniu/android/utils/Utils;->getCurrentProcessID()Ljava/lang/Integer;

    move-result-object v4

    const-string v7, "pid"

    invoke-virtual {v2, v4, v7}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lcom/qiniu/android/utils/Utils;->getCurrentThreadID()Ljava/lang/Long;

    move-result-object v4

    const-string v7, "tid"

    invoke-virtual {v2, v4, v7}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    iget-object v4, p0, Lcom/qiniu/android/http/request/HttpSingleRequest;->requestInfo:Lcom/qiniu/android/http/request/UploadRequestInfo;

    iget-object v4, v4, Lcom/qiniu/android/http/request/UploadRequestInfo;->targetRegionId:Ljava/lang/String;

    const-string v7, "target_region_id"

    invoke-virtual {v2, v4, v7}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    iget-object v4, p0, Lcom/qiniu/android/http/request/HttpSingleRequest;->requestInfo:Lcom/qiniu/android/http/request/UploadRequestInfo;

    iget-object v4, v4, Lcom/qiniu/android/http/request/UploadRequestInfo;->currentRegionId:Ljava/lang/String;

    const-string v7, "current_region_id"

    invoke-virtual {v2, v4, v7}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    invoke-static {p1}, Lcom/qiniu/android/collect/ReportItem;->requestReportErrorType(Lcom/qiniu/android/http/ResponseInfo;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "error_type"

    .line 226
    invoke-virtual {v2, v4, v7}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_13b

    if-eqz v4, :cond_13b

    .line 229
    iget-object v3, p1, Lcom/qiniu/android/http/ResponseInfo;->error:Ljava/lang/String;

    if-eqz v3, :cond_139

    goto :goto_13b

    :cond_139
    iget-object v3, p1, Lcom/qiniu/android/http/ResponseInfo;->message:Ljava/lang/String;

    :cond_13b
    :goto_13b
    const-string v4, "error_description"

    .line 231
    invoke-virtual {v2, v3, v4}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    iget-object v3, p0, Lcom/qiniu/android/http/request/HttpSingleRequest;->requestInfo:Lcom/qiniu/android/http/request/UploadRequestInfo;

    iget-object v3, v3, Lcom/qiniu/android/http/request/UploadRequestInfo;->requestType:Ljava/lang/String;

    const-string v4, "up_type"

    invoke-virtual {v2, v3, v4}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/qiniu/android/utils/Utils;->systemName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "os_name"

    invoke-virtual {v2, v3, v4}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    invoke-static {}, Lcom/qiniu/android/utils/Utils;->systemVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "os_version"

    invoke-virtual {v2, v3, v4}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    invoke-static {}, Lcom/qiniu/android/utils/Utils;->sdkLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sdk_name"

    invoke-virtual {v2, v3, v4}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lcom/qiniu/android/utils/Utils;->sdkVerion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sdk_version"

    invoke-virtual {v2, v3, v4}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "client_time"

    invoke-virtual {v2, v3, v4}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-static {}, Lcom/qiniu/android/utils/Utils;->getCurrentNetworkType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "network_type"

    invoke-virtual {v2, v3, v4}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lcom/qiniu/android/utils/Utils;->getCurrentSignalStrength()Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "signal_strength"

    invoke-virtual {v2, v3, v4}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Lcom/qiniu/android/http/request/IUploadServer;->getSource()Ljava/lang/String;

    move-result-object v3

    const-string v4, "prefetched_dns_source"

    invoke-virtual {v2, v3, v4}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Lcom/qiniu/android/http/request/IUploadServer;->getIpPrefetchedTime()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_1aa

    .line 243
    div-long/2addr v0, v5

    invoke-virtual {p2}, Lcom/qiniu/android/http/request/IUploadServer;->getIpPrefetchedTime()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "prefetched_before"

    .line 244
    invoke-virtual {v2, p2, v0}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    :cond_1aa
    invoke-static {}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->getInstance()Lcom/qiniu/android/http/dns/DnsPrefetcher;

    move-result-object p2

    iget-object p2, p2, Lcom/qiniu/android/http/dns/DnsPrefetcher;->lastPrefetchErrorMessage:Ljava/lang/String;

    const-string v0, "prefetched_error_message"

    invoke-virtual {v2, p2, v0}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    iget-object p2, p3, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->clientName:Ljava/lang/String;

    const-string v0, "http_client"

    invoke-virtual {v2, p2, v0}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    iget-object p2, p3, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->clientVersion:Ljava/lang/String;

    const-string v0, "http_client_version"

    invoke-virtual {v2, p2, v0}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    invoke-static {}, Lcom/qiniu/android/storage/GlobalConfiguration;->getInstance()Lcom/qiniu/android/storage/GlobalConfiguration;

    move-result-object p2

    iget-boolean p2, p2, Lcom/qiniu/android/storage/GlobalConfiguration;->connectCheckEnable:Z

    const-string v0, "network_measuring"

    if-eqz p2, :cond_1d3

    const-string p2, "disable"

    .line 252
    invoke-virtual {v2, p2, v0}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_214

    .line 253
    :cond_1d3
    iget-object p2, p3, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->connectCheckMetrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    if-eqz p2, :cond_214

    .line 254
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/qiniu/android/http/metrics/UploadMetrics;->totalElapsedTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const-string p2, "%d"

    invoke-static {v1, p2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 256
    iget-object v6, p3, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->connectCheckMetrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    iget-object v6, v6, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->response:Lcom/qiniu/android/http/ResponseInfo;

    if-eqz v6, :cond_202

    new-array v7, v3, [Ljava/lang/Object;

    .line 257
    iget v6, v6, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v5

    invoke-static {v1, p2, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_204

    :cond_202
    const-string p2, ""

    :goto_204
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v5

    aput-object p2, v1, v3

    const-string p2, "duration:%s status_code:%s"

    .line 259
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 260
    invoke-virtual {v2, p2, v0}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    :cond_214
    :goto_214
    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result p1

    if-eqz p1, :cond_223

    .line 265
    invoke-virtual {p3}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->perceptiveSpeed()Ljava/lang/Long;

    move-result-object p1

    const-string p2, "perceptive_speed"

    invoke-virtual {v2, p1, p2}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    :cond_223
    iget-object p1, p3, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->httpVersion:Ljava/lang/String;

    const-string p2, "http_version"

    invoke-virtual {v2, p1, p2}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    invoke-static {}, Lcom/qiniu/android/collect/UploadInfoReporter;->getInstance()Lcom/qiniu/android/collect/UploadInfoReporter;

    move-result-object p1

    iget-object p2, p0, Lcom/qiniu/android/http/request/HttpSingleRequest;->token:Lcom/qiniu/android/storage/UpToken;

    iget-object p2, p2, Lcom/qiniu/android/storage/UpToken;->token:Ljava/lang/String;

    invoke-virtual {p1, v2, p2}, Lcom/qiniu/android/collect/UploadInfoReporter;->report(Lcom/qiniu/android/collect/ReportItem;Ljava/lang/String;)V

    :cond_235
    :goto_235
    return-void
.end method

.method private retryRequest(Lcom/qiniu/android/http/request/Request;Lcom/qiniu/android/http/request/IUploadServer;ZLcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpSingleRequest$RequestCompleteHandler;)V
    .registers 21

    move-object v8, p0

    move-object v9, p1

    .line 72
    invoke-virtual/range {p2 .. p2}, Lcom/qiniu/android/http/request/IUploadServer;->isHttp3()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 73
    new-instance v0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;

    invoke-direct {v0}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;-><init>()V

    iput-object v0, v8, Lcom/qiniu/android/http/request/HttpSingleRequest;->client:Lcom/qiniu/android/http/request/IRequestClient;

    goto :goto_17

    .line 75
    :cond_10
    new-instance v0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;

    invoke-direct {v0}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;-><init>()V

    iput-object v0, v8, Lcom/qiniu/android/http/request/HttpSingleRequest;->client:Lcom/qiniu/android/http/request/IRequestClient;

    .line 78
    :goto_17
    new-instance v0, Lcom/qiniu/android/http/request/HttpSingleRequest$1;

    invoke-direct {v0, p0}, Lcom/qiniu/android/http/request/HttpSingleRequest$1;-><init>(Lcom/qiniu/android/http/request/HttpSingleRequest;)V

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/qiniu/android/http/request/HttpSingleRequest;->requestInfo:Lcom/qiniu/android/http/request/UploadRequestInfo;

    iget-object v2, v2, Lcom/qiniu/android/http/request/UploadRequestInfo;->key:Ljava/lang/String;

    invoke-static {v2}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/qiniu/android/http/request/HttpSingleRequest;->currentRetryTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/qiniu/android/http/request/Request;->urlString:Ljava/lang/String;

    .line 91
    invoke-static {v2}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/qiniu/android/http/request/Request;->ip:Ljava/lang/String;

    .line 92
    invoke-static {v2}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-static {v1}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 94
    iget-object v10, v8, Lcom/qiniu/android/http/request/HttpSingleRequest;->client:Lcom/qiniu/android/http/request/IRequestClient;

    iget-object v1, v8, Lcom/qiniu/android/http/request/HttpSingleRequest;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v11, v1, Lcom/qiniu/android/storage/Configuration;->proxy:Lcom/qiniu/android/http/ProxyConfiguration;

    new-instance v12, Lcom/qiniu/android/http/request/HttpSingleRequest$2;

    move-object/from16 v6, p5

    invoke-direct {v12, p0, v0, v6}, Lcom/qiniu/android/http/request/HttpSingleRequest$2;-><init>(Lcom/qiniu/android/http/request/HttpSingleRequest;Lcom/qiniu/android/http/request/handler/CheckCancelHandler;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;)V

    new-instance v13, Lcom/qiniu/android/http/request/HttpSingleRequest$3;

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v2, p4

    move-object v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/qiniu/android/http/request/HttpSingleRequest$3;-><init>(Lcom/qiniu/android/http/request/HttpSingleRequest;Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/Request;Lcom/qiniu/android/http/request/IUploadServer;ZLcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpSingleRequest$RequestCompleteHandler;)V

    move-object v0, v10

    move-object v1, p1

    move/from16 v2, p3

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    invoke-interface/range {v0 .. v5}, Lcom/qiniu/android/http/request/IRequestClient;->request(Lcom/qiniu/android/http/request/Request;ZLcom/qiniu/android/http/ProxyConfiguration;Lcom/qiniu/android/http/request/IRequestClient$RequestClientProgress;Lcom/qiniu/android/http/request/IRequestClient$RequestClientCompleteHandler;)V

    return-void
.end method

.method private shouldCheckConnect(Lcom/qiniu/android/http/ResponseInfo;)Z
    .registers 5

    .line 145
    invoke-static {}, Lcom/qiniu/android/storage/GlobalConfiguration;->getInstance()Lcom/qiniu/android/storage/GlobalConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/qiniu/android/storage/GlobalConfiguration;->connectCheckEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    if-eqz p1, :cond_2c

    .line 149
    iget v0, p1, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2b

    const/16 v2, -0x3e9

    if-eq v0, v2, :cond_2b

    const/16 v2, -0x3eb

    if-eq v0, v2, :cond_2b

    const/16 v2, -0x3ec

    if-eq v0, v2, :cond_2b

    const/16 v2, -0x3ed

    if-eq v0, v2, :cond_2b

    const/16 v2, -0x3f1

    if-eq v0, v2, :cond_2b

    .line 156
    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->isTlsError()Z

    move-result p1

    if-eqz p1, :cond_2c

    :cond_2b
    const/4 v1, 0x1

    :cond_2c
    return v1
.end method

.method private updateHostNetworkStatus(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/request/IUploadServer;Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;)V
    .registers 10

    if-nez p3, :cond_3

    return-void

    .line 182
    :cond_3
    invoke-virtual {p3}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->bytesSend()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 183
    invoke-virtual {p3}, Lcom/qiniu/android/http/metrics/UploadMetrics;->totalElapsedTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_35

    const-wide/32 v4, 0x100000

    cmp-long p1, v0, v4

    if-ltz p1, :cond_35

    const-wide/16 v4, 0x3e8

    mul-long v0, v0, v4

    .line 185
    div-long/2addr v0, v2

    long-to-int p1, v0

    .line 186
    invoke-virtual {p2}, Lcom/qiniu/android/http/request/IUploadServer;->getHost()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/qiniu/android/http/request/IUploadServer;->getIp()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->getNetworkStatusType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 187
    invoke-static {}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->getInstance()Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->updateNetworkStatus(Ljava/lang/String;I)V

    :cond_35
    return-void
.end method


# virtual methods
.method request(Lcom/qiniu/android/http/request/Request;Lcom/qiniu/android/http/request/IUploadServer;ZLcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpSingleRequest$RequestCompleteHandler;)V
    .registers 8

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/qiniu/android/http/request/HttpSingleRequest;->currentRetryTime:I

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/http/request/HttpSingleRequest;->requestMetricsList:Ljava/util/ArrayList;

    .line 62
    invoke-direct/range {p0 .. p6}, Lcom/qiniu/android/http/request/HttpSingleRequest;->retryRequest(Lcom/qiniu/android/http/request/Request;Lcom/qiniu/android/http/request/IUploadServer;ZLcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpSingleRequest$RequestCompleteHandler;)V

    return-void
.end method
