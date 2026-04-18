.class public final Lcom/blankj/utilcode/util/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;,
        Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;,
        Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 765
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    return-void
.end method

.method private static getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .registers 2

    .line 515
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    return-object v0

    .line 517
    :cond_10
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getMobileDataEnabled()Z
    .registers 5

    const/4 v0, 0x0

    .line 250
    :try_start_1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_10

    return v0

    .line 252
    :cond_10
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1b

    .line 253
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v0

    return v0

    .line 257
    :cond_1b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getDataEnabled"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_3a

    new-array v3, v0, [Ljava/lang/Object;

    .line 259
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_35} :catch_36

    return v0

    :catch_36
    move-exception v1

    .line 262
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3a
    return v0
.end method

.method public static getNetworkType()Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;
    .registers 3

    .line 441
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->isEthernet()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 442
    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_ETHERNET:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    return-object v0

    .line 444
    :cond_9
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 445
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 446
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f

    .line 447
    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_WIFI:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    return-object v0

    .line 448
    :cond_1f
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_5b

    .line 449
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    packed-switch v1, :pswitch_data_62

    .line 477
    :pswitch_2c  #0x13
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TD-SCDMA"

    .line 478
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_58

    const-string v1, "WCDMA"

    .line 479
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_58

    const-string v1, "CDMA2000"

    .line 480
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    goto :goto_58

    .line 475
    :pswitch_49  #0x14
    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_5G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    return-object v0

    .line 472
    :pswitch_4c  #0xd, 0x12
    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_4G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    return-object v0

    .line 468
    :pswitch_4f  #0x3, 0x5, 0x6, 0x8, 0x9, 0xa, 0xc, 0xe, 0xf, 0x11
    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_3G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    return-object v0

    .line 456
    :pswitch_52  #0x1, 0x2, 0x4, 0x7, 0xb, 0x10
    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_2G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    return-object v0

    .line 483
    :cond_55
    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_UNKNOWN:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    return-object v0

    .line 481
    :cond_58
    :goto_58
    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_3G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    return-object v0

    .line 487
    :cond_5b
    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_UNKNOWN:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    return-object v0

    .line 490
    :cond_5e
    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_NO:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    return-object v0

    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_52  #00000001
        :pswitch_52  #00000002
        :pswitch_4f  #00000003
        :pswitch_52  #00000004
        :pswitch_4f  #00000005
        :pswitch_4f  #00000006
        :pswitch_52  #00000007
        :pswitch_4f  #00000008
        :pswitch_4f  #00000009
        :pswitch_4f  #0000000a
        :pswitch_52  #0000000b
        :pswitch_4f  #0000000c
        :pswitch_4c  #0000000d
        :pswitch_4f  #0000000e
        :pswitch_4f  #0000000f
        :pswitch_52  #00000010
        :pswitch_4f  #00000011
        :pswitch_4c  #00000012
        :pswitch_2c  #00000013
        :pswitch_49  #00000014
    .end packed-switch
.end method

.method private static isEthernet()Z
    .registers 3

    .line 503
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    :cond_10
    const/16 v2, 0x9

    .line 505
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_19

    return v1

    .line 507
    :cond_19
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    if-nez v0, :cond_20

    return v1

    .line 509
    :cond_20
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v2, :cond_28

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v2, :cond_29

    :cond_28
    const/4 v1, 0x1

    :cond_29
    return v1
.end method
