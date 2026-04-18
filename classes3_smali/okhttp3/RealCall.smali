.class public final Lokhttp3/RealCall;
.super Ljava/lang/Object;
.source "RealCall.kt"

# interfaces
.implements Lokhttp3/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/RealCall$AsyncCall;,
        Lokhttp3/RealCall$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRealCall.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealCall.kt\nokhttp3/RealCall\n*L\n1#1,213:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lokhttp3/RealCall$Companion;


# instance fields
.field private final client:Lokhttp3/OkHttpClient;

.field private executed:Z

.field private final forWebSocket:Z

.field private final originalRequest:Lokhttp3/Request;

.field private transmitter:Lokhttp3/internal/connection/Transmitter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lokhttp3/RealCall$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/RealCall$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/RealCall;->Companion:Lokhttp3/RealCall$Companion;

    return-void
.end method

.method private constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V
    .registers 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    iput-object p2, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    iput-boolean p3, p0, Lokhttp3/RealCall;->forWebSocket:Z

    return-void
.end method

.method public synthetic constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V

    return-void
.end method

.method public static final synthetic access$getTransmitter$p(Lokhttp3/RealCall;)Lokhttp3/internal/connection/Transmitter;
    .registers 2

    .line 36
    iget-object p0, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    if-nez p0, :cond_9

    const-string v0, "transmitter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    return-object p0
.end method

