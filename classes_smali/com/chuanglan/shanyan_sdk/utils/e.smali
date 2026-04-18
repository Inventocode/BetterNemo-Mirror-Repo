.class public Lcom/chuanglan/shanyan_sdk/utils/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/e;->c(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/e;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_30

    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p1, :cond_1f

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v1

    :cond_1f
    const-string v4, "getMobileDataEnabled"

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2f} :catch_31

    return p0

    :cond_30
    return v1

    :catch_31
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const-string v2, "getMobileDataState  Exception_e="

    aput-object v2, p1, v1

    aput-object p0, p1, v0

    const-string p0, "ExceptionShanYanTask"

    invoke-static {p0, p1}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    const/4 v1, 0x1

    if-eqz p0, :cond_17

    if-eq p0, v1, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method private static c(Landroid/content/Context;)I
    .registers 2

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    goto :goto_16

    :cond_13
    const p0, -0x4967e3e3

    :goto_16
    return p0
.end method
