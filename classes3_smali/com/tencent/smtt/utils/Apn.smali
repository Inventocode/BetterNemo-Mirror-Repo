.class public Lcom/tencent/smtt/utils/Apn;
.super Ljava/lang/Object;


# static fields
.field public static final APN_2G:I = 0x1

.field public static final APN_3G:I = 0x2

.field public static final APN_4G:I = 0x4

.field public static final APN_UNKNOWN:I = 0x0

.field public static final APN_WIFI:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApnInfo(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "unknown"

    :try_start_2
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_28

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-eqz v1, :cond_23

    const/4 p0, 0x1

    if-eq v1, p0, :cond_20

    goto :goto_28

    :cond_20
    const-string p0, "wifi"

    goto :goto_27

    :cond_23
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_27} :catch_28

    :goto_27
    move-object v0, p0

    :catch_28
    :cond_28
    :goto_28
    return-object v0
.end method

.method public static getApnType(Landroid/content/Context;)I
    .registers 4

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_2d

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-eqz v2, :cond_21

    if-eq v2, v0, :cond_1f

    goto :goto_2d

    :cond_1f
    const/4 v0, 0x3

    goto :goto_2e

    :cond_21
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    packed-switch p0, :pswitch_data_30

    goto :goto_2d

    :pswitch_29  #0xd
    const/4 v0, 0x4

    goto :goto_2e

    :pswitch_2b  #0x3, 0x5, 0x6, 0x8, 0x9, 0xa, 0xc, 0xe, 0xf
    const/4 v0, 0x2

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 v0, 0x0

    :goto_2e
    :pswitch_2e  #0x1, 0x2, 0x4, 0x7, 0xb
    return v0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2e  #00000001
        :pswitch_2e  #00000002
        :pswitch_2b  #00000003
        :pswitch_2e  #00000004
        :pswitch_2b  #00000005
        :pswitch_2b  #00000006
        :pswitch_2e  #00000007
        :pswitch_2b  #00000008
        :pswitch_2b  #00000009
        :pswitch_2b  #0000000a
        :pswitch_2e  #0000000b
        :pswitch_2b  #0000000c
        :pswitch_29  #0000000d
        :pswitch_2b  #0000000e
        :pswitch_2b  #0000000f
    .end packed-switch
.end method

.method public static getWifiSSID(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_14

    :cond_13
    return-object v0

    :catchall_14
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_10

    return v0

    :cond_10
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1e

    :cond_1d
    return v0

    :cond_1e
    :goto_1e
    const/4 p0, 0x1

    return p0
.end method
