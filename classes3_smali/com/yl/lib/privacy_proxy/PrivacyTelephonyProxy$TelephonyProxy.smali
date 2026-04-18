.class public final Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;
.super Ljava/lang/Object;
.source "PrivacyTelephonyProxy.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TelephonyProxy"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrivacyTelephonyProxy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacyTelephonyProxy.kt\ncom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy\n*L\n1#1,431:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;

.field private static objectDeviceIdLock:Ljava/lang/Object;

.field private static objectImeiLock:Ljava/lang/Object;

.field private static objectImsiLock:Ljava/lang/Object;

.field private static objectMeidLock:Ljava/lang/Object;

.field private static objectNetworkOperatorLock:Ljava/lang/Object;

.field private static objectPhoneNumberLock:Ljava/lang/Object;

.field private static objectSimLock:Ljava/lang/Object;

.field private static objectSimOperatorLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    new-instance v0, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;

    invoke-direct {v0}, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;-><init>()V

    sput-object v0, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;->INSTANCE:Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;->objectImeiLock:Ljava/lang/Object;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;->objectImsiLock:Ljava/lang/Object;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;->objectMeidLock:Ljava/lang/Object;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;->objectSimOperatorLock:Ljava/lang/Object;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;->objectNetworkOperatorLock:Ljava/lang/Object;

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;->objectDeviceIdLock:Ljava/lang/Object;

    .line 276
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;->objectSimLock:Ljava/lang/Object;

    .line 321
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;->objectPhoneNumberLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDeviceId(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .registers 12

    const-string v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v1, "TelephonyManager-getDeviceId"

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 110
    sget-object v1, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_32

    .line 111
    sget-object v3, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, Ljava/lang/String;

    const-string v5, "IMEI-getDeviceId()"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x14

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    const-string p0, ""

    return-object p0

    .line 115
    :cond_32
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_3b

    const-string p0, ""

    return-object p0

    .line 119
    :cond_3b
    sget-object v1, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->checkPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 120
    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const-string v2, "IMEI-getDeviceId()-无权限"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, v1

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    const-string p0, ""

    return-object p0

    .line 123
    :cond_59
    sget-object v1, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;->objectDeviceIdLock:Ljava/lang/Object;

    monitor-enter v1

    .line 124
    :try_start_5c
    sget-object v2, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->INSTANCE:Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;

    .line 125
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v4, "IMEI-getDeviceId()"

    const-string v5, ""

    .line 128
    new-instance v6, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy$getDeviceId$$inlined$synchronized$lambda$1;

    invoke-direct {v6, v0, p0}, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy$getDeviceId$$inlined$synchronized$lambda$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/telephony/TelephonyManager;)V

    .line 124
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->loadWithDiskCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object p0
    :try_end_6f
    .catchall {:try_start_5c .. :try_end_6f} :catchall_71

    monitor-exit v1

    return-object p0

    :catchall_71
    move-exception p0

    .line 123
    monitor-exit v1

    throw p0
.end method

.method public static final getDeviceId(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;
    .registers 13

    const-string v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TelephonyManager-getDeviceId-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 141
    sget-object v1, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v1

    if-eqz v1, :cond_41

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_41

    .line 142
    sget-object v3, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    .line 143
    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, Ljava/lang/String;

    const-string v5, "IMEI-getDeviceId(I)"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x14

    const/4 v10, 0x0

    .line 142
    invoke-static/range {v3 .. v10}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    const-string p0, ""

    return-object p0

    .line 150
    :cond_41
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_4a

    const-string p0, ""

    return-object p0

    .line 154
    :cond_4a
    sget-object v1, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->checkPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_68

    .line 155
    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const-string v2, "IMEI-getDeviceId()-无权限"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, v1

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    const-string p0, ""

    return-object p0

    .line 158
    :cond_68
    sget-object v1, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;->objectDeviceIdLock:Ljava/lang/Object;

    monitor-enter v1

    .line 159
    :try_start_6b
    sget-object v2, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->INSTANCE:Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;

    .line 160
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v4, "IMEI-getDeviceId(I)"

    const-string v5, ""

    .line 163
    new-instance v6, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy$getDeviceId$$inlined$synchronized$lambda$2;

    invoke-direct {v6, v0, p0, p1}, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy$getDeviceId$$inlined$synchronized$lambda$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/telephony/TelephonyManager;I)V

    .line 159
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->loadWithDiskCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object p0
    :try_end_7e
    .catchall {:try_start_6b .. :try_end_7e} :catchall_80

    monitor-exit v1

    return-object p0

    :catchall_80
    move-exception p0

    .line 158
    monitor-exit v1

    throw p0
