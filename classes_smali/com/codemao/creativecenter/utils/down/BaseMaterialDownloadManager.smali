.class public Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;
.super Ljava/lang/Object;
.source "BaseMaterialDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager$Instance;
    }
.end annotation


# instance fields
.field private baseMaterialTask:Lcom/codemao/creativecenter/utils/down/MaterialTask;

.field private isError:Z

.field private final mDisposables:Lio/reactivex/disposables/CompositeDisposable;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->isError:Z

    .line 38
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager$1;)V
    .registers 2

    .line 35
    invoke-direct {p0}, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;)Lio/reactivex/disposables/CompositeDisposable;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    return-object p0
.end method

.method static synthetic access$302(Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;Z)Z
    .registers 2

    .line 35
    iput-boolean p1, p0, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->isError:Z

    return p1
.end method

.method static synthetic access$400(Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;)Lcom/codemao/creativecenter/utils/down/MaterialTask;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->baseMaterialTask:Lcom/codemao/creativecenter/utils/down/MaterialTask;

    return-object p0
.end method

.method static synthetic access$402(Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;Lcom/codemao/creativecenter/utils/down/MaterialTask;)Lcom/codemao/creativecenter/utils/down/MaterialTask;
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->baseMaterialTask:Lcom/codemao/creativecenter/utils/down/MaterialTask;

    return-object p1
.end method

.method static synthetic access$500(Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;)V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->moveTobase()V

    return-void
.end method

.method public static getInstance()Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;
    .registers 1

    .line 46
    invoke-static {}, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager$Instance;->access$100()Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;

    move-result-object v0

    return-object v0
.end method

