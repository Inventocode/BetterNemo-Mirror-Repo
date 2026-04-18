.class final Lcom/google/common/util/concurrent/SequentialExecutor;
.super Ljava/lang/Object;
.source "SequentialExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;,
        Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final queue:Ljava/util/Deque;
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "queue"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final worker:Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;

.field private workerRunCount:J
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "queue"
    .end annotation
.end field

.field private workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "queue"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    const-class v0, Lcom/google/common/util/concurrent/SequentialExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/SequentialExecutor;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->queue:Ljava/util/Deque;

    .line 69
    sget-object v0, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->IDLE:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    iput-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    const-wide/16 v0, 0x0

    .line 79
    iput-wide v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunCount:J

    .line 82
    new-instance v0, Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;-><init>(Lcom/google/common/util/concurrent/SequentialExecutor;Lcom/google/common/util/concurrent/SequentialExecutor$1;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->worker:Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;

    .line 86
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic access$100(Lcom/google/common/util/concurrent/SequentialExecutor;)Ljava/util/Deque;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->queue:Ljava/util/Deque;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/common/util/concurrent/SequentialExecutor;)Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    return-object p0
.end method

.method static synthetic access$202(Lcom/google/common/util/concurrent/SequentialExecutor;Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;)Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    return-object p1
.end method

.method static synthetic access$308(Lcom/google/common/util/concurrent/SequentialExecutor;)J
    .registers 5

    .line 49
    iget-wide v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunCount:J

    return-wide v0
.end method

.method static synthetic access$400()Ljava/util/logging/Logger;
    .registers 1

    .line 49
    sget-object v0, Lcom/google/common/util/concurrent/SequentialExecutor;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 10

    .line 97
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->queue:Ljava/util/Deque;

    monitor-enter v0

    .line 103
    :try_start_6
    iget-object v1, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    sget-object v2, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->RUNNING:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    if-eq v1, v2, :cond_6e

    sget-object v2, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->QUEUED:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    if-ne v1, v2, :cond_11

    goto :goto_6e

    .line 108
    :cond_11
    iget-wide v3, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunCount:J

    .line 116
    new-instance v1, Lcom/google/common/util/concurrent/SequentialExecutor$1;

    invoke-direct {v1, p0, p1}, Lcom/google/common/util/concurrent/SequentialExecutor$1;-><init>(Lcom/google/common/util/concurrent/SequentialExecutor;Ljava/lang/Runnable;)V

    .line 123
    iget-object p1, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->queue:Ljava/util/Deque;

    invoke-interface {p1, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object p1, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->QUEUING:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    iput-object p1, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    .line 125
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_75

    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 128
    :try_start_24
    iget-object v6, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->executor:Ljava/util/concurrent/Executor;

    iget-object v7, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->worker:Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_2b} :catch_4a
    .catch Ljava/lang/Error; {:try_start_24 .. :try_end_2b} :catch_48

    .line 154
    iget-object v1, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    if-eq v1, p1, :cond_30

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    if-eqz v0, :cond_34

    return-void

    .line 158
    :cond_34
    iget-object v6, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->queue:Ljava/util/Deque;

    monitor-enter v6

    .line 159
    :try_start_37
    iget-wide v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunCount:J

    cmp-long v5, v0, v3

    if-nez v5, :cond_43

    iget-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    if-ne v0, p1, :cond_43

    .line 160
    iput-object v2, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    .line 162
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

    .line 130
    :goto_4b
    iget-object v2, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->queue:Ljava/util/Deque;

    monitor-enter v2

    .line 131
    :try_start_4e
    iget-object v3, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->workerRunningState:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    sget-object v4, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->IDLE:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    if-eq v3, v4, :cond_58

    sget-object v4, Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;->QUEUING:Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;

    if-ne v3, v4, :cond_61

    :cond_58
    iget-object v3, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->queue:Ljava/util/Deque;

    .line 133
    invoke-interface {v3, v1}, Ljava/util/Deque;->removeLastOccurrence(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    goto :goto_62

    :cond_61
    const/4 v0, 0x0

    .line 136
    :goto_62
    instance-of v1, p1, Ljava/util/concurrent/RejectedExecutionException;

    if-eqz v1, :cond_6a

    if-nez v0, :cond_6a

    .line 139
    monitor-exit v2

    return-void

    .line 137
    :cond_6a
    throw p1

    :catchall_6b
    move-exception p1

    .line 139
    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_4e .. :try_end_6d} :catchall_6b

    throw p1

    .line 104
    :cond_6e
    :goto_6e
    :try_start_6e
    iget-object v1, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->queue:Ljava/util/Deque;

    invoke-interface {v1, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 105
    monitor-exit v0

    return-void

    :catchall_75
    move-exception p1

    .line 125
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_6e .. :try_end_77} :catchall_75

    throw p1
.end method
