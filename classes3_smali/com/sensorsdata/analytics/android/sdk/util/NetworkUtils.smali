.class public Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$SANetworkCallbackImpl;,
        Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$SABroadcastReceiver;
    }
.end annotation


# static fields
.field private static final HTTP_307:I = 0x133

.field private static final TAG:Ljava/lang/String; = "SA.NetworkUtils"

.field private static mReceiver:Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$SABroadcastReceiver;

.field private static networkCallback:Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$SANetworkCallbackImpl;

.field private static networkType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanNetworkTypeCache()V
    .registers 1

    const/4 v0, 0x0

    .line 252
    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->networkType:Ljava/lang/String;

    return-void
.end method

.method public static compareMainDomain(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 437
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 438
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2d
    const/4 p0, 0x0

    return p0
.end method

.method public static getHost(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 423
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 424
    :cond_16
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1f
    const-string p0, ""

    return-object p0
.end method

.method public static getLocation(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_58

    .line 176
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_58

    :cond_a
    const-string v1, "Location"

    .line 179
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v1, "location"

    .line 181
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 183
    :cond_1c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_23

    return-object v0

    :cond_23
    const-string p0, "http://"

    .line 186
    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_57

    const-string p0, "https://"

    .line 187
    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_57

    .line 189
    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 190
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "://"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_57
    return-object v1

    :cond_58
    :goto_58
    return-object v0
.end method

.method public static getRequestUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    .line 411
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 412
    :cond_16
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 414
    :try_start_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Ljava/net/URI;

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/net/Uri;->getPort()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_47
    .catch Ljava/net/URISyntaxException; {:try_start_1a .. :try_end_47} :catch_48

    return-object p0

    :catch_48
    move-exception p0

    .line 416
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_4c
    const-string p0, ""

    return-object p0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 116
    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    :try_start_a
    const-string v0, "connectivity"

    .line 120
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 121
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->isNetworkAvailable(Landroid/net/ConnectivityManager;)Z

    move-result p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_17

    return p0

    :catch_17
    move-exception p0

    .line 123
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    return v1
.end method

.method private static isNetworkAvailable(Landroid/net/ConnectivityManager;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_27

    .line 263
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1a

    .line 264
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 266
    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_27

    .line 268
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->isNetworkValid(Landroid/net/NetworkCapabilities;)Z

    move-result p0

    return p0

    .line 272
    :cond_1a
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_27

    .line 273
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_27

    const/4 v0, 0x1

    :cond_27
    return v0
.end method

.method public static isNetworkValid(Landroid/net/NetworkCapabilities;)Z
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_34

    .line 159
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_34

    const/4 v1, 0x1

    .line 160
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_33

    .line 161
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_33

    const/4 v2, 0x3

    .line 162
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_33

    const/4 v2, 0x7

    .line 163
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_33

    const/4 v2, 0x4

    .line 164
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_33

    const/16 v2, 0x10

    .line 165
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_34

    :cond_33
    const/4 v0, 0x1

    :cond_34
    return v0
.end method

.method public static isShouldFlush(Ljava/lang/String;I)Z
    .registers 2

    .line 136
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->toNetworkType(Ljava/lang/String;)I

    move-result p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method private static isWiFiNetwork(Landroid/net/ConnectivityManager;)Z
    .registers 5

    .line 286
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x17

    if-lt v0, v3, :cond_1a

    .line 287
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 289
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 291
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    return p0

    :cond_19
    return v1

    .line 295
    :cond_1a
    invoke-virtual {p0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_27

    .line 296
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0

    if-eqz p0, :cond_27

    const/4 v1, 0x1

    :cond_27
    return v1
.end method

.method private static mobileNetworkType(Landroid/content/Context;Landroid/telephony/TelephonyManager;Landroid/net/ConnectivityManager;)Ljava/lang/String;
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const/16 v0, 0x1e

    if-eqz p1, :cond_20

    .line 313
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v0, :cond_d

    .line 314
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    goto :goto_21

    :cond_d
    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 316
    invoke-static {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1b

    .line 317
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->hasCarrierPrivileges()Z

    move-result p0

    if-eqz p0, :cond_20

    .line 318
    :cond_1b
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result p0

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    const-string p1, "NULL"

    if-nez p0, :cond_36

    .line 324
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v0, :cond_2a

    return-object p1

    :cond_2a
    if-eqz p2, :cond_36

    .line 330
    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p2

    if-eqz p2, :cond_36

    .line 332
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    :cond_36
    packed-switch p0, :pswitch_data_46

    :pswitch_39  #0x10, 0x11
    return-object p1

    :pswitch_3a  #0x14
    const-string p0, "5G"

    return-object p0

    :pswitch_3d  #0xd, 0x12, 0x13
    const-string p0, "4G"

    return-object p0

    :pswitch_40  #0x3, 0x5, 0x6, 0x8, 0x9, 0xa, 0xc, 0xe, 0xf
    const-string p0, "3G"

    return-object p0

    :pswitch_43  #0x1, 0x2, 0x4, 0x7, 0xb
    const-string p0, "2G"

    return-object p0

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_43  #00000001
        :pswitch_43  #00000002
        :pswitch_40  #00000003
        :pswitch_43  #00000004
        :pswitch_40  #00000005
        :pswitch_40  #00000006
        :pswitch_43  #00000007
        :pswitch_40  #00000008
        :pswitch_40  #00000009
        :pswitch_40  #0000000a
        :pswitch_43  #0000000b
        :pswitch_40  #0000000c
        :pswitch_3d  #0000000d
        :pswitch_40  #0000000e
        :pswitch_40  #0000000f
        :pswitch_39  #00000010
        :pswitch_39  #00000011
        :pswitch_3d  #00000012
        :pswitch_3d  #00000013
        :pswitch_3a  #00000014
    .end packed-switch
.end method

.method public static needRedirects(I)Z
    .registers 2

    const/16 v0, 0x12d

    if-eq p0, v0, :cond_f

    const/16 v0, 0x12e

    if-eq p0, v0, :cond_f

    const/16 v0, 0x133

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public static networkType(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "NULL"

    .line 72
    :try_start_2
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->networkType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->networkType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 73
    sget-object p0, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->networkType:Ljava/lang/String;

    return-object p0

    :cond_15
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 77
    invoke-static {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 78
    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->networkType:Ljava/lang/String;

    return-object v0

    :cond_20
    const-string v1, "connectivity"

    .line 83
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_3e

    .line 86
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->isNetworkAvailable(Landroid/net/ConnectivityManager;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 87
    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->networkType:Ljava/lang/String;

    return-object v0

    .line 91
    :cond_33
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->isWiFiNetwork(Landroid/net/ConnectivityManager;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const-string p0, "WIFI"

    .line 92
    sput-object p0, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->networkType:Ljava/lang/String;

    return-object p0

    :cond_3e
    const-string v2, "phone"

    .line 97
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 98
    invoke-static {p0, v2, v1}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->mobileNetworkType(Landroid/content/Context;Landroid/telephony/TelephonyManager;Landroid/net/ConnectivityManager;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->networkType:Ljava/lang/String;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4c} :catch_4d

    return-object p0

    :catch_4d
    move-exception p0

    .line 101
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 102
    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public static registerNetworkListener(Landroid/content/Context;)V
    .registers 5

    .line 198
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_5f

    const/16 v1, 0x15

    const-string v2, "SA.NetworkUtils"

    const/4 v3, 0x0

    if-ge v0, v1, :cond_29

    .line 199
    :try_start_9
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->mReceiver:Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$SABroadcastReceiver;

    if-nez v0, :cond_14

    .line 200
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$SABroadcastReceiver;

    invoke-direct {v0, v3}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$SABroadcastReceiver;-><init>(Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$1;)V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->mReceiver:Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$SABroadcastReceiver;

    .line 202
    :cond_14
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 203
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->mReceiver:Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$SABroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p0, "Register BroadcastReceiver"

    .line 205
    invoke-static {v2, p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_63

    :cond_29
    const/16 v1, 0x17

    if-lt v0, v1, :cond_36

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 208
    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    return-void

    .line 211
    :cond_36
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->networkCallback:Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$SANetworkCallbackImpl;

    if-nez v0, :cond_41

    .line 212
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$SANetworkCallbackImpl;

    invoke-direct {v0, v3}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$SANetworkCallbackImpl;-><init>(Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$1;)V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->networkCallback:Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$SANetworkCallbackImpl;

    .line 214
    :cond_41
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    const-string v1, "connectivity"

    .line 216
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_63

    .line 218
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->networkCallback:Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$SANetworkCallbackImpl;

    invoke-virtual {p0, v0, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    const-string p0, "Register ConnectivityManager"

    .line 219
    invoke-static {v2, p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_5e} :catch_5f

    goto :goto_63

    :catch_5f
    move-exception p0

    .line 223
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_63
    :goto_63
    return-void
.end method

.method private static toNetworkType(Ljava/lang/String;)I
    .registers 3

    const-string v0, "NULL"

    .line 140
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xff

    if-eqz v0, :cond_b

    return v1

    :cond_b
    const-string v0, "WIFI"

    .line 142
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 p0, 0x8

    return p0

    :cond_16
    const-string v0, "2G"

    .line 144
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const-string v0, "3G"

    .line 146
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 p0, 0x2

    return p0

    :cond_2a
    const-string v0, "4G"

    .line 148
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 p0, 0x4

    return p0

    :cond_34
    const-string v0, "5G"

    .line 150
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3f

    const/16 p0, 0x10

    return p0

    :cond_3f
    return v1
.end method

.method public static unregisterNetworkListener(Landroid/content/Context;)V
    .registers 4

    .line 229
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_30

    const/16 v1, 0x15

    const-string v2, "SA.NetworkUtils"

    if-ge v0, v1, :cond_16

    .line 230
    :try_start_8
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->mReceiver:Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$SABroadcastReceiver;

    if-nez v0, :cond_d

    return-void

    .line 233
    :cond_d
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string p0, "unregisterReceiver BroadcastReceiver"

    .line 234
    invoke-static {v2, p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    .line 236
    :cond_16
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->networkCallback:Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$SANetworkCallbackImpl;

    if-nez v0, :cond_1b

    return-void

    :cond_1b
    const-string v0, "connectivity"

    .line 240
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_34

    .line 242
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->networkCallback:Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$SANetworkCallbackImpl;

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const-string p0, "unregister ConnectivityManager"

    .line 243
    invoke-static {v2, p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2f} :catch_30

    goto :goto_34

    :catch_30
    move-exception p0

    .line 247
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_34
    :goto_34
    return-void
.end method
