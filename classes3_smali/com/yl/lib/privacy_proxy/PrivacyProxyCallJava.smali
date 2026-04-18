.class public Lcom/yl/lib/privacy_proxy/PrivacyProxyCallJava;
.super Ljava/lang/Object;
.source "PrivacyProxyCallJava.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yl/lib/privacy_proxy/PrivacyProxyCallJava$PrivacyProxyCallJavaWifiEnabled;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasPrimaryClip(Landroid/content/ClipboardManager;)Z
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "manager"
        }
    .end annotation

    .line 37
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    return v1

    .line 40
    :cond_e
    sget-object v0, Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager;->Companion:Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager$Companion;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/util/PrivacyClipBoardManager$Companion;->isReadClipboardEnable()Z

    move-result v0

    if-nez v0, :cond_24

    .line 41
    sget-object v2, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v3, "hasPrimaryClip"

    const-string v4, "读取系统剪贴板是否有值-拦截"

    const-string v5, ""

    invoke-virtual/range {v2 .. v7}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return v1

    .line 44
    :cond_24
    sget-object v8, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v9, "hasPrimaryClip"

    const-string v10, "读取系统剪贴板是否有值-hasPrimaryClip"

    const-string v11, ""

    invoke-virtual/range {v8 .. v13}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 45
    invoke-virtual {p0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result p0

    return p0
.end method

.method public static isWifiEnabled(Landroid/net/wifi/WifiManager;)Z
    .registers 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "manager"
        }
    .end annotation

    .line 57
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->getBuilder()Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentryBuilder;->isVisitorModel()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 58
    sget-object v2, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->INSTANCE:Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v3, "isWifiEnabled"

    const-string v4, "读取WiFi状态"

    const-string v5, ""

    invoke-virtual/range {v2 .. v7}, Lcom/yl/lib/sentry/hook/util/PrivacyProxyUtil$Util;->doFilePrinter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return v1

    .line 64
    :cond_20
    sget-object v8, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->INSTANCE:Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;

    .line 67
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-wide/32 v12, 0x493e0

    new-instance v14, Lcom/yl/lib/privacy_proxy/PrivacyProxyCallJava$PrivacyProxyCallJavaWifiEnabled;

    invoke-direct {v14, p0}, Lcom/yl/lib/privacy_proxy/PrivacyProxyCallJava$PrivacyProxyCallJavaWifiEnabled;-><init>(Landroid/net/wifi/WifiManager;)V

    const-string v9, "isWifiEnabled"

    const-string v10, "isWifiEnabled"

    .line 64
    invoke-virtual/range {v8 .. v14}, Lcom/yl/lib/sentry/hook/cache/CachePrivacyManager$Manager;->loadWithTimeMemoryCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;JLkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
