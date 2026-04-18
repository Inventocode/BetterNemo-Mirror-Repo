.class public final Lcom/codemao/toolssdk/utils/NetWorkHelper;
.super Ljava/lang/Object;
.source "NetWorkHelper.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/utils/NetWorkHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/utils/NetWorkHelper;

    invoke-direct {v0}, Lcom/codemao/toolssdk/utils/NetWorkHelper;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/utils/NetWorkHelper;->INSTANCE:Lcom/codemao/toolssdk/utils/NetWorkHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getNetworkType(Landroid/content/Context;)I
    .registers 5

    const-string v0, "connectivity"

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 55
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    const/4 v0, 0x3

    if-nez p1, :cond_15

    return v0

    .line 57
    :cond_15
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1d

    goto :goto_2a

    .line 58
    :cond_1d
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-eqz p1, :cond_29

    if-eq p1, v2, :cond_27

    const/4 v0, 0x5

    goto :goto_2a

    :cond_27
    const/4 v0, 0x1

    goto :goto_2a

    :cond_29
    const/4 v0, 0x2

    :goto_2a
    return v0
.end method

.method public static final isConnect(Landroid/content/Context;)Z
    .registers 2

    if-eqz p0, :cond_24

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_13

    check-cast p0, Landroid/net/ConnectivityManager;

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    if-eqz p0, :cond_24

    .line 23
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 24
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_24

    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    return p0
.end method


# virtual methods
.method public final getDeviceJsApiNetworkStatus(Landroid/content/Context;)I
    .registers 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectivity"

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 34
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "当前网络状态："

    const/16 v3, 0x17

    if-lt v1, v3, :cond_85

    .line 35
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2e

    .line 42
    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-ne v3, v1, :cond_2e

    const/4 v3, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v3, 0x0

    :goto_2f
    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v3, :cond_34

    goto :goto_70

    :cond_34
    if-eqz p1, :cond_3e

    .line 43
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-ne v3, v1, :cond_3e

    const/4 v3, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v3, 0x0

    :goto_3f
    if-eqz v3, :cond_43

    const/4 v1, 0x2

    goto :goto_70

    :cond_43
    if-eqz p1, :cond_4d

    .line 44
    invoke-virtual {p1, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-ne v3, v1, :cond_4d

    const/4 v3, 0x1

    goto :goto_4e

    :cond_4d
    const/4 v3, 0x0

    :goto_4e
    if-eqz v3, :cond_52

    const/4 v1, 0x5

    goto :goto_70

    :cond_52
    if-eqz p1, :cond_5c

    .line 45
    invoke-virtual {p1, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-ne v3, v1, :cond_5c

    const/4 v3, 0x1

    goto :goto_5d

    :cond_5c
    const/4 v3, 0x0

    :goto_5d
    if-eqz v3, :cond_61

    const/4 v1, 0x6

    goto :goto_70

    :cond_61
    if-eqz p1, :cond_6b

    const/4 v3, 0x4

    .line 46
    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-ne p1, v1, :cond_6b

    const/4 v0, 0x1

    :cond_6b
    if-eqz v0, :cond_6f

    const/4 v1, 0x7

    goto :goto_70

    :cond_6f
    const/4 v1, 0x3

    .line 49
    :goto_70
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKids(Ljava/lang/String;)V

    return v1

    .line 37
    :cond_85
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/utils/NetWorkHelper;->getNetworkType(Landroid/content/Context;)I

    move-result p1

    .line 38
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKids(Ljava/lang/String;)V

    return p1
.end method
