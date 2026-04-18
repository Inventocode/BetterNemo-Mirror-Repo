.class public final Lcom/google/android/exoplayer2/offline/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/offline/DownloadManager$DownloadUpdate;,
        Lcom/google/android/exoplayer2/offline/DownloadManager$Task;,
        Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;,
        Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_PARALLEL_DOWNLOADS:I = 0x3

.field public static final DEFAULT_MIN_RETRY_COUNT:I = 0x5

.field public static final DEFAULT_REQUIREMENTS:Lcom/google/android/exoplayer2/scheduler/Requirements;

.field private static final MSG_ADD_DOWNLOAD:I = 0x6

.field private static final MSG_CONTENT_LENGTH_CHANGED:I = 0xa

.field private static final MSG_DOWNLOAD_UPDATE:I = 0x2

.field private static final MSG_INITIALIZE:I = 0x0

.field private static final MSG_INITIALIZED:I = 0x0

.field private static final MSG_PROCESSED:I = 0x1

.field private static final MSG_RELEASE:I = 0xc

.field private static final MSG_REMOVE_ALL_DOWNLOADS:I = 0x8

.field private static final MSG_REMOVE_DOWNLOAD:I = 0x7

.field private static final MSG_SET_DOWNLOADS_PAUSED:I = 0x1

.field private static final MSG_SET_MAX_PARALLEL_DOWNLOADS:I = 0x4

.field private static final MSG_SET_MIN_RETRY_COUNT:I = 0x5

.field private static final MSG_SET_NOT_MET_REQUIREMENTS:I = 0x2

.field private static final MSG_SET_STOP_REASON:I = 0x3

.field private static final MSG_TASK_STOPPED:I = 0x9

.field private static final MSG_UPDATE_PROGRESS:I = 0xb

.field private static final TAG:Ljava/lang/String; = "DownloadManager"


# instance fields
.field private activeTaskCount:I

.field private final applicationHandler:Landroid/os/Handler;

.field private final context:Landroid/content/Context;

.field private final downloadIndex:Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;

.field private downloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/Download;",
            ">;"
        }
    .end annotation
.end field

.field private downloadsPaused:Z

.field private initialized:Z

.field private final internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private maxParallelDownloads:I

.field private minRetryCount:I

.field private notMetRequirements:I

.field private pendingMessages:I

.field private final requirementsListener:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$Listener;

.field private requirementsWatcher:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;

.field private waitingForRequirements:Z


