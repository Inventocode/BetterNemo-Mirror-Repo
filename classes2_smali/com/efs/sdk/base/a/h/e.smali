.class public final Lcom/efs/sdk/base/a/h/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .registers 5

    const-string v0, "efs.base"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "connectivity"

    .line 32
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_13

    const-string p0, "get CONNECTIVITY_SERVICE is null"

    .line 1025
    invoke-static {v0, p0, v1}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    .line 38
    :cond_13
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 41
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_41

    .line 43
    :cond_1f
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_41

    const/4 v2, 0x0

    .line 45
    :goto_26
    array-length v3, p0

    if-ge v2, v3, :cond_41

    .line 46
    aget-object v3, p0, v2

    if-eqz v3, :cond_38

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 47
    aget-object v1, p0, v2
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_3b

    goto :goto_41

    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :catchall_3b
    move-exception p0

    const-string v2, "get network info error"

    .line 54
    invoke-static {v0, v2, p0}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_41
    :goto_41
    return-object v1
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 188
    invoke-static {p0}, Lcom/efs/sdk/base/a/h/e;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "denied"

    return-object p0

    .line 192
    :cond_9
    invoke-static {p0}, Lcom/efs/sdk/base/a/h/e;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-nez p0, :cond_12

    const-string p0, "disconnected"

    return-object p0

    .line 198
    :cond_12
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    const-string p0, "wifi"

    return-object p0

    .line 201
    :cond_1c
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_58

    const-string v1, "3g"

    packed-switch v0, :pswitch_data_5c

    .line 230
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object p0

    .line 231
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string p0, "unknown"

    return-object p0

    :cond_36
    const-string v0, "TD-SCDMA"

    .line 235
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_50

    const-string v0, "WCDMA"

    .line 236
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_50

    const-string v0, "CDMA2000"

    .line 237
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    goto :goto_50

    :cond_4f
    return-object p0

    :cond_50
    :goto_50
    return-object v1

    :pswitch_51  #0xd
    const-string p0, "4g"

    return-object p0

    :pswitch_54  #0x3, 0x5, 0x6, 0x8, 0x9, 0xa, 0xc, 0xe, 0xf
    return-object v1

    :pswitch_55  #0x1, 0x2, 0x4, 0x7, 0xb
    const-string p0, "2g"

    return-object p0

    :cond_58
    const-string p0, "5g"

    return-object p0

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_55  #00000001
        :pswitch_55  #00000002
        :pswitch_54  #00000003
        :pswitch_55  #00000004
        :pswitch_54  #00000005
        :pswitch_54  #00000006
        :pswitch_55  #00000007
        :pswitch_54  #00000008
        :pswitch_54  #00000009
        :pswitch_54  #0000000a
        :pswitch_55  #0000000b
        :pswitch_54  #0000000c
        :pswitch_51  #0000000d
        :pswitch_54  #0000000e
        :pswitch_54  #0000000f
    .end packed-switch
.end method

.method private static c(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    .line 108
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_13

    if-nez p0, :cond_13

    const/4 p0, 0x1

    return p0

    :catchall_13
    :cond_13
    return v0
.end method

.method private static d(Landroid/content/Context;)Z
    .registers 1

    .line 122
    invoke-static {p0}, Lcom/efs/sdk/base/a/h/e;->c(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method
