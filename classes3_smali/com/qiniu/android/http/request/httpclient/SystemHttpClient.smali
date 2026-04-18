.class public Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;
.super Ljava/lang/Object;
.source "SystemHttpClient.java"

# interfaces
.implements Lcom/qiniu/android/http/request/IRequestClient;


# static fields
.field private static final baseClient:Lokhttp3/OkHttpClient;

.field private static pool:Lokhttp3/ConnectionPool;


# instance fields
.field private call:Lokhttp3/Call;

.field private completeHandler:Lcom/qiniu/android/http/request/IRequestClient$RequestClientCompleteHandler;

.field private currentRequest:Lcom/qiniu/android/http/request/Request;

.field private hasHandleComplete:Z

.field private httpClient:Lokhttp3/OkHttpClient;

.field private metrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

.field private requestProgress:Lcom/qiniu/android/http/request/IRequestClient$RequestClientProgress;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 63
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    sput-object v0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->baseClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->hasHandleComplete:Z

    return-void
.end method

.method static synthetic access$000(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;Ljava/lang/Exception;)I
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->getStatusCodeByException(Ljava/lang/Exception;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)Lcom/qiniu/android/http/request/Request;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    return-object p0
.end method

.method static synthetic access$200(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)Lcom/qiniu/android/http/request/IRequestClient$RequestClientCompleteHandler;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->completeHandler:Lcom/qiniu/android/http/request/IRequestClient$RequestClientCompleteHandler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;Lcom/qiniu/android/http/request/Request;ILjava/lang/String;Lcom/qiniu/android/http/request/IRequestClient$RequestClientCompleteHandler;)V
    .registers 5

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->handleError(Lcom/qiniu/android/http/request/Request;ILjava/lang/String;Lcom/qiniu/android/http/request/IRequestClient$RequestClientCompleteHandler;)V

    return-void
.end method

.method static synthetic access$400(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;Lcom/qiniu/android/http/request/Request;Lokhttp3/Response;Lcom/qiniu/android/http/request/IRequestClient$RequestClientCompleteHandler;)V
    .registers 4

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->handleResponse(Lcom/qiniu/android/http/request/Request;Lokhttp3/Response;Lcom/qiniu/android/http/request/IRequestClient$RequestClientCompleteHandler;)V

    return-void
.end method

