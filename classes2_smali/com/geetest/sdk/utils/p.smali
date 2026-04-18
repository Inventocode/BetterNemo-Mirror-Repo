.class public Lcom/geetest/sdk/utils/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x1

    .line 1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_27

    .line 3
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_27

    .line 5
    array-length v1, p0

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_27

    aget-object v3, p0, v2

    .line 6
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_27

    if-ne v3, v4, :cond_24

    return v0

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :catch_27
    :cond_27
    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "NULL"

    .line 1
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_65

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 4
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_61

    if-eqz v2, :cond_20

    const-string p0, "WIFI"

    return-object p0

    :cond_20
    if-eqz v1, :cond_65

    .line 8
    :try_start_22
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 9
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz v2, :cond_65

    if-eqz p0, :cond_65

    .line 12
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_36} :catch_61

    const-string v2, "3G"

    packed-switch p0, :pswitch_data_66

    :pswitch_3b  #0x11
    :try_start_3b
    const-string p0, "TD-SCDMA"
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3d} :catch_61

    goto :goto_48

    :pswitch_3e  #0x14
    const-string p0, "5G"

    return-object p0

    :pswitch_41  #0xd, 0x12, 0x13
    const-string p0, "4G"

    return-object p0

    :pswitch_44  #0x3, 0x5, 0x6, 0x8, 0x9, 0xa, 0xc, 0xe, 0xf
    return-object v2

    :pswitch_45  #0x1, 0x2, 0x4, 0x7, 0xb, 0x10
    const-string p0, "2G"

    return-object p0

    .line 39
    :goto_48
    :try_start_48
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_60

    const-string p0, "WCDMA"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_60

    const-string p0, "CDMA2000"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_5c} :catch_61

    if-eqz p0, :cond_5f

    goto :goto_60

    :cond_5f
    return-object v0

    :cond_60
    :goto_60
    return-object v2

    :catch_61
    move-exception p0

    .line 49
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_65
    return-object v0

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_45  #00000001
        :pswitch_45  #00000002
        :pswitch_44  #00000003
        :pswitch_45  #00000004
        :pswitch_44  #00000005
        :pswitch_44  #00000006
        :pswitch_45  #00000007
        :pswitch_44  #00000008
        :pswitch_44  #00000009
        :pswitch_44  #0000000a
        :pswitch_45  #0000000b
        :pswitch_44  #0000000c
        :pswitch_41  #0000000d
        :pswitch_44  #0000000e
        :pswitch_44  #0000000f
        :pswitch_45  #00000010
        :pswitch_3b  #00000011
        :pswitch_41  #00000012
        :pswitch_41  #00000013
        :pswitch_3e  #00000014
    .end packed-switch
.end method
