.class public Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperationApi21;
.super Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperation;
.source "ScanOperationApi21.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperation<",
        "Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;",
        "Landroid/bluetooth/le/ScanCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final androidScanObjectsConverter:Lcom/polidea/rxandroidble2_codemao/internal/scan/AndroidScanObjectsConverter;

.field final emulatedScanFilterMatcher:Lcom/polidea/rxandroidble2_codemao/internal/scan/EmulatedScanFilterMatcher;

.field final internalScanResultCreator:Lcom/polidea/rxandroidble2_codemao/internal/scan/InternalScanResultCreator;

.field private scanEmitter:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private final scanFilters:[Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;

.field private final scanSettings:Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;


# direct methods
.method public constructor <init>(Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;Lcom/polidea/rxandroidble2_codemao/internal/scan/InternalScanResultCreator;Lcom/polidea/rxandroidble2_codemao/internal/scan/AndroidScanObjectsConverter;Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;Lcom/polidea/rxandroidble2_codemao/internal/scan/EmulatedScanFilterMatcher;[Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;)V
    .registers 7

    .line 53
    invoke-direct {p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperation;-><init>(Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;)V

    .line 54
    iput-object p2, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperationApi21;->internalScanResultCreator:Lcom/polidea/rxandroidble2_codemao/internal/scan/InternalScanResultCreator;

    .line 55
    iput-object p4, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperationApi21;->scanSettings:Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;

    .line 56
    iput-object p5, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperationApi21;->emulatedScanFilterMatcher:Lcom/polidea/rxandroidble2_codemao/internal/scan/EmulatedScanFilterMatcher;

    .line 57
    iput-object p6, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperationApi21;->scanFilters:[Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;

    .line 58
    iput-object p3, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperationApi21;->androidScanObjectsConverter:Lcom/polidea/rxandroidble2_codemao/internal/scan/AndroidScanObjectsConverter;

    const/4 p1, 0x0

    .line 59
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperationApi21;->scanEmitter:Lio/reactivex/ObservableEmitter;

    return-void
.end method

.method static synthetic access$000(Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperationApi21;)Lio/reactivex/ObservableEmitter;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperationApi21;->scanEmitter:Lio/reactivex/ObservableEmitter;

    return-object p0
.end method

.method static errorCodeToBleErrorCode(I)I
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x5

    if-eq p0, v0, :cond_25

    const/4 v0, 0x2

    if-eq p0, v0, :cond_23

    const/4 v0, 0x3

    if-eq p0, v0, :cond_21

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1e

    if-eq p0, v1, :cond_1b

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "Encountered unknown scanning error code: %d -> check android.bluetooth.le.ScanCallback"

    .line 147
    invoke-static {v0, p0}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const p0, 0x7fffffff

    return p0

    :cond_1b
    const/16 p0, 0x9

    return p0

    :cond_1e
    const/16 p0, 0x8

    return p0

    :cond_21
    const/4 p0, 0x7

    return p0

    :cond_23
    const/4 p0, 0x6

    return p0

    :cond_25
    return v1
.end method


# virtual methods
.method createScanCallback(Lio/reactivex/ObservableEmitter;)Landroid/bluetooth/le/ScanCallback;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;",
            ">;)",
            "Landroid/bluetooth/le/ScanCallback;"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperationApi21;->scanEmitter:Lio/reactivex/ObservableEmitter;

    .line 65
    new-instance p1, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperationApi21$1;

    invoke-direct {p1, p0}, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperationApi21$1;-><init>(Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperationApi21;)V

    return-object p1
.end method

.method bridge synthetic createScanCallback(Lio/reactivex/ObservableEmitter;)Ljava/lang/Object;
    .registers 2

    .line 28
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperationApi21;->createScanCallback(Lio/reactivex/ObservableEmitter;)Landroid/bluetooth/le/ScanCallback;

    move-result-object p1

    return-object p1
.end method

.method startScan(Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;Landroid/bluetooth/le/ScanCallback;)Z
    .registers 6

    .line 113
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperationApi21;->emulatedScanFilterMatcher:Lcom/polidea/rxandroidble2_codemao/internal/scan/EmulatedScanFilterMatcher;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2_codemao/internal/scan/EmulatedScanFilterMatcher;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "No library side filtering —> debug logs of scanned devices disabled"

    .line 114
    invoke-static {v1, v0}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    :cond_10
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperationApi21;->androidScanObjectsConverter:Lcom/polidea/rxandroidble2_codemao/internal/scan/AndroidScanObjectsConverter;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperationApi21;->scanFilters:[Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;

    .line 117
    invoke-virtual {v0, v1}, Lcom/polidea/rxandroidble2_codemao/internal/scan/AndroidScanObjectsConverter;->toNativeFilters([Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperationApi21;->androidScanObjectsConverter:Lcom/polidea/rxandroidble2_codemao/internal/scan/AndroidScanObjectsConverter;

    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperationApi21;->scanSettings:Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;

    .line 118
    invoke-virtual {v1, v2}, Lcom/polidea/rxandroidble2_codemao/internal/scan/AndroidScanObjectsConverter;->toNativeSettings(Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;)Landroid/bluetooth/le/ScanSettings;

    move-result-object v1

    .line 116
    invoke-virtual {p1, v0, v1, p2}, Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;->startLeScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    const/4 p1, 0x1

    return p1
.end method

.method bridge synthetic startScan(Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;Ljava/lang/Object;)Z
    .registers 3

    .line 28
    check-cast p2, Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {p0, p1, p2}, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperationApi21;->startScan(Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;Landroid/bluetooth/le/ScanCallback;)Z

    move-result p1

    return p1
.end method

.method stopScan(Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;Landroid/bluetooth/le/ScanCallback;)V
    .registers 3

    .line 126
    invoke-virtual {p1, p2}, Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;->stopLeScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 127
    iget-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperationApi21;->scanEmitter:Lio/reactivex/ObservableEmitter;

    if-eqz p1, :cond_d

    .line 128
    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V

    const/4 p1, 0x0

    .line 129
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperationApi21;->scanEmitter:Lio/reactivex/ObservableEmitter;

    :cond_d
    return-void
.end method

.method bridge synthetic stopScan(Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;Ljava/lang/Object;)V
    .registers 3

    .line 28
    check-cast p2, Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {p0, p1, p2}, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperationApi21;->stopScan(Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;Landroid/bluetooth/le/ScanCallback;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 154
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperationApi21;->scanFilters:[Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;

    if-eqz v0, :cond_a

    array-length v0, v0

    if-nez v0, :cond_8

    goto :goto_a

    :cond_8
    const/4 v0, 0x0

    goto :goto_b

    :cond_a
    :goto_a
    const/4 v0, 0x1

    .line 155
    :goto_b
    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperationApi21;->emulatedScanFilterMatcher:Lcom/polidea/rxandroidble2_codemao/internal/scan/EmulatedScanFilterMatcher;

    invoke-virtual {v1}, Lcom/polidea/rxandroidble2_codemao/internal/scan/EmulatedScanFilterMatcher;->isEmpty()Z

    move-result v1

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ScanOperationApi21{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    if-eqz v0, :cond_21

    move-object v4, v3

    goto :goto_38

    .line 157
    :cond_21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ANY_MUST_MATCH -> nativeFilters="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperationApi21;->scanFilters:[Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_38
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_42

    if-nez v1, :cond_42

    const-string v0, " and then "

    goto :goto_43

    :cond_42
    move-object v0, v3

    .line 158
    :goto_43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_49

    goto :goto_5c

    .line 159
    :cond_49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANY_MUST_MATCH -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/ScanOperationApi21;->emulatedScanFilterMatcher:Lcom/polidea/rxandroidble2_codemao/internal/scan/EmulatedScanFilterMatcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
