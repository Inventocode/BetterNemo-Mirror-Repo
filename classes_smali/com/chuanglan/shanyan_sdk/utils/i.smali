.class public Lcom/chuanglan/shanyan_sdk/utils/i;
.super Ljava/lang/Object;


# direct methods
.method private static a(I)I
    .registers 6

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "getNetwork1 networkType"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "CheckAuthEnableShanYanTask"

    invoke-static {v2, v1}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0x13

    const/4 v2, 0x4

    if-eq p0, v1, :cond_35

    const/16 v1, 0x14

    if-eq p0, v1, :cond_33

    const/4 v1, 0x3

    packed-switch p0, :pswitch_data_36

    const/16 v4, 0x10

    if-ne p0, v4, :cond_26

    return v0

    :cond_26
    const/16 v0, 0x11

    if-ne p0, v0, :cond_2b

    return v1

    :cond_2b
    const/16 v0, 0x12

    if-ne p0, v0, :cond_30

    return v2

    :cond_30
    return v3

    :pswitch_31  #0x3, 0x5, 0x6, 0x8, 0x9, 0xa, 0xc, 0xe, 0xf
    return v1

    :pswitch_32  #0x1, 0x2, 0x4, 0x7, 0xb
    return v0

    :cond_33
    const/4 p0, 0x5

    return p0

    :cond_35
    :pswitch_35  #0xd
    return v2

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_32  #00000001
        :pswitch_32  #00000002
        :pswitch_31  #00000003
        :pswitch_32  #00000004
        :pswitch_31  #00000005
        :pswitch_31  #00000006
        :pswitch_32  #00000007
        :pswitch_31  #00000008
        :pswitch_31  #00000009
        :pswitch_31  #0000000a
        :pswitch_32  #0000000b
        :pswitch_31  #0000000c
        :pswitch_35  #0000000d
        :pswitch_31  #0000000e
        :pswitch_31  #0000000f
    .end packed-switch
.end method

.method static a(Landroid/content/Context;I)I
    .registers 9

    const/4 v0, -0x1

    if-ltz p1, :cond_3e

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_5
    const-string v3, "android.telephony.SubscriptionManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getSubId"

    new-array v5, v1, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v4, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    array-length v3, p1

    if-lez v3, :cond_3e

    aget p1, p1, v2
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2f

    goto :goto_3f

    :catchall_2f
    move-exception p1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "getSubId Exception_e"

    aput-object v4, v3, v2

    aput-object p1, v3, v1

    const-string p1, "ExceptionShanYanTask"

    invoke-static {p1, v3}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3e
    const/4 p1, -0x1

    :goto_3f
    if-ne p1, v0, :cond_45

    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/i;->m(Landroid/content/Context;)I

    move-result p1

    :cond_45
    return p1
.end method

