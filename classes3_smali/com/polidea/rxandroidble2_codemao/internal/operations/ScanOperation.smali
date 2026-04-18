.class public abstract Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperation;
.super Lcom/polidea/rxandroidble2_codemao/internal/QueueOperation;
.source "ScanOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SCAN_RESU",
        "LT_TYPE:Ljava/lang/Object;",
        "SCAN_CA",
        "LLBACK_TYPE:Ljava/lang/Object;",
        ">",
        "Lcom/polidea/rxandroidble2_codemao/internal/QueueOperation<",
        "TSCAN_RESU",
        "LT_TYPE;",
        ">;"
    }
.end annotation


# instance fields
.field final rxBleAdapterWrapper:Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;)V
    .registers 2

    .line 25
    invoke-direct {p0}, Lcom/polidea/rxandroidble2_codemao/internal/QueueOperation;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperation;->rxBleAdapterWrapper:Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;

    return-void
.end method


# virtual methods
.method abstract createScanCallback(Lio/reactivex/ObservableEmitter;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "TSCAN_RESU",
            "LT_TYPE;",
            ">;)TSCAN_CA",
            "LLBACK_TYPE;"
        }
    .end annotation
.end method

.method protected final protectedRun(Lio/reactivex/ObservableEmitter;Lcom/polidea/rxandroidble2_codemao/internal/serialization/QueueReleaseInterface;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "TSCAN_RESU",
            "LT_TYPE;",
            ">;",
            "Lcom/polidea/rxandroidble2_codemao/internal/serialization/QueueReleaseInterface;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperation;->createScanCallback(Lio/reactivex/ObservableEmitter;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 35
    :try_start_5
    new-instance v2, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperation$1;

    invoke-direct {v2, p0, v0}, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperation$1;-><init>(Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperation;Ljava/lang/Object;)V

    invoke-interface {p1, v2}, Lio/reactivex/ObservableEmitter;->setCancellable(Lio/reactivex/functions/Cancellable;)V

    const-string v2, "Scan operation is requested to start."

    new-array v3, v1, [Ljava/lang/Object;

    .line 42
    invoke-static {v2, v3}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperation;->rxBleAdapterWrapper:Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;

    invoke-virtual {p0, v2, v0}, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperation;->startScan(Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 46
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;

    invoke-direct {v0, v1}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;-><init>(I)V

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->tryOnError(Ljava/lang/Throwable;)Z
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_25

    goto :goto_35

    :catchall_25
    move-exception v0

    :try_start_26
    const-string v2, "Error while calling the start scan function"

    new-array v3, v1, [Ljava/lang/Object;

    .line 49
    invoke-static {v0, v2, v3}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    new-instance v2, Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;

    invoke-direct {v2, v1, v0}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;-><init>(ILjava/lang/Throwable;)V

    invoke-interface {p1, v2}, Lio/reactivex/ObservableEmitter;->tryOnError(Ljava/lang/Throwable;)Z
    :try_end_35
    .catchall {:try_start_26 .. :try_end_35} :catchall_39

    .line 52
    :cond_35
    :goto_35
    invoke-interface {p2}, Lcom/polidea/rxandroidble2_codemao/internal/serialization/QueueReleaseInterface;->release()V

    return-void

    :catchall_39
    move-exception p1

    invoke-interface {p2}, Lcom/polidea/rxandroidble2_codemao/internal/serialization/QueueReleaseInterface;->release()V

    .line 53
    throw p1
.end method

.method protected provideException(Landroid/os/DeadObjectException;)Lcom/polidea/rxandroidble2_codemao/exceptions/BleException;
    .registers 4

    .line 58
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;-><init>(ILjava/lang/Throwable;)V

    return-object v0
.end method

.method abstract startScan(Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;",
            "TSCAN_CA",
            "LLBACK_TYPE;",
            ")Z"
        }
    .end annotation
.end method

.method abstract stopScan(Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;",
            "TSCAN_CA",
            "LLBACK_TYPE;",
            ")V"
        }
    .end annotation
.end method
