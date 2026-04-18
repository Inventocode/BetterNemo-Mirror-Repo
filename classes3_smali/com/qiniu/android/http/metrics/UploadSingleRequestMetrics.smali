.class public Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;
.super Lcom/qiniu/android/http/metrics/UploadMetrics;
.source "UploadSingleRequestMetrics.java"


# instance fields
.field public clientName:Ljava/lang/String;

.field public clientVersion:Ljava/lang/String;

.field public connectCheckMetrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

.field public connectEndDate:Ljava/util/Date;

.field public connectStartDate:Ljava/util/Date;

.field public countOfRequestBodyBytesSent:J

.field public countOfRequestHeaderBytesSent:J

.field public countOfResponseBodyBytesReceived:J

.field public countOfResponseHeaderBytesReceived:J

.field public domainLookupEndDate:Ljava/util/Date;

.field public domainLookupStartDate:Ljava/util/Date;

.field public httpVersion:Ljava/lang/String;

.field public remoteAddress:Ljava/lang/String;

.field public remotePort:Ljava/lang/Integer;

.field public request:Lcom/qiniu/android/http/request/Request;

.field public requestEndDate:Ljava/util/Date;

.field public requestStartDate:Ljava/util/Date;

.field public response:Lcom/qiniu/android/http/ResponseInfo;

.field public responseEndDate:Ljava/util/Date;

.field public responseStartDate:Ljava/util/Date;

.field public secureConnectionEndDate:Ljava/util/Date;

.field public secureConnectionStartDate:Ljava/util/Date;

.field private totalBytes:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Lcom/qiniu/android/http/metrics/UploadMetrics;-><init>()V

    const-wide/16 v0, 0x0

    .line 40
    iput-wide v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->countOfRequestHeaderBytesSent:J

    .line 41
    iput-wide v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->countOfRequestBodyBytesSent:J

    .line 43
    iput-wide v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->countOfResponseHeaderBytesReceived:J

    .line 44
    iput-wide v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->countOfResponseBodyBytesReceived:J

    .line 51
    iput-wide v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->totalBytes:J

    return-void
.end method

.method private time(Ljava/util/Date;Ljava/util/Date;)J
    .registers 3

    .line 116
    invoke-static {p1, p2}, Lcom/qiniu/android/utils/Utils;->dateDuration(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide p1

    return-wide p1
.end method


# virtual methods
.method public bytesReceived()Ljava/lang/Long;
    .registers 6

    .line 104
    iget-wide v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->countOfResponseHeaderBytesReceived:J

    iget-wide v2, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->countOfResponseBodyBytesReceived:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_c

    move-wide v0, v2

    .line 108
    :cond_c
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bytesSend()Ljava/lang/Long;
    .registers 7

    .line 95
    invoke-virtual {p0}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->totalBytes()J

    move-result-wide v0

    .line 96
    iget-wide v2, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->countOfRequestHeaderBytesSent:J

    iget-wide v4, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->countOfRequestBodyBytesSent:J

    add-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-lez v4, :cond_e

    goto :goto_f

    :cond_e
    move-wide v0, v2

    .line 100
    :goto_f
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public perceptiveSpeed()Ljava/lang/Long;
    .registers 5

    .line 112
    invoke-virtual {p0}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->bytesSend()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->bytesReceived()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qiniu/android/http/metrics/UploadMetrics;->totalElapsedTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qiniu/android/utils/Utils;->calculateSpeed(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public setRequest(Lcom/qiniu/android/http/request/Request;)V
    .registers 9

    if-eqz p1, :cond_34

    .line 76
    new-instance v6, Lcom/qiniu/android/http/request/Request;

    iget-object v1, p1, Lcom/qiniu/android/http/request/Request;->urlString:Ljava/lang/String;

    iget-object v2, p1, Lcom/qiniu/android/http/request/Request;->httpMethod:Ljava/lang/String;

    iget-object v3, p1, Lcom/qiniu/android/http/request/Request;->allHeaders:Ljava/util/Map;

    const/4 v4, 0x0

    iget v5, p1, Lcom/qiniu/android/http/request/Request;->timeout:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/qiniu/android/http/request/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BI)V

    iput-object v6, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->request:Lcom/qiniu/android/http/request/Request;

    .line 80
    iget-object v0, p1, Lcom/qiniu/android/http/request/Request;->allHeaders:Ljava/util/Map;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2a

    .line 81
    new-instance v0, Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/qiniu/android/http/request/Request;->allHeaders:Ljava/util/Map;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v3, v0

    goto :goto_2b

    :cond_2a
    move-wide v3, v1

    .line 83
    :goto_2b
    iget-object p1, p1, Lcom/qiniu/android/http/request/Request;->httpBody:[B

    if-eqz p1, :cond_31

    .line 84
    array-length p1, p1

    int-to-long v1, p1

    :cond_31
    add-long/2addr v3, v1

    .line 86
    iput-wide v3, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->totalBytes:J

    :cond_34
    return-void
.end method

.method public totalBytes()J
    .registers 3

    .line 91
    iget-wide v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->totalBytes:J

    return-wide v0
.end method

.method public totalConnectTime()J
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->connectStartDate:Ljava/util/Date;

    iget-object v1, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->connectEndDate:Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->time(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public totalDnsTime()J
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->domainLookupStartDate:Ljava/util/Date;

    iget-object v1, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->domainLookupEndDate:Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->time(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public totalRequestTime()J
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->requestStartDate:Ljava/util/Date;

    iget-object v1, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->requestEndDate:Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->time(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public totalResponseTime()J
    .registers 3

    .line 71
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->responseStartDate:Ljava/util/Date;

    iget-object v1, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->responseEndDate:Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->time(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public totalSecureConnectTime()J
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->secureConnectionStartDate:Ljava/util/Date;

    iget-object v1, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->secureConnectionEndDate:Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->time(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public totalWaitTime()J
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->requestEndDate:Ljava/util/Date;

    iget-object v1, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->responseStartDate:Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->time(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method