.end method

.method public static final getImei(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .registers 12

    const-string v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v1, "TelephonyManager-getImei"

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 222
    sget-object v1, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_32

    .line 223
    sget-object v3, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, Ljava/lang/String;

    const-string v5, "IMEI-getImei()"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x14

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    const-string p0, ""

    return-object p0

    .line 227
    :cond_32
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_3b

    const-string p0, ""

    return-object p0

    .line 231
    :cond_3b
    sget-object v1, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->checkPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 232
    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const-string v2, "IMEI-getImei()-无权限"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, v1

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    const-string p0, ""

    return-object p0

    .line 236
    :cond_59
    sget-object v1, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;->objectImeiLock:Ljava/lang/Object;

    monitor-enter v1

    .line 237
    :try_start_5c
    sget-object v2, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->INSTANCE:Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;

    .line 238
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v4, "IMEI-getImei()"

    const-string v5, ""

    .line 241
    new-instance v6, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy$getImei$$inlined$synchronized$lambda$1;

    invoke-direct {v6, v0, p0}, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy$getImei$$inlined$synchronized$lambda$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/telephony/TelephonyManager;)V

    .line 237
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->loadWithDiskCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object p0
    :try_end_6f
    .catchall {:try_start_5c .. :try_end_6f} :catchall_71

    monitor-exit v1

    return-object p0

    :catchall_71
    move-exception p0

    .line 236
    monitor-exit v1

    throw p0
.end method

.method public static final getImei(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;
    .registers 13

    const-string v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TelephonyManager-getImei-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 253
    sget-object v1, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v1

    if-eqz v1, :cond_41

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_41

    .line 254
    sget-object v3, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, Ljava/lang/String;

    const-string v5, "设备id-getImei(I)"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x14

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    const-string p0, ""

    return-object p0

    .line 258
    :cond_41
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_4a

    const-string p0, ""

    return-object p0

    .line 262
    :cond_4a
    sget-object v1, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->checkPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_68

    .line 263
    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const-string v2, "设备id-getImei(I)-无权限"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, v1

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    const-string p0, ""

    return-object p0

    .line 267
    :cond_68
    sget-object v1, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;->objectImeiLock:Ljava/lang/Object;

    monitor-enter v1

    .line 268
    :try_start_6b
    sget-object v2, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->INSTANCE:Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;

    .line 269
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v4, "IMEI-getImei(I)"

    const-string v5, ""

    .line 272
    new-instance v6, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy$getImei$$inlined$synchronized$lambda$2;

    invoke-direct {v6, v0, p0, p1}, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy$getImei$$inlined$synchronized$lambda$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/telephony/TelephonyManager;I)V

    .line 268
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->loadWithDiskCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object p0
    :try_end_7e
    .catchall {:try_start_6b .. :try_end_7e} :catchall_80

    monitor-exit v1

    return-object p0

    :catchall_80
    move-exception p0

    .line 267
    monitor-exit v1

    throw p0
.end method

.method public static final getLine1Number(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .registers 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v1, "TelephonyManager-getLine1Number"

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 334
    sget-object v1, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_32

    .line 335
    sget-object v3, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, Ljava/lang/String;

    const-string v5, "手机号-getLine1Number"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x14

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    const-string p0, ""

    return-object p0

    .line 338
    :cond_32
    sget-object v1, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;->objectPhoneNumberLock:Ljava/lang/Object;

    monitor-enter v1

    .line 339
    :try_start_35
    sget-object v2, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->INSTANCE:Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;

    .line 340
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v4, "手机号-getLine1Number"

    const-string v5, ""

    .line 343
    new-instance v6, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy$getLine1Number$$inlined$synchronized$lambda$1;

    invoke-direct {v6, v0, p0}, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy$getLine1Number$$inlined$synchronized$lambda$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/telephony/TelephonyManager;)V

    .line 339
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->loadWithDiskCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object p0
    :try_end_48
    .catchall {:try_start_35 .. :try_end_48} :catchall_4a

    monitor-exit v1

    return-object p0

    :catchall_4a
    move-exception p0

    .line 338
    monitor-exit v1

    throw p0
