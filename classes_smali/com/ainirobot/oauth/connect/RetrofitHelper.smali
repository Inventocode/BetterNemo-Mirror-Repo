.class public Lcom/ainirobot/oauth/connect/RetrofitHelper;
.super Ljava/lang/Object;
.source "RetrofitHelper.java"


# static fields
.field private static apiOauthInterface:Lcom/ainirobot/oauth/connect/APIOauthInterface;

.field private static okHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-direct {p0}, Lcom/ainirobot/oauth/connect/RetrofitHelper;->init()V

    return-void
.end method

.method private getApiService(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 44
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 45
    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    sget-object v0, Lcom/ainirobot/oauth/connect/RetrofitHelper;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 46
    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 47
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    .line 49
    invoke-virtual {p1, p2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private init()V
    .registers 3

    .line 28
    invoke-static {}, Lcom/ainirobot/oauth/connect/RetrofitHelper;->initOkHttp()V

    .line 29
    const-class v0, Lcom/ainirobot/oauth/connect/APIOauthInterface;

    const-string v1, "http://kid.ainirobot.com"

    invoke-direct {p0, v1, v0}, Lcom/ainirobot/oauth/connect/RetrofitHelper;->getApiService(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ainirobot/oauth/connect/APIOauthInterface;

    sput-object v0, Lcom/ainirobot/oauth/connect/RetrofitHelper;->apiOauthInterface:Lcom/ainirobot/oauth/connect/APIOauthInterface;

    return-void
.end method

.method private static initOkHttp()V
    .registers 4

    .line 33
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 34
    new-instance v1, Lcom/ainirobot/oauth/utils/CommonInterceptor;

    invoke-direct {v1}, Lcom/ainirobot/oauth/utils/CommonInterceptor;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 35
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    const-wide/16 v2, 0x14

    .line 36
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 37
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    const/4 v1, 0x1

    .line 38
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    .line 40
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/ainirobot/oauth/connect/RetrofitHelper;->okHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method


# virtual methods
.method public fetchAuthCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/ainirobot/oauth/connect/ProtocolBean;",
            ">;"
        }
    .end annotation

    .line 53
    sget-object v0, Lcom/ainirobot/oauth/connect/RetrofitHelper;->apiOauthInterface:Lcom/ainirobot/oauth/connect/APIOauthInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ainirobot/oauth/connect/APIOauthInterface;->getAuthCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    return-object p1
.end method
