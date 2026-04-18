.class public Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;
.super Ljava/lang/Object;
.source "ThemeMaterialDownloadQueueManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$Instance;
    }
.end annotation


# instance fields
.field private curTask:Lcom/codemao/creativecenter/utils/down/MaterialTask;

.field private final mDisposables:Lio/reactivex/disposables/CompositeDisposable;

.field private final mMaterialTasks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/codemao/creativecenter/utils/down/MaterialTask;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusListener:Lcom/codemao/creativecenter/utils/down/DownloadQueueStatusListener;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->mMaterialTasks:Ljava/util/Vector;

    .line 31
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$1;)V
    .registers 2

    .line 27
    invoke-direct {p0}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;)Lio/reactivex/disposables/CompositeDisposable;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;)Lcom/codemao/creativecenter/utils/down/DownloadQueueStatusListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->mStatusListener:Lcom/codemao/creativecenter/utils/down/DownloadQueueStatusListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;)Lcom/codemao/creativecenter/utils/down/MaterialTask;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->curTask:Lcom/codemao/creativecenter/utils/down/MaterialTask;

    return-object p0
.end method

.method static synthetic access$402(Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;Lcom/codemao/creativecenter/utils/down/MaterialTask;)Lcom/codemao/creativecenter/utils/down/MaterialTask;
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->curTask:Lcom/codemao/creativecenter/utils/down/MaterialTask;

    return-object p1
.end method

.method static synthetic access$500(Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;)Ljava/util/Vector;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->mMaterialTasks:Ljava/util/Vector;

    return-object p0
.end method

.method public static getInstance()Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;
    .registers 1

    .line 39
    invoke-static {}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$Instance;->access$100()Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addTask(Lcom/codemao/creativecenter/utils/down/MaterialTask;)Z
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->mMaterialTasks:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 71
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->curTask:Lcom/codemao/creativecenter/utils/down/MaterialTask;

    if-nez v0, :cond_f

    .line 72
    invoke-virtual {p0}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->startTask()V

    :cond_f
    return p1
.end method

.method public isDownloaing(Ljava/lang/String;)Z
    .registers 4

    .line 174
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->mMaterialTasks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativecenter/utils/down/MaterialTask;

    .line 175
    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/down/MaterialTask;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method public isError()Z
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->mMaterialTasks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_e

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->curTask:Lcom/codemao/creativecenter/utils/down/MaterialTask;

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isHasItemDownloading()Z
    .registers 2

    .line 183
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->curTask:Lcom/codemao/creativecenter/utils/down/MaterialTask;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public setStatusListener(Lcom/codemao/creativecenter/utils/down/DownloadQueueStatusListener;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->mStatusListener:Lcom/codemao/creativecenter/utils/down/DownloadQueueStatusListener;

    return-void
.end method

.method public startTask()V
    .registers 3

    .line 91
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->mMaterialTasks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_15

    .line 92
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->mStatusListener:Lcom/codemao/creativecenter/utils/down/DownloadQueueStatusListener;

    if-eqz v0, :cond_f

    .line 93
    invoke-interface {v0}, Lcom/codemao/creativecenter/utils/down/DownloadQueueStatusListener;->onCompleted()V

    :cond_f
    const-string v0, "startTask:onComplete"

    .line 95
    invoke-static {v0}, Lcom/codemao/creativestore/utils/CreativeLoggerUtil;->e(Ljava/lang/String;)V

    return-void

    .line 98
    :cond_15
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->mMaterialTasks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/utils/down/MaterialTask;

    iput-object v0, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->curTask:Lcom/codemao/creativecenter/utils/down/MaterialTask;

    if-nez v0, :cond_22

    return-void

    .line 103
    :cond_22
    iget-object v1, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->mStatusListener:Lcom/codemao/creativecenter/utils/down/DownloadQueueStatusListener;

    if-eqz v1, :cond_29

    .line 104
    invoke-interface {v1, v0}, Lcom/codemao/creativecenter/utils/down/DownloadQueueStatusListener;->onStart(Lcom/codemao/creativecenter/utils/down/MaterialTask;)V

    .line 106
    :cond_29
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->curTask:Lcom/codemao/creativecenter/utils/down/MaterialTask;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/down/MaterialTask;->getDownloadFile()Lcom/codemao/creativecenter/utils/down/DownloadFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/down/DownloadFile;->getSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 108
    invoke-static {v0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->deleteFile(Ljava/io/File;)V

    .line 110
    :cond_41
    invoke-static {}, Lcom/codemao/creativecenter/utils/down/DownloadManager;->getInstance()Lcom/codemao/creativecenter/utils/down/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->curTask:Lcom/codemao/creativecenter/utils/down/MaterialTask;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/down/MaterialTask;->getDownloadFile()Lcom/codemao/creativecenter/utils/down/DownloadFile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/down/DownloadManager;->downloadFileWithoutSuc(Lcom/codemao/creativecenter/utils/down/DownloadFile;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$2;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$2;-><init>(Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;)V

    .line 111
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 124
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 125
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->unsubscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 126
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$1;-><init>(Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;)V

    .line 127
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
