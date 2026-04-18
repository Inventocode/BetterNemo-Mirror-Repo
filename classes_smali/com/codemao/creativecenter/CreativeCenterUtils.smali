.class public Lcom/codemao/creativecenter/CreativeCenterUtils;
.super Ljava/lang/Object;
.source "CreativeCenterUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/CreativeCenterUtils$ErrorLogCallBack;,
        Lcom/codemao/creativecenter/CreativeCenterUtils$PermissonNoticeResultHandler;,
        Lcom/codemao/creativecenter/CreativeCenterUtils$PermissionNoticeCallBack;,
        Lcom/codemao/creativecenter/CreativeCenterUtils$EventLogCallBack;,
        Lcom/codemao/creativecenter/CreativeCenterUtils$SingletonHoler;
    }
.end annotation


# instance fields
.field private applicationContext:Landroid/app/Application;

.field public baseBasePath:Ljava/lang/String;

.field public baseCloudMaterialPath:Ljava/lang/String;

.field public baseCloudMaterialPathChina:Ljava/lang/String;

.field public baseImageMaterialPath:Ljava/lang/String;

.field public basePath:Ljava/lang/String;

.field public baseSoundMaterialPath:Ljava/lang/String;

.field public baseThemePath:Ljava/lang/String;

.field private currentWorkId:Ljava/lang/String;

.field public env:Ljava/lang/String;

.field private errorLogCallBack:Lcom/codemao/creativecenter/CreativeCenterUtils$ErrorLogCallBack;

.field private eventLogCallBack:Lcom/codemao/creativecenter/CreativeCenterUtils$EventLogCallBack;

.field public origin:Ljava/lang/String;

.field public permissionNoticeCallBack:Lcom/codemao/creativecenter/CreativeCenterUtils$PermissionNoticeCallBack;

.field public rxBleClient:Lcom/polidea/rxandroidble2_codemao/RxBleClient;

.field private ticket:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userToken:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$99TLK-jGl6qO9ry-2pJ0dm2mut8(Lcom/codemao/creativecenter/CreativeCenterUtils;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/creativecenter/CreativeCenterUtils;->lambda$init$0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "release"

    .line 58
    iput-object v0, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->env:Ljava/lang/String;

    const-string v0, "cmnemo"

    .line 59
    iput-object v0, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->origin:Ljava/lang/String;

    const-string v0, "https://static.codemao.cn/nemo/22/"

    .line 75
    iput-object v0, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->baseCloudMaterialPathChina:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->baseCloudMaterialPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/CreativeCenterUtils;Lcom/codemao/creativecenter/utils/down/MaterialTask;)V
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->moveThemeMaterial(Lcom/codemao/creativecenter/utils/down/MaterialTask;)V

    return-void
.end method

.method public static checkBaseMaterialsFilesExists()Z
    .registers 2

    .line 129
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/creativecenter/CreativeCenterUtils;->baseBasePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 131
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1d

    if-eqz v1, :cond_1d

    array-length v0, v1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return v0
.end method

.method public static getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;
    .registers 1

    .line 85
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils$SingletonHoler;->access$000()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$init$0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6

    if-nez p3, :cond_7

    .line 219
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 221
    :cond_7
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getCurrentWorkId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "work_id"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v0, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->eventLogCallBack:Lcom/codemao/creativecenter/CreativeCenterUtils$EventLogCallBack;

    invoke-interface {v0, p1, p2, p3}, Lcom/codemao/creativecenter/CreativeCenterUtils$EventLogCallBack;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private moveThemeMaterial(Lcom/codemao/creativecenter/utils/down/MaterialTask;)V
    .registers 14

    const-string v0, "/"

    .line 105
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/down/MaterialTask;->getUnZipInfo()Lcom/codemao/creativecenter/utils/zip/UnzipInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativecenter/utils/zip/UnzipInfo;->getDestPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/down/MaterialTask;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 108
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2c
    if-ge v5, v3, :cond_88

    aget-object v6, v2, v5

    .line 109
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 110
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_3c
    if-ge v8, v7, :cond_85

    aget-object v9, v6, v8

    .line 111
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->baseImageMaterialPath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 112
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v10}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->moveThemeMaterial(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3c

    .line 115
    :cond_5f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->baseThemePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/down/MaterialTask;->getUuid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 116
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->moveThemeMaterial(Ljava/lang/String;Ljava/lang/String;)V

    :cond_85
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    .line 119
    :cond_88
    invoke-static {v1}, Lcom/codemao/team/download/FileUtils;->delete(Ljava/lang/String;)Z

    .line 120
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/down/MaterialTask;->getDownloadFile()Lcom/codemao/creativecenter/utils/down/DownloadFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/down/DownloadFile;->getSavePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/team/download/FileUtils;->delete(Ljava/lang/String;)Z

    .line 121
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;->getInstance()Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/down/MaterialTask;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;->addThemeFile(Ljava/lang/String;)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a1} :catch_a1

    :catch_a1
    return-void