.end method

.method public static final getMeid(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .registers 12

    const-string v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v1, "meid"

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 44
    sget-object v1, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_32

    .line 45
    sget-object v3, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, Ljava/lang/String;

    const-string v5, "移动设备标识符-getMeid()"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x14

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    const-string p0, ""

    return-object p0

    .line 48
    :cond_32
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_3b

    const-string p0, ""

    return-object p0

    .line 52
    :cond_3b
    sget-object v1, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->checkPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_57

    const-string p0, "getMeid"

    const-string v2, "移动设备标识符-getMeid()-无权限"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, v1

    move-object v1, p0

    .line 53
    invoke-static/range {v0 .. v7}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    const-string p0, ""

    return-object p0

    .line 60
    :cond_57
    sget-object v1, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;->objectMeidLock:Ljava/lang/Object;

    monitor-enter v1

    .line 61
    :try_start_5a
    sget-object v2, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->INSTANCE:Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;

    .line 62
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v4, "移动设备标识符-getMeid()"

    const-string v5, ""

    .line 65
    new-instance v6, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy$getMeid$$inlined$synchronized$lambda$1;

    invoke-direct {v6, v0, p0}, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy$getMeid$$inlined$synchronized$lambda$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/telephony/TelephonyManager;)V

    .line 61
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->loadWithDiskCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object p0
    :try_end_6d
    .catchall {:try_start_5a .. :try_end_6d} :catchall_6f

    monitor-exit v1

    return-object p0

    :catchall_6f
    move-exception p0

    .line 60
    monitor-exit v1

    throw p0
.end method

.method public static final getMeid(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;
    .registers 12

    const-string p1, "manager"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v0, "meid"

    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_32

    .line 78
    sget-object v2, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v3, p0

    check-cast v3, Ljava/lang/String;

    const-string v4, "移动设备标识符-getMeid()"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x14

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    const-string p0, ""

    return-object p0

    .line 81
    :cond_32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_3b

    const-string p0, ""

    return-object p0

    .line 84
    :cond_3b
    sget-object v0, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->checkPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "getMeid"

    const-string v2, "移动设备标识符-getMeid()-无权限"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    .line 85
    invoke-static/range {v0 .. v7}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    const-string p0, ""

    return-object p0

    .line 91
    :cond_55
    sget-object v0, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;->objectMeidLock:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_58
    sget-object v1, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->INSTANCE:Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;

    .line 93
    iget-object v2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "移动设备标识符-getMeid(I)"

    const-string v4, ""

    .line 96
    new-instance v5, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy$getMeid$$inlined$synchronized$lambda$2;

    invoke-direct {v5, p1, p0}, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy$getMeid$$inlined$synchronized$lambda$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/telephony/TelephonyManager;)V

    .line 92
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->loadWithDiskCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object p0
    :try_end_6b
    .catchall {:try_start_58 .. :try_end_6b} :catchall_6d

    monitor-exit v0

    return-object p0

    :catchall_6d
    move-exception p0

    .line 91
    monitor-exit v0

    throw p0
.end method

