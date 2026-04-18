.class Lcom/polidea/rxandroidble2_codemao/internal/QueueOperation$1;
.super Ljava/lang/Object;
.source "QueueOperation.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2_codemao/internal/QueueOperation;->run(Lcom/polidea/rxandroidble2_codemao/internal/serialization/QueueReleaseInterface;)Lio/reactivex/Observable;
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
.field final synthetic this$0:Lcom/polidea/rxandroidble2_codemao/internal/QueueOperation;

.field final synthetic val$queueReleaseInterface:Lcom/polidea/rxandroidble2_codemao/internal/serialization/QueueReleaseInterface;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2_codemao/internal/QueueOperation;Lcom/polidea/rxandroidble2_codemao/internal/serialization/QueueReleaseInterface;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/QueueOperation$1;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/QueueOperation;

    iput-object p2, p0, Lcom/polidea/rxandroidble2_codemao/internal/QueueOperation$1;->val$queueReleaseInterface:Lcom/polidea/rxandroidble2_codemao/internal/serialization/QueueReleaseInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 41
    :try_start_1
    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/QueueOperation$1;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/QueueOperation;

    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/internal/QueueOperation$1;->val$queueReleaseInterface:Lcom/polidea/rxandroidble2_codemao/internal/serialization/QueueReleaseInterface;

    invoke-virtual {v1, p1, v2}, Lcom/polidea/rxandroidble2_codemao/internal/QueueOperation;->protectedRun(Lio/reactivex/ObservableEmitter;Lcom/polidea/rxandroidble2_codemao/internal/serialization/QueueReleaseInterface;)V
    :try_end_8
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_8} :catch_15
    .catchall {:try_start_1 .. :try_end_8} :catchall_9

    goto :goto_26

    :catchall_9
    move-exception v1

    .line 46
    invoke-interface {p1, v1}, Lio/reactivex/ObservableEmitter;->tryOnError(Ljava/lang/Throwable;)Z

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "QueueOperation terminated with an unexpected exception"

    .line 47
    invoke-static {v1, v0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_26

    :catch_15
    move-exception v1

    .line 43
    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/internal/QueueOperation$1;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/QueueOperation;

    invoke-virtual {v2, v1}, Lcom/polidea/rxandroidble2_codemao/internal/QueueOperation;->provideException(Landroid/os/DeadObjectException;)Lcom/polidea/rxandroidble2_codemao/exceptions/BleException;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/reactivex/ObservableEmitter;->tryOnError(Ljava/lang/Throwable;)Z

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "QueueOperation terminated with a DeadObjectException"

    .line 44
    invoke-static {v1, v0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_26
    return-void
.end method
