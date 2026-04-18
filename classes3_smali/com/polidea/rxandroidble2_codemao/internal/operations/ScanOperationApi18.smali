.class public Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperationApi18;
.super Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperation;
.source "ScanOperationApi18.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperation<",
        "Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;",
        "Landroid/bluetooth/BluetoothAdapter$LeScanCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final scanFilterMatcher:Lcom/polidea/rxandroidble2_codemao/internal/scan/EmulatedScanFilterMatcher;

.field final scanResultCreator:Lcom/polidea/rxandroidble2_codemao/internal/scan/InternalScanResultCreator;


# direct methods
.method public constructor <init>(Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;Lcom/polidea/rxandroidble2_codemao/internal/scan/InternalScanResultCreator;Lcom/polidea/rxandroidble2_codemao/internal/scan/EmulatedScanFilterMatcher;)V
    .registers 4

    .line 31
    invoke-direct {p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperation;-><init>(Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;)V

    .line 32
    iput-object p2, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperationApi18;->scanResultCreator:Lcom/polidea/rxandroidble2_codemao/internal/scan/InternalScanResultCreator;

    .line 33
    iput-object p3, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperationApi18;->scanFilterMatcher:Lcom/polidea/rxandroidble2_codemao/internal/scan/EmulatedScanFilterMatcher;

    return-void
.end method


# virtual methods
.method createScanCallback(Lio/reactivex/ObservableEmitter;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;",
            ">;)",
            "Landroid/bluetooth/BluetoothAdapter$LeScanCallback;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperationApi18$1;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperationApi18$1;-><init>(Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperationApi18;Lio/reactivex/ObservableEmitter;)V

    return-object v0
.end method

.method bridge synthetic createScanCallback(Lio/reactivex/ObservableEmitter;)Ljava/lang/Object;
    .registers 2

    .line 18
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperationApi18;->createScanCallback(Lio/reactivex/ObservableEmitter;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    move-result-object p1

    return-object p1
.end method

.method startScan(Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    .registers 5

    .line 59
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperationApi18;->scanFilterMatcher:Lcom/polidea/rxandroidble2_codemao/internal/scan/EmulatedScanFilterMatcher;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2_codemao/internal/scan/EmulatedScanFilterMatcher;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "No library side filtering —> debug logs of scanned devices disabled"

    .line 60
    invoke-static {v1, v0}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    :cond_10
    invoke-virtual {p1, p2}, Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;->startLegacyLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result p1

    return p1
.end method

.method bridge synthetic startScan(Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;Ljava/lang/Object;)Z
    .registers 3

    .line 18
    check-cast p2, Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {p0, p1, p2}, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperationApi18;->startScan(Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result p1

    return p1
.end method

.method stopScan(Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .registers 3

    .line 68
    invoke-virtual {p1, p2}, Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;->stopLegacyLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    return-void
.end method

.method bridge synthetic stopScan(Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;Ljava/lang/Object;)V
    .registers 3

    .line 18
    check-cast p2, Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {p0, p1, p2}, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperationApi18;->stopScan(Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScanOperationApi18{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperationApi18;->scanFilterMatcher:Lcom/polidea/rxandroidble2_codemao/internal/scan/EmulatedScanFilterMatcher;

    invoke-virtual {v1}, Lcom/polidea/rxandroidble2_codemao/internal/scan/EmulatedScanFilterMatcher;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, ""

    goto :goto_28

    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ANY_MUST_MATCH -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperationApi18;->scanFilterMatcher:Lcom/polidea/rxandroidble2_codemao/internal/scan/EmulatedScanFilterMatcher;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