.method public static final getNetworkOperator(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .registers 12

    const-string v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v1, "TelephonyManager-getNetworkOperator"

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 385
    sget-object v1, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_32

    .line 386
    sget-object v3, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    .line 387
    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, Ljava/lang/String;

    const-string v5, "运营商信息-getNetworkOperator()"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x14

    const/4 v10, 0x0

    .line 386
    invoke-static/range {v3 .. v10}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    const-string p0, ""

    return-object p0

    .line 394
    :cond_32
    sget-object v1, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;->objectNetworkOperatorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 395
    :try_start_35
    sget-object v2, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->INSTANCE:Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;

    .line 396
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v4, "运营商信息-getNetworkOperator()"

    const-string v5, ""

    .line 399
    new-instance v6, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy$getNetworkOperator$$inlined$synchronized$lambda$1;

    invoke-direct {v6, v0, p0}, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy$getNetworkOperator$$inlined$synchronized$lambda$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/telephony/TelephonyManager;)V

    .line 395
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->loadWithMemoryCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_4a
    .catchall {:try_start_35 .. :try_end_4a} :catchall_4c

    monitor-exit v1

    return-object p0

    :catchall_4c
    move-exception p0

    .line 394
    monitor-exit v1

    throw p0
.end method

.method public static final getSimOperator(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .registers 12

    const-string v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v1, "TelephonyManager-getSimOperator"

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 357
    sget-object v1, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_32

    .line 358
    sget-object v3, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    .line 359
    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, Ljava/lang/String;

    const-string v5, "运营商信息-getSimOperator()"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x14

    const/4 v10, 0x0

    .line 358
    invoke-static/range {v3 .. v10}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    const-string p0, ""

    return-object p0

    .line 366
    :cond_32
    sget-object v1, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;->objectSimOperatorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 367
    :try_start_35
    sget-object v2, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->INSTANCE:Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;

    .line 368
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v4, "运营商信息-getSimOperator()"

    const-string v5, ""

    .line 371
    new-instance v6, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy$getSimOperator$$inlined$synchronized$lambda$1;

    invoke-direct {v6, v0, p0}, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy$getSimOperator$$inlined$synchronized$lambda$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/telephony/TelephonyManager;)V

    .line 367
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->loadWithMemoryCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_4a
    .catchall {:try_start_35 .. :try_end_4a} :catchall_4c

    monitor-exit v1

    return-object p0

    :catchall_4c
    move-exception p0

    .line 366
    monitor-exit v1

    throw p0
.end method

.method public static final getSimSerialNumber(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .registers 12

    const-string v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v1, "TelephonyManager-getSimSerialNumber"

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 286
    sget-object v1, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_32

    .line 287
    sget-object v3, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    .line 288
    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, Ljava/lang/String;

    const-string v5, "SIM卡-getSimSerialNumber()"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x14

    const/4 v10, 0x0

    .line 287
    invoke-static/range {v3 .. v10}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    const-string p0, ""

    return-object p0

    .line 294
    :cond_32
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_3b

    const-string p0, ""

    return-object p0

    .line 298
    :cond_3b
    sget-object v1, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->checkPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 299
    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const-string v2, "SIM卡-getSimSerialNumber()-无权限"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, v1

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    const-string p0, ""

    return-object p0

    .line 302
    :cond_59
    sget-object v1, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;->objectSimLock:Ljava/lang/Object;

    monitor-enter v1

    .line 303
    :try_start_5c
    sget-object v2, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->INSTANCE:Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;

    .line 304
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v4, "SIM卡-getSimSerialNumber()"

    const-string v5, ""

    .line 307
    new-instance v6, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy$getSimSerialNumber$$inlined$synchronized$lambda$1;

    invoke-direct {v6, v0, p0}, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy$getSimSerialNumber$$inlined$synchronized$lambda$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/telephony/TelephonyManager;)V

    .line 303
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->loadWithDiskCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object p0
    :try_end_6f
    .catchall {:try_start_5c .. :try_end_6f} :catchall_71

    monitor-exit v1

    return-object p0

    :catchall_71
    move-exception p0

    .line 302
    monitor-exit v1

    throw p0
.end method

