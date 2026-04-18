.class Lcom/polidea/rxandroidble2_codemao/internal/serialization/ClientOperationQueueImpl$2;
.super Ljava/lang/Object;
.source "ClientOperationQueueImpl.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2_codemao/internal/serialization/ClientOperationQueueImpl;->queue(Lcom/polidea/rxandroidble2_codemao/internal/operations/Operation;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2_codemao/internal/serialization/ClientOperationQueueImpl;

.field final synthetic val$operation:Lcom/polidea/rxandroidble2_codemao/internal/operations/Operation;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2_codemao/internal/serialization/ClientOperationQueueImpl;Lcom/polidea/rxandroidble2_codemao/internal/operations/Operation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/serialization/ClientOperationQueueImpl$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/serialization/ClientOperationQueueImpl;

    iput-object p2, p0, Lcom/polidea/rxandroidble2_codemao/internal/serialization/ClientOperationQueueImpl$2;->val$operation:Lcom/polidea/rxandroidble2_codemao/internal/operations/Operation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "TT;>;)V"
        }
    .end annotation

    .line 64
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/serialization/FIFORunnableEntry;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/serialization/ClientOperationQueueImpl$2;->val$operation:Lcom/polidea/rxandroidble2_codemao/internal/operations/Operation;

    invoke-direct {v0, v1, p1}, Lcom/polidea/rxandroidble2_codemao/internal/serialization/FIFORunnableEntry;-><init>(Lcom/polidea/rxandroidble2_codemao/internal/operations/Operation;Lio/reactivex/ObservableEmitter;)V

    .line 66
    new-instance v1, Lcom/polidea/rxandroidble2_codemao/internal/serialization/ClientOperationQueueImpl$2$1;

    invoke-direct {v1, p0, v0}, Lcom/polidea/rxandroidble2_codemao/internal/serialization/ClientOperationQueueImpl$2$1;-><init>(Lcom/polidea/rxandroidble2_codemao/internal/serialization/ClientOperationQueueImpl$2;Lcom/polidea/rxandroidble2_codemao/internal/serialization/FIFORunnableEntry;)V

    invoke-static {v1}, Lio/reactivex/disposables/Disposables;->fromAction(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    invoke-interface {p1, v1}, Lio/reactivex/ObservableEmitter;->setDisposable(Lio/reactivex/disposables/Disposable;)V

    .line 75
    iget-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/serialization/ClientOperationQueueImpl$2;->val$operation:Lcom/polidea/rxandroidble2_codemao/internal/operations/Operation;

    invoke-static {p1}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->logOperationQueued(Lcom/polidea/rxandroidble2_codemao/internal/operations/Operation;)V

    .line 76
    iget-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/serialization/ClientOperationQueueImpl$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/serialization/ClientOperationQueueImpl;

    iget-object p1, p1, Lcom/polidea/rxandroidble2_codemao/internal/serialization/ClientOperationQueueImpl;->queue:Lcom/polidea/rxandroidble2_codemao/internal/serialization/OperationPriorityFifoBlockingQueue;

    invoke-virtual {p1, v0}, Lcom/polidea/rxandroidble2_codemao/internal/serialization/OperationPriorityFifoBlockingQueue;->add(Lcom/polidea/rxandroidble2_codemao/internal/serialization/FIFORunnableEntry;)V

    return-void
.end method