# direct methods
.method public static synthetic $r8$lambda$9_Cit3svlv2xVuUzheKnCxLjKrE(Lcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/offline/DownloadManager;->onRequirementsStateChanged(Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$VH8vRSTYO69o4pUCxUdzDQ0ZEQ0(Lcom/google/android/exoplayer2/offline/DownloadManager;Landroid/os/Message;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->handleMainMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 152
    new-instance v0, Lcom/google/android/exoplayer2/scheduler/Requirements;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/scheduler/Requirements;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/offline/DownloadManager;->DEFAULT_REQUIREMENTS:Lcom/google/android/exoplayer2/scheduler/Requirements;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/database/DatabaseProvider;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 208
    sget-object v5, Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory$$ExternalSyntheticLambda0;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/offline/DownloadManager;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/database/DatabaseProvider;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/database/DatabaseProvider;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Ljava/util/concurrent/Executor;)V
    .registers 8

    .line 231
    new-instance v0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;-><init>(Lcom/google/android/exoplayer2/database/DatabaseProvider;)V

    new-instance p2, Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory;

    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;-><init>()V

    .line 236
    invoke-virtual {v1, p3}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->setCache(Lcom/google/android/exoplayer2/upstream/cache/Cache;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    move-result-object p3

    .line 237
    invoke-virtual {p3, p4}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->setUpstreamDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    move-result-object p3

    invoke-direct {p2, p3, p5}, Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory;-><init>(Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;)V

    .line 231
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/offline/DownloadManager;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;Lcom/google/android/exoplayer2/offline/DownloaderFactory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;Lcom/google/android/exoplayer2/offline/DownloaderFactory;)V
    .registers 14

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->context:Landroid/content/Context;

    .line 251
    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloadIndex:Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;

    const/4 v0, 0x3

    .line 253
    iput v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->maxParallelDownloads:I

    const/4 v0, 0x5

    .line 254
    iput v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->minRetryCount:I

    const/4 v0, 0x1

    .line 255
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloadsPaused:Z

    .line 256
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloads:Ljava/util/List;

    .line 257
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 260
    new-instance v1, Lcom/google/android/exoplayer2/offline/DownloadManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/offline/DownloadManager;)V

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->createHandlerForCurrentOrMainLooper(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v6

    .line 261
    iput-object v6, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->applicationHandler:Landroid/os/Handler;

    .line 262
    new-instance v3, Landroid/os/HandlerThread;

    const-string v1, "ExoPlayer:DownloadManager"

    invoke-direct {v3, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 264
    new-instance v1, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

    iget v7, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->maxParallelDownloads:I

    iget v8, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->minRetryCount:I

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloadsPaused:Z

    move-object v2, v1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;-><init>(Landroid/os/HandlerThread;Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;Lcom/google/android/exoplayer2/offline/DownloaderFactory;Landroid/os/Handler;IIZ)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

    .line 275
    new-instance p2, Lcom/google/android/exoplayer2/offline/DownloadManager$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/offline/DownloadManager;)V

    .line 276
    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->requirementsListener:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$Listener;

    .line 277
    new-instance p3, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    sget-object v2, Lcom/google/android/exoplayer2/offline/DownloadManager;->DEFAULT_REQUIREMENTS:Lcom/google/android/exoplayer2/scheduler/Requirements;

    invoke-direct {p3, p1, p2, v2}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$Listener;Lcom/google/android/exoplayer2/scheduler/Requirements;)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->requirementsWatcher:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    .line 279
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->start()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->notMetRequirements:I

    .line 281
    iput v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    const/4 p2, 0x0

    .line 283
    invoke-virtual {v1, p2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 284
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private handleMainMessage(Landroid/os/Message;)Z
    .registers 5

    .line 608
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_20

    if-eq v0, v1, :cond_18

    const/4 v2, 0x2

    if-ne v0, v2, :cond_12

    .line 614
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/offline/DownloadManager$DownloadUpdate;

    .line 615
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->onDownloadUpdate(Lcom/google/android/exoplayer2/offline/DownloadManager$DownloadUpdate;)V

    goto :goto_27

    .line 623
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 618
    :cond_18
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 619
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 620
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->onMessageProcessed(II)V

    goto :goto_27

    .line 610
    :cond_20
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 611
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->onInitialized(Ljava/util/List;)V

    :goto_27
    return v1
.end method

.method static mergeRequest(Lcom/google/android/exoplayer2/offline/Download;Lcom/google/android/exoplayer2/offline/DownloadRequest;IJ)Lcom/google/android/exoplayer2/offline/Download;
    .registers 21

    move-object/from16 v0, p0

    .line 670
    iget v1, v0, Lcom/google/android/exoplayer2/offline/Download;->state:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_12

    .line 675
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/offline/Download;->isTerminalState()Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_12

    :cond_e
    iget-wide v3, v0, Lcom/google/android/exoplayer2/offline/Download;->startTimeMs:J

    move-wide v8, v3

    goto :goto_14

    :cond_12
    :goto_12
    move-wide/from16 v8, p3

    :goto_14
    const/4 v3, 0x7

    if-eq v1, v2, :cond_22

    if-ne v1, v3, :cond_1a

    goto :goto_22

    :cond_1a
    if-eqz p2, :cond_1f

    const/4 v1, 0x1

    const/4 v7, 0x1

    goto :goto_23

    :cond_1f
    const/4 v1, 0x0

    const/4 v7, 0x0

    goto :goto_23

    :cond_22
    :goto_22
    const/4 v7, 0x7

    .line 683
    :goto_23
    new-instance v1, Lcom/google/android/exoplayer2/offline/Download;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    move-object/from16 v2, p1

    .line 684
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/offline/DownloadRequest;->copyWithMergedRequest(Lcom/google/android/exoplayer2/offline/DownloadRequest;)Lcom/google/android/exoplayer2/offline/DownloadRequest;

    move-result-object v6

    const-wide/16 v12, -0x1

    const/4 v15, 0x0

    move-object v5, v1

    move-wide/from16 v10, p3

    move/from16 v14, p2

    invoke-direct/range {v5 .. v15}, Lcom/google/android/exoplayer2/offline/Download;-><init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;IJJJII)V

    return-object v1
.end method

.method private notifyWaitingForRequirementsChanged()V
    .registers 4

    .line 599
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;

    .line 600
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->waitingForRequirements:Z

    invoke-interface {v1, p0, v2}, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;->onWaitingForRequirementsChanged(Lcom/google/android/exoplayer2/offline/DownloadManager;Z)V

    goto :goto_6

    :cond_18
    return-void
.end method

.method private onDownloadUpdate(Lcom/google/android/exoplayer2/offline/DownloadManager$DownloadUpdate;)V
    .registers 7

    .line 641
    iget-object v0, p1, Lcom/google/android/exoplayer2/offline/DownloadManager$DownloadUpdate;->downloads:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloads:Ljava/util/List;

    .line 642
    iget-object v0, p1, Lcom/google/android/exoplayer2/offline/DownloadManager$DownloadUpdate;->download:Lcom/google/android/exoplayer2/offline/Download;

    .line 643
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->updateWaitingForRequirements()Z

    move-result v1

    .line 644
    iget-boolean v2, p1, Lcom/google/android/exoplayer2/offline/DownloadManager$DownloadUpdate;->isRemove:Z

    if-eqz v2, :cond_28

    .line 645
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;

    .line 646
    invoke-interface {v2, p0, v0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;->onDownloadRemoved(Lcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/offline/Download;)V

    goto :goto_18

    .line 649
    :cond_28
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;

    .line 650
    iget-object v4, p1, Lcom/google/android/exoplayer2/offline/DownloadManager$DownloadUpdate;->finalException:Ljava/lang/Exception;

    invoke-interface {v3, p0, v0, v4}, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;->onDownloadChanged(Lcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/offline/Download;Ljava/lang/Exception;)V

    goto :goto_2e

    :cond_40
    if-eqz v1, :cond_45

    .line 654
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->notifyWaitingForRequirementsChanged()V

    :cond_45
    return-void
.end method

.method private onInitialized(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/Download;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 629
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->initialized:Z

    .line 630
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloads:Ljava/util/List;

    .line 631
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->updateWaitingForRequirements()Z

    move-result p1

    .line 632
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;

    .line 633
    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;->onInitialized(Lcom/google/android/exoplayer2/offline/DownloadManager;)V

    goto :goto_13

    :cond_23
    if-eqz p1, :cond_28

    .line 636
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->notifyWaitingForRequirementsChanged()V

    :cond_28
    return-void
.end method

.method private onMessageProcessed(II)V
    .registers 4

    .line 659
    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    .line 660
    iput p2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->activeTaskCount:I

    .line 661
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->isIdle()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 662
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;

    .line 663
    invoke-interface {p2, p0}, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;->onIdle(Lcom/google/android/exoplayer2/offline/DownloadManager;)V

    goto :goto_13

    :cond_23
    return-void
.end method

.method private onRequirementsStateChanged(Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;I)V
    .registers 6

    .line 566
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->getRequirements()Lcom/google/android/exoplayer2/scheduler/Requirements;

    move-result-object p1

    .line 567
    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->notMetRequirements:I

    if-eq v0, p2, :cond_1b

    .line 568
    iput p2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->notMetRequirements:I

    .line 569
    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    .line 570
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 571
    invoke-virtual {v0, v1, p2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 572
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 574
    :cond_1b
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->updateWaitingForRequirements()Z

    move-result v0

    .line 575
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;

    .line 576
    invoke-interface {v2, p0, p1, p2}, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;->onRequirementsStateChanged(Lcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/scheduler/Requirements;I)V

    goto :goto_25

    :cond_35
    if-eqz v0, :cond_3a

    .line 579
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->notifyWaitingForRequirementsChanged()V

    :cond_3a
    return-void
.end method

.method private setDownloadsPaused(Z)V
    .registers 5

    .line 546
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloadsPaused:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 549
    :cond_5
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloadsPaused:Z

    .line 550
    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    .line 551
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

    const/4 v2, 0x0

    .line 552
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 553
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 554
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->updateWaitingForRequirements()Z

    move-result v0

    .line 555
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;

    .line 556
    invoke-interface {v2, p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;->onDownloadsPausedChanged(Lcom/google/android/exoplayer2/offline/DownloadManager;Z)V

    goto :goto_21

    :cond_31
    if-eqz v0, :cond_36

    .line 559
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->notifyWaitingForRequirementsChanged()V

    :cond_36
    return-void
.end method

.method private updateWaitingForRequirements()Z
    .registers 5

    .line 585
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloadsPaused:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_24

    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->notMetRequirements:I

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    .line 586
    :goto_b
    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloads:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_24

    .line 587
    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloads:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/offline/Download;

    iget v3, v3, Lcom/google/android/exoplayer2/offline/Download;->state:I

    if-nez v3, :cond_21

    const/4 v0, 0x1

    goto :goto_25

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_24
    const/4 v0, 0x0

    .line 593
    :goto_25
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->waitingForRequirements:Z

    if-eq v3, v0, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    .line 594
    :goto_2b
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->waitingForRequirements:Z

    return v1
.end method


# virtual methods
.method public addDownload(Lcom/google/android/exoplayer2/offline/DownloadRequest;)V
    .registers 3

    const/4 v0, 0x0

    .line 479
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->addDownload(Lcom/google/android/exoplayer2/offline/DownloadRequest;I)V

    return-void
.end method

.method public addDownload(Lcom/google/android/exoplayer2/offline/DownloadRequest;I)V
    .registers 6

    .line 490
    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    .line 491
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 492
    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 493
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public addListener(Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;)V
    .registers 3

    .line 329
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getApplicationLooper()Landroid/os/Looper;
    .registers 2

    .line 292
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDownloads()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/Download;",
            ">;"
        }
    .end annotation

    .line 431
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloads:Ljava/util/List;

    return-object v0
.end method

.method public getDownloadIndex()Lcom/google/android/exoplayer2/offline/DownloadIndex;
    .registers 2

    .line 422
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloadIndex:Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;

    return-object v0
.end method

.method public getDownloadsPaused()Z
    .registers 2

    .line 436
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloadsPaused:Z

    return v0
.end method

.method public getMaxParallelDownloads()I
    .registers 2

    .line 374
    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->maxParallelDownloads:I

    return v0
.end method

.method public getMinRetryCount()I
    .registers 2

    .line 399
    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->minRetryCount:I

    return v0
.end method

.method public getNotMetRequirements()I
    .registers 2

    .line 354
    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->notMetRequirements:I

    return v0
.end method

.method public getRequirements()Lcom/google/android/exoplayer2/scheduler/Requirements;
    .registers 2

    .line 344
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->requirementsWatcher:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->getRequirements()Lcom/google/android/exoplayer2/scheduler/Requirements;

    move-result-object v0

    return-object v0
.end method

.method public isIdle()Z
    .registers 2

    .line 306
    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->activeTaskCount:I

    if-nez v0, :cond_a

    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isInitialized()Z
    .registers 2

    .line 297
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->initialized:Z

    return v0
.end method

.method public isWaitingForRequirements()Z
    .registers 2

    .line 320
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->waitingForRequirements:Z

    return v0
.end method

.method public pauseDownloads()V
    .registers 2

    const/4 v0, 0x1

    .line 455
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->setDownloadsPaused(Z)V

    return-void
.end method

.method public release()V
    .registers 6

    .line 517
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

    monitor-enter v0

    .line 518
    :try_start_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

    iget-boolean v2, v1, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->released:Z

    if-eqz v2, :cond_b

    .line 519
    monitor-exit v0

    return-void

    :cond_b
    const/16 v2, 0xc

    .line 521
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 523
    :goto_12
    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

    iget-boolean v4, v3, Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;->released:Z
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_3f

    if-nez v4, :cond_1e

    .line 525
    :try_start_18
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1b} :catch_1c
    .catchall {:try_start_18 .. :try_end_1b} :catchall_3f

    goto :goto_12

    :catch_1c
    const/4 v2, 0x1

    goto :goto_12

    :cond_1e
    if-eqz v2, :cond_27

    .line 532
    :try_start_20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 534
    :cond_27
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->applicationHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 536
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->downloads:Ljava/util/List;

    .line 537
    iput v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    .line 538
    iput v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->activeTaskCount:I

    .line 539
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->initialized:Z

    .line 540
    iput v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->notMetRequirements:I

    .line 541
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->waitingForRequirements:Z

    .line 542
    monitor-exit v0

    return-void

    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_20 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method public removeAllDownloads()V
    .registers 3

    .line 508
    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    .line 509
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public removeDownload(Ljava/lang/String;)V
    .registers 4

    .line 502
    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    .line 503
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public removeListener(Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;)V
    .registers 3

    .line 339
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resumeDownloads()V
    .registers 2

    const/4 v0, 0x0

    .line 447
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->setDownloadsPaused(Z)V

    return-void
.end method

.method public setMaxParallelDownloads(I)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    .line 383
    :goto_7
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 384
    iget v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->maxParallelDownloads:I

    if-ne v2, p1, :cond_f

    return-void

    .line 387
    :cond_f
    iput p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->maxParallelDownloads:I

    .line 388
    iget v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    .line 389
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

    const/4 v2, 0x4

    .line 390
    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 391
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setMinRetryCount(I)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    .line 409
    :goto_7
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 410
    iget v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->minRetryCount:I

    if-ne v2, p1, :cond_f

    return-void

    .line 413
    :cond_f
    iput p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->minRetryCount:I

    .line 414
    iget v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    .line 415
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

    const/4 v2, 0x5

    .line 416
    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 417
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setRequirements(Lcom/google/android/exoplayer2/scheduler/Requirements;)V
    .registers 5

    .line 363
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->requirementsWatcher:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->getRequirements()Lcom/google/android/exoplayer2/scheduler/Requirements;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/scheduler/Requirements;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 366
    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->requirementsWatcher:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->stop()V

    .line 367
    new-instance v0, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->requirementsListener:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$Listener;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher$Listener;Lcom/google/android/exoplayer2/scheduler/Requirements;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->requirementsWatcher:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    .line 368
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;->start()I

    move-result p1

    .line 369
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->requirementsWatcher:Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->onRequirementsStateChanged(Lcom/google/android/exoplayer2/scheduler/RequirementsWatcher;I)V

    return-void
.end method

.method public setStopReason(Ljava/lang/String;I)V
    .registers 6

    .line 467
    iget v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->pendingMessages:I

    .line 468
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadManager;->internalHandler:Lcom/google/android/exoplayer2/offline/DownloadManager$InternalHandler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 469
    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 470
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