.end method


# virtual methods
.method public getApplication()Landroid/app/Application;
    .registers 2

    .line 293
    iget-object v0, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->applicationContext:Landroid/app/Application;

    return-object v0
.end method

.method public getBaseMaterialInfo()V
    .registers 3

    .line 135
    const-class v0, Lcom/codemao/creativecenter/service/ThemeMaterialApiService;

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->checkBaseMaterialsFilesExists()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 136
    invoke-static {}, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->getInstance()Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->setError(Z)V

    return-void

    .line 139
    :cond_11
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/creativecenter/utils/CreativeNetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 140
    invoke-static {}, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->getInstance()Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->setError(Z)V

    .line 141
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/event/BaseMaterialDownloadErrorEvent;

    invoke-direct {v1}, Lcom/codemao/creativecenter/event/BaseMaterialDownloadErrorEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 145
    :cond_34
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->get()Lcom/codemao/creativecenter/http/CreativeRetrofitManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->isInternational()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 146
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->get()Lcom/codemao/creativecenter/http/CreativeRetrofitManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/service/ThemeMaterialApiService;

    invoke-interface {v0}, Lcom/codemao/creativecenter/service/ThemeMaterialApiService;->getBaseMaterialInternation()Lio/reactivex/Observable;

    move-result-object v0

    goto :goto_5b

    .line 147
    :cond_4d
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->get()Lcom/codemao/creativecenter/http/CreativeRetrofitManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/service/ThemeMaterialApiService;

    invoke-interface {v0}, Lcom/codemao/creativecenter/service/ThemeMaterialApiService;->getBaseMaterial()Lio/reactivex/Observable;

    move-result-object v0

    .line 149
    :goto_5b
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeThreadTransformer;->create()Lcom/codemao/creativecenter/http/CreativeThreadTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/CreativeCenterUtils$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/CreativeCenterUtils$1;-><init>(Lcom/codemao/creativecenter/CreativeCenterUtils;)V

    .line 150
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getBcmVersion()Ljava/lang/String;
    .registers 2

    .line 413
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/creativestore/CreativeStoreUtils;->bcmVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentWorkId()Ljava/lang/String;
    .registers 2

    .line 350
    iget-object v0, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->currentWorkId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "0"

    return-object v0

    .line 353
    :cond_b
    iget-object v0, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->currentWorkId:Ljava/lang/String;

    return-object v0
.end method

.method public getSaveImageFoldName()Ljava/lang/String;
    .registers 3

    .line 406
    iget-object v0, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->userId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->userId:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_16

    .line 409
    :cond_13
    iget-object v0, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->userId:Ljava/lang/String;

    return-object v0

    :cond_16
    :goto_16
    const-string v0, "unlogin"

    return-object v0
.end method

.method public getTicket()Ljava/lang/String;
    .registers 2

    .line 379
    iget-object v0, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->ticket:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .line 402
    iget-object v0, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserToken()Ljava/lang/String;
    .registers 2

    .line 366
    iget-object v0, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->userToken:Ljava/lang/String;

    return-object v0
.end method