.method static synthetic access$500(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->metrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    return-object p0
.end method

.method private static buildJsonResp([B)Lorg/json/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 500
    new-instance v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 502
    invoke-static {v0}, Lcom/qiniu/android/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 503
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0

    .line 505
    :cond_13
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method private createEventLister()Lokhttp3/EventListener;
    .registers 2

    .line 247
    new-instance v0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$4;

    invoke-direct {v0, p0}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$4;-><init>(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)V

    return-object v0
.end method

.method private createHttpClient(Lcom/qiniu/android/http/ProxyConfiguration;)Lokhttp3/OkHttpClient;
    .registers 5

    .line 150
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    if-nez p1, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 154
    :cond_6
    sget-object p1, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->baseClient:Lokhttp3/OkHttpClient;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 163
    invoke-direct {p0}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->createEventLister()Lokhttp3/EventListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->eventListener(Lokhttp3/EventListener;)Lokhttp3/OkHttpClient$Builder;

    .line 165
    invoke-static {}, Lcom/qiniu/android/storage/GlobalConfiguration;->getInstance()Lcom/qiniu/android/storage/GlobalConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/qiniu/android/storage/GlobalConfiguration;->isDnsOpen:Z

    if-eqz v0, :cond_23

    .line 166
    new-instance v0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$2;

    invoke-direct {v0, p0}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$2;-><init>(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)V

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    .line 180
    :cond_23
    invoke-static {}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->getConnectPool()Lokhttp3/ConnectionPool;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->connectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/OkHttpClient$Builder;

    .line 182
    iget-object v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    iget v0, v0, Lcom/qiniu/android/http/request/Request;->timeout:I

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 183
    iget-object v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    iget v0, v0, Lcom/qiniu/android/http/request/Request;->timeout:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    const-wide/16 v0, 0x3c

    .line 184
    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 186
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    return-object p1
.end method

.method private createRequestBuilder(Lcom/qiniu/android/http/request/IRequestClient$RequestClientProgress;)Lokhttp3/Request$Builder;
    .registers 14

    .line 197
    iget-object v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 201
    :cond_6
    iget-object v0, v0, Lcom/qiniu/android/http/request/Request;->allHeaders:Ljava/util/Map;

    invoke-static {v0}, Lokhttp3/Headers;->of(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object v0

    .line 204
    iget-object v2, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    iget-object v2, v2, Lcom/qiniu/android/http/request/Request;->httpMethod:Ljava/lang/String;

    const-string v3, "HEAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b3

    iget-object v2, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    iget-object v2, v2, Lcom/qiniu/android/http/request/Request;->httpMethod:Ljava/lang/String;

    const-string v3, "GET"

    .line 205
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    goto/16 :goto_b3

    .line 211
    :cond_26
    iget-object v2, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    iget-object v2, v2, Lcom/qiniu/android/http/request/Request;->httpMethod:Ljava/lang/String;

    const-string v3, "POST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "PUT"

    if-nez v2, :cond_3e

    iget-object v2, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    iget-object v2, v2, Lcom/qiniu/android/http/request/Request;->httpMethod:Ljava/lang/String;

    .line 212
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 213
    :cond_3e
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v5, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    iget-object v5, v5, Lcom/qiniu/android/http/request/Request;->urlString:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 214
    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 217
    iget-object v2, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    iget-object v2, v2, Lcom/qiniu/android/http/request/Request;->httpBody:[B

    array-length v2, v2

    if-lez v2, :cond_78

    const-string v1, "application/octet-stream"

    .line 218
    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    .line 219
    iget-object v2, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    iget-object v2, v2, Lcom/qiniu/android/http/request/Request;->allHeaders:Ljava/util/Map;

    const-string v5, "Content-Type"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_6e

    .line 221
    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    .line 223
    :cond_6e
    new-instance v2, Lcom/qiniu/android/http/request/httpclient/ByteBody;

    iget-object v5, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    iget-object v5, v5, Lcom/qiniu/android/http/request/Request;->httpBody:[B

    invoke-direct {v2, v1, v5}, Lcom/qiniu/android/http/request/httpclient/ByteBody;-><init>(Lokhttp3/MediaType;[B)V

    goto :goto_80

    .line 225
    :cond_78
    new-instance v2, Lcom/qiniu/android/http/request/httpclient/ByteBody;

    const/4 v5, 0x0

    new-array v5, v5, [B

    invoke-direct {v2, v1, v5}, Lcom/qiniu/android/http/request/httpclient/ByteBody;-><init>(Lokhttp3/MediaType;[B)V

    :goto_80
    move-object v7, v2

    .line 227
    new-instance v1, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;

    new-instance v8, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$3;

    invoke-direct {v8, p0, p1}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$3;-><init>(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;Lcom/qiniu/android/http/request/IRequestClient$RequestClientProgress;)V

    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    iget-object p1, p1, Lcom/qiniu/android/http/request/Request;->httpBody:[B

    array-length p1, p1

    int-to-long v9, p1

    const/4 v11, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;-><init>(Lokhttp3/RequestBody;Lcom/qiniu/android/http/ProgressHandler;JLcom/qiniu/android/http/CancellationHandler;)V

    .line 236
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    iget-object p1, p1, Lcom/qiniu/android/http/request/Request;->httpMethod:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a2

    .line 237
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    goto :goto_ea

    .line 238
    :cond_a2
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    iget-object p1, p1, Lcom/qiniu/android/http/request/Request;->httpMethod:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b1

    .line 239
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    goto :goto_ea

    :cond_b1
    move-object v1, v0

    goto :goto_ea

    .line 206
    :cond_b3
    :goto_b3
    new-instance p1, Lokhttp3/Request$Builder;

    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    iget-object v0, v0, Lcom/qiniu/android/http/request/Request;->urlString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 207
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    iget-object p1, p1, Lcom/qiniu/android/http/request/Request;->allHeaders:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ea

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 208
    iget-object v2, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    iget-object v2, v2, Lcom/qiniu/android/http/request/Request;->allHeaders:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 209
    invoke-virtual {v1, v0, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_d0

    :cond_ea
    :goto_ea
    return-object v1
.end method

.method private static declared-synchronized getConnectPool()Lokhttp3/ConnectionPool;
    .registers 6

    const-class v0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;

    monitor-enter v0

    .line 190
    :try_start_3
    sget-object v1, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->pool:Lokhttp3/ConnectionPool;

    if-nez v1, :cond_14

    .line 191
    new-instance v1, Lokhttp3/ConnectionPool;

    const/16 v2, 0xa

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v1, v2, v3, v4, v5}, Lokhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    sput-object v1, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->pool:Lokhttp3/ConnectionPool;

    .line 193
    :cond_14
    sget-object v1, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->pool:Lokhttp3/ConnectionPool;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v0

    return-object v1

    :catchall_18
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getOkHttpVersion()Ljava/lang/String;
    .registers 6

    const-string v0, "okhttp/"

    const-string v1, "userAgent"

    .line 513
    const-class v2, Lokhttp3/internal/Version;

    const-string v3, ""

    :try_start_8
    const-string v4, "okhttp3.OkHttp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "VERSION"

    .line 514
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 515
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 516
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_27} :catch_28

    return-object v0

    .line 522
    :catch_28
    :try_start_28
    invoke-virtual {v2, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 523
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 524
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_43} :catch_44

    return-object v0

    :catch_44
    const/4 v4, 0x0

    :try_start_45
    new-array v5, v4, [Ljava/lang/Class;

    .line 530
    invoke-virtual {v2, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/Object;

    .line 531
    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_64} :catch_65

    return-object v0

    :catch_65
    return-object v3
.end method

.method private getStatusCodeByException(Ljava/lang/Exception;)I
    .registers 5

    .line 478
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x2

    if-eqz v0, :cond_10

    const-string v2, "Canceled"

    .line 479
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_46

    .line 481
    :cond_10
    instance-of v2, p1, Lcom/qiniu/android/http/CancellationHandler$CancellationException;

    if-eqz v2, :cond_15

    goto :goto_46

    .line 483
    :cond_15
    instance-of v1, p1, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_1c

    const/16 v1, -0x3eb

    goto :goto_46

    :cond_1c
    if-eqz v0, :cond_29

    const-string v1, "Broken pipe"

    .line 485
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_29

    const/16 v1, -0x3ed

    goto :goto_46

    .line 487
    :cond_29
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_30

    const/16 v1, -0x3e9

    goto :goto_46

    .line 489
    :cond_30
    instance-of v0, p1, Ljava/net/ConnectException;

    if-eqz v0, :cond_37

    const/16 v1, -0x3ec

    goto :goto_46

    .line 491
    :cond_37
    instance-of v0, p1, Ljava/net/ProtocolException;

    if-eqz v0, :cond_3e

    const/16 v1, 0x64

    goto :goto_46

    .line 493
    :cond_3e
    instance-of p1, p1, Ljavax/net/ssl/SSLException;

    if-eqz p1, :cond_45

    const/16 v1, -0x4b0

    goto :goto_46

    :cond_45
    const/4 v1, -0x1

    :goto_46
    return v1
.end method

.method private handleError(Lcom/qiniu/android/http/request/Request;ILjava/lang/String;Lcom/qiniu/android/http/request/IRequestClient$RequestClientCompleteHandler;)V
    .registers 6

    .line 379
    monitor-enter p0

    .line 380
    :try_start_1
    iget-boolean v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->hasHandleComplete:Z

    if-eqz v0, :cond_7

    .line 381
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 383
    iput-boolean v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->hasHandleComplete:Z

    .line 384
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_24

    const/4 v0, 0x0

    .line 386
    invoke-static {p1, p2, v0, v0, p3}, Lcom/qiniu/android/http/ResponseInfo;->create(Lcom/qiniu/android/http/request/Request;ILjava/util/Map;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p2

    .line 387
    iget-object p3, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->metrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    iput-object p2, p3, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->response:Lcom/qiniu/android/http/ResponseInfo;

    .line 388
    iput-object p1, p3, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->request:Lcom/qiniu/android/http/request/Request;

    .line 389
    invoke-virtual {p3}, Lcom/qiniu/android/http/metrics/UploadMetrics;->end()V

    .line 390
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->metrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    iget-object p3, p2, Lcom/qiniu/android/http/ResponseInfo;->response:Lorg/json/JSONObject;

    invoke-interface {p4, p2, p1, p3}, Lcom/qiniu/android/http/request/IRequestClient$RequestClientCompleteHandler;->complete(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;Lorg/json/JSONObject;)V

    .line 391
    invoke-direct {p0}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->releaseResource()V

    return-void

    :catchall_24
    move-exception p1

    .line 384
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p1
.end method

.method private handleResponse(Lcom/qiniu/android/http/request/Request;Lokhttp3/Response;Lcom/qiniu/android/http/request/IRequestClient$RequestClientCompleteHandler;)V
    .registers 11

    .line 397
    monitor-enter p0

    .line 398
    :try_start_1
    iget-boolean v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->hasHandleComplete:Z

    if-eqz v0, :cond_7

    .line 399
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 401
    iput-boolean v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->hasHandleComplete:Z

    .line 402
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_c2

    .line 404
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v0

    .line 406
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 407
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Headers;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v2, :cond_39

    .line 409
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v4

    invoke-virtual {v4, v3}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 410
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v5

    invoke-virtual {v5, v3}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    .line 411
    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_39
    const/4 v2, 0x0

    .line 418
    :try_start_3a
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v3
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_42} :catch_44

    move-object v4, v2

    goto :goto_4b

    :catch_44
    move-exception v3

    .line 420
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    move-object v3, v2

    :goto_4b
    if-nez v3, :cond_52

    .line 424
    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v4

    goto :goto_7c

    .line 425
    :cond_52
    invoke-static {p2}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->responseContentType(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "application/json"

    if-eq v5, v6, :cond_6e

    .line 426
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    .line 427
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7c

    .line 429
    :try_start_65
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_6a} :catch_6c

    move-object v2, v3

    goto :goto_7c

    :catch_6c
    nop

    goto :goto_7c

    .line 435
    :cond_6e
    :try_start_6e
    invoke-static {v3}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->buildJsonResp([B)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_72} :catch_73

    goto :goto_7c

    :catch_73
    move-exception v0

    const/16 v3, -0x3f7

    .line 438
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/16 v0, -0x3f7

    .line 443
    :cond_7c
    :goto_7c
    invoke-static {p1, v0, v1, v2, v4}, Lcom/qiniu/android/http/ResponseInfo;->create(Lcom/qiniu/android/http/request/Request;ILjava/util/Map;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v0

    .line 444
    iget-object v1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->metrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    iput-object v0, v1, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->response:Lcom/qiniu/android/http/ResponseInfo;

    .line 445
    iput-object p1, v1, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->request:Lcom/qiniu/android/http/request/Request;

    .line 446
    invoke-virtual {p2}, Lokhttp3/Response;->protocol()Lokhttp3/Protocol;

    move-result-object p1

    sget-object v1, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    if-ne p1, v1, :cond_95

    .line 447
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->metrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    const-string p2, "1.0"

    iput-object p2, p1, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->httpVersion:Ljava/lang/String;

    goto :goto_b2

    .line 448
    :cond_95
    invoke-virtual {p2}, Lokhttp3/Response;->protocol()Lokhttp3/Protocol;

    move-result-object p1

    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    if-ne p1, v1, :cond_a4

    .line 449
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->metrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    const-string p2, "1.1"

    iput-object p2, p1, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->httpVersion:Ljava/lang/String;

    goto :goto_b2

    .line 450
    :cond_a4
    invoke-virtual {p2}, Lokhttp3/Response;->protocol()Lokhttp3/Protocol;

    move-result-object p1

    sget-object p2, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-ne p1, p2, :cond_b2

    .line 451
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->metrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    const-string p2, "2"

    iput-object p2, p1, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->httpVersion:Ljava/lang/String;

    .line 453
    :cond_b2
    :goto_b2
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->metrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    invoke-virtual {p1}, Lcom/qiniu/android/http/metrics/UploadMetrics;->end()V

    .line 454
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->metrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    iget-object p2, v0, Lcom/qiniu/android/http/ResponseInfo;->response:Lorg/json/JSONObject;

    invoke-interface {p3, v0, p1, p2}, Lcom/qiniu/android/http/request/IRequestClient$RequestClientCompleteHandler;->complete(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;Lorg/json/JSONObject;)V

    .line 456
    invoke-direct {p0}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->releaseResource()V

    return-void

    :catchall_c2
    move-exception p1

    .line 402
    :try_start_c3
    monitor-exit p0
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c2

    throw p1
.end method

.method private releaseResource()V
    .registers 2

    const/4 v0, 0x0

    .line 460
    iput-object v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    .line 461
    iput-object v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->requestProgress:Lcom/qiniu/android/http/request/IRequestClient$RequestClientProgress;

    .line 462
    iput-object v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->completeHandler:Lcom/qiniu/android/http/request/IRequestClient$RequestClientCompleteHandler;

    .line 463
    iput-object v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->metrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    .line 464
    iput-object v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->httpClient:Lokhttp3/OkHttpClient;

    .line 465
    iput-object v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->call:Lokhttp3/Call;

    return-void
.end method

.method private static responseContentType(Lokhttp3/Response;)Ljava/lang/String;
    .registers 3

    .line 469
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object p0

    if-nez p0, :cond_d

    const-string p0, ""

    return-object p0

    .line 473
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lokhttp3/MediaType;->type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .registers 2

    monitor-enter p0

    .line 144
    :try_start_1
    iget-object v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->call:Lokhttp3/Call;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_10

    .line 145
    iget-object v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->call:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 147
    :cond_10
    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public request(Lcom/qiniu/android/http/request/Request;ZLcom/qiniu/android/http/ProxyConfiguration;Lcom/qiniu/android/http/request/IRequestClient$RequestClientProgress;Lcom/qiniu/android/http/request/IRequestClient$RequestClientCompleteHandler;)V
    .registers 8

    .line 77
    new-instance v0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    invoke-direct {v0}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->metrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    .line 78
    invoke-virtual {v0}, Lcom/qiniu/android/http/metrics/UploadMetrics;->start()V

    .line 79
    iget-object v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->metrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    const-string v1, "okhttp"

    iput-object v1, v0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->clientName:Ljava/lang/String;

    .line 80
    invoke-static {}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->getOkHttpVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->clientVersion:Ljava/lang/String;

    if-eqz p1, :cond_1e

    .line 82
    iget-object v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->metrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    iget-object v1, p1, Lcom/qiniu/android/http/request/Request;->ip:Ljava/lang/String;

    iput-object v1, v0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->remoteAddress:Ljava/lang/String;

    .line 84
    :cond_1e
    iget-object v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->metrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    invoke-virtual {v0, p1}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->setRequest(Lcom/qiniu/android/http/request/Request;)V

    .line 85
    iput-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    .line 86
    iput-object p4, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->requestProgress:Lcom/qiniu/android/http/request/IRequestClient$RequestClientProgress;

    .line 87
    iput-object p5, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->completeHandler:Lcom/qiniu/android/http/request/IRequestClient$RequestClientCompleteHandler;

    .line 89
    invoke-direct {p0, p3}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->createHttpClient(Lcom/qiniu/android/http/ProxyConfiguration;)Lokhttp3/OkHttpClient;

    move-result-object p3

    iput-object p3, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->httpClient:Lokhttp3/OkHttpClient;

    .line 91
    iget-object p3, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->requestProgress:Lcom/qiniu/android/http/request/IRequestClient$RequestClientProgress;

    invoke-direct {p0, p3}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->createRequestBuilder(Lcom/qiniu/android/http/request/IRequestClient$RequestClientProgress;)Lokhttp3/Request$Builder;

    move-result-object p3

    if-nez p3, :cond_45

    const-string p2, "invalid http request"

    .line 93
    invoke-static {p2}, Lcom/qiniu/android/http/ResponseInfo;->invalidArgument(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p2

    .line 94
    iget p3, p2, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    iget-object p2, p2, Lcom/qiniu/android/http/ResponseInfo;->message:Ljava/lang/String;

    invoke-direct {p0, p1, p3, p2, p5}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->handleError(Lcom/qiniu/android/http/request/Request;ILjava/lang/String;Lcom/qiniu/android/http/request/IRequestClient$RequestClientCompleteHandler;)V

    return-void

    .line 98
    :cond_45
    iget-object p4, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->httpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {p3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p3

    invoke-virtual {p4, p3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p3

    iput-object p3, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->call:Lokhttp3/Call;

    if-eqz p2, :cond_5c

    .line 101
    new-instance p1, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$1;

    invoke-direct {p1, p0}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$1;-><init>(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)V

    invoke-interface {p3, p1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    goto :goto_7e

    .line 127
    :cond_5c
    :try_start_5c
    invoke-interface {p3}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p2

    .line 128
    invoke-direct {p0, p1, p2, p5}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->handleResponse(Lcom/qiniu/android/http/request/Request;Lokhttp3/Response;Lcom/qiniu/android/http/request/IRequestClient$RequestClientCompleteHandler;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_63} :catch_64

    goto :goto_7e

    :catch_64
    move-exception p2

    .line 130
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    .line 132
    invoke-direct {p0, p2}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->getStatusCodeByException(Ljava/lang/Exception;)I

    move-result p2

    .line 133
    iget-object p4, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->call:Lokhttp3/Call;

    invoke-interface {p4}, Lokhttp3/Call;->isCanceled()Z

    move-result p4

    if-eqz p4, :cond_7b

    const/4 p2, -0x2

    const-string p3, "user cancelled"

    .line 137
    :cond_7b
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->handleError(Lcom/qiniu/android/http/request/Request;ILjava/lang/String;Lcom/qiniu/android/http/request/IRequestClient$RequestClientCompleteHandler;)V

    :goto_7e
    return-void
.end method
