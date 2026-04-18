.class public Lcom/codemao/creativecenter/http/CreativeRetrofitManager;
.super Ljava/lang/Object;
.source "CreativeRetrofitManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/http/CreativeRetrofitManager$Singleton;
    }
.end annotation


# instance fields
.field private isInternational:Z

.field private mCustomRetrofit:Lretrofit2/Retrofit;

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

.field private openServerRetrofit:Lretrofit2/Retrofit;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->mMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->isInternational:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/codemao/creativecenter/http/CreativeRetrofitManager$1;)V
    .registers 2

    .line 25
    invoke-direct {p0}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;-><init>()V

    return-void
.end method

.method private addIntercept(Ljava/lang/String;Lokhttp3/OkHttpClient$Builder;)V
    .registers 5

    .line 136
    new-instance v0, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor;

    invoke-direct {v0}, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor;-><init>()V

    const-string v1, "release"

    .line 137
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    sget-object p1, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;->NONE:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;

    goto :goto_12

    :cond_10
    sget-object p1, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;->BODY:Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;

    :goto_12
    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor;->setLevel(Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor$Level;)Lcom/codemao/creativecenter/http/CreativeHttpLoggingInterceptor;

    .line 138
    new-instance p1, Lcom/codemao/creativecenter/http/CreativeRetrofitManager$1;

    invoke-direct {p1, p0}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager$1;-><init>(Lcom/codemao/creativecenter/http/CreativeRetrofitManager;)V

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 149
    new-instance p1, Lcom/codemao/creativecenter/http/CreativeHttpHeadInterceptor;

    invoke-direct {p1}, Lcom/codemao/creativecenter/http/CreativeHttpHeadInterceptor;-><init>()V

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    return-void
.end method

.method public static get()Lcom/codemao/creativecenter/http/CreativeRetrofitManager;
    .registers 1

    .line 38
    sget-object v0, Lcom/codemao/creativecenter/http/CreativeRetrofitManager$Singleton;->instance:Lcom/codemao/creativecenter/http/CreativeRetrofitManager$Singleton;

    invoke-static {v0}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager$Singleton;->access$000(Lcom/codemao/creativecenter/http/CreativeRetrofitManager$Singleton;)Lcom/codemao/creativecenter/http/CreativeRetrofitManager;

    move-result-object v0

    return-object v0
.end method

