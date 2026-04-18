.class public final Lcn/codemao/cuokhttp/CuOkHttpClientFactory;
.super Ljava/lang/Object;
.source "CuOkHttpClientFactory.kt"


# static fields
.field public static final INSTANCE:Lcn/codemao/cuokhttp/CuOkHttpClientFactory;

.field private static final apiDispatcher:Lokhttp3/Dispatcher;

.field private static final defaultPool:Lokhttp3/ConnectionPool;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcn/codemao/cuokhttp/CuOkHttpClientFactory;

    invoke-direct {v0}, Lcn/codemao/cuokhttp/CuOkHttpClientFactory;-><init>()V

    sput-object v0, Lcn/codemao/cuokhttp/CuOkHttpClientFactory;->INSTANCE:Lcn/codemao/cuokhttp/CuOkHttpClientFactory;

    .line 11
    new-instance v0, Lokhttp3/ConnectionPool;

    .line 14
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const/16 v2, 0xa

    const-wide/16 v3, 0x2

    .line 11
    invoke-direct {v0, v2, v3, v4, v1}, Lokhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lcn/codemao/cuokhttp/CuOkHttpClientFactory;->defaultPool:Lokhttp3/ConnectionPool;

    .line 18
    new-instance v0, Lokhttp3/ConnectionPool;

    const/16 v3, 0x32

    const-wide/16 v4, 0x5

    invoke-direct {v0, v3, v4, v5, v1}, Lokhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    .line 25
    new-instance v0, Lokhttp3/Dispatcher;

    invoke-direct {v0}, Lokhttp3/Dispatcher;-><init>()V

    const/16 v1, 0x40

    .line 26
    invoke-virtual {v0, v1}, Lokhttp3/Dispatcher;->setMaxRequests(I)V

    .line 27
    invoke-virtual {v0, v2}, Lokhttp3/Dispatcher;->setMaxRequestsPerHost(I)V

    .line 25
    sput-object v0, Lcn/codemao/cuokhttp/CuOkHttpClientFactory;->apiDispatcher:Lokhttp3/Dispatcher;

    .line 30
    new-instance v0, Lokhttp3/Dispatcher;

    invoke-direct {v0}, Lokhttp3/Dispatcher;-><init>()V

    const/16 v1, 0x80

    .line 31
    invoke-virtual {v0, v1}, Lokhttp3/Dispatcher;->setMaxRequests(I)V

    const/16 v1, 0x20

    .line 32
    invoke-virtual {v0, v1}, Lokhttp3/Dispatcher;->setMaxRequestsPerHost(I)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefaultClientBuilder()Lokhttp3/OkHttpClient$Builder;
    .registers 5

    .line 36
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 37
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v2, 0x7530

    .line 38
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 40
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 41
    sget-object v1, Lcn/codemao/cuokhttp/CuOkHttpClientFactory;->defaultPool:Lokhttp3/ConnectionPool;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->connectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 42
    sget-object v1, Lcn/codemao/cuokhttp/CuOkHttpClientFactory;->apiDispatcher:Lokhttp3/Dispatcher;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->dispatcher(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    return-object v0
.end method
