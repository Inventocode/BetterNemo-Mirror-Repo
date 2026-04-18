.class Lcom/readboy/personalsettingauth/UserNetwork;
.super Ljava/lang/Object;
.source "UserNetwork.java"


# instance fields
.field private userService:Lcom/readboy/personalsettingauth/UserService;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 28
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 29
    new-instance v1, Lcom/readboy/personalsettingauth/util/RetryIntercepter;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/readboy/personalsettingauth/util/RetryIntercepter;-><init>(I)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 30
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 31
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    sget-object v2, Lcom/readboy/personalsettingauth/RBConfigureUtil;->USER_URL:Ljava/lang/String;

    .line 32
    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 33
    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 34
    invoke-static {}, Lcom/readboy/personalsettingauth/util/converter/JsonConverterFactory;->create()Lcom/readboy/personalsettingauth/util/converter/JsonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    .line 36
    const-class v1, Lcom/readboy/personalsettingauth/UserService;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/readboy/personalsettingauth/UserService;

    iput-object v0, p0, Lcom/readboy/personalsettingauth/UserNetwork;->userService:Lcom/readboy/personalsettingauth/UserService;

    return-void
.end method

.method private enqueue(Lretrofit2/Call;Lretrofit2/Callback;)Lretrofit2/Call;
    .registers 3

    .line 78
    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object p1
.end method

.method private getLoginSn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 97
    :goto_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ge v2, v3, :cond_21

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    .line 100
    :cond_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/readboy/personalsettingauth/RBConfigureUtil;->_login_appsec:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-static {p1}, Lcom/readboy/personalsettingauth/RBConfigureUtil;->_getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/readboy/personalsettingauth/RBConfigureUtil;->_login_appid:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getSn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 85
    :goto_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ge v2, v3, :cond_21

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    .line 88
    :cond_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/readboy/personalsettingauth/RBConfigureUtil;->_appsec:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 89
    invoke-static {p1}, Lcom/readboy/personalsettingauth/RBConfigureUtil;->_getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/readboy/personalsettingauth/RBConfigureUtil;->_appid:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getUserInfo(ILjava/lang/String;Lretrofit2/Callback;)Lretrofit2/Call;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lretrofit2/Callback<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lretrofit2/Call;"
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/readboy/personalsettingauth/UserNetwork;->getSn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 64
    iget-object p2, p0, Lcom/readboy/personalsettingauth/UserNetwork;->userService:Lcom/readboy/personalsettingauth/UserService;

    invoke-interface {p2, p1}, Lcom/readboy/personalsettingauth/UserService;->getUserInfo(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 65
    invoke-direct {p0, p1, p3}, Lcom/readboy/personalsettingauth/UserNetwork;->enqueue(Lretrofit2/Call;Lretrofit2/Callback;)Lretrofit2/Call;

    move-result-object p1

    return-object p1
.end method

.method public subMemberLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit2/Callback;)Lretrofit2/Call;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit2/Callback<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lretrofit2/Call;"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p3, p4}, Lcom/readboy/personalsettingauth/UserNetwork;->getSn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 73
    iget-object p4, p0, Lcom/readboy/personalsettingauth/UserNetwork;->userService:Lcom/readboy/personalsettingauth/UserService;

    invoke-interface {p4, p3, p1, p2}, Lcom/readboy/personalsettingauth/UserService;->subMemberLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 74
    invoke-direct {p0, p1, p5}, Lcom/readboy/personalsettingauth/UserNetwork;->enqueue(Lretrofit2/Call;Lretrofit2/Callback;)Lretrofit2/Call;

    move-result-object p1

    return-object p1
.end method

.method public userLogin(Ljava/lang/String;Ljava/lang/String;Lretrofit2/Callback;)Lretrofit2/Call;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit2/Callback<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lretrofit2/Call;"
        }
    .end annotation

    .line 47
    sget-object v0, Lcom/readboy/personalsettingauth/RBConfigureUtil;->_login_appid:Ljava/lang/String;

    invoke-static {v0}, Lcom/readboy/personalsettingauth/RBConfigureUtil;->_getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "00000000"

    .line 48
    invoke-direct {p0, v1, v0}, Lcom/readboy/personalsettingauth/UserNetwork;->getLoginSn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {p2}, Lcom/readboy/personalsettingauth/RBConfigureUtil;->_getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 50
    iget-object v1, p0, Lcom/readboy/personalsettingauth/UserNetwork;->userService:Lcom/readboy/personalsettingauth/UserService;

    invoke-interface {v1, v0, p1, p2}, Lcom/readboy/personalsettingauth/UserService;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 51
    invoke-direct {p0, p1, p3}, Lcom/readboy/personalsettingauth/UserNetwork;->enqueue(Lretrofit2/Call;Lretrofit2/Callback;)Lretrofit2/Call;

    move-result-object p1

    return-object p1
.end method