.method public hasSetUserId()Z
    .registers 3

    .line 398
    iget-object v0, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->userId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->userId:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/creativecenter/CreativeCenterUtils$PermissionNoticeCallBack;)Lcom/codemao/creativecenter/CreativeCenterUtils;
    .registers 13

    .line 174
    iput-object p1, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->applicationContext:Landroid/app/Application;

    .line 175
    iput-object p2, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->env:Ljava/lang/String;

    .line 176
    iput-object p3, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->origin:Ljava/lang/String;

    .line 177
    iput-object p5, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->permissionNoticeCallBack:Lcom/codemao/creativecenter/CreativeCenterUtils$PermissionNoticeCallBack;

    .line 178
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->get()Lcom/codemao/creativecenter/http/CreativeRetrofitManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->init()V

    .line 179
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, "/"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "nemo_users_db"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->basePath:Ljava/lang/String;

    .line 180
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p5, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->basePath:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "res/drawable/"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->baseImageMaterialPath:Ljava/lang/String;

    .line 181
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p5, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->basePath:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "res/raw/"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->baseSoundMaterialPath:Ljava/lang/String;

    .line 182
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p5, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->basePath:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "theme/"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->baseThemePath:Ljava/lang/String;

    .line 183
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p5, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->basePath:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "base/"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->baseBasePath:Ljava/lang/String;

    .line 184
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->isPad()Z

    move-result p4

    .line 185
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object p5

    iput-boolean p4, p5, Lcom/codemao/creativestore/CreativeStoreUtils;->ispad:Z

    .line 187
    invoke-virtual {p0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getBaseMaterialInfo()V

    .line 188
    invoke-static {}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->getInstance()Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;

    move-result-object p5

    new-instance v0, Lcom/codemao/creativecenter/CreativeCenterUtils$2;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/CreativeCenterUtils$2;-><init>(Lcom/codemao/creativecenter/CreativeCenterUtils;)V

    invoke-virtual {p5, v0}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->setStatusListener(Lcom/codemao/creativecenter/utils/down/DownloadQueueStatusListener;)V

    .line 215
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object p5

    iput-boolean p4, p5, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    .line 216
    sget-object p5, Lcom/codemao/midi/util/MidiConfigManager;->INSTANCE:Lcom/codemao/midi/util/MidiConfigManager;

    invoke-virtual {p5, p4}, Lcom/codemao/midi/util/MidiConfigManager;->setPad(Z)V

    .line 217
    sget-object p5, Lcom/codemao/midi/util/MidiStatisticsUtils;->INSTANCE:Lcom/codemao/midi/util/MidiStatisticsUtils;

    new-instance v0, Lcom/codemao/creativecenter/CreativeCenterUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/CreativeCenterUtils$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/creativecenter/CreativeCenterUtils;)V

    invoke-virtual {p5, v0}, Lcom/codemao/midi/util/MidiStatisticsUtils;->init(Lcom/codemao/midi/util/StatisticsEventListener;)V

    .line 225
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v0

    new-instance v5, Lcom/codemao/creativecenter/CreativeCenterUtils$3;

    invoke-direct {v5, p0}, Lcom/codemao/creativecenter/CreativeCenterUtils$3;-><init>(Lcom/codemao/creativecenter/CreativeCenterUtils;)V

    new-instance v6, Lcom/codemao/creativecenter/CreativeCenterUtils$4;

    invoke-direct {v6, p0}, Lcom/codemao/creativecenter/CreativeCenterUtils$4;-><init>(Lcom/codemao/creativecenter/CreativeCenterUtils;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/codemao/creativestore/CreativeStoreUtils;->init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/creativestore/CreativeStoreUtils$EventLogCallBack;Lcom/codemao/creativestore/CreativeStoreUtils$ErrorLogCallBack;)Lcom/codemao/creativestore/CreativeStoreUtils;

    .line 241
    new-instance p2, Lcom/codemao/creativecenter/base/CreativeLifecycleCallbacks;

    new-instance p3, Lcom/codemao/creativecenter/CreativeCenterUtils$5;

    invoke-direct {p3, p0}, Lcom/codemao/creativecenter/CreativeCenterUtils$5;-><init>(Lcom/codemao/creativecenter/CreativeCenterUtils;)V

    invoke-direct {p2, p3}, Lcom/codemao/creativecenter/base/CreativeLifecycleCallbacks;-><init>(Lcom/codemao/creativecenter/base/CreativeLifecycleCallbacks$ProcessChangeCallBack;)V

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 246
    invoke-static {}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getInstance()Lcn/codemao/android/sketch/config/SketchConfigManager;

    move-result-object p2

    sget-object p3, Lcom/nemo/commonui/NemoUIConfigManager;->INSTANCE:Lcom/nemo/commonui/NemoUIConfigManager;

    invoke-virtual {p3}, Lcom/nemo/commonui/NemoUIConfigManager;->getLocale()Ljava/util/Locale;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcn/codemao/android/sketch/config/SketchConfigManager;->setLocale(Ljava/util/Locale;)V

    .line 247
    invoke-static {}, Lcn/codemao/android/sketch/CodemaoSketch;->instance()Lcn/codemao/android/sketch/CodemaoSketch;

    move-result-object v0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->applicationContext:Landroid/app/Application;

    invoke-virtual {p3}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "/covercache/covercache.cover"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/codemao/creativecenter/CreativeCenterUtils$6;

    invoke-direct {v5, p0}, Lcom/codemao/creativecenter/CreativeCenterUtils$6;-><init>(Lcom/codemao/creativecenter/CreativeCenterUtils;)V

    const/4 v2, 0x1

    invoke-virtual/range {v0 .. v5}, Lcn/codemao/android/sketch/CodemaoSketch;->init(Landroid/app/Application;ZLjava/lang/String;ZLcn/codemao/android/sketch/utils/ReportUtils$ReportCallBack;)V

    .line 253
    invoke-static {p1}, Lcom/polidea/rxandroidble2_codemao/RxBleClient;->create(Landroid/content/Context;)Lcom/polidea/rxandroidble2_codemao/RxBleClient;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->rxBleClient:Lcom/polidea/rxandroidble2_codemao/RxBleClient;

    .line 254
    new-instance p1, Lcom/polidea/rxandroidble2_codemao/LogOptions$Builder;

    invoke-direct {p1}, Lcom/polidea/rxandroidble2_codemao/LogOptions$Builder;-><init>()V

    const/4 p2, 0x4

    .line 255
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/polidea/rxandroidble2_codemao/LogOptions$Builder;->setLogLevel(Ljava/lang/Integer;)Lcom/polidea/rxandroidble2_codemao/LogOptions$Builder;

    move-result-object p1

    const/4 p2, 0x2

    .line 256
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/polidea/rxandroidble2_codemao/LogOptions$Builder;->setMacAddressLogSetting(Ljava/lang/Integer;)Lcom/polidea/rxandroidble2_codemao/LogOptions$Builder;

    move-result-object p1

    .line 257
    invoke-virtual {p1, p2}, Lcom/polidea/rxandroidble2_codemao/LogOptions$Builder;->setUuidsLogSetting(Ljava/lang/Integer;)Lcom/polidea/rxandroidble2_codemao/LogOptions$Builder;

    move-result-object p1

    .line 258
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/polidea/rxandroidble2_codemao/LogOptions$Builder;->setShouldLogAttributeValues(Ljava/lang/Boolean;)Lcom/polidea/rxandroidble2_codemao/LogOptions$Builder;

    move-result-object p1

    .line 259
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/LogOptions$Builder;->build()Lcom/polidea/rxandroidble2_codemao/LogOptions;

    move-result-object p1

    .line 254
    invoke-static {p1}, Lcom/polidea/rxandroidble2_codemao/RxBleClient;->updateLogOptions(Lcom/polidea/rxandroidble2_codemao/LogOptions;)V

    .line 261
    invoke-static {}, Lcom/codemao/creativestore/AudioPlayer;->getPlayer()Lcom/codemao/creativestore/AudioPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/AudioPlayer;->init()V

    return-object p0