.method public static final synthetic access$setTransmitter$p(Lokhttp3/RealCall;Lokhttp3/internal/connection/Transmitter;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .line 82
    iget-object v0, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    if-nez v0, :cond_9

    const-string v1, "transmitter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v0}, Lokhttp3/internal/connection/Transmitter;->cancel()V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 36
    invoke-virtual {p0}, Lokhttp3/RealCall;->clone()Lokhttp3/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lokhttp3/Call;
    .registers 2

    .line 36
    invoke-virtual {p0}, Lokhttp3/RealCall;->clone()Lokhttp3/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lokhttp3/RealCall;
    .registers 5

    .line 89
    sget-object v0, Lokhttp3/RealCall;->Companion:Lokhttp3/RealCall$Companion;

    iget-object v1, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    iget-object v2, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    iget-boolean v3, p0, Lokhttp3/RealCall;->forWebSocket:Z

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/RealCall$Companion;->newRealCall(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)Lokhttp3/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public enqueue(Lokhttp3/Callback;)V
    .registers 4

    const-string v0, "responseCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    monitor-enter p0

    .line 74
    :try_start_6
    iget-boolean v0, p0, Lokhttp3/RealCall;->executed:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2c

    .line 75
    iput-boolean v1, p0, Lokhttp3/RealCall;->executed:Z

    .line 76
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_38

    .line 73
    monitor-exit p0

    .line 77
    iget-object v0, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    if-nez v0, :cond_1a

    const-string v1, "transmitter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1a
    invoke-virtual {v0}, Lokhttp3/internal/connection/Transmitter;->callStart()V

    .line 78
    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    new-instance v1, Lokhttp3/RealCall$AsyncCall;

    invoke-direct {v1, p0, p1}, Lokhttp3/RealCall$AsyncCall;-><init>(Lokhttp3/RealCall;Lokhttp3/Callback;)V

    invoke-virtual {v0, v1}, Lokhttp3/Dispatcher;->enqueue$okhttp(Lokhttp3/RealCall$AsyncCall;)V

    return-void

    :cond_2c
    :try_start_2c
    const-string p1, "Already Executed"

    .line 74
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_38
    .catchall {:try_start_2c .. :try_end_38} :catchall_38

    :catchall_38
    move-exception p1

    .line 73
    monitor-exit p0

    throw p1
.end method

.method public execute()Lokhttp3/Response;
    .registers 3

    .line 58
    monitor-enter p0

    .line 59
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/RealCall;->executed:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_46

    .line 60
    iput-boolean v1, p0, Lokhttp3/RealCall;->executed:Z

    .line 61
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_52

    .line 58
    monitor-exit p0

    .line 62
    iget-object v0, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    if-nez v0, :cond_15

    const-string v1, "transmitter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_15
    invoke-virtual {v0}, Lokhttp3/internal/connection/Transmitter;->timeoutEnter()V

    .line 63
    iget-object v0, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    if-nez v0, :cond_21

    const-string v1, "transmitter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_21
    invoke-virtual {v0}, Lokhttp3/internal/connection/Transmitter;->callStart()V

    .line 65
    :try_start_24
    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp3/Dispatcher;->executed$okhttp(Lokhttp3/RealCall;)V

    .line 66
    invoke-virtual {p0}, Lokhttp3/RealCall;->getResponseWithInterceptorChain()Lokhttp3/Response;

    move-result-object v0
    :try_end_31
    .catchall {:try_start_24 .. :try_end_31} :catchall_3b

    .line 68
    iget-object v1, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/Dispatcher;->finished$okhttp(Lokhttp3/RealCall;)V

    return-object v0

    :catchall_3b
    move-exception v0

    iget-object v1, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/Dispatcher;->finished$okhttp(Lokhttp3/RealCall;)V

    throw v0

    :cond_46
    :try_start_46
    const-string v0, "Already Executed"

    .line 59
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_52
    .catchall {:try_start_46 .. :try_end_52} :catchall_52

    :catchall_52
    move-exception v0

    .line 58
    monitor-exit p0

    throw v0
.end method

.method public final getClient()Lokhttp3/OkHttpClient;
    .registers 2

    .line 37
    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public final getExecuted()Z
    .registers 2

    .line 49
    iget-boolean v0, p0, Lokhttp3/RealCall;->executed:Z

    return v0
.end method

.method public final getForWebSocket()Z
    .registers 2

    .line 40
    iget-boolean v0, p0, Lokhttp3/RealCall;->forWebSocket:Z

    return v0
.end method

.method public final getOriginalRequest()Lokhttp3/Request;
    .registers 2

    .line 39
    iget-object v0, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    return-object v0
.end method

.method public final getResponseWithInterceptorChain()Lokhttp3/Response;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 170
    new-instance v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    iget-object v2, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-direct {v0, v2}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;-><init>(Lokhttp3/OkHttpClient;)V

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v0, Lokhttp3/internal/http/BridgeInterceptor;

    iget-object v2, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->cookieJar()Lokhttp3/CookieJar;

    move-result-object v2

    invoke-direct {v0, v2}, Lokhttp3/internal/http/BridgeInterceptor;-><init>(Lokhttp3/CookieJar;)V

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v0, Lokhttp3/internal/cache/CacheInterceptor;

    iget-object v2, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->cache()Lokhttp3/Cache;

    move-result-object v2

    invoke-direct {v0, v2}, Lokhttp3/internal/cache/CacheInterceptor;-><init>(Lokhttp3/Cache;)V

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v0, Lokhttp3/internal/connection/ConnectInterceptor;->INSTANCE:Lokhttp3/internal/connection/ConnectInterceptor;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 174
    iget-boolean v0, p0, Lokhttp3/RealCall;->forWebSocket:Z

    if-nez v0, :cond_46

    .line 175
    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 177
    :cond_46
    new-instance v0, Lokhttp3/internal/http/CallServerInterceptor;

    iget-boolean v2, p0, Lokhttp3/RealCall;->forWebSocket:Z

    invoke-direct {v0, v2}, Lokhttp3/internal/http/CallServerInterceptor;-><init>(Z)V

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v10, Lokhttp3/internal/http/RealInterceptorChain;

    iget-object v2, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    const-string v11, "transmitter"

    if-nez v2, :cond_5b

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5b
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    .line 180
    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->connectTimeoutMillis()I

    move-result v7

    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->readTimeoutMillis()I

    move-result v8

    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->writeTimeoutMillis()I

    move-result v9

    move-object v0, v10

    move-object v6, p0

    .line 179
    invoke-direct/range {v0 .. v9}, Lokhttp3/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lokhttp3/internal/connection/Transmitter;Lokhttp3/internal/connection/Exchange;ILokhttp3/Request;Lokhttp3/Call;III)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 184
    :try_start_78
    iget-object v2, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    invoke-virtual {v10, v2}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v2

    .line 185
    iget-object v3, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    if-nez v3, :cond_85

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_85
    invoke-virtual {v3}, Lokhttp3/internal/connection/Transmitter;->isCanceled()Z

    move-result v3
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_89} :catch_a3
    .catchall {:try_start_78 .. :try_end_89} :catchall_a1

    if-nez v3, :cond_96

    .line 195
    iget-object v0, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    if-nez v0, :cond_92

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_92
    invoke-virtual {v0, v1}, Lokhttp3/internal/connection/Transmitter;->noMoreExchanges(Ljava/io/IOException;)Ljava/io/IOException;

    return-object v2

    .line 186
    :cond_96
    :try_start_96
    invoke-static {v2}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 187
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_a1} :catch_a3
    .catchall {:try_start_96 .. :try_end_a1} :catchall_a1

    :catchall_a1
    move-exception v2

    goto :goto_be

    :catch_a3
    move-exception v0

    const/4 v2, 0x1

    .line 192
    :try_start_a5
    iget-object v3, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    if-nez v3, :cond_ac

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_ac
    invoke-virtual {v3, v0}, Lokhttp3/internal/connection/Transmitter;->noMoreExchanges(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    if-nez v0, :cond_ba

    new-instance v0, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type kotlin.Throwable"

    invoke-direct {v0, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ba
    throw v0
    :try_end_bb
    .catchall {:try_start_a5 .. :try_end_bb} :catchall_bb

    :catchall_bb
    move-exception v0

    move-object v2, v0

    const/4 v0, 0x1

    :goto_be
    if-nez v0, :cond_ca

    .line 195
    iget-object v0, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    if-nez v0, :cond_c7

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c7
    invoke-virtual {v0, v1}, Lokhttp3/internal/connection/Transmitter;->noMoreExchanges(Ljava/io/IOException;)Ljava/io/IOException;

    :cond_ca
    throw v2
.end method

.method public isCanceled()Z
    .registers 3

    .line 53
    iget-object v0, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    if-nez v0, :cond_9

    const-string v1, "transmitter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v0}, Lokhttp3/internal/connection/Transmitter;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isExecuted()Z
    .registers 2

    monitor-enter p0

    .line 51
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/RealCall;->executed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final redactedUrl()Ljava/lang/String;
    .registers 2

    .line 163
    iget-object v0, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->redact()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request()Lokhttp3/Request;
    .registers 2

    .line 55
    iget-object v0, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    return-object v0
.end method

.method public final setExecuted(Z)V
    .registers 2

    .line 49
    iput-boolean p1, p0, Lokhttp3/RealCall;->executed:Z

    return-void
.end method

.method public timeout()Lokio/Timeout;
    .registers 3

    .line 85
    iget-object v0, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    if-nez v0, :cond_9

    const-string v1, "transmitter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v0}, Lokhttp3/internal/connection/Transmitter;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public final toLoggableString()Ljava/lang/String;
    .registers 3

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lokhttp3/RealCall;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "canceled "

    goto :goto_10

    :cond_e
    const-string v1, ""

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-boolean v1, p0, Lokhttp3/RealCall;->forWebSocket:Z

    if-eqz v1, :cond_1a

    const-string v1, "web socket"

    goto :goto_1c

    :cond_1a
    const-string v1, "call"

    :goto_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {p0}, Lokhttp3/RealCall;->redactedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
