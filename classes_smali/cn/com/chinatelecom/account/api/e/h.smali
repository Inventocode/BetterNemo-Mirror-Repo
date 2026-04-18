.class public final Lcn/com/chinatelecom/account/api/e/h;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;

.field private static final g:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-string v0, "46000"

    const-string v1, "46002"

    const-string v2, "46004"

    const-string v3, "46007"

    const-string v4, "46008"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/chinatelecom/account/api/e/h;->e:[Ljava/lang/String;

    const-string v0, "46003"

    const-string v1, "46005"

    const-string v2, "46011"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/chinatelecom/account/api/e/h;->f:[Ljava/lang/String;

    const-string v0, "46001"

    const-string v1, "46006"

    const-string v2, "46009"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/chinatelecom/account/api/e/h;->g:[Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcn/com/chinatelecom/account/api/e/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 7

    invoke-static {p0}, Lcn/com/chinatelecom/account/api/e/h;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_50

    sget-object v0, Lcn/com/chinatelecom/account/api/e/h;->f:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_a
    const/4 v3, 0x3

    if-ge v2, v3, :cond_20

    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    if-eqz p1, :cond_1a

    const-string p0, "1"

    return-object p0

    :cond_1a
    const-string p0, "CT"

    return-object p0

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_20
    sget-object v0, Lcn/com/chinatelecom/account/api/e/h;->e:[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_23
    const/4 v4, 0x5

    if-ge v2, v4, :cond_39

    aget-object v4, v0, v2

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    if-eqz p1, :cond_33

    const-string p0, "2"

    return-object p0

    :cond_33
    const-string p0, "CM"

    return-object p0

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_39
    sget-object v0, Lcn/com/chinatelecom/account/api/e/h;->g:[Ljava/lang/String;

    :goto_3b
    if-ge v1, v3, :cond_50

    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    if-eqz p1, :cond_4a

    const-string p0, "3"

    return-object p0

    :cond_4a
    const-string p0, "CU"

    return-object p0

    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    :cond_50
    if-eqz p1, :cond_55

    const-string p0, "0"

    return-object p0

    :cond_55
    const-string p0, "UN"

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 1

    invoke-static {p0}, Lcn/com/chinatelecom/account/api/e/h;->i(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static b()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcn/com/chinatelecom/account/api/e/h;->b:Ljava/lang/String;

    const-string v1, "https://open.e.189.cn/openapi/special/getTimeStamp.do"

    if-eqz v0, :cond_13

    sget-object v0, Lcn/com/chinatelecom/account/api/e/b;->c:[B

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcn/com/chinatelecom/account/api/e/h;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_13
    return-object v1
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 1

    invoke-static {p0}, Lcn/com/chinatelecom/account/api/e/h;->i(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static c()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcn/com/chinatelecom/account/api/e/h;->c:Ljava/lang/String;

    const-string v1, "https://api-e189.21cn.com/gw/client/accountMsg.do"

    if-eqz v0, :cond_d

    const-string v2, "e189.21cn.com"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    return-object v1
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const-class v1, Landroid/net/ConnectivityManager;

    const-string v2, "getMobileDataEnabled"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_2b

    return p0

    :catchall_2b
    move-exception p0

    const-string v1, "NetUtil"

    const-string v2, "isMobileEnable error "

    invoke-static {v1, v2, p0}, Lcn/com/chinatelecom/account/api/CtAuth;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcn/com/chinatelecom/account/api/e/h;->j(Landroid/content/Context;)I

    move-result p0

    const/16 v0, -0x65

    const-string v1, "null"

    if-eq p0, v0, :cond_2c

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2e

    if-eqz p0, :cond_2e

    const/4 v0, 0x1

    if-eq p0, v0, :cond_29

    const/4 v0, 0x2

    if-eq p0, v0, :cond_26

    const/4 v0, 0x3

    if-eq p0, v0, :cond_23

    const/4 v0, 0x4

    if-eq p0, v0, :cond_20

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    :cond_20
    const-string v1, "5G"

    goto :goto_2e

    :cond_23
    const-string v1, "4G"

    goto :goto_2e

    :cond_26
    const-string v1, "3G"

    goto :goto_2e

    :cond_29
    const-string v1, "2G"

    goto :goto_2e

    :cond_2c
    const-string v1, "WIFI"

    :cond_2e
    :goto_2e
    return-object v1
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcn/com/chinatelecom/account/api/e/h;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    const-string v1, "WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {p0}, Lcn/com/chinatelecom/account/api/e/h;->c(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_17

    const-string p0, "BOTH"

    return-object p0

    :cond_17
    return-object v0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_13

    if-nez v0, :cond_17

    return-object p0

    :catchall_13
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_17
    const-string p0, "00000"

    return-object p0
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcn/com/chinatelecom/account/api/e/h;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static i(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    return-object p0
.end method

.method private static j(Landroid/content/Context;)I
    .registers 7

    const/4 v0, 0x1

    const/16 v1, -0x65

    const/4 v2, -0x1

    const/4 v3, 0x0

    :try_start_5
    invoke-static {p0}, Lcn/com/chinatelecom/account/api/e/h;->i(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_3b

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v5
    :try_end_1b
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_1b} :catch_42
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1b} :catch_3d

    if-ne v5, v0, :cond_20

    const/16 v3, -0x65

    goto :goto_46

    :cond_20
    if-nez v5, :cond_46

    :try_start_22
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2e} :catch_30

    move v3, p0

    goto :goto_34

    :catch_30
    move-exception p0

    :try_start_31
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_34
    if-nez v3, :cond_46

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3
    :try_end_3a
    .catch Ljava/lang/NullPointerException; {:try_start_31 .. :try_end_3a} :catch_42
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3a} :catch_3d

    goto :goto_46

    :cond_3b
    const/4 v3, -0x1

    goto :goto_46

    :catch_3d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_46

    :catch_42
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_46
    :goto_46
    if-eq v3, v1, :cond_56

    if-eq v3, v2, :cond_55

    packed-switch v3, :pswitch_data_58

    return v3

    :pswitch_4e  #0x14
    const/4 p0, 0x4

    return p0

    :pswitch_50  #0xd, 0x12, 0x13
    const/4 p0, 0x3

    return p0

    :pswitch_52  #0x3, 0x5, 0x6, 0x8, 0x9, 0xa, 0xc, 0xe, 0xf, 0x11
    const/4 p0, 0x2

    return p0

    :pswitch_54  #0x1, 0x2, 0x4, 0x7, 0xb, 0x10
    return v0

    :cond_55
    return v2

    :cond_56
    return v1

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_54  #00000001
        :pswitch_54  #00000002
        :pswitch_52  #00000003
        :pswitch_54  #00000004
        :pswitch_52  #00000005
        :pswitch_52  #00000006
        :pswitch_54  #00000007
        :pswitch_52  #00000008
        :pswitch_52  #00000009
        :pswitch_52  #0000000a
        :pswitch_54  #0000000b
        :pswitch_52  #0000000c
        :pswitch_50  #0000000d
        :pswitch_52  #0000000e
        :pswitch_52  #0000000f
        :pswitch_54  #00000010
        :pswitch_52  #00000011
        :pswitch_50  #00000012
        :pswitch_50  #00000013
        :pswitch_4e  #00000014
    .end packed-switch
.end method
