.class public Lcom/cmic/sso/sdk/e/s;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmic/sso/sdk/e/s$a;
    }
.end annotation


# static fields
.field private static a:Lcom/cmic/sso/sdk/e/s;


# instance fields
.field private b:Landroid/net/ConnectivityManager;

.field private c:Landroid/net/Network;

.field private d:Landroid/net/ConnectivityManager$NetworkCallback;

.field private e:Z

.field private volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/e/s;->f:Z

    :try_start_6
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/cmic/sso/sdk/e/s;->b:Landroid/net/ConnectivityManager;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_11

    goto :goto_15

    :catch_11
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_15
    return-void
.end method

.method static synthetic a(Lcom/cmic/sso/sdk/e/s;Landroid/net/Network;)Landroid/net/Network;
    .registers 2

    iput-object p1, p0, Lcom/cmic/sso/sdk/e/s;->c:Landroid/net/Network;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/cmic/sso/sdk/e/s;
    .registers 3

    sget-object v0, Lcom/cmic/sso/sdk/e/s;->a:Lcom/cmic/sso/sdk/e/s;

    if-nez v0, :cond_17

    const-class v0, Lcom/cmic/sso/sdk/e/s;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/cmic/sso/sdk/e/s;->a:Lcom/cmic/sso/sdk/e/s;

    if-nez v1, :cond_12

    new-instance v1, Lcom/cmic/sso/sdk/e/s;

    invoke-direct {v1, p0}, Lcom/cmic/sso/sdk/e/s;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/cmic/sso/sdk/e/s;->a:Lcom/cmic/sso/sdk/e/s;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcom/cmic/sso/sdk/e/s;->a:Lcom/cmic/sso/sdk/e/s;

    return-object p0
.end method

.method static synthetic a(Lcom/cmic/sso/sdk/e/s;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/cmic/sso/sdk/e/s;->e:Z

    return p1
.end method

.method private static b(Ljava/lang/String;)I
    .registers 7

    const/4 v0, -0x1

    :try_start_1
    invoke-static {p0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_14

    aget-object v4, p0, v3

    instance-of v5, v4, Ljava/net/Inet4Address;

    if-eqz v5, :cond_11

    goto :goto_15

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_14
    const/4 v4, 0x0

    :goto_15
    if-eqz v4, :cond_52

    const-string p0, "WifiNetworkUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lookupHost inetAddress "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_31} :catch_52

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p0

    const/4 v0, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0

    :catch_52
    :cond_52
    return v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_e

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_e
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_1b

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1b
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_27

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_27
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_33

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_33
    return-object p0
.end method


# virtual methods
.method public a(Lcom/cmic/sso/sdk/e/s$a;)V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/cmic/sso/sdk/e/s;->b:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_13

    const-string p1, "WifiNetworkUtils"

    const-string v0, "mConnectivityManager 为空"

    invoke-static {p1, v0}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    iget-object v1, p0, Lcom/cmic/sso/sdk/e/s;->c:Landroid/net/Network;

    const-string v2, "HttpUtils"

    if-eqz v1, :cond_34

    iget-boolean v3, p0, Lcom/cmic/sso/sdk/e/s;->e:Z

    if-nez v3, :cond_34

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "reuse network: "

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/cmic/sso/sdk/e/s;->c:Landroid/net/Network;

    invoke-interface {p1, v0}, Lcom/cmic/sso/sdk/e/s$a;->a(Landroid/net/Network;)V

    return-void

    :cond_34
    iget-object v0, p0, Lcom/cmic/sso/sdk/e/s;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_4a

    :try_start_38
    iget-object v1, p0, Lcom/cmic/sso/sdk/e/s;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3d} :catch_3e

    goto :goto_45

    :catch_3e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmic/sso/sdk/e/s;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    :goto_45
    const-string v0, "clear: "

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    new-instance v1, Lcom/cmic/sso/sdk/e/s$1;

    invoke-direct {v1, p0, p1}, Lcom/cmic/sso/sdk/e/s$1;-><init>(Lcom/cmic/sso/sdk/e/s;Lcom/cmic/sso/sdk/e/s$a;)V

    iput-object v1, p0, Lcom/cmic/sso/sdk/e/s;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object p1, p0, Lcom/cmic/sso/sdk/e/s;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0, v1}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public a()Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    iget-object v0, p0, Lcom/cmic/sso/sdk/e/s;->c:Landroid/net/Network;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    iget-boolean v0, p0, Lcom/cmic/sso/sdk/e/s;->f:Z

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .registers 8

    iget-object v0, p0, Lcom/cmic/sso/sdk/e/s;->b:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const-string v2, "enableHIPRI"

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    :goto_b
    const/16 v0, 0x1e

    const-string v2, "WifiNetworkUtils"

    const/4 v3, 0x5

    if-ge v1, v0, :cond_32

    :try_start_12
    iget-object v0, p0, Lcom/cmic/sso/sdk/e/s;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v4}, Landroid/net/NetworkInfo$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_25

    goto :goto_32

    :cond_25
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_2a} :catch_2d

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :catch_2d
    const-string v0, "check hipri failed"

    invoke-static {v2, v0}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    :goto_32
    invoke-static {p1}, Lcom/cmic/sso/sdk/e/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cmic/sso/sdk/e/s;->b(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/cmic/sso/sdk/e/s;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v3, p1}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cmic/sso/sdk/e/s;->f:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "切换数据网络结果 >>> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/cmic/sso/sdk/e/s;->f:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/cmic/sso/sdk/e/s;->f:Z

    return p1
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, Lcom/cmic/sso/sdk/e/s;->b:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_16

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/e/s;->f:Z

    iget-object v1, p0, Lcom/cmic/sso/sdk/e/s;->b:Landroid/net/ConnectivityManager;

    const-string v2, "enableHIPRI"

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    goto :goto_28

    :cond_16
    iget-object v1, p0, Lcom/cmic/sso/sdk/e/s;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v1, :cond_1b

    return-void

    :cond_1b
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmic/sso/sdk/e/s;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    iput-object v0, p0, Lcom/cmic/sso/sdk/e/s;->c:Landroid/net/Network;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_23} :catch_24

    goto :goto_28

    :catch_24
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_28
    return-void
.end method
