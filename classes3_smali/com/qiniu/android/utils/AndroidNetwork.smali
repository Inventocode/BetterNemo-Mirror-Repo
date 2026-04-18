.class public final Lcom/qiniu/android/utils/AndroidNetwork;
.super Ljava/lang/Object;
.source "AndroidNetwork.java"


# direct methods
.method public static getHostIP()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 56
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    if-nez v1, :cond_8

    return-object v0

    .line 62
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 63
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 64
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 65
    :cond_18
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 66
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 67
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v4

    if-nez v4, :cond_18

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_18

    .line 68
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_34
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_34} :catch_35

    goto :goto_8

    :catch_35
    move-exception v1

    .line 75
    invoke-virtual {v1}, Ljava/net/SocketException;->printStackTrace()V

    :cond_39
    return-object v0
.end method

.method private static getNetWorkClass(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 114
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const-string v1, "none"

    if-eqz v0, :cond_13

    return-object v1

    :cond_13
    const-string v0, "phone"

    .line 118
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_1e

    return-object v1

    .line 123
    :cond_1e
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    packed-switch p0, :pswitch_data_30

    return-object v1

    :pswitch_26  #0xd
    const-string p0, "4g"

    return-object p0

    :pswitch_29  #0x3, 0x5, 0x6, 0x8, 0x9, 0xa, 0xc, 0xe, 0xf
    const-string p0, "3g"

    return-object p0

    :pswitch_2c  #0x1, 0x2, 0x4, 0x7, 0xb
    const-string p0, "2g"

    return-object p0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c  #00000001
        :pswitch_2c  #00000002
        :pswitch_29  #00000003
        :pswitch_2c  #00000004
        :pswitch_29  #00000005
        :pswitch_29  #00000006
        :pswitch_2c  #00000007
        :pswitch_29  #00000008
        :pswitch_29  #00000009
        :pswitch_29  #0000000a
        :pswitch_2c  #0000000b
        :pswitch_29  #0000000c
        :pswitch_26  #0000000d
        :pswitch_29  #0000000e
        :pswitch_29  #0000000f
    .end packed-switch
.end method

.method public static networkType(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 82
    :try_start_0
    invoke-static {p0}, Lcom/qiniu/android/utils/AndroidNetwork;->networkTypeWithException(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 84
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static networkTypeWithException(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "none"

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    const-string v1, "connectivity"

    .line 94
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-nez v1, :cond_10

    return-object v0

    .line 99
    :cond_10
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 100
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_2e

    .line 104
    :cond_1d
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_27

    const-string p0, "wifi"

    return-object p0

    :cond_27
    if-nez v1, :cond_2e

    .line 108
    invoke-static {p0}, Lcom/qiniu/android/utils/AndroidNetwork;->getNetWorkClass(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2e
    :goto_2e
    return-object v0
.end method
