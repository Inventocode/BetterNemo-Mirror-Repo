.class public Lcom/qiniu/android/utils/GroupTaskThread;
.super Ljava/lang/Thread;
.source "GroupTaskThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/utils/GroupTaskThread$GroupTaskCompleteHandler;,
        Lcom/qiniu/android/utils/GroupTaskThread$GroupTask;
    }
.end annotation


# instance fields
.field public final completeHandler:Lcom/qiniu/android/utils/GroupTaskThread$GroupTaskCompleteHandler;

.field private tasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qiniu/android/utils/GroupTaskThread$GroupTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/qiniu/android/utils/GroupTaskThread$GroupTaskCompleteHandler;)V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/utils/GroupTaskThread;->tasks:Ljava/util/ArrayList;

    .line 12
    iput-object p1, p0, Lcom/qiniu/android/utils/GroupTaskThread;->completeHandler:Lcom/qiniu/android/utils/GroupTaskThread$GroupTaskCompleteHandler;

    return-void
.end method

.method private completeAction()V
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/qiniu/android/utils/GroupTaskThread;->completeHandler:Lcom/qiniu/android/utils/GroupTaskThread$GroupTaskCompleteHandler;

    if-eqz v0, :cond_7

    .line 77
    invoke-interface {v0}, Lcom/qiniu/android/utils/GroupTaskThread$GroupTaskCompleteHandler;->complete()V

    :cond_7
    return-void
.end method

.method private getNextWaitingTask()Lcom/qiniu/android/utils/GroupTaskThread$GroupTask;
    .registers 5

    const/4 v0, 0x0

    .line 52
    :goto_1
    iget-object v1, p0, Lcom/qiniu/android/utils/GroupTaskThread;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 53
    iget-object v1, p0, Lcom/qiniu/android/utils/GroupTaskThread;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qiniu/android/utils/GroupTaskThread$GroupTask;

    .line 54
    iget-object v2, v1, Lcom/qiniu/android/utils/GroupTaskThread$GroupTask;->state:Lcom/qiniu/android/utils/GroupTaskThread$GroupTask$State;

    sget-object v3, Lcom/qiniu/android/utils/GroupTaskThread$GroupTask$State;->Waiting:Lcom/qiniu/android/utils/GroupTaskThread$GroupTask$State;

    if-ne v2, v3, :cond_18

    goto :goto_1c

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    return-object v1
.end method

.method private isAllTasksCompleted()Z
    .registers 5

    .line 62
    iget-object v0, p0, Lcom/qiniu/android/utils/GroupTaskThread;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    const/4 v0, 0x0

    .line 66
    :goto_b
    iget-object v2, p0, Lcom/qiniu/android/utils/GroupTaskThread;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_25

    .line 67
    iget-object v2, p0, Lcom/qiniu/android/utils/GroupTaskThread;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qiniu/android/utils/GroupTaskThread$GroupTask;

    .line 68
    iget-object v2, v2, Lcom/qiniu/android/utils/GroupTaskThread$GroupTask;->state:Lcom/qiniu/android/utils/GroupTaskThread$GroupTask$State;

    sget-object v3, Lcom/qiniu/android/utils/GroupTaskThread$GroupTask$State;->Complete:Lcom/qiniu/android/utils/GroupTaskThread$GroupTask$State;

    if-eq v2, v3, :cond_22

    goto :goto_26

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_25
    const/4 v1, 0x1

    :goto_26
    return v1
.end method


# virtual methods
.method public addTask(Lcom/qiniu/android/utils/GroupTaskThread$GroupTask;)V
    .registers 3

    .line 43
    monitor-enter p0

    .line 44
    :try_start_1
    invoke-direct {p0}, Lcom/qiniu/android/utils/GroupTaskThread;->isAllTasksCompleted()Z

    move-result v0

    if-nez v0, :cond_c

    .line 45
    iget-object v0, p0, Lcom/qiniu/android/utils/GroupTaskThread;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_c
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public run()V
    .registers 3

    .line 17
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 19
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 21
    monitor-enter p0

    .line 22
    :try_start_a
    invoke-direct {p0}, Lcom/qiniu/android/utils/GroupTaskThread;->isAllTasksCompleted()Z

    move-result v0

    .line 23
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_2b

    if-eqz v0, :cond_15

    .line 26
    invoke-direct {p0}, Lcom/qiniu/android/utils/GroupTaskThread;->completeAction()V

    goto :goto_2e

    .line 30
    :cond_15
    invoke-direct {p0}, Lcom/qiniu/android/utils/GroupTaskThread;->getNextWaitingTask()Lcom/qiniu/android/utils/GroupTaskThread$GroupTask;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 32
    sget-object v1, Lcom/qiniu/android/utils/GroupTaskThread$GroupTask$State;->Running:Lcom/qiniu/android/utils/GroupTaskThread$GroupTask$State;

    iput-object v1, v0, Lcom/qiniu/android/utils/GroupTaskThread$GroupTask;->state:Lcom/qiniu/android/utils/GroupTaskThread$GroupTask$State;

    .line 33
    invoke-virtual {v0, v0}, Lcom/qiniu/android/utils/GroupTaskThread$GroupTask;->run(Lcom/qiniu/android/utils/GroupTaskThread$GroupTask;)V

    goto :goto_3

    :cond_23
    const-wide/16 v0, 0xa

    .line 36
    :try_start_25
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_3

    :catch_29
    nop

    goto :goto_3

    :catchall_2b
    move-exception v0

    .line 23
    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v0

    :cond_2e
    :goto_2e
    return-void
.end method
