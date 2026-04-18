.class public final Lcom/yl/lib/privacy_proxy/PrivacyReflectProxy$ReflectProxy;
.super Ljava/lang/Object;
.source "PrivacyReflectProxy.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yl/lib/privacy_proxy/PrivacyReflectProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReflectProxy"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrivacyReflectProxy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacyReflectProxy.kt\ncom/yl/lib/privacy_proxy/PrivacyReflectProxy$ReflectProxy\n*L\n1#1,106:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/yl/lib/privacy_proxy/PrivacyReflectProxy$ReflectProxy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Lcom/yl/lib/privacy_proxy/PrivacyReflectProxy$ReflectProxy;

    invoke-direct {v0}, Lcom/yl/lib/privacy_proxy/PrivacyReflectProxy$ReflectProxy;-><init>()V

    sput-object v0, Lcom/yl/lib/privacy_proxy/PrivacyReflectProxy$ReflectProxy;->INSTANCE:Lcom/yl/lib/privacy_proxy/PrivacyReflectProxy$ReflectProxy;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final varargs invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    const-string v0, "method"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    instance-of v0, p1, Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2b

    .line 38
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getMacAddress"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 39
    array-length v0, p2

    if-nez v0, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    if-eqz v0, :cond_2b

    check-cast p1, Landroid/net/wifi/WifiInfo;

    invoke-static {p1}, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;->getMacAddress(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 43
    :cond_2b
    instance-of v0, p1, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_18a

    .line 44
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getMeid"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    array-length v0, p2

    if-nez v0, :cond_40

    const/4 v0, 0x1

    goto :goto_41

    :cond_40
    const/4 v0, 0x0

    :goto_41
    if-eqz v0, :cond_4a

    .line 45
    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;->getMeid(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 47
    :cond_4a
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "null cannot be cast to non-null type kotlin.Int"

    if-eqz v0, :cond_76

    array-length v0, p2

    if-ne v0, v1, :cond_76

    aget-object v0, p2, v2

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_76

    .line 49
    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 50
    aget-object p0, p2, v2

    if-eqz p0, :cond_70

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 48
    invoke-static {p1, p0}, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;->getMeid(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 50
    :cond_70
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 53
    :cond_76
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "getDeviceId"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    array-length v0, p2

    if-nez v0, :cond_87

    const/4 v0, 0x1

    goto :goto_88

    :cond_87
    const/4 v0, 0x0

    :goto_88
    if-eqz v0, :cond_91

    .line 54
    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;->getDeviceId(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 56
    :cond_91
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bb

    array-length v0, p2

    if-ne v0, v1, :cond_bb

    aget-object v0, p2, v2

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_bb

    .line 58
    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 59
    aget-object p0, p2, v2

    if-eqz p0, :cond_b5

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 57
    invoke-static {p1, p0}, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;->getDeviceId(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 59
    :cond_b5
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 62
    :cond_bb
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "getSubscriberId"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d6

    array-length v0, p2

    if-nez v0, :cond_cc

    const/4 v0, 0x1

    goto :goto_cd

    :cond_cc
    const/4 v0, 0x0

    :goto_cd
    if-eqz v0, :cond_d6

    .line 63
    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;->getSubscriberId(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 65
    :cond_d6
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_100

    array-length v0, p2

    if-ne v0, v1, :cond_100

    aget-object v0, p2, v2

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_100

    .line 67
    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 68
    aget-object p0, p2, v2

    if-eqz p0, :cond_fa

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 66
    invoke-static {p1, p0}, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;->getSubscriberId(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 68
    :cond_fa
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 71
    :cond_100
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "getImei"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11b

    array-length v0, p2

    if-nez v0, :cond_111

    const/4 v0, 0x1

    goto :goto_112

    :cond_111
    const/4 v0, 0x0

    :goto_112
    if-eqz v0, :cond_11b

    .line 72
    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;->getImei(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 74
    :cond_11b
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_145

    array-length v0, p2

    if-ne v0, v1, :cond_145

    aget-object v0, p2, v2

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_145

    .line 76
    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 77
    aget-object p0, p2, v2

    if-eqz p0, :cond_13f

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 75
    invoke-static {p1, p0}, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;->getImei(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 77
    :cond_13f
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 80
    :cond_145
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "getSimSerialNumber"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_160

    array-length v0, p2

    if-nez v0, :cond_156

    const/4 v0, 0x1

    goto :goto_157

    :cond_156
    const/4 v0, 0x0

    :goto_157
    if-eqz v0, :cond_160

    .line 81
    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;->getSimSerialNumber(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 83
    :cond_160
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18a

    array-length v0, p2

    if-ne v0, v1, :cond_18a

    aget-object v0, p2, v2

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_18a

    .line 85
    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 86
    aget-object p0, p2, v2

    if-eqz p0, :cond_184

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 84
    invoke-static {p1, p0}, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;->getSimSerialNumber(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 86
    :cond_184
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 91
    :cond_18a
    instance-of v0, p1, Ljava/net/NetworkInterface;

    if-eqz v0, :cond_1a9

    .line 92
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getHardwareAddress"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a9

    array-length v0, p2

    if-nez v0, :cond_19f

    const/4 v0, 0x1

    goto :goto_1a0

    :cond_19f
    const/4 v0, 0x0

    :goto_1a0
    if-eqz v0, :cond_1a9

    .line 93
    check-cast p1, Ljava/net/NetworkInterface;

    invoke-static {p1}, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;->getHardwareAddress(Ljava/net/NetworkInterface;)[B

    move-result-object p0

    return-object p0

    .line 97
    :cond_1a9
    instance-of v0, p1, Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1c7

    .line 98
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getAddress"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c7

    array-length v0, p2

    if-nez v0, :cond_1bd

    goto :goto_1be

    :cond_1bd
    const/4 v1, 0x0

    :goto_1be
    if-eqz v1, :cond_1c7

    .line 99
    check-cast p1, Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p1}, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;->getAddress(Landroid/bluetooth/BluetoothAdapter;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 103
    :cond_1c7
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