.method public static final getSimSerialNumber(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;
    .registers 2

    const-string p1, "manager"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    invoke-static {p0}, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;->getSimSerialNumber(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getSimState(Landroid/telephony/TelephonyManager;)I
    .registers 13

    const-string v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 410
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v1, "TelephonyManager-getNetworkOperator"

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 412
    sget-object v1, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_31

    .line 413
    sget-object v4, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    .line 414
    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Ljava/lang/String;

    const-string v6, "运营商信息-getNetworkOperator()"

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x14

    const/4 v11, 0x0

    .line 413
    invoke-static/range {v4 .. v11}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    return v2

    .line 421
    :cond_31
    sget-object v1, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;->objectNetworkOperatorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 422
    :try_start_34
    sget-object v3, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->INSTANCE:Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;

    .line 423
    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string v5, "运营商信息-getNetworkOperator()"

    .line 425
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-wide/32 v7, 0x493e0

    .line 427
    new-instance v9, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy$getSimState$$inlined$synchronized$lambda$1;

    invoke-direct {v9, v0, p0}, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy$getSimState$$inlined$synchronized$lambda$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/telephony/TelephonyManager;)V

    .line 422
    invoke-virtual/range {v3 .. v9}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->loadWithTimeMemoryCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;JLkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0
    :try_end_52
    .catchall {:try_start_34 .. :try_end_52} :catchall_54

    monitor-exit v1

    return p0

    :catchall_54
    move-exception p0

    .line 421
    monitor-exit v1

    throw p0
.end method

.method public static final getSubscriberId(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .registers 12

    const-string v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v1, "TelephonyManager-getSubscriberId"

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 176
    sget-object v1, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_32

    .line 177
    sget-object v3, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    .line 178
    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, Ljava/lang/String;

    const-string v5, "IMSI-getSubscriberId(I)"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x14

    const/4 v10, 0x0

    .line 177
    invoke-static/range {v3 .. v10}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    const-string p0, ""

    return-object p0

    .line 185
    :cond_32
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_3b

    const-string p0, ""

    return-object p0

    .line 189
    :cond_3b
    sget-object v1, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->checkPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 190
    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const-string v2, "IMSI-getSubscriberId(I)-无权限"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, v1

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter$default(Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    const-string p0, ""

    return-object p0

    .line 194
    :cond_59
    sget-object v1, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;->objectImsiLock:Ljava/lang/Object;

    monitor-enter v1

    .line 195
    :try_start_5c
    sget-object v2, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->INSTANCE:Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;

    .line 196
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v4, "IMSI-getSubscriberId()"

    const-string v5, ""

    .line 199
    new-instance v6, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy$getSubscriberId$$inlined$synchronized$lambda$1;

    invoke-direct {v6, v0, p0}, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy$getSubscriberId$$inlined$synchronized$lambda$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/telephony/TelephonyManager;)V

    .line 195
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->loadWithDiskCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object p0
    :try_end_6f
    .catchall {:try_start_5c .. :try_end_6f} :catchall_71

    monitor-exit v1

    return-object p0

    :catchall_71
    move-exception p0

    .line 194
    monitor-exit v1

    throw p0
.end method

.method public static final getSubscriberId(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;
    .registers 2

    const-string p1, "manager"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-static {p0}, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;->getSubscriberId(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getObjectDeviceIdLock()Ljava/lang/Object;
    .registers 2

    .line 100
    sget-object v0, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;->objectDeviceIdLock:Ljava/lang/Object;

    return-object v0
.end method

.method public final getObjectPhoneNumberLock()Ljava/lang/Object;
    .registers 2

    .line 321
    sget-object v0, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;->objectPhoneNumberLock:Ljava/lang/Object;

    return-object v0
.end method

.method public final getObjectSimLock()Ljava/lang/Object;
    .registers 2

    .line 276
    sget-object v0, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;->objectSimLock:Ljava/lang/Object;

    return-object v0
.end method

.method public final setObjectDeviceIdLock(Ljava/lang/Object;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    sput-object p1, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;->objectDeviceIdLock:Ljava/lang/Object;

    return-void
.end method

.method public final setObjectPhoneNumberLock(Ljava/lang/Object;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    sput-object p1, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;->objectPhoneNumberLock:Ljava/lang/Object;

    return-void
.end method

.method public final setObjectSimLock(Ljava/lang/Object;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    sput-object p1, Lcom/yl/lib/privacy_proxy/PrivacyTelephonyProxy$TelephonyProxy;->objectSimLock:Ljava/lang/Object;

    return-void
.end method
