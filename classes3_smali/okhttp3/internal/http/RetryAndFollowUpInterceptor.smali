.class public final Lokhttp3/internal/http/RetryAndFollowUpInterceptor;
.super Ljava/lang/Object;
.source "RetryAndFollowUpInterceptor.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http/RetryAndFollowUpInterceptor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRetryAndFollowUpInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RetryAndFollowUpInterceptor.kt\nokhttp3/internal/http/RetryAndFollowUpInterceptor\n*L\n1#1,330:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lokhttp3/internal/http/RetryAndFollowUpInterceptor$Companion;

.field private static final MAX_FOLLOW_UPS:I = 0x14


# instance fields
.field private final client:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->Companion:Lokhttp3/internal/http/RetryAndFollowUpInterceptor$Companion;

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .registers 3

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private final buildRedirectRequest(Lokhttp3/Response;Ljava/lang/String;)Lokhttp3/Request;
    .registers 8

    .line 274
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->followRedirects()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    :cond_a
    const/4 v0, 0x2

    const-string v2, "Location"

    .line 276
    invoke-static {p1, v2, v1, v0, v1}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9a

    .line 278
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    if-eqz v0, :cond_9a

    .line 281
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    .line 282
    iget-object v2, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->followSslRedirects()Z

    move-result v2

    if-nez v2, :cond_40

    return-object v1

    .line 285
    :cond_40
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v2

    .line 286
    invoke-static {p2}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 287
    sget-object v3, Lokhttp3/internal/http/HttpMethod;->INSTANCE:Lokhttp3/internal/http/HttpMethod;

    invoke-virtual {v3, p2}, Lokhttp3/internal/http/HttpMethod;->redirectsWithBody(Ljava/lang/String;)Z

    move-result v4

    .line 288
    invoke-virtual {v3, p2}, Lokhttp3/internal/http/HttpMethod;->redirectsToGet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_60

    const-string p2, "GET"

    .line 289
    invoke-virtual {v2, p2, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_6d

    :cond_60
    if-eqz v4, :cond_6a

    .line 291
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v1

    .line 292
    :cond_6a
    invoke-virtual {v2, p2, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    :goto_6d
    if-nez v4, :cond_7e

    const-string p2, "Transfer-Encoding"

    .line 295
    invoke-virtual {v2, p2}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string p2, "Content-Length"

    .line 296
    invoke-virtual {v2, p2}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string p2, "Content-Type"

    .line 297
    invoke-virtual {v2, p2}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 304
    :cond_7e
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-static {p1, v0}, Lokhttp3/internal/Util;->canReuseConnectionFor(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Z

    move-result p1

    if-nez p1, :cond_91

    const-string p1, "Authorization"

    .line 305
    invoke-virtual {v2, p1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 308
    :cond_91
    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1

    :cond_9a
    return-object v1
.end method

.method private final followUpRequest(Lokhttp3/Response;Lokhttp3/Route;)Lokhttp3/Request;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    .line 203
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x133

    const/4 v3, 0x0

    if-eq v0, v2, :cond_ad

    const/16 v2, 0x134

    if-eq v0, v2, :cond_ad

    const/16 v2, 0x191

    if-eq v0, v2, :cond_a2

    const/16 v2, 0x1f7

    if-eq v0, v2, :cond_86

    const/16 v2, 0x197

    if-eq v0, v2, :cond_62

    const/16 p2, 0x198

    if-eq v0, p2, :cond_2e

    packed-switch v0, :pswitch_data_c8

    return-object v3

    .line 225
    :pswitch_29  #0x12c, 0x12d, 0x12e, 0x12f
    invoke-direct {p0, p1, v1}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->buildRedirectRequest(Lokhttp3/Response;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object p1

    return-object p1

    .line 232
    :cond_2e
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v0

    if-nez v0, :cond_37

    return-object v3

    .line 237
    :cond_37
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 238
    invoke-virtual {v0}, Lokhttp3/RequestBody;->isOneShot()Z

    move-result v0

    if-eqz v0, :cond_48

    return-object v3

    .line 241
    :cond_48
    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 242
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    if-ne v0, p2, :cond_55

    return-object v3

    :cond_55
    const/4 p2, 0x0

    .line 247
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->retryAfter(Lokhttp3/Response;I)I

    move-result p2

    if-lez p2, :cond_5d

    return-object v3

    .line 251
    :cond_5d
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p1

    return-object p1

    :cond_62
    if-nez p2, :cond_67

    .line 206
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_67
    invoke-virtual {p2}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_7e

    .line 210
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object p1

    return-object p1

    .line 208
    :cond_7e
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 255
    :cond_86
    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object p2

    if-eqz p2, :cond_93

    .line 256
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p2

    if-ne p2, v2, :cond_93

    return-object v3

    :cond_93
    const p2, 0x7fffffff

    .line 261
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->retryAfter(Lokhttp3/Response;I)I

    move-result p2

    if-nez p2, :cond_a1

    .line 263
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p1

    return-object p1

    :cond_a1
    return-object v3

    .line 213
    :cond_a2
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->authenticator()Lokhttp3/Authenticator;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object p1

    return-object p1

    :cond_ad
    const-string p2, "GET"

    .line 218
    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_c2

    const-string p2, "HEAD"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_c2

    return-object v3

    .line 221
    :cond_c2
    invoke-direct {p0, p1, v1}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->buildRedirectRequest(Lokhttp3/Response;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_c8
    .packed-switch 0x12c
        :pswitch_29  #0000012c
        :pswitch_29  #0000012d
        :pswitch_29  #0000012e
        :pswitch_29  #0000012f
    .end packed-switch
.end method

.method private final isRecoverable(Ljava/io/IOException;Z)Z
    .registers 6

    .line 165
    instance-of v0, p1, Ljava/net/ProtocolException;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 171
    :cond_6
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    .line 172
    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_12

    if-nez p2, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1

    .line 177
    :cond_13
    instance-of p2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p2, :cond_20

    .line 180
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/security/cert/CertificateException;

    if-eqz p2, :cond_20

    return v1

    .line 184
    :cond_20
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p1, :cond_25

    return v1

    :cond_25
    return v2
.end method

.method private final recover(Ljava/io/IOException;Lokhttp3/internal/connection/Transmitter;ZLokhttp3/Request;)Z
    .registers 7

    .line 143
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    if-eqz p3, :cond_13

    .line 146
    invoke-direct {p0, p1, p4}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->requestIsOneShot(Ljava/io/IOException;Lokhttp3/Request;)Z

    move-result p4

    if-eqz p4, :cond_13

    return v1

    .line 149
    :cond_13
    invoke-direct {p0, p1, p3}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->isRecoverable(Ljava/io/IOException;Z)Z

    move-result p1

    if-nez p1, :cond_1a

    return v1

    .line 152
    :cond_1a
    invoke-virtual {p2}, Lokhttp3/internal/connection/Transmitter;->canRetry()Z

    move-result p1

    if-nez p1, :cond_21

    return v1

    :cond_21
    const/4 p1, 0x1

    return p1
.end method

.method private final requestIsOneShot(Ljava/io/IOException;Lokhttp3/Request;)Z
    .registers 3

    .line 158
    invoke-virtual {p2}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 159
    invoke-virtual {p2}, Lokhttp3/RequestBody;->isOneShot()Z

    move-result p2

    if-nez p2, :cond_10

    .line 160
    :cond_c
    instance-of p1, p1, Ljava/io/FileNotFoundException;

    if-eqz p1, :cond_12

    :cond_10
    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method private final retryAfter(Lokhttp3/Response;I)I
    .registers 6

    const-string v0, "Retry-After"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 312
    invoke-static {p1, v0, v1, v2, v1}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_29

    .line 316
    new-instance p2, Lkotlin/text/Regex;

    const-string v0, "\\d+"

    invoke-direct {p2, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_25

    .line 317
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "Integer.valueOf(header)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_25
    const p1, 0x7fffffff

    return p1

    :cond_29
    return p2
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 57
    check-cast p1, Lokhttp3/internal/http/RealInterceptorChain;

    .line 58
    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->transmitter()Lokhttp3/internal/connection/Transmitter;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    const/4 v5, 0x0

    .line 62
    :goto_13
    invoke-virtual {v1, v0}, Lokhttp3/internal/connection/Transmitter;->prepareToConnect(Lokhttp3/Request;)V

    .line 64
    invoke-virtual {v1}, Lokhttp3/internal/connection/Transmitter;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_ca

    .line 71
    :try_start_1c
    invoke-virtual {p1, v0, v1, v3}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;Lokhttp3/internal/connection/Transmitter;Lokhttp3/internal/connection/Exchange;)Lokhttp3/Response;

    move-result-object v0
    :try_end_20
    .catch Lokhttp3/internal/connection/RouteException; {:try_start_1c .. :try_end_20} :catch_b1
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_20} :catch_a1
    .catchall {:try_start_1c .. :try_end_20} :catchall_9f

    if-eqz v4, :cond_3a

    .line 93
    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {v4}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v4

    .line 95
    invoke-virtual {v4, v3}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v4

    .line 96
    invoke-virtual {v4}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v4

    .line 94
    invoke-virtual {v0, v4}, Lokhttp3/Response$Builder;->priorResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    :cond_3a
    move-object v4, v0

    .line 100
    invoke-virtual {v4}, Lokhttp3/Response;->exchange()Lokhttp3/internal/connection/Exchange;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 101
    invoke-virtual {v0}, Lokhttp3/internal/connection/Exchange;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v6

    if-eqz v6, :cond_4c

    invoke-virtual {v6}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v6

    goto :goto_4d

    :cond_4c
    move-object v6, v3

    .line 102
    :goto_4d
    invoke-direct {p0, v4, v6}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->followUpRequest(Lokhttp3/Response;Lokhttp3/Route;)Lokhttp3/Request;

    move-result-object v6

    if-nez v6, :cond_5f

    if-eqz v0, :cond_5e

    .line 105
    invoke-virtual {v0}, Lokhttp3/internal/connection/Exchange;->isDuplex()Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 106
    invoke-virtual {v1}, Lokhttp3/internal/connection/Transmitter;->timeoutEarlyExit()V

    :cond_5e
    return-object v4

    .line 111
    :cond_5f
    invoke-virtual {v6}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v7

    if-eqz v7, :cond_6c

    .line 112
    invoke-virtual {v7}, Lokhttp3/RequestBody;->isOneShot()Z

    move-result v7

    if-eqz v7, :cond_6c

    return-object v4

    .line 116
    :cond_6c
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7

    if-eqz v7, :cond_75

    invoke-static {v7}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 117
    :cond_75
    invoke-virtual {v1}, Lokhttp3/internal/connection/Transmitter;->hasExchange()Z

    move-result v7

    if-eqz v7, :cond_80

    if-eqz v0, :cond_80

    .line 118
    invoke-virtual {v0}, Lokhttp3/internal/connection/Exchange;->detachWithViolence()V

    :cond_80
    add-int/lit8 v5, v5, 0x1

    const/16 v0, 0x14

    if-gt v5, v0, :cond_88

    move-object v0, v6

    goto :goto_13

    .line 122
    :cond_88
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many follow-up requests: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_9f
    move-exception p1

    goto :goto_c6

    :catch_a1
    move-exception v6

    .line 81
    :try_start_a2
    instance-of v7, v6, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-nez v7, :cond_a8

    const/4 v7, 0x1

    goto :goto_a9

    :cond_a8
    const/4 v7, 0x0

    .line 82
    :goto_a9
    invoke-direct {p0, v6, v1, v7, v0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;Lokhttp3/internal/connection/Transmitter;ZLokhttp3/Request;)Z

    move-result v7

    if-eqz v7, :cond_b0

    goto :goto_bc

    :cond_b0
    throw v6

    :catch_b1
    move-exception v6

    .line 75
    invoke-virtual {v6}, Lokhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v7

    invoke-direct {p0, v7, v1, v2, v0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;Lokhttp3/internal/connection/Transmitter;ZLokhttp3/Request;)Z

    move-result v7
    :try_end_ba
    .catchall {:try_start_a2 .. :try_end_ba} :catchall_9f

    if-eqz v7, :cond_c1

    .line 87
    :goto_bc
    invoke-virtual {v1}, Lokhttp3/internal/connection/Transmitter;->exchangeDoneDueToException()V

    goto/16 :goto_13

    .line 76
    :cond_c1
    :try_start_c1
    invoke-virtual {v6}, Lokhttp3/internal/connection/RouteException;->getFirstConnectException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_c6
    .catchall {:try_start_c1 .. :try_end_c6} :catchall_9f

    .line 87
    :goto_c6
    invoke-virtual {v1}, Lokhttp3/internal/connection/Transmitter;->exchangeDoneDueToException()V

    throw p1

    .line 65
    :cond_ca
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