.method private getOpenServerHost()Ljava/lang/String;
    .registers 4

    .line 107
    iget-boolean v0, p0, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->isInternational:Z

    if-eqz v0, :cond_7

    const-string v0, "https://intl-gateway.codingcat.com/open-service/"

    return-object v0

    .line 111
    :cond_7
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/creativecenter/CreativeCenterUtils;->env:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_48

    goto :goto_39

    :sswitch_19
    const-string v2, "test"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_39

    :cond_22
    const/4 v1, 0x2

    goto :goto_39

    :sswitch_24
    const-string v2, "dev"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_39

    :cond_2d
    const/4 v1, 0x1

    goto :goto_39

    :sswitch_2f
    const-string v2, "staging"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto :goto_39

    :cond_38
    const/4 v1, 0x0

    :goto_39
    packed-switch v1, :pswitch_data_56

    const-string v0, "https://open-service.codemao.cn/"

    goto :goto_47

    :pswitch_3f  #0x2
    const-string v0, "https://test-open-service.codemao.cn/"

    goto :goto_47

    :pswitch_42  #0x1
    const-string v0, "https://dev-open-service.codemao.cn/"

    goto :goto_47

    :pswitch_45  #0x0
    const-string v0, "https://staging-open-service.codemao.cn/"

    :goto_47
    return-object v0

    :sswitch_data_48
    .sparse-switch
        -0x7119e7c5 -> :sswitch_2f
        0x18415 -> :sswitch_24
        0x364492 -> :sswitch_19
    .end sparse-switch

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_45  #00000000
        :pswitch_42  #00000001
        :pswitch_3f  #00000002
    .end packed-switch
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->mRetrofit:Lretrofit2/Retrofit;

    if-nez v0, :cond_5e

    .line 164
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    .line 165
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 166
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 167
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 168
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/creativecenter/CreativeCenterUtils;->env:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->addIntercept(Ljava/lang/String;Lokhttp3/OkHttpClient$Builder;)V

    .line 169
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 170
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 171
    invoke-virtual {p0}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 172
    invoke-static {}, Lretrofit2/converter/scalars/ScalarsConverterFactory;->create()Lretrofit2/converter/scalars/ScalarsConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 173
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 174
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->mRetrofit:Lretrofit2/Retrofit;

    .line 176
    invoke-virtual {v0, p1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_5e
    iget-object v0, p0, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    .line 181
    iget-object v0, p0, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->mRetrofit:Lretrofit2/Retrofit;

    invoke-virtual {v0, p1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_71
    iget-object v0, p0, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createByNemoHost(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->mCustomRetrofit:Lretrofit2/Retrofit;

    if-nez v0, :cond_5e

    .line 189
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    .line 190
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 191
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 192
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 193
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/creativecenter/CreativeCenterUtils;->env:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->addIntercept(Ljava/lang/String;Lokhttp3/OkHttpClient$Builder;)V

    .line 194
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 195
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 196
    invoke-virtual {p0}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->getNemoHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 197
    invoke-static {}, Lretrofit2/converter/scalars/ScalarsConverterFactory;->create()Lretrofit2/converter/scalars/ScalarsConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 198
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 199
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->mCustomRetrofit:Lretrofit2/Retrofit;

    .line 201
    invoke-virtual {v0, p1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_5e
    iget-object v0, p0, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    .line 206
    iget-object v0, p0, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->mCustomRetrofit:Lretrofit2/Retrofit;

    invoke-virtual {v0, p1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_71
    iget-object v0, p0, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createByOpenServerHost(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->openServerRetrofit:Lretrofit2/Retrofit;

    if-nez v0, :cond_5e

    .line 214
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    .line 215
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 216
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 217
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 218
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/creativecenter/CreativeCenterUtils;->env:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->addIntercept(Ljava/lang/String;Lokhttp3/OkHttpClient$Builder;)V

    .line 219
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 220
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 221
    invoke-direct {p0}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->getOpenServerHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 222
    invoke-static {}, Lretrofit2/converter/scalars/ScalarsConverterFactory;->create()Lretrofit2/converter/scalars/ScalarsConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 223
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 224
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->openServerRetrofit:Lretrofit2/Retrofit;

    .line 226
    invoke-virtual {v0, p1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_5e
    iget-object v0, p0, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    .line 231
    iget-object v0, p0, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->openServerRetrofit:Lretrofit2/Retrofit;

    invoke-virtual {v0, p1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 232
    iget-object v1, p0, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_71
    iget-object v0, p0, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getHost()Ljava/lang/String;
    .registers 4

    .line 67
    iget-boolean v0, p0, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->isInternational:Z

    if-eqz v0, :cond_7

    const-string v0, "https://intl-api-creation.codingcat.com"

    return-object v0

    .line 71
    :cond_7
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/creativecenter/CreativeCenterUtils;->env:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_48

    goto :goto_39

    :sswitch_19
    const-string v2, "test"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_39

    :cond_22
    const/4 v1, 0x2

    goto :goto_39

    :sswitch_24
    const-string v2, "dev"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_39

    :cond_2d
    const/4 v1, 0x1

    goto :goto_39

    :sswitch_2f
    const-string v2, "staging"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto :goto_39

    :cond_38
    const/4 v1, 0x0

    :goto_39
    packed-switch v1, :pswitch_data_56

    const-string v0, "https://api-creation.codemao.cn"

    goto :goto_47

    :pswitch_3f  #0x2
    const-string v0, "https://test-api-creation.codemao.cn"

    goto :goto_47

    :pswitch_42  #0x1
    const-string v0, "https://dev-api-creation.codemao.cn"

    goto :goto_47

    :pswitch_45  #0x0
    const-string v0, "https://staging-api-creation.codemao.cn"

    :goto_47
    return-object v0

    :sswitch_data_48
    .sparse-switch
        -0x7119e7c5 -> :sswitch_2f
        0x18415 -> :sswitch_24
        0x364492 -> :sswitch_19
    .end sparse-switch

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_45  #00000000
        :pswitch_42  #00000001
        :pswitch_3f  #00000002
    .end packed-switch
.end method

.method public getNemoHost()Ljava/lang/String;
    .registers 4

    .line 87
    iget-boolean v0, p0, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->isInternational:Z

    if-eqz v0, :cond_7

    const-string v0, "https://intl-api.codingcat.com/"

    return-object v0

    .line 91
    :cond_7
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/creativecenter/CreativeCenterUtils;->env:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_48

    goto :goto_39

    :sswitch_19
    const-string v2, "test"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_39

    :cond_22
    const/4 v1, 0x2

    goto :goto_39

    :sswitch_24
    const-string v2, "dev"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_39

    :cond_2d
    const/4 v1, 0x1

    goto :goto_39

    :sswitch_2f
    const-string v2, "staging"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto :goto_39

    :cond_38
    const/4 v1, 0x0

    :goto_39
    packed-switch v1, :pswitch_data_56

    const-string v0, "https://api.codemao.cn/"

    goto :goto_47

    :pswitch_3f  #0x2
    const-string v0, "https://test-api.codemao.cn/"

    goto :goto_47

    :pswitch_42  #0x1
    const-string v0, "https://backend-dev.codemao.cn/"

    goto :goto_47

    :pswitch_45  #0x0
    const-string v0, "https://backend-test.codemao.cn/"

    :goto_47
    return-object v0

    :sswitch_data_48
    .sparse-switch
        -0x7119e7c5 -> :sswitch_2f
        0x18415 -> :sswitch_24
        0x364492 -> :sswitch_19
    .end sparse-switch

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_45  #00000000
        :pswitch_42  #00000001
        :pswitch_3f  #00000002
    .end packed-switch
.end method

.method public init()V
    .registers 2

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->mMap:Ljava/util/Map;

    return-void
.end method

.method public isInternational()Z
    .registers 2

    .line 63
    iget-boolean v0, p0, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->isInternational:Z

    return v0
.end method