.end method

.method public isLogin()Z
    .registers 2

    .line 375
    invoke-virtual {p0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getUserToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public logout()Lcom/codemao/creativecenter/CreativeCenterUtils;
    .registers 2

    const-string v0, "0"

    .line 388
    iput-object v0, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->userId:Ljava/lang/String;

    const-string v0, ""

    .line 389
    iput-object v0, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->userToken:Ljava/lang/String;

    return-object p0
.end method

.method public sendErrorLog(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    .line 338
    iget-object v0, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->errorLogCallBack:Lcom/codemao/creativecenter/CreativeCenterUtils$ErrorLogCallBack;

    if-eqz v0, :cond_7

    .line 339
    invoke-interface {v0, p1, p2}, Lcom/codemao/creativecenter/CreativeCenterUtils$ErrorLogCallBack;->onError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_7
    return-void
.end method

.method sendErrorLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 344
    iget-object v0, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->errorLogCallBack:Lcom/codemao/creativecenter/CreativeCenterUtils$ErrorLogCallBack;

    if-eqz v0, :cond_7

    .line 345
    invoke-interface {v0, p1, p2}, Lcom/codemao/creativecenter/CreativeCenterUtils$ErrorLogCallBack;->onError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
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

    .line 314
    iget-object v0, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->eventLogCallBack:Lcom/codemao/creativecenter/CreativeCenterUtils$EventLogCallBack;

    if-eqz v0, :cond_22

    .line 315
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 316
    invoke-virtual {p0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getCurrentWorkId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "work_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_1d

    .line 317
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1d

    .line 318
    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 320
    :cond_1d
    iget-object p3, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->eventLogCallBack:Lcom/codemao/creativecenter/CreativeCenterUtils$EventLogCallBack;

    invoke-interface {p3, p1, p2, v0}, Lcom/codemao/creativecenter/CreativeCenterUtils$EventLogCallBack;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_22
    return-void
.end method

.method public sendViewDuration(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 5

    const-string/jumbo p1, "创作页面"

    .line 326
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->eventLogCallBack:Lcom/codemao/creativecenter/CreativeCenterUtils$EventLogCallBack;

    if-eqz p1, :cond_1d

    .line 327
    iget-object p2, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->currentWorkId:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_18

    const-string p2, "0"

    goto :goto_1a

    :cond_18
    iget-object p2, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->currentWorkId:Ljava/lang/String;

    :goto_1a
    invoke-interface {p1, p2, p3, p4}, Lcom/codemao/creativecenter/CreativeCenterUtils$EventLogCallBack;->onCreateDuration(Ljava/lang/String;J)V

    :cond_1d
    return-void
.end method

.method public setCurrentWorkId(Ljava/lang/String;)V
    .registers 2

    .line 357
    iput-object p1, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->currentWorkId:Ljava/lang/String;

    return-void
.end method

.method public setErrorLogCallBack(Lcom/codemao/creativecenter/CreativeCenterUtils$ErrorLogCallBack;)Lcom/codemao/creativecenter/CreativeCenterUtils;
    .registers 2

    .line 267
    iput-object p1, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->errorLogCallBack:Lcom/codemao/creativecenter/CreativeCenterUtils$ErrorLogCallBack;

    return-object p0
.end method

.method public setEventLogCallBack(Lcom/codemao/creativecenter/CreativeCenterUtils$EventLogCallBack;)Lcom/codemao/creativecenter/CreativeCenterUtils;
    .registers 2

    .line 272
    iput-object p1, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->eventLogCallBack:Lcom/codemao/creativecenter/CreativeCenterUtils$EventLogCallBack;

    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/codemao/creativecenter/CreativeCenterUtils;
    .registers 2

    .line 361
    iput-object p1, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public setUserToken(Ljava/lang/String;)Lcom/codemao/creativecenter/CreativeCenterUtils;
    .registers 2

    .line 370
    iput-object p1, p0, Lcom/codemao/creativecenter/CreativeCenterUtils;->userToken:Ljava/lang/String;

    return-object p0
.end method
