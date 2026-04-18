.class public Lcom/codemao/creativestore/CreativeStoreUtils;
.super Ljava/lang/Object;
.source "CreativeStoreUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativestore/CreativeStoreUtils$ErrorLogCallBack;,
        Lcom/codemao/creativestore/CreativeStoreUtils$EventLogCallBack;,
        Lcom/codemao/creativestore/CreativeStoreUtils$SingletonHoler;
    }
.end annotation


# instance fields
.field private applicationContext:Landroid/app/Application;

.field public bcmVersion:Ljava/lang/String;

.field private bcmVersionInfo:Lcom/codemao/creativestore/bean/BcmVersionInfo;

.field public env:Ljava/lang/String;

.field private errorLogCallBack:Lcom/codemao/creativestore/CreativeStoreUtils$ErrorLogCallBack;

.field private eventLogCallBack:Lcom/codemao/creativestore/CreativeStoreUtils$EventLogCallBack;

.field public ispad:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "release"

    .line 17
    iput-object v0, p0, Lcom/codemao/creativestore/CreativeStoreUtils;->env:Ljava/lang/String;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/codemao/creativestore/CreativeStoreUtils;->ispad:Z

    return-void
.end method

.method private getBcmVersionInfo(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string p2, "webview/version.json"

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    const-class p2, Lcom/codemao/creativestore/bean/BcmVersionInfo;

    invoke-static {p1, p2}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->parse(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/BcmVersionInfo;

    iput-object p1, p0, Lcom/codemao/creativestore/CreativeStoreUtils;->bcmVersionInfo:Lcom/codemao/creativestore/bean/BcmVersionInfo;

    return-void
.end method

.method public static getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;
    .registers 1

    .line 32
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils$SingletonHoler;->access$000()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApplication()Landroid/app/Application;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/codemao/creativestore/CreativeStoreUtils;->applicationContext:Landroid/app/Application;

    return-object v0
.end method

.method public init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/creativestore/CreativeStoreUtils$EventLogCallBack;Lcom/codemao/creativestore/CreativeStoreUtils$ErrorLogCallBack;)Lcom/codemao/creativestore/CreativeStoreUtils;
    .registers 7

    .line 37
    iput-object p1, p0, Lcom/codemao/creativestore/CreativeStoreUtils;->applicationContext:Landroid/app/Application;

    .line 38
    iput-object p2, p0, Lcom/codemao/creativestore/CreativeStoreUtils;->env:Ljava/lang/String;

    .line 39
    iput-boolean p4, p0, Lcom/codemao/creativestore/CreativeStoreUtils;->ispad:Z

    .line 41
    iput-object p6, p0, Lcom/codemao/creativestore/CreativeStoreUtils;->errorLogCallBack:Lcom/codemao/creativestore/CreativeStoreUtils$ErrorLogCallBack;

    .line 42
    iput-object p5, p0, Lcom/codemao/creativestore/CreativeStoreUtils;->eventLogCallBack:Lcom/codemao/creativestore/CreativeStoreUtils$EventLogCallBack;

    .line 44
    :try_start_a
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativestore/CreativeStoreUtils;->getBcmVersionInfo(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    :goto_12
    iget-object p1, p0, Lcom/codemao/creativestore/CreativeStoreUtils;->bcmVersionInfo:Lcom/codemao/creativestore/bean/BcmVersionInfo;

    if-eqz p1, :cond_22

    .line 49
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/BcmVersionInfo;->getBcm_version()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativestore/CreativeStoreUtils;->bcmVersion:Ljava/lang/String;

    .line 50
    iget-object p1, p0, Lcom/codemao/creativestore/CreativeStoreUtils;->bcmVersionInfo:Lcom/codemao/creativestore/bean/BcmVersionInfo;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/BcmVersionInfo;->getUser_db_version()Ljava/lang/String;

    goto :goto_26

    :cond_22
    const-string p1, "0.9.1"

    .line 52
    iput-object p1, p0, Lcom/codemao/creativestore/CreativeStoreUtils;->bcmVersion:Ljava/lang/String;

    :goto_26
    return-object p0
.end method

.method public sendErrorLog(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    .line 85
    iget-object v0, p0, Lcom/codemao/creativestore/CreativeStoreUtils;->errorLogCallBack:Lcom/codemao/creativestore/CreativeStoreUtils$ErrorLogCallBack;

    if-eqz v0, :cond_7

    .line 86
    invoke-interface {v0, p1, p2}, Lcom/codemao/creativestore/CreativeStoreUtils$ErrorLogCallBack;->onError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_7
    return-void
.end method

.method public sendErrorLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 91
    iget-object v0, p0, Lcom/codemao/creativestore/CreativeStoreUtils;->errorLogCallBack:Lcom/codemao/creativestore/CreativeStoreUtils$ErrorLogCallBack;

    if-eqz v0, :cond_7

    .line 92
    invoke-interface {v0, p1, p2}, Lcom/codemao/creativestore/CreativeStoreUtils$ErrorLogCallBack;->onError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public sendEventLog(Ljava/lang/String;)V
    .registers 4

    .line 97
    iget-object v0, p0, Lcom/codemao/creativestore/CreativeStoreUtils;->errorLogCallBack:Lcom/codemao/creativestore/CreativeStoreUtils$ErrorLogCallBack;

    if-eqz v0, :cond_9

    const-string v1, "creation event"

    .line 98
    invoke-interface {v0, v1, p1}, Lcom/codemao/creativestore/CreativeStoreUtils$ErrorLogCallBack;->onError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/codemao/creativestore/CreativeStoreUtils;->eventLogCallBack:Lcom/codemao/creativestore/CreativeStoreUtils$EventLogCallBack;

    if-eqz v0, :cond_7

    .line 74
    invoke-interface {v0, p1, p2, p3}, Lcom/codemao/creativestore/CreativeStoreUtils$EventLogCallBack;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_7
    return-void
.end method
