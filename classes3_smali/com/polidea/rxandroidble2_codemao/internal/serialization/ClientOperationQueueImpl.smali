.class public Lcom/polidea/rxandroidble2_codemao/internal/serialization/ClientOperationQueueImpl;
.super Ljava/lang/Object;
.source "ClientOperationQueueImpl.java"

# interfaces
.implements Lcom/polidea/rxandroidble2_codemao/internal/serialization/ClientOperationQueue;


# instance fields
.field final queue:Lcom/polidea/rxandroidble2_codemao/internal/serialization/OperationPriorityFifoBlockingQueue;


# direct methods
.method public constructor <init>(Lio/reactivex/Scheduler;)V
    .registers 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/serialization/OperationPriorityFifoBlockingQueue;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2_codemao/internal/serialization/OperationPriorityFifoBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/serialization/ClientOperationQueueImpl;->queue:Lcom/polidea/rxandroidble2_codemao/internal/serialization/OperationPriorityFifoBlockingQueue;

    .line 30
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/polidea/rxandroidble2_codemao/internal/serialization/ClientOperationQueueImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/serialization/ClientOperationQueueImpl$1;-><init>(Lcom/polidea/rxandroidble2_codemao/internal/serialization/ClientOperationQueueImpl;Lio/reactivex/Scheduler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 55
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public queue(Lcom/polidea/rxandroidble2_codemao/internal/operations/Operation;)Lio/reactivex/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/polidea/rxandroidble2_codemao/internal/operations/Operation<",
            "TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/serialization/ClientOperationQueueImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/serialization/ClientOperationQueueImpl$2;-><init>(Lcom/polidea/rxandroidble2_codemao/internal/serialization/ClientOperationQueueImpl;Lcom/polidea/rxandroidble2_codemao/internal/operations/Operation;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
