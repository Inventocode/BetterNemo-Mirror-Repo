.class Lcom/polidea/rxandroidble2_codemao/internal/serialization/ConnectionOperationQueueImpl$2$1;
.super Ljava/lang/Object;
.source "ConnectionOperationQueueImpl.java"

# interfaces
.implements Lio/reactivex/functions/Cancellable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2_codemao/internal/serialization/ConnectionOperationQueueImpl$2;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/polidea/rxandroidble2_codemao/internal/serialization/ConnectionOperationQueueImpl$2;

.field final synthetic val$entry:Lcom/polidea/rxandroidble2_codemao/internal/serialization/FIFORunnableEntry;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2_codemao/internal/serialization/ConnectionOperationQueueImpl$2;Lcom/polidea/rxandroidble2_codemao/internal/serialization/FIFORunnableEntry;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/serialization/ConnectionOperationQueueImpl$2$1;->this$1:Lcom/polidea/rxandroidble2_codemao/internal/serialization/ConnectionOperationQueueImpl$2;

    iput-object p2, p0, Lcom/polidea/rxandroidble2_codemao/internal/serialization/ConnectionOperationQueueImpl$2$1;->val$entry:Lcom/polidea/rxandroidble2_codemao/internal/serialization/FIFORunnableEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/serialization/ConnectionOperationQueueImpl$2$1;->this$1:Lcom/polidea/rxandroidble2_codemao/internal/serialization/ConnectionOperationQueueImpl$2;

    iget-object v0, v0, Lcom/polidea/rxandroidble2_codemao/internal/serialization/ConnectionOperationQueueImpl$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/serialization/ConnectionOperationQueueImpl;

    iget-object v0, v0, Lcom/polidea/rxandroidble2_codemao/internal/serialization/ConnectionOperationQueueImpl;->queue:Lcom/polidea/rxandroidble2_codemao/internal/serialization/OperationPriorityFifoBlockingQueue;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/serialization/ConnectionOperationQueueImpl$2$1;->val$entry:Lcom/polidea/rxandroidble2_codemao/internal/serialization/FIFORunnableEntry;

    invoke-virtual {v0, v1}, Lcom/polidea/rxandroidble2_codemao/internal/serialization/OperationPriorityFifoBlockingQueue;->remove(Lcom/polidea/rxandroidble2_codemao/internal/serialization/FIFORunnableEntry;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 114
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/serialization/ConnectionOperationQueueImpl$2$1;->this$1:Lcom/polidea/rxandroidble2_codemao/internal/serialization/ConnectionOperationQueueImpl$2;

    iget-object v0, v0, Lcom/polidea/rxandroidble2_codemao/internal/serialization/ConnectionOperationQueueImpl$2;->val$operation:Lcom/polidea/rxandroidble2_codemao/internal/operations/Operation;

    invoke-static {v0}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->logOperationRemoved(Lcom/polidea/rxandroidble2_codemao/internal/operations/Operation;)V

    :cond_15
    return-void
.end method
