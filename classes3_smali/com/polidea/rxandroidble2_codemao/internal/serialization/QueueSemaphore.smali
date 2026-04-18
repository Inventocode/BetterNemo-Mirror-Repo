.class Lcom/polidea/rxandroidble2_codemao/internal/serialization/QueueSemaphore;
.super Ljava/lang/Object;
.source "QueueSemaphore.java"

# interfaces
.implements Lcom/polidea/rxandroidble2_codemao/internal/serialization/QueueReleaseInterface;


# instance fields
.field private final isReleased:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/serialization/QueueSemaphore;->isReleased:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public declared-synchronized awaitRelease()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 13
    :cond_1
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/serialization/QueueSemaphore;->isReleased:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_21

    if-nez v0, :cond_1f

    .line 15
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_c} :catch_d
    .catchall {:try_start_9 .. :try_end_c} :catchall_21

    goto :goto_1

    :catch_d
    move-exception v0

    .line 17
    :try_start_e
    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/serialization/QueueSemaphore;->isReleased:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Queue\'s awaitRelease() has been interrupted abruptly while it wasn\'t released by the release() method."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 18
    invoke-static {v0, v1, v2}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_21

    goto :goto_1

    .line 23
    :cond_1f
    monitor-exit p0

    return-void

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .registers 4

    monitor-enter p0

    .line 27
    :try_start_1
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/serialization/QueueSemaphore;->isReleased:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 30
    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
