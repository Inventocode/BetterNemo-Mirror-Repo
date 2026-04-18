.class public final Lcom/codemao/toolssdk/manager/HttpClientManager;
.super Ljava/lang/Object;
.source "HttpClientManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/manager/HttpClientManager$WhenMappings;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/manager/HttpClientManager;

.field private static final JSON$delegate:Lkotlin/Lazy;

.field private static client:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/codemao/toolssdk/manager/HttpClientManager;

    invoke-direct {v0}, Lcom/codemao/toolssdk/manager/HttpClientManager;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/manager/HttpClientManager;->INSTANCE:Lcom/codemao/toolssdk/manager/HttpClientManager;

    .line 16
    sget-object v0, Lcn/codemao/cuokhttp/CuOkHttpClientFactory;->INSTANCE:Lcn/codemao/cuokhttp/CuOkHttpClientFactory;

    invoke-virtual {v0}, Lcn/codemao/cuokhttp/CuOkHttpClientFactory;->getDefaultClientBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 18
    sget-object v1, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;->Companion:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Companion;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Companion;->getOkHttpDns()Lokhttp3/Dns;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 19
    sget-object v2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v3, "为okhttp设置dns1"

    invoke-virtual {v2, v3}, Lcom/codemao/toolssdk/utils/ExtLog;->dSDK(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    .line 23
    :cond_1f
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 24
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/codemao/toolssdk/manager/HttpClientManager;->client:Lokhttp3/OkHttpClient;

    .line 33
    sget-object v0, Lcom/codemao/toolssdk/manager/HttpClientManager$JSON$2;->INSTANCE:Lcom/codemao/toolssdk/manager/HttpClientManager$JSON$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/codemao/toolssdk/manager/HttpClientManager;->JSON$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getBucketUrl$default(Lcom/codemao/toolssdk/manager/HttpClientManager;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    const-string p1, "qiniu"

    .line 47
    :cond_6
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/manager/HttpClientManager;->getBucketUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getOpenServerHost()Ljava/lang/String;
    .registers 3

    .line 38
    sget-object v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getEnvMode()Lcom/codemao/toolssdk/manager/CMTEnvMode;

    move-result-object v0

    sget-object v1, Lcom/codemao/toolssdk/manager/HttpClientManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_24

    .line 42
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_17  #0xa
    const-string v0, "https://dev-open-service.codemao.cn/"

    goto :goto_22

    :pswitch_1a  #0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9
    const-string v0, "https://test-open-service.codemao.cn/"

    goto :goto_22

    :pswitch_1d  #0x2
    const-string v0, "https://staging-open-service.codemao.cn/"

    goto :goto_22

    :pswitch_20  #0x1
    const-string v0, "https://open-service.codemao.cn/"

    :goto_22
    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_20  #00000001
        :pswitch_1d  #00000002
        :pswitch_1a  #00000003
        :pswitch_1a  #00000004
        :pswitch_1a  #00000005
        :pswitch_1a  #00000006
        :pswitch_1a  #00000007
        :pswitch_1a  #00000008
        :pswitch_1a  #00000009
        :pswitch_17  #0000000a
    .end packed-switch
.end method


# virtual methods
.method public final getAgentBucketUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "cdnName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "projectName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/codemao/toolssdk/manager/HttpClientManager;->getOpenServerHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cdn/qi-niu/tokens/uploading?projectName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&cdnName="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getBucketUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "cdnName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/codemao/toolssdk/manager/HttpClientManager;->getOpenServerHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cdn/qi-niu/tokens/uploading?projectName=nemo_android_ios&cdnName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getClient()Lokhttp3/OkHttpClient;
    .registers 2

    .line 16
    sget-object v0, Lcom/codemao/toolssdk/manager/HttpClientManager;->client:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public final getCreationAPIHost()Ljava/lang/String;
    .registers 3

    .line 57
    sget-object v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getEnvMode()Lcom/codemao/toolssdk/manager/CMTEnvMode;

    move-result-object v0

    sget-object v1, Lcom/codemao/toolssdk/manager/HttpClientManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_24

    .line 61
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_17  #0xa
    const-string v0, "https://dev-api-creation.codemao.cn"

    goto :goto_22

    :pswitch_1a  #0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9
    const-string v0, "https://test-api-creation.codemao.cn"

    goto :goto_22

    :pswitch_1d  #0x2
    const-string v0, "https://staging-api-creation.codemao.cn"

    goto :goto_22

    :pswitch_20  #0x1
    const-string v0, "https://api-creation.codemao.cn"

    :goto_22
    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_20  #00000001
        :pswitch_1d  #00000002
        :pswitch_1a  #00000003
        :pswitch_1a  #00000004
        :pswitch_1a  #00000005
        :pswitch_1a  #00000006
        :pswitch_1a  #00000007
        :pswitch_1a  #00000008
        :pswitch_1a  #00000009
        :pswitch_17  #0000000a
    .end packed-switch
.end method

.method public final getJSON()Lokhttp3/MediaType;
    .registers 2

    .line 33
    sget-object v0, Lcom/codemao/toolssdk/manager/HttpClientManager;->JSON$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/MediaType;

    return-object v0
.end method

.method public final getNormalHeadersBuilder(Ljava/lang/String;)Lokhttp3/Headers$Builder;
    .registers 4

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    const-string v1, "Authorization"

    .line 77
    invoke-virtual {v0, v1, p1}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-object v0
.end method

.method public final normalHeaders()Lokhttp3/Headers;
    .registers 4

    .line 82
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 83
    sget-object v1, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/UserData;->getToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_15

    :cond_13
    const-string v1, ""

    :cond_15
    const-string v2, "Authorization"

    .line 84
    invoke-virtual {v0, v2, v1}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 85
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method public final normalHeadersOrigin()Lokhttp3/Headers;
    .registers 4

    .line 89
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 90
    sget-object v1, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/UserData;->getToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_15

    :cond_13
    const-string v1, ""

    :cond_15
    const-string v2, "Authorization"

    .line 91
    invoke-virtual {v0, v2, v1}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    const-string v1, "request-origin"

    const-string v2, "NEKO"

    .line 92
    invoke-virtual {v0, v1, v2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 93
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method
