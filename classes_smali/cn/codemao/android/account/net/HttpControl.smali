.class public Lcn/codemao/android/account/net/HttpControl;
.super Ljava/lang/Object;
.source "HttpControl.java"


# static fields
.field private static final CONNECT_TIME_OUT:I = 0xa

.field private static volatile mInstance:Lcn/codemao/android/account/net/HttpControl;

.field public static final sRequestHeaderArray:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOkHttpClient:Lokhttp3/OkHttpClient;

.field private mProtocolApi:Lcn/codemao/android/account/net/ProtocolApi;

.field private mRetrofit:Lretrofit2/Retrofit;

.field private mTestApi:Lcn/codemao/android/account/net/TestApi;

.field private mV3AccountApi:Lcn/codemao/android/account/net/V3AccountApi;


# direct methods
.method public static synthetic $r8$lambda$z4c3_anXvoIguU_PRvEIKrgfkXg(Lcn/codemao/android/account/net/HttpControl;Ljava/util/HashMap;Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcn/codemao/android/account/net/HttpControl;->lambda$init$0(Ljava/util/HashMap;Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/codemao/android/account/net/HttpControl;->sRequestHeaderArray:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addGenerateHeader(Lokhttp3/Request$Builder;Ljava/util/HashMap;)Lokhttp3/Request;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request$Builder;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/Request;"
        }
    .end annotation

    .line 81
    invoke-static {}, Lcn/codemao/android/account/util/DeviceInformationUtil;->getHeader()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X-CodeMao-Mobile-Requested"

    invoke-virtual {p1, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 82
    invoke-static {}, Lcn/codemao/android/account/util/DeviceInformationUtil;->getDeviceHeader()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Device-Data"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 83
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getPID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PID"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Api-Version"

    const-string v2, "3.1.0"

    .line 84
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    if-eqz p2, :cond_4b

    .line 85
    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 86
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 87
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_35

    .line 90
    :cond_4b
    sget-object p2, Lcn/codemao/android/account/net/HttpControl;->sRequestHeaderArray:Ljava/util/HashMap;

    if-eqz p2, :cond_75

    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_75

    .line 91
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    sget-object v1, Lcn/codemao/android/account/net/HttpControl;->sRequestHeaderArray:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_5d

    .line 95
    :cond_75
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcn/codemao/android/account/net/HttpControl;
    .registers 2

    .line 40
    sget-object v0, Lcn/codemao/android/account/net/HttpControl;->mInstance:Lcn/codemao/android/account/net/HttpControl;

    if-nez v0, :cond_17

    .line 41
    const-class v0, Lcn/codemao/android/account/net/HttpControl;

    monitor-enter v0

    .line 42
    :try_start_7
    sget-object v1, Lcn/codemao/android/account/net/HttpControl;->mInstance:Lcn/codemao/android/account/net/HttpControl;

    if-nez v1, :cond_12

    new-instance v1, Lcn/codemao/android/account/net/HttpControl;

    invoke-direct {v1}, Lcn/codemao/android/account/net/HttpControl;-><init>()V

    sput-object v1, Lcn/codemao/android/account/net/HttpControl;->mInstance:Lcn/codemao/android/account/net/HttpControl;

    .line 43
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 45
    :cond_17
    :goto_17
    sget-object v0, Lcn/codemao/android/account/net/HttpControl;->mInstance:Lcn/codemao/android/account/net/HttpControl;

    return-object v0
.end method

.method private synthetic lambda$init$0(Ljava/util/HashMap;Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-interface {p2}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 65
    invoke-direct {p0, v0, p1}, Lcn/codemao/android/account/net/HttpControl;->addGenerateHeader(Lokhttp3/Request$Builder;Ljava/util/HashMap;)Lokhttp3/Request;

    move-result-object p1

    .line 66
    invoke-interface {p2, p1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method private setBaseUrl(Ljava/lang/String;)V
    .registers 4

    .line 119
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    iget-object v1, p0, Lcn/codemao/android/account/net/HttpControl;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 120
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 121
    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 122
    invoke-static {}, Lretrofit2/converter/scalars/ScalarsConverterFactory;->create()Lretrofit2/converter/scalars/ScalarsConverterFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 123
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 124
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 125
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/account/net/HttpControl;->mRetrofit:Lretrofit2/Retrofit;

    return-void
.end method


# virtual methods
.method public getCookieJar()Lokhttp3/CookieJar;
    .registers 5

    .line 103
    new-instance v0, Lcn/codemao/android/account/cookiejar/PersistentCookieJar;

    new-instance v1, Lcn/codemao/android/account/cookiejar/cache/SetCookieCache;

    invoke-direct {v1}, Lcn/codemao/android/account/cookiejar/cache/SetCookieCache;-><init>()V

    new-instance v2, Lcn/codemao/android/account/cookiejar/persistence/SharedPrefsCookiePersistor;

    iget-object v3, p0, Lcn/codemao/android/account/net/HttpControl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcn/codemao/android/account/cookiejar/persistence/SharedPrefsCookiePersistor;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcn/codemao/android/account/cookiejar/PersistentCookieJar;-><init>(Lcn/codemao/android/account/cookiejar/cache/CookieCache;Lcn/codemao/android/account/cookiejar/persistence/CookiePersistor;)V

    return-object v0
.end method

.method public getCookies()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    .line 109
    new-instance v0, Lcn/codemao/android/account/cookiejar/persistence/SharedPrefsCookiePersistor;

    iget-object v1, p0, Lcn/codemao/android/account/net/HttpControl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/codemao/android/account/cookiejar/persistence/SharedPrefsCookiePersistor;-><init>(Landroid/content/Context;)V

    .line 110
    invoke-virtual {v0}, Lcn/codemao/android/account/cookiejar/persistence/SharedPrefsCookiePersistor;->loadAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLoginApi()Lcn/codemao/android/account/net/V3AccountApi;
    .registers 3

    .line 134
    iget-object v0, p0, Lcn/codemao/android/account/net/HttpControl;->mV3AccountApi:Lcn/codemao/android/account/net/V3AccountApi;

    if-nez v0, :cond_10

    .line 135
    iget-object v0, p0, Lcn/codemao/android/account/net/HttpControl;->mRetrofit:Lretrofit2/Retrofit;

    const-class v1, Lcn/codemao/android/account/net/V3AccountApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/account/net/V3AccountApi;

    iput-object v0, p0, Lcn/codemao/android/account/net/HttpControl;->mV3AccountApi:Lcn/codemao/android/account/net/V3AccountApi;

    .line 137
    :cond_10
    iget-object v0, p0, Lcn/codemao/android/account/net/HttpControl;->mV3AccountApi:Lcn/codemao/android/account/net/V3AccountApi;

    return-object v0
.end method

.method public getOkHttpClient()Lokhttp3/OkHttpClient;
    .registers 2

    .line 99
    iget-object v0, p0, Lcn/codemao/android/account/net/HttpControl;->mOkHttpClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public getProtocolApi()Lcn/codemao/android/account/net/ProtocolApi;
    .registers 3

    .line 141
    iget-object v0, p0, Lcn/codemao/android/account/net/HttpControl;->mProtocolApi:Lcn/codemao/android/account/net/ProtocolApi;

    if-nez v0, :cond_10

    .line 142
    iget-object v0, p0, Lcn/codemao/android/account/net/HttpControl;->mRetrofit:Lretrofit2/Retrofit;

    const-class v1, Lcn/codemao/android/account/net/ProtocolApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/account/net/ProtocolApi;

    iput-object v0, p0, Lcn/codemao/android/account/net/HttpControl;->mProtocolApi:Lcn/codemao/android/account/net/ProtocolApi;

    .line 144
    :cond_10
    iget-object v0, p0, Lcn/codemao/android/account/net/HttpControl;->mProtocolApi:Lcn/codemao/android/account/net/ProtocolApi;

    return-object v0
.end method

.method public getTestApi()Lcn/codemao/android/account/net/TestApi;
    .registers 3

    .line 148
    iget-object v0, p0, Lcn/codemao/android/account/net/HttpControl;->mTestApi:Lcn/codemao/android/account/net/TestApi;

    if-nez v0, :cond_10

    .line 149
    iget-object v0, p0, Lcn/codemao/android/account/net/HttpControl;->mRetrofit:Lretrofit2/Retrofit;

    const-class v1, Lcn/codemao/android/account/net/TestApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/account/net/TestApi;

    iput-object v0, p0, Lcn/codemao/android/account/net/HttpControl;->mTestApi:Lcn/codemao/android/account/net/TestApi;

    .line 151
    :cond_10
    iget-object v0, p0, Lcn/codemao/android/account/net/HttpControl;->mTestApi:Lcn/codemao/android/account/net/TestApi;

    return-object v0
.end method

.method public init(Landroid/content/Context;ZLjava/util/HashMap;Lokhttp3/Interceptor;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/Interceptor;",
            ")V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcn/codemao/android/account/net/HttpControl;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {v0}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    .line 51
    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 53
    new-instance v1, Lcn/codemao/android/account/cookiejar/PersistentCookieJar;

    new-instance v2, Lcn/codemao/android/account/cookiejar/cache/SetCookieCache;

    invoke-direct {v2}, Lcn/codemao/android/account/cookiejar/cache/SetCookieCache;-><init>()V

    new-instance v3, Lcn/codemao/android/account/cookiejar/persistence/SharedPrefsCookiePersistor;

    invoke-direct {v3, p1}, Lcn/codemao/android/account/cookiejar/persistence/SharedPrefsCookiePersistor;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v3}, Lcn/codemao/android/account/cookiejar/PersistentCookieJar;-><init>(Lcn/codemao/android/account/cookiejar/cache/CookieCache;Lcn/codemao/android/account/cookiejar/persistence/CookiePersistor;)V

    .line 56
    new-instance p1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 57
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    invoke-virtual {p1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    const/4 v2, 0x1

    .line 58
    invoke-virtual {p1, v2}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    .line 59
    invoke-virtual {p1, v1}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    if-nez p2, :cond_35

    .line 61
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {p1, v1}, Lokhttp3/OkHttpClient$Builder;->proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;

    .line 63
    :cond_35
    new-instance v1, Lcn/codemao/android/account/net/HttpControl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p3}, Lcn/codemao/android/account/net/HttpControl$$ExternalSyntheticLambda0;-><init>(Lcn/codemao/android/account/net/HttpControl;Ljava/util/HashMap;)V

    invoke-virtual {p1, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    if-eqz p2, :cond_42

    .line 68
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    :cond_42
    if-eqz p4, :cond_47

    .line 71
    invoke-virtual {p1, p4}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 73
    :cond_47
    new-instance p2, Lcn/codemao/android/account/net/CaptchaInterceptor;

    invoke-direct {p2}, Lcn/codemao/android/account/net/CaptchaInterceptor;-><init>()V

    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 75
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/account/net/HttpControl;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 77
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getCodemaoUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/codemao/android/account/net/HttpControl;->setBaseUrl(Ljava/lang/String;)V

    return-void
.end method
