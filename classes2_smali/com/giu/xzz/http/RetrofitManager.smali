.class public Lcom/giu/xzz/http/RetrofitManager;
.super Ljava/lang/Object;
.source "RetrofitManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/giu/xzz/http/RetrofitManager$Singleton;
    }
.end annotation


# static fields
.field private static isInit:Z = false

.field private static mIsRelease:Z = true

.field private static sBaseURL:Ljava/lang/String;

.field private static sContext:Landroid/content/Context;

.field private static sInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mRetrofit:Lretrofit2/Retrofit;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 6

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-boolean v0, Lcom/giu/xzz/http/RetrofitManager;->isInit:Z

    if-eqz v0, :cond_75

    .line 49
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    .line 50
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/franmontiel/persistentcookiejar/PersistentCookieJar;

    new-instance v2, Lcom/franmontiel/persistentcookiejar/cache/SetCookieCache;

    invoke-direct {v2}, Lcom/franmontiel/persistentcookiejar/cache/SetCookieCache;-><init>()V

    new-instance v3, Lcom/franmontiel/persistentcookiejar/persistence/SharedPrefsCookiePersistor;

    sget-object v4, Lcom/giu/xzz/http/RetrofitManager;->sContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/franmontiel/persistentcookiejar/persistence/SharedPrefsCookiePersistor;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v3}, Lcom/franmontiel/persistentcookiejar/PersistentCookieJar;-><init>(Lcom/franmontiel/persistentcookiejar/cache/CookieCache;Lcom/franmontiel/persistentcookiejar/persistence/CookiePersistor;)V

    .line 54
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 55
    invoke-direct {p0, v0}, Lcom/giu/xzz/http/RetrofitManager;->addInterceptors(Lokhttp3/OkHttpClient$Builder;)V

    .line 56
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 57
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    sget-object v1, Lcom/giu/xzz/http/RetrofitManager;->sBaseURL:Ljava/lang/String;

    .line 58
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 60
    invoke-static {}, Lcom/giu/xzz/http/NobodyConverterFactory;->create()Lcom/giu/xzz/http/NobodyConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 61
    invoke-static {}, Lretrofit2/converter/scalars/ScalarsConverterFactory;->create()Lretrofit2/converter/scalars/ScalarsConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 62
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 63
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    iput-object v0, p0, Lcom/giu/xzz/http/RetrofitManager;->mRetrofit:Lretrofit2/Retrofit;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/giu/xzz/http/RetrofitManager;->mMap:Ljava/util/Map;

    return-void

    .line 47
    :cond_75
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "please invoke init() at first!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Lcom/giu/xzz/http/RetrofitManager$1;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Lcom/giu/xzz/http/RetrofitManager;-><init>()V

    return-void
.end method

.method private addInterceptors(Lokhttp3/OkHttpClient$Builder;)V
    .registers 5

    .line 121
    new-instance v0, Lcom/giu/xzz/http/interceptor/HttpLoggingInterceptor;

    invoke-direct {v0}, Lcom/giu/xzz/http/interceptor/HttpLoggingInterceptor;-><init>()V

    .line 122
    sget-boolean v1, Lcom/giu/xzz/http/RetrofitManager;->mIsRelease:Z

    if-eqz v1, :cond_c

    sget-object v1, Lcom/giu/xzz/http/interceptor/HttpLoggingInterceptor$Level;->NONE:Lcom/giu/xzz/http/interceptor/HttpLoggingInterceptor$Level;

    goto :goto_e

    :cond_c
    sget-object v1, Lcom/giu/xzz/http/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/giu/xzz/http/interceptor/HttpLoggingInterceptor$Level;

    :goto_e
    invoke-virtual {v0, v1}, Lcom/giu/xzz/http/interceptor/HttpLoggingInterceptor;->setLevel(Lcom/giu/xzz/http/interceptor/HttpLoggingInterceptor$Level;)Lcom/giu/xzz/http/interceptor/HttpLoggingInterceptor;

    .line 123
    new-instance v1, Lcom/giu/xzz/http/interceptor/TimeoutInterceptor;

    invoke-direct {v1}, Lcom/giu/xzz/http/interceptor/TimeoutInterceptor;-><init>()V

    invoke-virtual {p1, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 124
    sget-object v1, Lcom/giu/xzz/http/RetrofitManager;->sInterceptors:Ljava/util/List;

    if-nez v1, :cond_1e

    return-void

    .line 127
    :cond_1e
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/Interceptor;

    .line 128
    invoke-virtual {p1, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_22

    .line 132
    :cond_32
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 133
    new-instance v0, Lcom/chuckerteam/chucker/api/ChuckerInterceptor;

    sget-object v1, Lcom/giu/xzz/http/RetrofitManager;->sContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/chuckerteam/chucker/api/ChuckerInterceptor;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    return-void
.end method

.method public static get()Lcom/giu/xzz/http/RetrofitManager;
    .registers 1

    .line 88
    sget-object v0, Lcom/giu/xzz/http/RetrofitManager$Singleton;->instance:Lcom/giu/xzz/http/RetrofitManager$Singleton;

    invoke-static {v0}, Lcom/giu/xzz/http/RetrofitManager$Singleton;->access$000(Lcom/giu/xzz/http/RetrofitManager$Singleton;)Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v0

    return-object v0
.end method

.method public static varargs init(Landroid/content/Context;ZLjava/lang/String;[Lokhttp3/Interceptor;)V
    .registers 5

    .line 69
    sget-boolean v0, Lcom/giu/xzz/http/RetrofitManager;->isInit:Z

    if-nez v0, :cond_2b

    const-string v0, "context is null!"

    .line 73
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/giu/xzz/http/RetrofitManager;->sContext:Landroid/content/Context;

    .line 79
    sput-boolean p1, Lcom/giu/xzz/http/RetrofitManager;->mIsRelease:Z

    .line 80
    sput-object p2, Lcom/giu/xzz/http/RetrofitManager;->sBaseURL:Ljava/lang/String;

    .line 81
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sput-object p0, Lcom/giu/xzz/http/RetrofitManager;->sInterceptors:Ljava/util/List;

    const/4 p0, 0x1

    .line 82
    sput-boolean p0, Lcom/giu/xzz/http/RetrofitManager;->isInit:Z

    return-void

    .line 76
    :cond_23
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "baseURL is empty!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 70
    :cond_2b
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "RetrofitManager already be inited!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/giu/xzz/http/RetrofitManager;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 145
    iget-object v0, p0, Lcom/giu/xzz/http/RetrofitManager;->mRetrofit:Lretrofit2/Retrofit;

    invoke-virtual {v0, p1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/giu/xzz/http/RetrofitManager;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_13
    iget-object v0, p0, Lcom/giu/xzz/http/RetrofitManager;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