.method private static a(Landroid/content/Context;Z)Ljava/lang/Integer;
    .registers 10

    const-string v0, "getSimSlotIndex Exception_e"

    const-string v1, "ExceptionShanYanTask"

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, -0x1

    :try_start_8
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x16

    if-lt v6, v7, :cond_65

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_5b

    if-eqz p1, :cond_3e

    :try_start_18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v6, "getDefaultDataSubscriptionInfo"

    new-array v7, v4, [Ljava/lang/Class;

    invoke-virtual {p1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p1
    :try_end_32
    .catchall {:try_start_18 .. :try_end_32} :catchall_34

    move v5, p1

    goto :goto_3e

    :catchall_34
    move-exception p1

    :try_start_35
    new-array v6, v3, [Ljava/lang/Object;

    aput-object v0, v6, v4

    aput-object p1, v6, v2

    invoke-static {v1, v6}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3e
    :goto_3e
    if-gez v5, :cond_65

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v6, "getDefaultDataPhoneId"

    new-array v7, v4, [Ljava/lang/Class;

    invoke-virtual {p1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_65

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_5a
    .catchall {:try_start_35 .. :try_end_5a} :catchall_5b

    goto :goto_65

    :catchall_5b
    move-exception p0

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v0, p1, v4

    aput-object p0, p1, v2

    invoke-static {v1, p1}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_65
    :goto_65
    new-array p0, v3, [Ljava/lang/Object;

    const-string p1, "getSimSlotIndex simSlotIndex"

    aput-object p1, p0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v2

    const-string p1, "CheckAuthEnableShanYanTask"

    invoke-static {p1, p0}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v3, "android.os.SystemProperties"

    invoke-virtual {p0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v2

    const-string v4, "get"

    invoke-virtual {p0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v2

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_29

    goto :goto_39

    :catchall_29
    move-exception p0

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "getGMSType Exception_e"

    aput-object v4, v3, v2

    aput-object p0, v3, v1

    const-string p0, "ExceptionShanYanTask"

    invoke-static {p0, v3}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, ""

    :goto_39
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "getGMSType type"

    aput-object v4, v3, v2

    aput-object p1, v3, v1

    const-string p1, "simState"

    aput-object p1, v3, v0

    const/4 p1, 0x3

    aput-object p0, v3, p1

    const-string p1, "CheckAuthEnableShanYanTask"

    invoke-static {p1, v3}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public static b(Landroid/content/Context;)I
    .registers 3

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_b

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p0

    goto :goto_15

    :cond_b
    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/i;->i(Landroid/content/Context;)I

    move-result p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_15

    :catch_10
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method private static b(Landroid/content/Context;I)I
    .registers 9

    const/4 v0, -0x1

    if-eq p1, v0, :cond_45

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_5
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const-string v3, "android.telephony.TelephonyManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getNetworkType"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_36

    move v0, p0

    goto :goto_45

    :catchall_36
    move-exception p0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const-string v3, "getNetworkType Exception_e"

    aput-object v3, p1, v1

    aput-object p0, p1, v2

    const-string p0, "ExceptionShanYanTask"

    invoke-static {p0, p1}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_45
    :goto_45
    return v0
.end method

.method private static b(Ljava/lang/String;)I
    .registers 3

    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "lte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_94

    const-string v0, "iwlan"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_94

    const-string v0, "nr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 p0, 0x5

    return p0

    :cond_26
    const-string v0, "unknown"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    return v1

    :cond_2f
    const-string v0, "gprs"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_92

    const-string v0, "edge"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_92

    const-string v0, "cdma"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_92

    const-string v0, "1xrtt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_92

    const-string v0, "iden"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_92

    const-string v0, "umts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "evdo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "hsdpa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "hsupa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "hspa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "ehrpd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "scdma"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_90

    goto :goto_91

    :cond_90
    const/4 v1, 0x3

    :goto_91
    return v1

    :cond_92
    const/4 p0, 0x2

    return p0

    :cond_94
    const/4 p0, 0x4

    return p0
.end method

.method public static c(Landroid/content/Context;)I
    .registers 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x16

    if-lt v0, v2, :cond_3c

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    if-eqz v0, :cond_a5

    :try_start_11
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v2}, Lcom/chuanglan/shanyan_sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v2, "getDefaultDataSubscriptionInfo"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionInfo;

    if-eqz p0, :cond_a5

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p0

    return p0

    :cond_3c
    const-string p0, "android.telephony.SubscriptionManager"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_42} :catch_a1

    :try_start_42
    const-string v0, "getDefaultDataSubId"

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_4a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_42 .. :try_end_4a} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_4a} :catch_a1

    goto :goto_53

    :catch_4b
    :try_start_4b
    const-string v0, "getDefaultDataSubscriptionId"

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    :goto_53
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_62} :catch_a1

    const/16 v4, 0x15

    const-string v5, "getSlotId"

    const/4 v6, 0x1

    if-ne v2, v4, :cond_87

    :try_start_69
    new-array v2, v6, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v1

    invoke-virtual {p0, v5, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v2, v6, [Ljava/lang/Object;

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-virtual {p0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    :goto_82
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_a0

    :cond_87
    new-array v2, v6, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v1

    invoke-virtual {p0, v5, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-virtual {p0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_9f} :catch_a1

    goto :goto_82

    :goto_a0
    return p0

    :catch_a1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a5
    const/4 p0, -0x1

    return p0
.end method

.method private static c(Landroid/content/Context;I)I
    .registers 6

    const/4 v0, 0x0

    if-gez p1, :cond_4

    return v0

    :cond_4
    :try_start_4
    const-string v1, "gsm.network.type"

    invoke-static {p0, v1}, Lcom/chuanglan/shanyan_sdk/utils/i;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gsm.network.type.2"

    invoke-static {p0, v2}, Lcom/chuanglan/shanyan_sdk/utils/i;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(Ljava/lang/String;)Z

    move-result v2
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_43

    const-string v3, ","

    if-nez v2, :cond_2a

    :try_start_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2a
    invoke-static {v1}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(Ljava/lang/String;)Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_33

    move-object p0, v2

    goto :goto_37

    :cond_33
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    :goto_37
    if-eqz p0, :cond_3e

    array-length v1, p0

    if-le v1, p1, :cond_3e

    aget-object v2, p0, p1

    :cond_3e
    invoke-static {v2}, Lcom/chuanglan/shanyan_sdk/utils/i;->b(Ljava/lang/String;)I

    move-result p0
    :try_end_42
    .catchall {:try_start_18 .. :try_end_42} :catchall_43

    return p0

    :catchall_43
    move-exception p0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "getGSMNetwork Exception_e"

    aput-object v1, p1, v0

    const/4 v1, 0x1

    aput-object p0, p1, v1

    const-string p0, "ExceptionShanYanTask"

    invoke-static {p0, p1}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public static d(Landroid/content/Context;)I
    .registers 8

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/chuanglan/shanyan_sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/chuanglan/shanyan_sdk/utils/i;->a(Landroid/content/Context;Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_22

    :try_start_13
    invoke-static {p0, v1}, Lcom/chuanglan/shanyan_sdk/utils/i;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/chuanglan/shanyan_sdk/utils/i;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/i;->a(I)I

    move-result v0

    goto :goto_23

    :catchall_20
    move-exception p0

    goto :goto_62

    :cond_22
    const/4 v0, 0x0

    :goto_23
    if-nez v0, :cond_2b

    if-ltz v1, :cond_2b

    invoke-static {p0, v1}, Lcom/chuanglan/shanyan_sdk/utils/i;->c(Landroid/content/Context;I)I

    move-result v0
    :try_end_2b
    .catchall {:try_start_13 .. :try_end_2b} :catchall_20

    :cond_2b
    const-string v1, "CheckAuthEnableShanYanTask"

    if-nez v0, :cond_52

    :try_start_2f
    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/i;->n(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/i;->a(I)I

    move-result v0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "getNetworkType networkType"

    aput-object v6, v5, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v2

    const-string p0, "network"

    aput-object p0, v5, v3

    const/4 p0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, p0

    invoke-static {v1, v5}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_52
    new-array p0, v3, [Ljava/lang/Object;

    const-string v5, "getNetworkType network"

    aput-object v5, p0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p0, v2

    invoke-static {v1, p0}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_61
    .catchall {:try_start_2f .. :try_end_61} :catchall_20

    return v0

    :goto_62
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "getNetworkType Exception_e"

    aput-object v1, v0, v4

    aput-object p0, v0, v2

    const-string p0, "ExceptionShanYanTask"

    invoke-static {p0, v0}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v4
.end method

.method public static e(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static f(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const-class v2, Landroid/net/ConnectivityManager;

    const-string v3, "getMobileDataEnabled"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_27
    .catchall {:try_start_2 .. :try_end_27} :catchall_28

    return p0

    :catchall_28
    move-exception p0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "getMobileDataEnabled Exception_e"

    aput-object v3, v2, v1

    aput-object p0, v2, v0

    const-string p0, "ExceptionShanYanTask"

    invoke-static {p0, v2}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method private static i(Landroid/content/Context;)I
    .registers 7

    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/i;->c(Landroid/content/Context;)I

    move-result p0

    :try_start_4
    const-string v0, "android.telephony.SubscriptionManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getSubId"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3c

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_33

    check-cast v0, [J

    aget-wide v1, v0, v5

    long-to-int p0, v1

    return p0

    :cond_33
    check-cast v0, [I

    aget p0, v0, v5
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_37} :catch_38

    return p0

    :catch_38
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3c
    return p0
.end method

.method private static m(Landroid/content/Context;)I
    .registers 9

    const/4 v0, 0x2

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_4
    const-string v4, "android.telephony.SubscriptionManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getDefaultDataSubscriptionId"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v5, 0x0

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_5f

    :try_start_22
    const-string v5, "CheckAuthEnableShanYanTask"

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "defaultDataSubscriptionId"

    aput-object v7, v6, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x16

    if-lt v5, v6, :cond_6e

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getDefaultDataSubId"

    new-array v7, v3, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-ne v4, v1, :cond_6e

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v5, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_5b
    .catchall {:try_start_22 .. :try_end_5b} :catchall_5c

    goto :goto_6e

    :catchall_5c
    move-exception p0

    move v1, v4

    goto :goto_60

    :catchall_5f
    move-exception p0

    :goto_60
    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "getDefaultDataSubscriptionId Exception_e"

    aput-object v4, v0, v3

    aput-object p0, v0, v2

    const-string p0, "ExceptionShanYanTask"

    invoke-static {p0, v0}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v4, v1

    :cond_6e
    :goto_6e
    return v4
.end method

.method private static n(Landroid/content/Context;)I
    .registers 4

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    return p0

    :catchall_d
    move-exception p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "getNetworkType2 Exception_e"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "ExceptionShanYanTask"

    invoke-static {p0, v0}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, -0x1

    return p0
.end method
