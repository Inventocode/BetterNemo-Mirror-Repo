.class Lcom/tencent/smtt/sdk/x;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tencent/smtt/export/external/DexLoader;


# direct methods
.method public constructor <init>(Lcom/tencent/smtt/export/external/DexLoader;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Landroid/webkit/ValueCallback;)I
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    move-object v0, p0

    const-class v1, Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v1, -0x67

    return v1

    :cond_c
    const/16 v2, -0x68

    const-string v3, "startMiniQB"

    const-string v4, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    if-nez p4, :cond_75

    const/4 v10, 0x4

    new-array v11, v10, [Ljava/lang/Class;

    const-class v12, Landroid/content/Context;

    aput-object v12, v11, v8

    aput-object v1, v11, v7

    const-class v12, Ljava/util/Map;

    aput-object v12, v11, v6

    const-class v12, Landroid/webkit/ValueCallback;

    aput-object v12, v11, v5

    new-array v10, v10, [Ljava/lang/Object;

    aput-object p1, v10, v8

    aput-object p2, v10, v7

    aput-object p3, v10, v6

    aput-object p5, v10, v5

    invoke-virtual {v9, v4, v3, v11, v10}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_55

    iget-object v9, v0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    new-array v10, v5, [Ljava/lang/Class;

    const-class v11, Landroid/content/Context;

    aput-object v11, v10, v8

    aput-object v1, v10, v7

    const-class v11, Ljava/util/Map;

    aput-object v11, v10, v6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v8

    aput-object p2, v5, v7

    aput-object p3, v5, v6

    invoke-virtual {v9, v4, v3, v10, v5}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    :cond_55
    if-nez v9, :cond_6b

    iget-object v5, v0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Landroid/content/Context;

    aput-object v10, v9, v8

    aput-object v1, v9, v7

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v8

    aput-object p2, v1, v7

    invoke-virtual {v5, v4, v3, v9, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    :cond_6b
    if-nez v9, :cond_6e

    return v2

    :cond_6e
    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_75
    new-array v10, v5, [Ljava/lang/Class;

    const-class v11, Landroid/content/Context;

    aput-object v11, v10, v8

    aput-object v1, v10, v7

    aput-object v1, v10, v6

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v8

    aput-object p2, v1, v7

    aput-object p4, v1, v6

    invoke-virtual {v9, v4, v3, v10, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8e

    return v2

    :cond_8e
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public a(Landroid/content/Context;)Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;
    .registers 10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string v3, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v5, "createSDKWebview"

    invoke-virtual {v0, v3, v5, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x145

    const/4 v2, 0x0

    if-nez v0, :cond_50

    :try_start_1b
    iget-object v3, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v5, "com.tencent.tbs.tbsshell.TBSShell"

    const-string v6, "getLoadFailureDetails"

    new-array v7, v4, [Ljava/lang/Class;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6, v7, v4}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_39

    instance-of v4, v3, Ljava/lang/Throwable;

    if-eqz v4, :cond_39

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v4

    move-object v5, v3

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v4, p1, v1, v5}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    :cond_39
    if-eqz v3, :cond_4d

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_4d

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, v1, v5}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    :cond_4d
    move-object v0, v2

    move-object v3, v0

    goto :goto_72

    :cond_50
    move-object v3, v0

    check-cast v3, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_53} :catch_6d

    if-eqz v3, :cond_72

    :try_start_55
    invoke-interface {v3}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_72

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "x5webview.getView is null!"

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, v1, v5}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_69} :catch_6b

    move-object v0, v2

    goto :goto_72

    :catch_6b
    move-exception p1

    goto :goto_6f

    :catch_6d
    move-exception p1

    move-object v3, v2

    :goto_6f
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_72
    :goto_72
    if-nez v0, :cond_75

    return-object v2

    :cond_75
    return-object v3
.end method

.method public a(Ljava/lang/String;Z)Ljava/io/InputStream;
    .registers 9

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v5

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string p2, "getCacheFile"

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_25

    const/4 p1, 0x0

    return-object p1

    :cond_25
    check-cast p1, Ljava/io/InputStream;

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "getCookie"

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1a

    const/4 p1, 0x0

    return-object p1

    :cond_1a
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object v0, v3, v5

    const/4 v6, 0x2

    aput-object v0, v3, v6

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v4

    aput-object p2, v0, v5

    aput-object p3, v0, v6

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string p2, "urlUtilComposeSearchUrl"

    invoke-virtual {v1, p1, p2, v3, v0}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_24

    const/4 p1, 0x0

    return-object p1

    :cond_24
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public a(Landroid/content/Context;Z)V
    .registers 14

    const-string v0, "desktop"

    const-string v1, " tbsWizard clearAllX5Cache"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "clearAllCache"

    const-string v1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_20

    iget-object p2, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {p2, v1, v0, v4, v2}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c0

    :cond_20
    :try_start_20
    iget-object v4, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v5, v2

    invoke-virtual {v4, v1, v0, v6, v5}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_3a} :catch_3c

    goto/16 :goto_c0

    :catch_3c
    nop

    iget-object p2, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    new-array v0, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v0, v3

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v3

    const-string v5, "webViewDatabaseClearUsernamePassword"

    invoke-virtual {p2, v1, v5, v0, v4}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    new-array v0, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v0, v3

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v3

    const-string v5, "webViewDatabaseClearHttpAuthUsernamePassword"

    invoke-virtual {p2, v1, v5, v0, v4}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    new-array v0, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v0, v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string p1, "webViewDatabaseClearFormData"

    invoke-virtual {p2, v1, p1, v0, v2}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    new-array p2, v3, [Ljava/lang/Object;

    const-string v0, "com.tencent.smtt.webkit.CacheManager"

    const-string v2, "removeAllCacheFiles"

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v2, v4, p2}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    new-array p2, v3, [Ljava/lang/Object;

    const-string v2, "clearLocalStorage"

    invoke-virtual {p1, v0, v2, v4, p2}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    new-array p2, v3, [Ljava/lang/Object;

    const-string v0, "com.tencent.smtt.net.http.DnsManager"

    const-string v2, "getInstance"

    invoke-virtual {p1, v0, v2, v4, p2}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_9f

    iget-object v5, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v9, 0x0

    new-array v10, v3, [Ljava/lang/Object;

    const-string v7, "com.tencent.smtt.net.http.DnsManager"

    const-string v8, "removeAllDns"

    invoke-virtual/range {v5 .. v10}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9f
    iget-object p1, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    new-array p2, v3, [Ljava/lang/Object;

    const-string v0, "com.tencent.smtt.webkit.SmttPermanentPermissions"

    invoke-virtual {p1, v0, v2, v4, p2}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_b7

    iget-object v5, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v9, 0x0

    new-array v10, v3, [Ljava/lang/Object;

    const-string v7, "com.tencent.smtt.webkit.SmttPermanentPermissions"

    const-string v8, "clearAllPermanentPermission"

    invoke-virtual/range {v5 .. v10}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b7
    iget-object p1, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    new-array p2, v3, [Ljava/lang/Object;

    const-string v0, "removeAllIcons"

    invoke-virtual {p1, v1, v0, v4, p2}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_c0
    return-void
.end method

.method public a(Landroid/webkit/ValueCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Ljava/util/Map;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/webkit/ValueCallback;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "webStorageGetOrigins"

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .registers 10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v5

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string p2, "webStorageSetQuotaForOrigin"

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/webkit/ValueCallback;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string p2, "webStorageGetUsageForOrigin"

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/IconListener;)V
    .registers 9

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Lcom/tencent/smtt/export/external/interfaces/IconListener;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string p2, "requestIconForPageUrl"

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Z)V
    .registers 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "webview_setWebContentsDebuggingEnabled"

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    invoke-virtual {v0}, Lcom/tencent/smtt/export/external/DexLoader;->getClassLoader()Ldalvik/system/DexClassLoader;

    move-result-object v0

    const-string v1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    invoke-virtual {v0, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "canUseX5"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2b

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_32

    return v0

    :cond_2b
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :catchall_32
    move-exception v0

    throw v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string p2, "canOpenFile"

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/Boolean;

    if-eqz p2, :cond_28

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_28
    return v4
.end method

.method public a(Ljava/util/Map;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/util/Map;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "cookieManager_setCookies"

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_19

    return v4

    :cond_19
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public a([B)[B
    .registers 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "urlUtilDecode"

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1a

    const/4 p1, 0x0

    return-object p1

    :cond_1a
    check-cast p1, [B

    return-object p1
.end method

.method public a(ILandroid/content/Intent;)[Landroid/net/Uri;
    .registers 9

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/content/Intent;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string p2, "parseFileChooserResult"

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_25

    const/4 p1, 0x0

    return-object p1

    :cond_25
    check-cast p1, [Landroid/net/Uri;

    return-object p1
.end method

.method public b()Lcom/tencent/smtt/export/external/DexLoader;
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object v0, v3, v5

    const/4 v6, 0x2

    aput-object v0, v3, v6

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v4

    aput-object p2, v0, v5

    aput-object p3, v0, v6

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string p2, "urlUtilGuessFileName"

    invoke-virtual {v1, p1, p2, v3, v0}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_24

    const/4 p1, 0x0

    return-object p1

    :cond_24
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public b(Landroid/webkit/ValueCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/webkit/ValueCallback;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "geolocationPermissionsGetOrigins"

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "openIconDB"

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/webkit/ValueCallback;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string p2, "webStorageGetQuotaForOrigin"

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Landroid/content/Context;)Z
    .registers 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "webViewDatabaseHasUsernamePassword"

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_19

    return v4

    :cond_19
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public c()Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v4, "cacheDisabled"

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/content/Context;)V
    .registers 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "webViewDatabaseClearUsernamePassword"

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "retainIconForPageUrl"

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/webkit/ValueCallback;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string p2, "geolocationPermissionsGetAllowed"

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "releaseIconForPageUrl"

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public d()Z
    .registers 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v5, "cookieManager_acceptCookie"

    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    return v1

    :cond_12
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public d(Landroid/content/Context;)Z
    .registers 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "webViewDatabaseHasHttpAuthUsernamePassword"

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_19

    return v4

    :cond_19
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public e()V
    .registers 6

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v4, "cookieManager_removeAllCookie"

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public e(Landroid/content/Context;)V
    .registers 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "webViewDatabaseClearHttpAuthUsernamePassword"

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "webStorageDeleteOrigin"

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v4, "getMiniQBVersion"

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    return-object v0

    :cond_13
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "geolocationPermissionsClear"

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public f(Landroid/content/Context;)Z
    .registers 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "webViewDatabaseHasFormData"

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_19

    return v4

    :cond_19
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public g()Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v4, "getCachFileBaseDir"

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public g(Landroid/content/Context;)V
    .registers 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "webViewDatabaseClearFormData"

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "geolocationPermissionsAllow"

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public h(Landroid/content/Context;)Lcom/tencent/smtt/export/external/interfaces/IX5DateSorter;
    .registers 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "createDateSorter"

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1a

    const/4 p1, 0x0

    return-object p1

    :cond_1a
    check-cast p1, Lcom/tencent/smtt/export/external/interfaces/IX5DateSorter;

    return-object p1
.end method

.method public h(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "mimeTypeMapGetFileExtensionFromUrl"

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1a

    const/4 p1, 0x0

    return-object p1

    :cond_1a
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public h()Z
    .registers 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v5, "cookieManager_hasCookies"

    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    return v1

    :cond_12
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public i()Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient;
    .registers 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v5, "createDefaultX5WebChromeClient"

    invoke-virtual {v0, v4, v5, v3, v2}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_16

    return-object v1

    :cond_16
    check-cast v0, Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient;

    return-object v0
.end method

.method public i(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "getDefaultUserAgent"

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1d

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method public i(Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "mimeTypeMapHasMimeType"

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_19

    return v4

    :cond_19
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public j()Lcom/tencent/smtt/export/external/interfaces/IX5WebViewClient;
    .registers 6

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v4, "createDefaultX5WebViewClient"

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    return-object v0

    :cond_13
    check-cast v0, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewClient;

    return-object v0
.end method

.method public j(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "mimeTypeMapGetMimeTypeFromExtension"

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1a

    const/4 p1, 0x0

    return-object p1

    :cond_1a
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public k()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;
    .registers 6

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v4, "createDefaultX5WebChromeClientExtension"

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    return-object v0

    :cond_13
    check-cast v0, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    return-object v0
.end method

.method public k(Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "mimeTypeMapHasExtension"

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_19

    return v4

    :cond_19
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public l(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "mimeTypeMapGetMimeTypeFromExtension"

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1a

    const/4 p1, 0x0

    return-object p1

    :cond_1a
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public l()V
    .registers 6

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "removeAllIcons"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public m(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "urlUtilGuessUrl"

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1a

    const/4 p1, 0x0

    return-object p1

    :cond_1a
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public m()V
    .registers 6

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "closeIconDB"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public n()V
    .registers 6

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "webStorageDeleteAllData"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public n(Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "urlUtilIsAssetUrl"

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_19

    return v4

    :cond_19
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public o()V
    .registers 6

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "geolocationPermissionsClearAll"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public o(Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "urlUtilIsCookielessProxyUrl"

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_19

    return v4

    :cond_19
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public p()V
    .registers 6

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v4, "closeFileReader"

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public p(Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "urlUtilIsFileUrl"

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_19

    return v4

    :cond_19
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public q()Lcom/tencent/smtt/export/external/interfaces/IX5CoreServiceWorkerController;
    .registers 6

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v4, "getServiceWorkerController"

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/tencent/smtt/export/external/interfaces/IX5CoreServiceWorkerController;

    if-eqz v1, :cond_16

    check-cast v0, Lcom/tencent/smtt/export/external/interfaces/IX5CoreServiceWorkerController;

    return-object v0

    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public q(Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "urlUtilIsAboutUrl"

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_19

    return v4

    :cond_19
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public r(Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "urlUtilIsDataUrl"

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_19

    return v4

    :cond_19
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public s(Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "urlUtilIsJavaScriptUrl"

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_19

    return v4

    :cond_19
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public t(Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "urlUtilIsHttpUrl"

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_19

    return v4

    :cond_19
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public u(Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "urlUtilIsHttpsUrl"

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_19

    return v4

    :cond_19
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public v(Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "urlUtilIsNetworkUrl"

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_19

    return v4

    :cond_19
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public w(Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "urlUtilIsContentUrl"

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_19

    return v4

    :cond_19
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public x(Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "urlUtilIsValidUrl"

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_19

    return v4

    :cond_19
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public y(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/x;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "urlUtilStripAnchor"

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1a

    const/4 p1, 0x0

    return-object p1

    :cond_1a
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
