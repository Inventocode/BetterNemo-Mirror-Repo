.class Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;
.super Ljava/lang/Object;
.source "WeakHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/view/banner/WeakHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChainedRef"
.end annotation


# instance fields
.field lock:Ljava/util/concurrent/locks/Lock;

.field next:Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;

.field prev:Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;

.field final runnable:Ljava/lang/Runnable;

.field final wrapper:Lcom/codemao/nemo/view/banner/WeakHandler$WeakRunnable;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V
    .registers 4

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    iput-object p2, p0, Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;->runnable:Ljava/lang/Runnable;

    .line 424
    iput-object p1, p0, Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    .line 425
    new-instance p1, Lcom/codemao/nemo/view/banner/WeakHandler$WeakRunnable;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, v0, p2}, Lcom/codemao/nemo/view/banner/WeakHandler$WeakRunnable;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;->wrapper:Lcom/codemao/nemo/view/banner/WeakHandler$WeakRunnable;

    return-void
.end method


# virtual methods
.method public insertAfter(Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;)V
    .registers 3

    .line 446
    iget-object v0, p0, Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 448
    :try_start_5
    iget-object v0, p0, Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;->next:Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;

    if-eqz v0, :cond_b

    .line 449
    iput-object p1, v0, Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;->prev:Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;

    .line 452
    :cond_b
    iput-object v0, p1, Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;->next:Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;

    .line 453
    iput-object p1, p0, Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;->next:Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;

    .line 454
    iput-object p0, p1, Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;->prev:Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_17

    .line 456
    iget-object p1, p0, Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_17
    move-exception p1

    iget-object v0, p0, Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 457
    throw p1
.end method

.method public remove()Lcom/codemao/nemo/view/banner/WeakHandler$WeakRunnable;
    .registers 3

    .line 429
    iget-object v0, p0, Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 431
    :try_start_5
    iget-object v0, p0, Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;->prev:Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;

    if-eqz v0, :cond_d

    .line 432
    iget-object v1, p0, Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;->next:Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;

    iput-object v1, v0, Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;->next:Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;

    .line 434
    :cond_d
    iget-object v1, p0, Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;->next:Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;

    if-eqz v1, :cond_13

    .line 435
    iput-object v0, v1, Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;->prev:Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;

    :cond_13
    const/4 v0, 0x0

    .line 437
    iput-object v0, p0, Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;->prev:Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;

    .line 438
    iput-object v0, p0, Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;->next:Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_20

    .line 440
    iget-object v0, p0, Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 442
    iget-object v0, p0, Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;->wrapper:Lcom/codemao/nemo/view/banner/WeakHandler$WeakRunnable;

    return-object v0

    :catchall_20
    move-exception v0

    .line 440
    iget-object v1, p0, Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 441
    throw v0
.end method

.method public remove(Ljava/lang/Runnable;)Lcom/codemao/nemo/view/banner/WeakHandler$WeakRunnable;
    .registers 4

    .line 462
    iget-object v0, p0, Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 464
    :try_start_5
    iget-object v0, p0, Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;->next:Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;

    :goto_7
    if-eqz v0, :cond_1a

    .line 466
    iget-object v1, v0, Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;->runnable:Ljava/lang/Runnable;

    if-ne v1, p1, :cond_17

    .line 467
    invoke-virtual {v0}, Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;->remove()Lcom/codemao/nemo/view/banner/WeakHandler$WeakRunnable;

    move-result-object p1
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_21

    .line 472
    iget-object v0, p0, Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 469
    :cond_17
    :try_start_17
    iget-object v0, v0, Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;->next:Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_21

    goto :goto_7

    .line 472
    :cond_1a
    iget-object p1, p0, Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, 0x0

    return-object p1

    :catchall_21
    move-exception p1

    iget-object v0, p0, Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 473
    throw p1
.end method
