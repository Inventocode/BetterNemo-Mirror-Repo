.class public final Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;
.super Ljava/lang/Object;
.source "PrivacyProxyCall.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yl/lib/privacy_proxy/PrivacyProxyCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrivacyProxyCall.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacyProxyCall.kt\ncom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy\n*L\n1#1,851:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;

.field private static objectAndroidIdLock:Ljava/lang/Object;

.field private static objectBluetoothLock:Ljava/lang/Object;

.field private static objectExternalStorageDirectoryLock:Ljava/lang/Object;

.field private static objectHardMacLock:Ljava/lang/Object;

.field private static objectMacLock:Ljava/lang/Object;

.field private static objectSNLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;

    invoke-direct {v0}, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;-><init>()V

    sput-object v0, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;->INSTANCE:Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;

    .line 575
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;->objectMacLock:Ljava/lang/Object;

    .line 576
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;->objectHardMacLock:Ljava/lang/Object;

    .line 577
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;->objectSNLock:Ljava/lang/Object;

    .line 578
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;->objectAndroidIdLock:Ljava/lang/Object;

    .line 579
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;->objectExternalStorageDirectoryLock:Ljava/lang/Object;

    .line 636
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;->objectBluetoothLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAddress(Landroid/bluetooth/BluetoothAdapter;)Ljava/lang/String;
    .registers 12

    const-string v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 645
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v1, "BluetoothAdapter-getAddress"

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 647
    sget-object v1, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_32

    .line 648
    sget-object v3, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, Ljava/lang/String;

    const-string v5, "蓝牙地址-getAddress"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x14

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    const-string p0, ""

    return-object p0

    .line 651
    :cond_32
    sget-object v1, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;->objectBluetoothLock:Ljava/lang/Object;

    monitor-enter v1

    .line 652
    :try_start_35
    sget-object v2, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->INSTANCE:Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;

    .line 653
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v4, "蓝牙地址-getAddress"

    const-string v5, ""

    .line 656
    new-instance v6, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getAddress$$inlined$synchronized$lambda$1;

    invoke-direct {v6, v0, p0}, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getAddress$$inlined$synchronized$lambda$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/bluetooth/BluetoothAdapter;)V

    .line 652
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->loadWithMemoryCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_4a
    .catchall {:try_start_35 .. :try_end_4a} :catchall_4c

    monitor-exit v1

    return-object p0

    :catchall_4c
    move-exception p0

    .line 651
    monitor-exit v1

    throw p0
.end method

