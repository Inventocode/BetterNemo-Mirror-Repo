.class Lcom/polidea/rxandroidble2_codemao/internal/operations/ConnectOperation$2;
.super Ljava/lang/Object;
.source "ConnectOperation.java"

# interfaces
.implements Lio/reactivex/SingleTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2_codemao/internal/operations/ConnectOperation;->wrapWithTimeoutWhenNotAutoconnecting()Lio/reactivex/SingleTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleTransformer<",
        "Landroid/bluetooth/BluetoothGatt;",
        "Landroid/bluetooth/BluetoothGatt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2_codemao/internal/operations/ConnectOperation;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2_codemao/internal/operations/ConnectOperation;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/ConnectOperation$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/operations/ConnectOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lio/reactivex/Single;)Lio/reactivex/Single;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Single<",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;)",
            "Lio/reactivex/Single<",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/ConnectOperation$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/operations/ConnectOperation;

    iget-boolean v1, v0, Lcom/polidea/rxandroidble2_codemao/internal/operations/ConnectOperation;->autoConnect:Z

    if-eqz v1, :cond_7

    goto :goto_18

    .line 96
    :cond_7
    iget-object v1, v0, Lcom/polidea/rxandroidble2_codemao/internal/operations/ConnectOperation;->connectTimeout:Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;

    iget-wide v3, v1, Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;->timeout:J

    iget-object v5, v1, Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;->timeoutTimeUnit:Ljava/util/concurrent/TimeUnit;

    iget-object v6, v1, Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;->timeoutScheduler:Lio/reactivex/Scheduler;

    .line 97
    invoke-virtual {v0}, Lcom/polidea/rxandroidble2_codemao/internal/operations/ConnectOperation;->prepareConnectionTimeoutError()Lio/reactivex/Single;

    move-result-object v7

    move-object v2, p1

    .line 96
    invoke-virtual/range {v2 .. v7}, Lio/reactivex/Single;->timeout(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;Lio/reactivex/SingleSource;)Lio/reactivex/Single;

    move-result-object p1

    :goto_18
    return-object p1
.end method

.method public bridge synthetic apply(Lio/reactivex/Single;)Lio/reactivex/SingleSource;
    .registers 2

    .line 90
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/operations/ConnectOperation$2;->apply(Lio/reactivex/Single;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method
