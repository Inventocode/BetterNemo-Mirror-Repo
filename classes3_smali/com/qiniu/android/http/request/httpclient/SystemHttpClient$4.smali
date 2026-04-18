.class Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$4;
.super Lokhttp3/EventListener;
.source "SystemHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->createEventLister()Lokhttp3/EventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)V
    .registers 2

    .line 247
    iput-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$4;->this$0:Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;

    invoke-direct {p0}, Lokhttp3/EventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callEnd(Lokhttp3/Call;)V
    .registers 2

    .line 365
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$4;->this$0:Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;

    invoke-static {p1}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->access$500(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qiniu/android/http/metrics/UploadMetrics;->end()V

    return-void
.end method

.method public callFailed(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 3

    .line 370
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$4;->this$0:Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;

    invoke-static {p1}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->access$500(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qiniu/android/http/metrics/UploadMetrics;->end()V

    return-void
.end method

.method public callStart(Lokhttp3/Call;)V
    .registers 2

    return-void
.end method

.method public connectEnd(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V
    .registers 5

    .line 292
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$4;->this$0:Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;

    invoke-static {p1}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->access$500(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    move-result-object p1

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    iput-object p2, p1, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->secureConnectionEndDate:Ljava/util/Date;

    return-void
.end method

.method public connectFailed(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V
    .registers 6

    .line 301
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$4;->this$0:Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;

    invoke-static {p1}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->access$500(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    move-result-object p1

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    iput-object p2, p1, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->connectEndDate:Ljava/util/Date;

    return-void
.end method

.method public connectStart(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .registers 4

    .line 269
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$4;->this$0:Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;

    invoke-static {p1}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->access$500(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    move-result-object p1

    new-instance p3, Ljava/util/Date;

    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    iput-object p3, p1, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->connectStartDate:Ljava/util/Date;

    if-eqz p2, :cond_35

    .line 270
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 271
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$4;->this$0:Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;

    invoke-static {p1}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->access$500(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    move-result-object p1

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p3

    invoke-virtual {p3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->remoteAddress:Ljava/lang/String;

    .line 272
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$4;->this$0:Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;

    invoke-static {p1}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->access$500(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    move-result-object p1

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->remotePort:Ljava/lang/Integer;

    :cond_35
    return-void
.end method

.method public connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V
    .registers 3

    return-void
.end method

.method public connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V
    .registers 3

    return-void
.end method

.method public dnsEnd(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .line 262
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$4;->this$0:Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;

    invoke-static {p1}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->access$500(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    move-result-object p1

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    iput-object p2, p1, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->domainLookupEndDate:Ljava/util/Date;

    return-void
.end method

.method public dnsStart(Lokhttp3/Call;Ljava/lang/String;)V
    .registers 3

    .line 255
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$4;->this$0:Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;

    invoke-static {p1}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->access$500(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    move-result-object p1

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    iput-object p2, p1, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->domainLookupStartDate:Ljava/util/Date;

    return-void
.end method

.method public requestBodyEnd(Lokhttp3/Call;J)V
    .registers 5

    .line 328
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$4;->this$0:Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;

    invoke-static {p1}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->access$500(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    move-result-object p1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p1, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->requestEndDate:Ljava/util/Date;

    .line 329
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$4;->this$0:Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;

    invoke-static {p1}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->access$500(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    move-result-object p1

    iput-wide p2, p1, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->countOfRequestBodyBytesSent:J

    return-void
.end method

.method public requestBodyStart(Lokhttp3/Call;)V
    .registers 2

    return-void
.end method

.method public requestFailed(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 5

    .line 333
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$4;->this$0:Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;

    invoke-static {p1}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->access$500(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    move-result-object p1

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->countOfRequestBodyBytesSent:J

    return-void
.end method

.method public requestHeadersEnd(Lokhttp3/Call;Lokhttp3/Request;)V
    .registers 5

    .line 319
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$4;->this$0:Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;

    invoke-static {p1}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->access$500(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    move-result-object p1

    invoke-virtual {p2}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/Headers;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p1, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->countOfRequestHeaderBytesSent:J

    return-void
.end method

.method public requestHeadersStart(Lokhttp3/Call;)V
    .registers 3

    .line 314
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$4;->this$0:Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;

    invoke-static {p1}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->access$500(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    move-result-object p1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p1, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->requestStartDate:Ljava/util/Date;

    return-void
.end method

.method public responseBodyEnd(Lokhttp3/Call;J)V
    .registers 5

    .line 355
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$4;->this$0:Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;

    invoke-static {p1}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->access$500(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    move-result-object p1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p1, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->responseEndDate:Ljava/util/Date;

    .line 356
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$4;->this$0:Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;

    invoke-static {p1}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->access$500(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    move-result-object p1

    iput-wide p2, p1, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->countOfResponseBodyBytesReceived:J

    return-void
.end method

.method public responseBodyStart(Lokhttp3/Call;)V
    .registers 2

    return-void
.end method

.method public responseFailed(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 3

    .line 360
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$4;->this$0:Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;

    invoke-static {p1}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->access$500(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    move-result-object p1

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    iput-object p2, p1, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->responseEndDate:Ljava/util/Date;

    return-void
.end method

.method public responseHeadersEnd(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 7

    .line 343
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 344
    invoke-virtual {p1}, Lokhttp3/Headers;->byteCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_1c

    .line 345
    iget-object p2, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$4;->this$0:Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;

    invoke-static {p2}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->access$500(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    move-result-object p2

    invoke-virtual {p1}, Lokhttp3/Headers;->byteCount()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->countOfResponseHeaderBytesReceived:J

    :cond_1c
    return-void
.end method

.method public responseHeadersStart(Lokhttp3/Call;)V
    .registers 3

    .line 338
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$4;->this$0:Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;

    invoke-static {p1}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->access$500(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    move-result-object p1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p1, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->responseStartDate:Ljava/util/Date;

    return-void
.end method

.method public secureConnectEnd(Lokhttp3/Call;Lokhttp3/Handshake;)V
    .registers 3

    .line 284
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$4;->this$0:Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;

    invoke-static {p1}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->access$500(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    move-result-object p1

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    iput-object p2, p1, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->secureConnectionStartDate:Ljava/util/Date;

    return-void
.end method

.method public secureConnectStart(Lokhttp3/Call;)V
    .registers 3

    .line 278
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$4;->this$0:Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;

    invoke-static {p1}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->access$500(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    move-result-object p1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p1, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->connectEndDate:Ljava/util/Date;

    return-void
.end method