.method public static final getAddress(Ljava/net/Inet4Address;)[B
    .registers 11

    const-string v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 670
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    const-string v2, "ip地址-getAddress"

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v0

    const/4 v9, 0x1

    if-ne v0, v9, :cond_26

    .line 671
    sget-object v1, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x14

    const/4 v8, 0x0

    const-string v3, "ip地址-getAddress"

    invoke-static/range {v1 .. v8}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    new-array p0, v9, [B

    return-object p0

    .line 674
    :cond_26
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    .line 675
    sget-object v1, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ip地址-getAddress-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/Inet4Address;->getHostName()Ljava/lang/String;

    move-result-object p0

    const-string v4, ""

    if-eqz p0, :cond_3f

    goto :goto_40

    :cond_3f
    move-object p0, v4

    :goto_40
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " , address is "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4d

    move-object v4, v0

    check-cast v4, Ljava/io/Serializable;

    :cond_4d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    return-object v0
.end method

.method public static final getAddress(Ljava/net/InetAddress;)[B
    .registers 11

    const-string v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 688
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    const-string v2, "ip地址-getAddress"

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v0

    const/4 v9, 0x1

    if-ne v0, v9, :cond_26

    .line 689
    sget-object v1, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x14

    const/4 v8, 0x0

    const-string v3, "ip地址-getAddress"

    invoke-static/range {v1 .. v8}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    new-array p0, v9, [B

    return-object p0

    .line 692
    :cond_26
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 693
    sget-object v1, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ip地址-getAddress-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object p0

    const-string v4, ""

    if-eqz p0, :cond_3f

    goto :goto_40

    :cond_3f
    move-object p0, v4

    :goto_40
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " , address is "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4d

    move-object v4, v0

    check-cast v4, Ljava/io/Serializable;

    :cond_4d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x20

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    return-object v0
.end method

.method public static final getAllCellInfo(Landroid/telephony/TelephonyManager;)Ljava/util/List;
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/TelephonyManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    sget-object v1, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const-string v2, "getAllCellInfo"

    const-string v3, "定位-基站信息"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 317
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    .line 318
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 320
    :cond_28
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final getBSSID(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .registers 16

    const-string v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 446
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 447
    sget-object v2, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x14

    const/4 v9, 0x0

    const-string v3, "getBSSID"

    const-string v4, "getBSSID"

    invoke-static/range {v2 .. v9}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    const-string p0, ""

    return-object p0

    .line 452
    :cond_26
    sget-object v0, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const-string v1, "getBSSID"

    const-string v2, "getBSSID"

    invoke-static/range {v0 .. v7}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 453
    sget-object v8, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->INSTANCE:Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;

    const-wide/32 v12, 0x493e0

    .line 458
    new-instance v14, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getBSSID$1;

    invoke-direct {v14, p0}, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getBSSID$1;-><init>(Landroid/net/wifi/WifiInfo;)V

    const-string v9, "getBSSID"

    const-string v10, "getBSSID"

    const-string v11, ""

    .line 453
    invoke-virtual/range {v8 .. v14}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->loadWithTimeMemoryCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;JLkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static final getBrand()Ljava/lang/String;
    .registers 4

    .line 838
    sget-object v0, Lcom/yl/lib/sentry/hook/util/PrivacyLog;->Log:Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;

    const-string v1, "getBrand"

    invoke-virtual {v0, v1}, Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;->i(Ljava/lang/String;)V

    .line 840
    sget-object v0, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->INSTANCE:Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;

    .line 844
    sget-object v2, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getBrand$1;->INSTANCE:Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getBrand$1;

    const-string v3, ""

    .line 840
    invoke-virtual {v0, v1, v1, v3, v2}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->loadWithMemoryCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static final getConfiguredNetworks(Landroid/net/wifi/WifiManager;)Ljava/util/List;
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    const-string v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 514
    sget-object v1, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const-string v2, "getConfiguredNetworks"

    const-string v3, "前台用户配置的所有网络的列表"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 515
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    .line 516
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 518
    :cond_28
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final getDhcpInfo(Landroid/net/wifi/WifiManager;)Landroid/net/DhcpInfo;
    .registers 10

    const-string v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 496
    sget-object v1, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const-string v2, "getDhcpInfo"

    const-string v3, "DHCP地址"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 497
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    const/4 p0, 0x0

    return-object p0

    .line 500
    :cond_25
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final getExternalStorageDirectory()Ljava/io/File;
    .registers 9

    const-string v8, "externalStorageDirectory"

    .line 820
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 821
    sget-object v0, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const-string v1, "getExternalStorageDirectory"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x14

    const/4 v7, 0x0

    move-object v2, v8

    invoke-static/range {v0 .. v7}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 823
    :cond_1f
    sget-object v0, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;->objectExternalStorageDirectoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 824
    :try_start_22
    sget-object v1, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->INSTANCE:Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;

    const-string v2, "getExternalStorageDirectory"

    .line 827
    new-instance v3, Ljava/io/File;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 828
    sget-object v4, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getExternalStorageDirectory$1$1;->INSTANCE:Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getExternalStorageDirectory$1$1;

    .line 824
    invoke-virtual {v1, v8, v2, v3, v4}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->loadWithMemoryCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 831
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_37
    .catchall {:try_start_22 .. :try_end_37} :catchall_39

    .line 823
    monitor-exit v0

    return-object v1

    :catchall_39
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final getHardwareAddress(Ljava/net/NetworkInterface;)[B
    .registers 12

    const-string v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 617
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v1, "NetworkInterface-getHardwareAddress"

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 619
    sget-object v1, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_32

    .line 620
    sget-object v3, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    .line 621
    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, Ljava/lang/String;

    const-string v5, "mac地址-getHardwareAddress"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x14

    const/4 v10, 0x0

    .line 620
    invoke-static/range {v3 .. v10}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    new-array p0, v2, [B

    return-object p0

    .line 627
    :cond_32
    sget-object v1, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;->objectHardMacLock:Ljava/lang/Object;

    monitor-enter v1

    .line 628
    :try_start_35
    sget-object v2, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->INSTANCE:Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;

    .line 629
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v4, "mac地址-getHardwareAddress"

    const-string v5, ""

    .line 632
    new-instance v6, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getHardwareAddress$$inlined$synchronized$lambda$1;

    invoke-direct {v6, v0, p0}, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getHardwareAddress$$inlined$synchronized$lambda$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/net/NetworkInterface;)V

    .line 628
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->loadWithDiskCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object p0

    .line 632
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz p0, :cond_57

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v0, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_35 .. :try_end_55} :catchall_5f

    monitor-exit v1

    return-object p0

    :cond_57
    :try_start_57
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5f
    .catchall {:try_start_57 .. :try_end_5f} :catchall_5f

    :catchall_5f
    move-exception p0

    .line 627
    monitor-exit v1

    throw p0
.end method

.method public static final getHostAddress(Ljava/net/Inet4Address;)Ljava/lang/String;
    .registers 11

    const-string v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 706
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    const-string v1, ""

    const-string v3, "ip地址-getHostAddress"

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_26

    .line 707
    sget-object v2, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x14

    const/4 v9, 0x0

    const-string v4, "ip地址-getHostAddress"

    invoke-static/range {v2 .. v9}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    return-object v1

    .line 711
    :cond_26
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 712
    sget-object v2, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ip地址-getHostAddress-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/Inet4Address;->getHostName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3d

    goto :goto_3e

    :cond_3d
    move-object p0, v1

    :goto_3e
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " , address is "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_49

    move-object v1, v0

    :cond_49
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    return-object v0
.end method

.method public static final getHostAddress(Ljava/net/InetAddress;)Ljava/lang/String;
    .registers 11

    const-string v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 725
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    const-string v1, ""

    const-string v3, "ip地址-getHostAddress"

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_26

    .line 726
    sget-object v2, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x14

    const/4 v9, 0x0

    const-string v4, "ip地址-getHostAddress"

    invoke-static/range {v2 .. v9}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    return-object v1

    .line 730
    :cond_26
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 731
    sget-object v2, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ip地址-getHostAddress-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3d

    goto :goto_3e

    :cond_3d
    move-object p0, v1

    :goto_3e
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " , address is "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_49

    move-object v1, v0

    :cond_49
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    return-object v0
.end method

.method public static final getInstalledApplications(Landroid/content/pm/PackageManager;I)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    sget-object v1, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const-string v2, "getInstalledApplications"

    const-string v3, "安装包-getInstalledApplications"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 206
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    .line 207
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 209
    :cond_28
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object p0

    const-string p1, "manager.getInstalledApplications(flags)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getInstalledApplicationsAsUser(Landroid/content/pm/PackageManager;II)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    const-string p2, "manager"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    sget-object v0, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const-string v1, "getInstalledApplicationsAsUser"

    const-string v2, "安装包-getInstalledApplicationsAsUser"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 226
    invoke-static {p0, p1}, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;->getInstalledApplications(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstalledPackages(Landroid/content/pm/PackageManager;I)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    sget-object v1, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const-string v2, "getInstalledPackages"

    const-string v3, "安装包-getInstalledPackages"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 118
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    .line 119
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 121
    :cond_28
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p0

    const-string p1, "manager.getInstalledPackages(flags)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getInstalledPackagesAsUser(Landroid/content/pm/PackageManager;II)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    const-string p2, "manager"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    sget-object v0, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const-string v1, "getInstalledPackagesAsUser"

    const-string v2, "安装包-getInstalledPackagesAsUser"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 192
    invoke-static {p0, p1}, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;->getInstalledPackages(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final getLastKnownLocation(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;
    .registers 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 536
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    .line 537
    sget-object v2, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x14

    const/4 v9, 0x0

    const-string v3, "getLastKnownLocation"

    const-string v4, "上一次的位置信息"

    invoke-static/range {v2 .. v9}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    .line 542
    :cond_2a
    sget-object v0, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->INSTANCE:Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;

    const-wide/16 v4, 0x0

    .line 546
    new-instance v6, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getLastKnownLocation$locationStr$1;

    invoke-direct {v6, p0, p1}, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getLastKnownLocation$locationStr$1;-><init>(Landroid/location/LocationManager;Ljava/lang/String;)V

    const/16 v7, 0x8

    const/4 v8, 0x0

    const-string v1, "getLastKnownLocation"

    const-string v2, "上一次的位置信息"

    const-string v3, ""

    .line 542
    invoke-static/range {v0 .. v8}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->loadWithTimeDiskCache$default(Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 550
    sget-object p1, Lcom/yl/lib/sentry/hook/util/PrivacyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyUtil$Util;

    invoke-virtual {p1, p0}, Lcom/yl/lib/sentry/hook/util/PrivacyUtil$Util;->formatLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p0

    return-object p0
.end method

.method public static final getMacAddress(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .registers 12

    const-string v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 589
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v1, "WifiInfo-getMacAddress"

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 591
    sget-object v1, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_32

    .line 592
    sget-object v3, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    .line 593
    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, Ljava/lang/String;

    const-string v5, "mac地址-getMacAddress"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x14

    const/4 v10, 0x0

    .line 592
    invoke-static/range {v3 .. v10}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    const-string p0, ""

    return-object p0

    .line 600
    :cond_32
    sget-object v1, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;->objectMacLock:Ljava/lang/Object;

    monitor-enter v1

    .line 601
    :try_start_35
    sget-object v2, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->INSTANCE:Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;

    .line 602
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v4, "mac地址-getMacAddress"

    const-string v5, ""

    .line 605
    new-instance v6, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getMacAddress$$inlined$synchronized$lambda$1;

    invoke-direct {v6, v0, p0}, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getMacAddress$$inlined$synchronized$lambda$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/net/wifi/WifiInfo;)V

    .line 601
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->loadWithDiskCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object p0
    :try_end_48
    .catchall {:try_start_35 .. :try_end_48} :catchall_4a

    monitor-exit v1

    return-object p0

    :catchall_4a
    move-exception p0

    .line 600
    monitor-exit v1

    throw p0
.end method

.method public static final getPackageInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/VersionedPackage;I)Landroid/content/pm/PackageInfo;
    .registers 13

    const-string v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionedPackage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2d

    .line 137
    sget-object v2, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x14

    const/4 v9, 0x0

    const-string v3, "getPackageInfo"

    const-string v4, "安装包-getPackageInfo"

    invoke-static/range {v2 .. v9}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 142
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Landroid/content/pm/VersionedPackage;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0

    .line 144
    :cond_2d
    sget-object v0, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "安装包-getPackageInfo-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const-string v1, "getPackageInfo"

    .line 144
    invoke-static/range {v0 .. v7}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 148
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Landroid/content/pm/VersionedPackage;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 14

    const-string v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    const-string v1, "安装包-getPackageInfo-"

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3c

    .line 163
    sget-object v3, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x14

    const/4 v10, 0x0

    const-string v4, "getPackageInfo"

    .line 163
    invoke-static/range {v3 .. v10}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 168
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0

    .line 170
    :cond_3c
    sget-object v0, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const-string v1, "getPackageInfo"

    .line 170
    invoke-static/range {v0 .. v7}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 174
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final getPrimaryClip(Landroid/content/ClipboardManager;)Landroid/content/ClipData;
    .registers 12

    const-string v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    const-string v1, ""

    const-string v2, "Label"

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1d

    .line 331
    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p0

    return-object p0

    .line 333
    :cond_1d
    sget-object v0, Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager;->Companion:Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager$Companion;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager$Companion;->isReadClipboardEnable()Z

    move-result v0

    if-nez v0, :cond_39

    .line 334
    sget-object v3, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1c

    const/4 v10, 0x0

    const-string v4, "getPrimaryClip"

    const-string v5, "读取系统剪贴板关闭"

    invoke-static/range {v3 .. v10}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 335
    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p0

    return-object p0

    .line 338
    :cond_39
    sget-object v0, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const-string v1, "getPrimaryClip"

    const-string v2, "剪贴板内容-getPrimaryClip"

    invoke-static/range {v0 .. v7}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 339
    invoke-virtual {p0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object p0

    return-object p0
.end method

.method public static final getPrimaryClipDescription(Landroid/content/ClipboardManager;)Landroid/content/ClipDescription;
    .registers 12

    const-string v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    const-string v1, "text/plain"

    const-string v2, ""

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_22

    .line 350
    new-instance p0, Landroid/content/ClipDescription;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    return-object p0

    .line 353
    :cond_22
    sget-object v0, Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager;->Companion:Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager$Companion;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager$Companion;->isReadClipboardEnable()Z

    move-result v0

    if-nez v0, :cond_43

    .line 354
    sget-object v3, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1c

    const/4 v10, 0x0

    const-string v4, "getPrimaryClipDescription"

    const-string v5, "读取系统剪贴板关闭"

    invoke-static/range {v3 .. v10}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 355
    new-instance p0, Landroid/content/ClipDescription;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    return-object p0

    .line 358
    :cond_43
    sget-object v3, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1c

    const/4 v10, 0x0

    const-string v4, "getPrimaryClipDescription"

    const-string v5, "剪贴板内容-getPrimaryClipDescription"

    invoke-static/range {v3 .. v10}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 359
    invoke-virtual {p0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object p0

    return-object p0
.end method

.method public static final getRecentTasks(Landroid/app/ActivityManager;II)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManager;",
            "II)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    sget-object v1, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const-string v2, "getRecentTasks"

    const-string v3, "最近运行中的任务"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 81
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    .line 82
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 84
    :cond_28
    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final getRunningAppProcesses(Landroid/app/ActivityManager;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    sget-object v1, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const-string v2, "getRunningAppProcesses"

    const-string v3, "当前运行中的进程"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 96
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    .line 97
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 100
    :cond_28
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 103
    :try_start_2c
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    const-string v1, "manager.runningAppProcesses"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_37

    move-object v0, p0

    goto :goto_3b

    :catchall_37
    move-exception p0

    .line 105
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3b
    return-object v0
.end method

.method public static final getRunningTasks(Landroid/app/ActivityManager;I)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManager;",
            "I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget-object v1, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const-string v2, "getRunningTasks"

    const-string v3, "当前运行中的任务"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 63
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    .line 64
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 66
    :cond_28
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final getSSID(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .registers 16

    const-string v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 421
    sget-object v2, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x14

    const/4 v9, 0x0

    const-string v3, "getSSID"

    const-string v4, "SSID"

    invoke-static/range {v2 .. v9}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    const-string p0, ""

    return-object p0

    .line 426
    :cond_26
    sget-object v0, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const-string v1, "getSSID"

    const-string v2, "SSID"

    invoke-static/range {v0 .. v7}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 427
    sget-object v8, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->INSTANCE:Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;

    const-wide/32 v12, 0x493e0

    .line 432
    new-instance v14, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getSSID$1;

    invoke-direct {v14, p0}, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getSSID$1;-><init>(Landroid/net/wifi/WifiInfo;)V

    const-string v9, "getSSID"

    const-string v10, "getSSID"

    const-string v11, ""

    .line 427
    invoke-virtual/range {v8 .. v14}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->loadWithTimeMemoryCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;JLkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static final getScanResults(Landroid/net/wifi/WifiManager;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    const-string v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    .line 473
    sget-object v2, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x14

    const/4 v9, 0x0

    const-string v3, "getScanResults"

    const-string v4, "WIFI扫描结果"

    invoke-static/range {v2 .. v9}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 474
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 478
    :cond_28
    sget-object v0, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->INSTANCE:Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;

    .line 481
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    const-wide/32 v4, 0x493e0

    .line 483
    new-instance v6, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getScanResults$1;

    invoke-direct {v6, p0}, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getScanResults$1;-><init>(Landroid/net/wifi/WifiManager;)V

    const-string v1, "getScanResults"

    const-string v2, "getScanResults"

    .line 478
    invoke-virtual/range {v0 .. v6}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->loadWithTimeMemoryCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;JLkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static final getSerial()Ljava/lang/String;
    .registers 11

    const-string v0, "getSerial"

    .line 792
    sget-object v1, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_23

    .line 793
    sget-object v3, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const-string v4, "getSerial"

    const-string v5, "Serial"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x14

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    const-string v0, ""

    return-object v0

    .line 796
    :cond_23
    sget-object v1, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;->objectSNLock:Ljava/lang/Object;

    monitor-enter v1

    .line 797
    :try_start_26
    sget-object v2, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->INSTANCE:Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;

    const-string v3, "getSerial"

    const-string v4, ""

    .line 801
    sget-object v5, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getSerial$1$1;->INSTANCE:Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getSerial$1$1;

    .line 797
    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->loadWithDiskCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object v0
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_34

    monitor-exit v1

    return-object v0

    :catchall_34
    move-exception v0

    .line 796
    monitor-exit v1

    throw v0
.end method

.method public static final getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    .line 742
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Secure-getString-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const-string v1, "android_id"

    .line 743
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 744
    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 749
    :cond_25
    sget-object v1, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v1

    if-eqz v1, :cond_46

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_46

    .line 750
    sget-object v3, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const-string v4, "getString"

    const-string v5, "系统信息"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/4 v10, 0x0

    move-object v6, p1

    invoke-static/range {v3 .. v10}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    const-string p0, ""

    return-object p0

    .line 758
    :cond_46
    sget-object v1, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;->objectAndroidIdLock:Ljava/lang/Object;

    monitor-enter v1

    .line 759
    :try_start_49
    sget-object v2, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->INSTANCE:Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;

    .line 760
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v4, "getString-系统信息"

    const-string v5, ""

    .line 763
    new-instance v6, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getString$$inlined$synchronized$lambda$1;

    invoke-direct {v6, v0, p0, p1}, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy$getString$$inlined$synchronized$lambda$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 759
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->loadWithDiskCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object p0
    :try_end_5c
    .catchall {:try_start_49 .. :try_end_5c} :catchall_5e

    monitor-exit v1

    return-object p0

    :catchall_5e
    move-exception p0

    .line 758
    monitor-exit v1

    throw p0
.end method

.method public static final getStringSystem(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 780
    invoke-static {p0, p1}, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getText(Landroid/content/ClipboardManager;)Ljava/lang/CharSequence;
    .registers 20

    const-string v0, "manager"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    const-string v2, ""

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_19

    return-object v2

    .line 374
    :cond_19
    sget-object v0, Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager;->Companion:Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager$Companion;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager$Companion;->isReadClipboardEnable()Z

    move-result v0

    if-nez v0, :cond_31

    .line 375
    sget-object v3, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1c

    const/4 v10, 0x0

    const-string v4, "getText"

    const-string v5, "读取系统剪贴板关闭"

    invoke-static/range {v3 .. v10}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    return-object v2

    .line 378
    :cond_31
    sget-object v11, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1c

    const/16 v18, 0x0

    const-string v12, "getText"

    const-string v13, "剪贴板内容-getText"

    invoke-static/range {v11 .. v18}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 379
    invoke-virtual/range {p0 .. p0}, Landroid/content/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static final queryIntentActivities(Landroid/content/pm/PackageManager;Landroid/content/Intent;I)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    const-string v2, "\n"

    if-eqz v1, :cond_26

    const-string v3, "-categories:"

    .line 249
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :cond_26
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "-packageName:"

    if-eqz v1, :cond_37

    .line 252
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    :cond_37
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_4c

    const-string v4, "-data:"

    .line 255
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_4c
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_61

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_61

    .line 258
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_61
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_6b

    const/4 v1, 0x1

    goto :goto_6c

    :cond_6b
    const/4 v1, 0x0

    :goto_6c
    xor-int/2addr v1, v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v7, "packageName"

    .line 267
    invoke-static {v0, v7, v3, v5, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_78

    goto :goto_79

    :cond_78
    move v3, v1

    .line 270
    :goto_79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-合法查询:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    sget-object v5, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "读安装列表-queryIntentActivities"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1c

    const/4 v12, 0x0

    const-string v6, "queryIntentActivities"

    .line 271
    invoke-static/range {v5 .. v12}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 275
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    if-eqz v0, :cond_c5

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v0

    if-ne v0, v4, :cond_c5

    .line 276
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 278
    :cond_c5
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    const-string p1, "manager.queryIntentActivities(intent, flags)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final queryIntentActivityOptions(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/ComponentName;",
            "[",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    sget-object v1, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const-string v2, "queryIntentActivityOptions"

    const-string v3, "读安装列表-queryIntentActivityOptions"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 298
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2d

    .line 299
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 301
    :cond_2d
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    const-string p1, "manager.queryIntentActiv…specifics, intent, flags)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final requestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;JFLandroid/location/LocationListener;)V
    .registers 15
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    sget-object v1, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const-string v2, "requestLocationUpdates"

    const-string v3, "监视精细行动轨迹"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 568
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    return-void

    .line 571
    :cond_2e
    invoke-virtual/range {p0 .. p5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    return-void
.end method

.method public static final setPrimaryClip(Landroid/content/ClipboardManager;Landroid/content/ClipData;)V
    .registers 11

    const-string v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    sget-object v1, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const-string v2, "setPrimaryClip"

    const-string v3, "设置剪贴板内容-setPrimaryClip"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 390
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    return-void

    .line 393
    :cond_29
    invoke-virtual {p0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method public static final setText(Landroid/content/ClipboardManager;Ljava/lang/CharSequence;)V
    .registers 11

    const-string v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 403
    sget-object v1, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const-string v2, "setText"

    const-string v3, "设置剪贴板内容-setText"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 404
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    return-void

    .line 407
    :cond_29
    invoke-virtual {p0, p1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final getObjectAndroidIdLock()Ljava/lang/Object;
    .registers 2

    .line 578
    sget-object v0, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;->objectAndroidIdLock:Ljava/lang/Object;

    return-object v0
.end method

.method public final getObjectBluetoothLock()Ljava/lang/Object;
    .registers 2

    .line 636
    sget-object v0, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;->objectBluetoothLock:Ljava/lang/Object;

    return-object v0
.end method

.method public final getObjectExternalStorageDirectoryLock()Ljava/lang/Object;
    .registers 2

    .line 579
    sget-object v0, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;->objectExternalStorageDirectoryLock:Ljava/lang/Object;

    return-object v0
.end method

.method public final getObjectHardMacLock()Ljava/lang/Object;
    .registers 2

    .line 576
    sget-object v0, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;->objectHardMacLock:Ljava/lang/Object;

    return-object v0
.end method

.method public final getObjectMacLock()Ljava/lang/Object;
    .registers 2

    .line 575
    sget-object v0, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;->objectMacLock:Ljava/lang/Object;

    return-object v0
.end method

.method public final getObjectSNLock()Ljava/lang/Object;
    .registers 2

    .line 577
    sget-object v0, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;->objectSNLock:Ljava/lang/Object;

    return-object v0
.end method

.method public final setObjectAndroidIdLock(Ljava/lang/Object;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 578
    sput-object p1, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;->objectAndroidIdLock:Ljava/lang/Object;

    return-void
.end method

.method public final setObjectBluetoothLock(Ljava/lang/Object;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 636
    sput-object p1, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;->objectBluetoothLock:Ljava/lang/Object;

    return-void
.end method

.method public final setObjectExternalStorageDirectoryLock(Ljava/lang/Object;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 579
    sput-object p1, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;->objectExternalStorageDirectoryLock:Ljava/lang/Object;

    return-void
.end method

.method public final setObjectHardMacLock(Ljava/lang/Object;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 576
    sput-object p1, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;->objectHardMacLock:Ljava/lang/Object;

    return-void
.end method

.method public final setObjectMacLock(Ljava/lang/Object;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 575
    sput-object p1, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;->objectMacLock:Ljava/lang/Object;

    return-void
.end method

.method public final setObjectSNLock(Ljava/lang/Object;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 577
    sput-object p1, Lcom/yl/lib/privacy_proxy/PrivacyProxyCall$Proxy;->objectSNLock:Ljava/lang/Object;

    return-void
.end method
