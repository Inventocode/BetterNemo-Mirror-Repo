.class public Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;
.super Ljava/lang/Object;
.source "CloudMaterialDownloadQueueManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager$DownloadStatusListener;
    }
.end annotation


# instance fields
.field private curTask:Lcom/codemao/creativecenter/utils/down/DownloadFile;

.field private final mDisposables:Lio/reactivex/disposables/CompositeDisposable;

.field private final mMaterialTasks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/codemao/creativecenter/utils/down/DownloadFile;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusListener:Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager$DownloadStatusListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;->mMaterialTasks:Ljava/util/Vector;

    .line 34
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;)Lio/reactivex/disposables/CompositeDisposable;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;)Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager$DownloadStatusListener;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;->mStatusListener:Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager$DownloadStatusListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;)Lcom/codemao/creativecenter/utils/down/DownloadFile;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;->curTask:Lcom/codemao/creativecenter/utils/down/DownloadFile;

    return-object p0
.end method

.method static synthetic access$202(Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;Lcom/codemao/creativecenter/utils/down/DownloadFile;)Lcom/codemao/creativecenter/utils/down/DownloadFile;
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;->curTask:Lcom/codemao/creativecenter/utils/down/DownloadFile;

    return-object p1
.end method

.method static synthetic access$300(Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;)Ljava/util/Vector;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;->mMaterialTasks:Ljava/util/Vector;

    return-object p0
.end method


# virtual methods
.method public addTask(Lcom/codemao/creativecenter/utils/down/DownloadFile;)V
    .registers 3

    .line 66
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;->mMaterialTasks:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearTask()V
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 132
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;->mMaterialTasks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method public setmStatusListener(Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager$DownloadStatusListener;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;->mStatusListener:Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager$DownloadStatusListener;

    return-void
.end method

.method public startTask()V
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;->mMaterialTasks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_15

    .line 74
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;->mStatusListener:Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager$DownloadStatusListener;

    if-eqz v0, :cond_f

    .line 75
    invoke-interface {v0}, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager$DownloadStatusListener;->onCompleted()V

    :cond_f
    const-string v0, "startTask:onComplete"

    .line 77
    invoke-static {v0}, Lcom/codemao/creativestore/utils/CreativeLoggerUtil;->e(Ljava/lang/String;)V

    return-void

    .line 80
    :cond_15
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;->mMaterialTasks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/utils/down/DownloadFile;

    iput-object v0, p0, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;->curTask:Lcom/codemao/creativecenter/utils/down/DownloadFile;

    if-nez v0, :cond_22

    return-void

    .line 85
    :cond_22
    iget-object v1, p0, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;->mStatusListener:Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager$DownloadStatusListener;

    if-eqz v1, :cond_29

    .line 86
    invoke-interface {v1, v0}, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager$DownloadStatusListener;->onStart(Lcom/codemao/creativecenter/utils/down/DownloadFile;)V

    .line 88
    :cond_29
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;->curTask:Lcom/codemao/creativecenter/utils/down/DownloadFile;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/down/DownloadFile;->getSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 90
    invoke-static {v0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->deleteFile(Ljava/io/File;)V

    .line 92
    :cond_3d
    invoke-static {}, Lcom/codemao/creativecenter/utils/down/DownloadManager;->getInstance()Lcom/codemao/creativecenter/utils/down/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;->curTask:Lcom/codemao/creativecenter/utils/down/DownloadFile;

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/down/DownloadManager;->downloadFileWithoutSuc(Lcom/codemao/creativecenter/utils/down/DownloadFile;)Lio/reactivex/Observable;

    move-result-object v0

    .line 93
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 94
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->unsubscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 95
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager$1;-><init>(Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;)V

    .line 96
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
