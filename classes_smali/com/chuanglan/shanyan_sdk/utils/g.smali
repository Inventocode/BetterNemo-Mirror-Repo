.class public Lcom/chuanglan/shanyan_sdk/utils/g;
.super Ljava/lang/Object;


# static fields
.field public static final a:I

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field static d:Ljava/lang/String;

.field private static e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/chuanglan/shanyan_sdk/utils/g;->a:I

    const-string v0, ""

    sput-object v0, Lcom/chuanglan/shanyan_sdk/utils/g;->b:Ljava/lang/String;

    sput-object v0, Lcom/chuanglan/shanyan_sdk/utils/g;->c:Ljava/lang/String;

    const-string v0, "1"

    sput-object v0, Lcom/chuanglan/shanyan_sdk/utils/g;->d:Ljava/lang/String;

    const/16 v0, -0x3e7

    sput v0, Lcom/chuanglan/shanyan_sdk/utils/g;->e:I

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 6

    const-string v0, ""

    :try_start_2
    sget-boolean v1, Lcom/chuanglan/shanyan_sdk/b;->aJ:Z

    if-eqz v1, :cond_47

    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2b
    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_2b

    instance-of v5, v4, Ljava/net/Inet4Address;

    if-eqz v5, :cond_2b

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2
    :try_end_45
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_45} :catch_47

    goto :goto_2b

    :cond_46
    move-object v0, v2

    :catch_47
    :cond_47
    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .registers 8

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getImei"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    return-object p0

    :catch_29
    const-string p0, ""

    return-object p0
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 11

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_3
    array-length v3, p1

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_3c

    aget-object v5, p1, v4

    invoke-static {p0, v5}, Lcom/chuanglan/shanyan_sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_2b

    const-string v7, "CheckPermissionShanYanTask"

    if-eqz v6, :cond_1d

    :try_start_11
    new-array v6, v0, [Ljava/lang/Object;

    const-string v8, "getPermission success:"

    aput-object v8, v6, v2

    aput-object v5, v6, v1

    invoke-static {v7, v6}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_28

    :cond_1d
    new-array v6, v0, [Ljava/lang/Object;

    const-string v8, "getPermission lacks:"

    aput-object v8, v6, v2

    aput-object v5, v6, v1

    invoke-static {v7, v6}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_28} :catch_2b

    :goto_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :catch_2b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "getPermission Exception_e:"

    aput-object v0, p1, v2

    aput-object p0, p1, v1

    const-string p0, "ExceptionShanYanTask"

    invoke-static {p0, p1}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3c
    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .registers 3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_1a

    :cond_e
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1a
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Z
    .registers 6

    const-class v0, Lcom/chuanglan/shanyan_sdk/utils/g;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/t;->c(Landroid/content/Context;)Z

    move-result p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_b
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    goto :goto_21

    :catch_b
    move-exception p0

    :try_start_c
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "ExceptionShanYanTask"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "checkProcess Exception"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_9

    monitor-exit v0

    return v3

    :goto_21
    monitor-exit v0

    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-class v0, Lcom/chuanglan/shanyan_sdk/utils/g;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1c} :catch_20
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1e

    monitor-exit v0

    return-object p0

    :catchall_1e
    move-exception p0

    goto :goto_36

    :catch_20
    move-exception p0

    :try_start_21
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "ExceptionShanYanTask"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "getAppName  Exception_e="

    aput-object v4, v3, v1

    const/4 v1, 0x1

    aput-object p0, v3, v1

    invoke-static {v2, v3}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_33
    .catchall {:try_start_21 .. :try_end_33} :catchall_1e

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :goto_36
    monitor-exit v0

    throw p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    sget-object v0, Lcom/chuanglan/shanyan_sdk/utils/g;->d:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    :try_start_a
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/chuanglan/shanyan_sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_21

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    if-eqz v0, :cond_29

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object p0

    goto :goto_2a

    :cond_29
    move-object p0, v1

    :goto_2a
    sput-object p0, Lcom/chuanglan/shanyan_sdk/utils/g;->d:Ljava/lang/String;

    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_49

    sput-object v1, Lcom/chuanglan/shanyan_sdk/utils/g;->d:Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_34} :catch_35

    goto :goto_49

    :catch_35
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "getSIMSerial  Exception_e="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "ExceptionShanYanTask"

    invoke-static {p0, v0}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_49
    :goto_49
    sget-object p0, Lcom/chuanglan/shanyan_sdk/utils/g;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static d()Ljava/lang/String;
    .registers 5

    const-string v0, ""

    :try_start_2
    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v1}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_c

    if-eqz v2, :cond_b

    return-object v1

    :cond_b
    return-object v0

    :catch_c
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "getDisplayVersion  Exception_e="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v1, "ExceptionShanYanTask"

    invoke-static {v1, v2}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 15

    const-string v0, "2"

    const-string v1, "Unknown_Operator"

    const-string v2, "1"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    :try_start_9
    invoke-static {p0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getInstance(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/cmic/sso/sdk/auth/c;->getNetworkType(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "operatorType"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "cmccfn"

    invoke-static {p0, v7, v2}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_21} :catch_96

    const-string v9, "CTCC"

    const-string v10, "CUCC"

    const-string v11, "CMCC"

    const-string v12, "3"

    const/4 v13, -0x1

    if-eqz v8, :cond_56

    :try_start_2c
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result p0

    packed-switch p0, :pswitch_data_a8

    goto :goto_4b

    :pswitch_34  #0x33
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4b

    const/4 v3, 0x2

    goto :goto_4c

    :pswitch_3c  #0x32
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4b

    const/4 v3, 0x1

    goto :goto_4c

    :pswitch_44  #0x31
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4b

    goto :goto_4c

    :cond_4b
    :goto_4b
    const/4 v3, -0x1

    :goto_4c
    if-eqz v3, :cond_55

    if-eq v3, v4, :cond_54

    if-eq v3, v5, :cond_53

    return-object v1

    :cond_53
    return-object v9

    :cond_54
    return-object v10

    :cond_55
    return-object v11

    :cond_56
    invoke-virtual {v2, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_91

    invoke-static {v6}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8c

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result p0

    packed-switch p0, :pswitch_data_b2

    goto :goto_81

    :pswitch_6a  #0x33
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_81

    const/4 v3, 0x2

    goto :goto_82

    :pswitch_72  #0x32
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_81

    const/4 v3, 0x1

    goto :goto_82

    :pswitch_7a  #0x31
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_81

    goto :goto_82

    :cond_81
    :goto_81
    const/4 v3, -0x1

    :goto_82
    if-eqz v3, :cond_8b

    if-eq v3, v4, :cond_8a

    if-eq v3, v5, :cond_89

    return-object v1

    :cond_89
    return-object v9

    :cond_8a
    return-object v10

    :cond_8b
    return-object v11

    :cond_8c
    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/g;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_91
    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/g;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_95} :catch_96

    return-object p0

    :catch_96
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v5, [Ljava/lang/Object;

    const-string v2, "getOperatorType  Exception_e="

    aput-object v2, v0, v3

    aput-object p0, v0, v4

    const-string p0, "ExceptionShanYanTask"

    invoke-static {p0, v0}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :pswitch_data_a8
    .packed-switch 0x31
        :pswitch_44  #00000031
        :pswitch_3c  #00000032
        :pswitch_34  #00000033
    .end packed-switch

    :pswitch_data_b2
    .packed-switch 0x31
        :pswitch_7a  #00000031
        :pswitch_72  #00000032
        :pswitch_6a  #00000033
    .end packed-switch
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, ""

    :try_start_2
    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/i;->c(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_d

    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/g;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_11

    :cond_d
    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/g;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_2f

    :goto_11
    :try_start_11
    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(Ljava/lang/String;)Z

    move-result v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_2a

    if-eqz v1, :cond_18

    goto :goto_19

    :cond_18
    move-object v0, p0

    :goto_19
    :try_start_19
    const-string p0, "LogInfoShanYanTask"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "i_DefaultData"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Lcom/chuanglan/shanyan_sdk/utils/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_29} :catch_2f

    goto :goto_33

    :catch_2a
    move-exception v0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_30

    :catch_2f
    move-exception p0

    :goto_30
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_33
    return-object v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_2
    const-string v2, "deviceMac"

    invoke-static {p0, v2, v1}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_17

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_17
    :goto_17
    new-array p0, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v2, "m_"

    aput-object v2, p0, v0

    const/4 v0, 0x1

    aput-object v1, p0, v0

    const-string v0, "LogInfoShanYanTask"

    invoke-static {v0, p0}, Lcom/chuanglan/shanyan_sdk/utils/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public static g(Landroid/content/Context;)V
    .registers 7

    :try_start_0
    sget-object v0, Lcom/chuanglan/shanyan_sdk/b;->aw:Ljava/lang/String;

    sget-object v1, Lcom/chuanglan/shanyan_sdk/b;->az:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/chuanglan/shanyan_sdk/utils/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(Ljava/lang/String;)Z

    move-result v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_6a

    const-string v2, "deviceImei1"

    if-eqz v1, :cond_5d

    const/4 v0, 0x0

    :try_start_11
    invoke-static {p0, v2, v0}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    sget-boolean v0, Lcom/chuanglan/shanyan_sdk/b;->aH:Z

    if-eqz v0, :cond_6a

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/chuanglan/shanyan_sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/chuanglan/shanyan_sdk/utils/g;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "LogInfoShanYanTask"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "i_getSystem"

    aput-object v5, v4, v0

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Lcom/chuanglan/shanyan_sdk/utils/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/chuanglan/shanyan_sdk/b;->az:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_55
    sget-object v1, Lcom/chuanglan/shanyan_sdk/b;->aw:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/chuanglan/shanyan_sdk/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_6a

    :cond_5b
    const-string v0, "i_-1"

    :cond_5d
    invoke-static {p0, v2, v0}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6a

    :cond_61
    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_67} :catch_6a

    if-nez v1, :cond_6a

    goto :goto_55

    :catch_6a
    :cond_6a
    :goto_6a
    return-void
.end method

.method public static h(Landroid/content/Context;)V
    .registers 8

    :try_start_0
    sget-object v0, Lcom/chuanglan/shanyan_sdk/b;->ax:Ljava/lang/String;

    sget-object v1, Lcom/chuanglan/shanyan_sdk/b;->aA:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/chuanglan/shanyan_sdk/utils/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(Ljava/lang/String;)Z

    move-result v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_6a

    const-string v2, "deviceImei2"

    if-eqz v1, :cond_5d

    const/4 v0, 0x0

    :try_start_11
    invoke-static {p0, v2, v0}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    sget-boolean v0, Lcom/chuanglan/shanyan_sdk/b;->aH:Z

    if-eqz v0, :cond_6a

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/chuanglan/shanyan_sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/chuanglan/shanyan_sdk/utils/g;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "LogInfoShanYanTask"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "i2_getSystem"

    aput-object v6, v4, v5

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Lcom/chuanglan/shanyan_sdk/utils/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/chuanglan/shanyan_sdk/b;->aA:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_55
    sget-object v1, Lcom/chuanglan/shanyan_sdk/b;->ax:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/chuanglan/shanyan_sdk/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_6a

    :cond_5b
    const-string v0, "i2_-1"

    :cond_5d
    invoke-static {p0, v2, v0}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6a

    :cond_61
    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_67} :catch_6a

    if-nez v1, :cond_6a

    goto :goto_55

    :catch_6a
    :cond_6a
    :goto_6a
    return-void
.end method

.method public static i(Landroid/content/Context;)V
    .registers 7

    sget-object v0, Lcom/chuanglan/shanyan_sdk/b;->ay:Ljava/lang/String;

    sget-object v1, Lcom/chuanglan/shanyan_sdk/b;->aB:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/chuanglan/shanyan_sdk/utils/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "deviceMac"

    if-eqz v1, :cond_60

    const/4 v0, 0x0

    invoke-static {p0, v2, v0}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "m_-1"

    if-eqz v1, :cond_54

    sget-boolean v0, Lcom/chuanglan/shanyan_sdk/b;->aI:Z

    if-eqz v0, :cond_63

    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/p;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "m_getSystem"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    aput-object v0, v1, v4

    const-string v4, "LogInfoShanYanTask"

    invoke-static {v4, v1}, Lcom/chuanglan/shanyan_sdk/utils/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/chuanglan/shanyan_sdk/b;->aB:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    :cond_50
    invoke-static {p0, v2, v3}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_63

    :cond_54
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    :goto_5a
    sget-object v1, Lcom/chuanglan/shanyan_sdk/b;->ay:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/chuanglan/shanyan_sdk/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_63

    :cond_60
    invoke-static {p0, v2, v0}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_63
    :goto_63
    return-void
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/i;->c(Landroid/content/Context;)I

    move-result v0

    sget v1, Lcom/chuanglan/shanyan_sdk/utils/g;->e:I

    const/4 v2, 0x2

    const-string v3, "LogInfoShanYanTask"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v0, :cond_24

    sget-object v1, Lcom/chuanglan/shanyan_sdk/utils/g;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_24

    :cond_16
    new-array p0, v2, [Ljava/lang/Object;

    const-string v0, "s_cache"

    aput-object v0, p0, v5

    sget-object v0, Lcom/chuanglan/shanyan_sdk/utils/g;->c:Ljava/lang/String;

    aput-object v0, p0, v4

    invoke-static {v3, p0}, Lcom/chuanglan/shanyan_sdk/utils/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_83

    :cond_24
    :goto_24
    sput v0, Lcom/chuanglan/shanyan_sdk/utils/g;->e:I

    const-string v0, "-1"

    sput-object v0, Lcom/chuanglan/shanyan_sdk/utils/g;->b:Ljava/lang/String;

    :try_start_2a
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/chuanglan/shanyan_sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget v1, Lcom/chuanglan/shanyan_sdk/utils/g;->a:I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_40} :catch_72

    const/16 v6, 0x15

    const-string v7, "getSubscriberId"

    if-ne v1, v6, :cond_51

    :try_start_46
    new-array v1, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v1, v5

    invoke-virtual {v0, v7, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_5b

    :cond_51
    new-array v1, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v1, v5

    invoke-virtual {v0, v7, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    :goto_5b
    new-array v1, v4, [Ljava/lang/Object;

    sget v6, Lcom/chuanglan/shanyan_sdk/utils/g;->e:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_76

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/chuanglan/shanyan_sdk/utils/g;->c:Ljava/lang/String;
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_71} :catch_72

    goto :goto_76

    :catch_72
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_76
    :goto_76
    new-array p0, v2, [Ljava/lang/Object;

    const-string v0, "s_SystemApi"

    aput-object v0, p0, v5

    sget-object v0, Lcom/chuanglan/shanyan_sdk/utils/g;->c:Ljava/lang/String;

    aput-object v0, p0, v4

    invoke-static {v3, p0}, Lcom/chuanglan/shanyan_sdk/utils/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_83
    sget-object p0, Lcom/chuanglan/shanyan_sdk/utils/g;->c:Ljava/lang/String;

    return-object p0
.end method

.method private static k(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "Unknown_Operator"

    :try_start_2
    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/g;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_b7

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_be

    packed-switch v2, :pswitch_data_d6

    goto/16 :goto_aa

    :pswitch_15  #0x2f60c90
    const-string v2, "46013"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_aa

    const/4 v1, 0x5

    goto/16 :goto_aa

    :pswitch_20  #0x2f60c8f
    const-string v2, "46012"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_aa

    const/16 v1, 0xd

    goto/16 :goto_aa

    :pswitch_2c  #0x2f60c8e
    const-string v2, "46011"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_aa

    const/16 v1, 0xc

    goto/16 :goto_aa

    :pswitch_38  #0x2f60c8d
    const-string v2, "46010"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_aa

    const/16 v1, 0x9

    goto/16 :goto_aa

    :pswitch_44  #0x2f60c77
    const-string v2, "46009"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_aa

    const/16 v1, 0x8

    goto :goto_aa

    :pswitch_4f  #0x2f60c76
    const-string v2, "46008"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_aa

    const/4 v1, 0x4

    goto :goto_aa

    :pswitch_59  #0x2f60c75
    const-string v2, "46007"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_aa

    const/4 v1, 0x3

    goto :goto_aa

    :pswitch_63  #0x2f60c74
    const-string v2, "46006"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_aa

    const/4 v1, 0x7

    goto :goto_aa

    :pswitch_6d  #0x2f60c73
    const-string v2, "46005"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_aa

    const/16 v1, 0xb

    goto :goto_aa

    :pswitch_78  #0x2f60c72
    const-string v2, "46004"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_aa

    const/4 v1, 0x2

    goto :goto_aa

    :pswitch_82  #0x2f60c71
    const-string v2, "46003"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_aa

    const/16 v1, 0xa

    goto :goto_aa

    :pswitch_8d  #0x2f60c70
    const-string v2, "46002"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_aa

    const/4 v1, 0x1

    goto :goto_aa

    :pswitch_97  #0x2f60c6f
    const-string v2, "46001"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_aa

    const/4 v1, 0x6

    goto :goto_aa

    :pswitch_a1  #0x2f60c6e
    const-string v2, "46000"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_aa

    const/4 v1, 0x0

    :cond_aa
    :goto_aa
    packed-switch v1, :pswitch_data_e2

    goto :goto_b7

    :pswitch_ae  #0xa, 0xb, 0xc, 0xd
    const-string p0, "CTCC"

    return-object p0

    :pswitch_b1  #0x6, 0x7, 0x8, 0x9
    const-string p0, "CUCC"

    return-object p0

    :pswitch_b4  #0x0, 0x1, 0x2, 0x3, 0x4, 0x5
    const-string p0, "CMCC"
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b6} :catch_b8

    return-object p0

    :cond_b7
    :goto_b7
    return-object v0

    :catch_b8
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    nop

    :pswitch_data_be
    .packed-switch 0x2f60c6e
        :pswitch_a1  #02f60c6e
        :pswitch_97  #02f60c6f
        :pswitch_8d  #02f60c70
        :pswitch_82  #02f60c71
        :pswitch_78  #02f60c72
        :pswitch_6d  #02f60c73
        :pswitch_63  #02f60c74
        :pswitch_59  #02f60c75
        :pswitch_4f  #02f60c76
        :pswitch_44  #02f60c77
    .end packed-switch

    :pswitch_data_d6
    .packed-switch 0x2f60c8d
        :pswitch_38  #02f60c8d
        :pswitch_2c  #02f60c8e
        :pswitch_20  #02f60c8f
        :pswitch_15  #02f60c90
    .end packed-switch

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_b4  #00000000
        :pswitch_b4  #00000001
        :pswitch_b4  #00000002
        :pswitch_b4  #00000003
        :pswitch_b4  #00000004
        :pswitch_b4  #00000005
        :pswitch_b1  #00000006
        :pswitch_b1  #00000007
        :pswitch_b1  #00000008
        :pswitch_b1  #00000009
        :pswitch_ae  #0000000a
        :pswitch_ae  #0000000b
        :pswitch_ae  #0000000c
        :pswitch_ae  #0000000d
    .end packed-switch
.end method

.method private static l(Landroid/content/Context;)Ljava/lang/String;
    .registers 18

    move-object/from16 v0, p0

    const-string v1, "46013"

    const-string v2, "46012"

    const-string v3, "46011"

    const-string v4, "46010"

    const-string v5, "46009"

    const-string v6, "46008"

    const-string v7, "46007"

    const-string v8, "46006"

    const-string v9, "46005"

    const-string v10, "46004"

    const-string v11, "46003"

    const-string v12, "46002"

    const-string v13, "46001"

    const-string v14, "46000"

    if-eqz v0, :cond_c4

    const-string v15, "phone"

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/telephony/TelephonyManager;

    if-eqz v15, :cond_c4

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    move-object/from16 v16, v1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_c4

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-1"

    if-nez v0, :cond_3c

    move-object v0, v1

    :cond_3c
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c2

    invoke-static/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/utils/g;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c2

    invoke-virtual {v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_55

    move-object v1, v14

    goto/16 :goto_c6

    :cond_55
    invoke-virtual {v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5e

    move-object v1, v13

    goto/16 :goto_c6

    :cond_5e
    invoke-virtual {v1, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_67

    move-object v1, v12

    goto/16 :goto_c6

    :cond_67
    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_70

    move-object v1, v11

    goto/16 :goto_c6

    :cond_70
    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_79

    move-object v1, v10

    goto/16 :goto_c6

    :cond_79
    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_81

    move-object v1, v9

    goto :goto_c6

    :cond_81
    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_89

    move-object v1, v8

    goto :goto_c6

    :cond_89
    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_91

    move-object v1, v7

    goto :goto_c6

    :cond_91
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_99

    move-object v1, v6

    goto :goto_c6

    :cond_99
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a1

    move-object v1, v5

    goto :goto_c6

    :cond_a1
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a9

    move-object v1, v4

    goto :goto_c6

    :cond_a9
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b1

    move-object v1, v3

    goto :goto_c6

    :cond_b1
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b9

    :goto_b7
    move-object v1, v2

    goto :goto_c6

    :cond_b9
    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c2

    goto :goto_b7

    :cond_c2
    move-object v1, v0

    goto :goto_c6

    :cond_c4
    const-string v1, "-2"

    :goto_c6
    return-object v1
.end method

.method private static m(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_2
    const-string v2, "deviceImei1"

    invoke-static {p0, v2, v1}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_17

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_17
    new-array p0, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v2, "i"

    aput-object v2, p0, v0

    const/4 v0, 0x1

    aput-object v1, p0, v0

    const-string v0, "LogInfoShanYanTask"

    invoke-static {v0, p0}, Lcom/chuanglan/shanyan_sdk/utils/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method private static n(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "deviceImei2"

    invoke-static {p0, v1, v0}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x3

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_17
    :goto_17
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "i2"

    aput-object v2, p0, v1

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const-string v1, "LogInfoShanYanTask"

    invoke-static {v1, p0}, Lcom/chuanglan/shanyan_sdk/utils/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method