.method private moveTobase()V
    .registers 14

    .line 166
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->baseMaterialTask:Lcom/codemao/creativecenter/utils/down/MaterialTask;

    if-nez v0, :cond_5

    return-void

    .line 169
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->baseMaterialTask:Lcom/codemao/creativecenter/utils/down/MaterialTask;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/down/MaterialTask;->getUnZipInfo()Lcom/codemao/creativecenter/utils/zip/UnzipInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/zip/UnzipInfo;->getDestPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 172
    :goto_2b
    array-length v4, v1

    if-ge v3, v4, :cond_e4

    .line 173
    aget-object v4, v1, v3

    .line 174
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_bb

    .line 175
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_3c
    if-ge v6, v5, :cond_e0

    aget-object v7, v4, v6

    .line 176
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_b8

    .line 177
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "drawable"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7f

    .line 178
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_58
    if-ge v9, v8, :cond_b8

    aget-object v10, v7, v9

    .line 179
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v12

    iget-object v12, v12, Lcom/codemao/creativecenter/CreativeCenterUtils;->baseImageMaterialPath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 180
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v11}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->moveThemeMaterial(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_58

    .line 182
    :cond_7f
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "raw"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b8

    .line 183
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_91
    if-ge v9, v8, :cond_b8

    aget-object v10, v7, v9

    .line 184
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v12

    iget-object v12, v12, Lcom/codemao/creativecenter/CreativeCenterUtils;->baseSoundMaterialPath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 185
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v11}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->moveThemeMaterial(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_91

    :cond_b8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3c

    .line 191
    :cond_bb
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v6

    iget-object v6, v6, Lcom/codemao/creativecenter/CreativeCenterUtils;->baseBasePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 192
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->moveThemeMaterial(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2b

    .line 195
    :cond_e4
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->getInstance()Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->initBaseCloudMaterialFile()V

    .line 196
    invoke-static {v0}, Lcom/codemao/team/download/FileUtils;->delete(Ljava/lang/String;)Z

    .line 197
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->baseMaterialTask:Lcom/codemao/creativecenter/utils/down/MaterialTask;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/down/MaterialTask;->getDownloadFile()Lcom/codemao/creativecenter/utils/down/DownloadFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/down/DownloadFile;->getSavePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/team/download/FileUtils;->delete(Ljava/lang/String;)Z

    return-void
.end method

.method private startDownload()V
    .registers 3

    .line 105
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->baseMaterialTask:Lcom/codemao/creativecenter/utils/down/MaterialTask;

    if-nez v0, :cond_5

    return-void

    .line 108
    :cond_5
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/CreativeNetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_23

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->isError:Z

    .line 110
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/event/BaseMaterialDownloadErrorEvent;

    invoke-direct {v1}, Lcom/codemao/creativecenter/event/BaseMaterialDownloadErrorEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    :cond_23
    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->isError:Z

    .line 114
    invoke-static {}, Lcom/codemao/creativecenter/utils/down/DownloadManager;->getInstance()Lcom/codemao/creativecenter/utils/down/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->baseMaterialTask:Lcom/codemao/creativecenter/utils/down/MaterialTask;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/down/MaterialTask;->getDownloadFile()Lcom/codemao/creativecenter/utils/down/DownloadFile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/down/DownloadManager;->downloadFileWithoutSuc(Lcom/codemao/creativecenter/utils/down/DownloadFile;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager$2;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager$2;-><init>(Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;)V

    .line 115
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 128
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 129
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->unsubscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 130
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager$1;-><init>(Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;)V

    .line 131
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method


# virtual methods
.method public isDownloading()Z
    .registers 2

    .line 212
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->baseMaterialTask:Lcom/codemao/creativecenter/utils/down/MaterialTask;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isError()Z
    .registers 2

    .line 216
    iget-boolean v0, p0, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->isError:Z

    return v0
.end method

.method public restartTask()V
    .registers 2

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->isError:Z

    .line 71
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->checkBaseMaterialsFilesExists()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->baseMaterialTask:Lcom/codemao/creativecenter/utils/down/MaterialTask;

    return-void

    .line 75
    :cond_d
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->baseMaterialTask:Lcom/codemao/creativecenter/utils/down/MaterialTask;

    if-nez v0, :cond_18

    .line 76
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getBaseMaterialInfo()V

    :cond_18
    return-void
.end method

.method public setError(Z)V
    .registers 2

    .line 208
    iput-boolean p1, p0, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->isError:Z

    return-void
.end method

.method public startTask(Lcom/codemao/creativestore/bean/BaseMaterialInfo;)V
    .registers 7

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->isError:Z

    .line 85
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->checkBaseMaterialsFilesExists()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->baseMaterialTask:Lcom/codemao/creativecenter/utils/down/MaterialTask;

    return-void

    .line 89
    :cond_d
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->baseMaterialTask:Lcom/codemao/creativecenter/utils/down/MaterialTask;

    if-eqz v0, :cond_12

    return-void

    .line 93
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/creativecenter/CreativeCenterUtils;->basePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "zipcache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/base.zip"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v3

    iget-object v3, v3, Lcom/codemao/creativecenter/CreativeCenterUtils;->basePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/base"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    new-instance v2, Lcom/codemao/creativecenter/utils/down/DownloadFile;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/BaseMaterialInfo;->getBase_material_url()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v0}, Lcom/codemao/creativecenter/utils/down/DownloadFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance p1, Lcom/codemao/creativecenter/utils/zip/UnzipInfo;

    invoke-direct {p1, v0, v1}, Lcom/codemao/creativecenter/utils/zip/UnzipInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v3, Lcom/codemao/creativecenter/utils/down/MaterialTask;

    const-string/jumbo v4, "基础素材"

    invoke-direct {v3, v4, v2, p1}, Lcom/codemao/creativecenter/utils/down/MaterialTask;-><init>(Ljava/lang/String;Lcom/codemao/creativecenter/utils/down/DownloadFile;Lcom/codemao/creativecenter/utils/zip/UnzipInfo;)V

    iput-object v3, p0, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->baseMaterialTask:Lcom/codemao/creativecenter/utils/down/MaterialTask;

    .line 99
    invoke-static {v0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->deleteFile(Ljava/lang/String;)V

    .line 100
    invoke-static {v1}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->deleteFile(Ljava/lang/String;)V

    .line 101
    invoke-direct {p0}, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->startDownload()V

    return-void
.end method
