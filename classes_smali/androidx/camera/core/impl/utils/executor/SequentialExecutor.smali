.class final Landroidx/camera/core/impl/utils/executor/SequentialExecutor;
.super Ljava/lang/Object;
.source "SequentialExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/utils/executor/SequentialExecutor$QueueWorker;,
        Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;
    }
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field final mQueue:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorker:Landroidx/camera/core/impl/utils/executor/SequentialExecutor$QueueWorker;

.field mWorkerRunCount:J

.field mWorkerRunningState:Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;->mQueue:Ljava/util/Deque;

    .line 58
    new-instance v0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$QueueWorker;

    invoke-direct {v0, p0}, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$QueueWorker;-><init>(Landroidx/camera/core/impl/utils/executor/SequentialExecutor;)V

    iput-object v0, p0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;->mWorker:Landroidx/camera/core/impl/utils/executor/SequentialExecutor$QueueWorker;

    .line 60
    sget-object v0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;->IDLE:Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;

    iput-object v0, p0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;->mWorkerRunningState:Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;

    const-wide/16 v0, 0x0

    .line 71
    iput-wide v0, p0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;->mWorkerRunCount:J

    .line 77
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 10

    .line 88
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;->mQueue:Ljava/util/Deque;

    monitor-enter v0

    .line 95
    :try_start_6
    iget-object v1, p0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;->mWorkerRunningState:Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;

    sget-object v2, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;->RUNNING:Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;

    if-eq v1, v2, :cond_6e

    sget-object v2, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;->QUEUED:Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;

    if-ne v1, v2, :cond_11

    goto :goto_6e

    .line 100
    :cond_11
    iget-wide v3, p0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;->mWorkerRunCount:J

    .line 107
    new-instance v1, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$1;

    invoke-direct {v1, p0, p1}, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$1;-><init>(Landroidx/camera/core/impl/utils/executor/SequentialExecutor;Ljava/lang/Runnable;)V

    .line 114
    iget-object p1, p0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;->mQueue:Ljava/util/Deque;

    invoke-interface {p1, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object p1, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;->QUEUING:Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;

    iput-object p1, p0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;->mWorkerRunningState:Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;

    .line 116
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_75

    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 119
    :try_start_24
    iget-object v6, p0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v7, p0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;->mWorker:Landroidx/camera/core/impl/utils/executor/SequentialExecutor$QueueWorker;

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_2b} :catch_4a
    .catch Ljava/lang/Error; {:try_start_24 .. :try_end_2b} :catch_48

    .line 146
    iget-object v1, p0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;->mWorkerRunningState:Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;

    if-eq v1, p1, :cond_30

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    if-eqz v0, :cond_34

    return-void

    .line 150
    :cond_34
    iget-object v6, p0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;->mQueue:Ljava/util/Deque;

    monitor-enter v6

    .line 151
    :try_start_37
    iget-wide v0, p0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;->mWorkerRunCount:J

    cmp-long v5, v0, v3

    if-nez v5, :cond_43

    iget-object v0, p0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;->mWorkerRunningState:Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;

    if-ne v0, p1, :cond_43

    .line 152
    iput-object v2, p0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;->mWorkerRunningState:Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;

    .line 154
    :cond_43
    monitor-exit v6

    return-void

    :catchall_45
    move-exception p1

    monitor-exit v6
    :try_end_47
    .catchall {:try_start_37 .. :try_end_47} :catchall_45

    throw p1

    :catch_48
    move-exception p1

    goto :goto_4b

    :catch_4a
    move-exception p1

    .line 121
    :goto_4b
    iget-object v2, p0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;->mQueue:Ljava/util/Deque;

    monitor-enter v2

    .line 122
    :try_start_4e
    iget-object v3, p0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;->mWorkerRunningState:Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;

    sget-object v4, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;->IDLE:Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;

    if-eq v3, v4, :cond_58

    sget-object v4, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;->QUEUING:Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;

    if-ne v3, v4, :cond_61

    :cond_58
    iget-object v3, p0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;->mQueue:Ljava/util/Deque;

    .line 124
    invoke-interface {v3, v1}, Ljava/util/Deque;->removeLastOccurrence(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    goto :goto_62

    :cond_61
    const/4 v0, 0x0

    .line 128
    :goto_62
    instance-of v1, p1, Ljava/util/concurrent/RejectedExecutionException;

    if-eqz v1, :cond_6a

    if-nez v0, :cond_6a

    .line 131
    monitor-exit v2

    return-void

    .line 129
    :cond_6a
    throw p1

    :catchall_6b
    move-exception p1

    .line 131
    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_4e .. :try_end_6d} :catchall_6b

    throw p1

    .line 96
    :cond_6e
    :goto_6e
    :try_start_6e
    iget-object v1, p0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;->mQueue:Ljava/util/Deque;

    invoke-interface {v1, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 97
    monitor-exit v0

    return-void

    :catchall_75
    move-exception p1

    .line 116
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_6e .. :try_end_77} :catchall_75

    throw p1
.end method
