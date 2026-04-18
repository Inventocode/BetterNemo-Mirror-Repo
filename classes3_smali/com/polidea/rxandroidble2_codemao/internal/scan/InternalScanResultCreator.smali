.class public Lcom/polidea/rxandroidble2_codemao/internal/scan/InternalScanResultCreator;
.super Ljava/lang/Object;
.source "InternalScanResultCreator.java"


# instance fields
.field private final isConnectableChecker:Lcom/polidea/rxandroidble2_codemao/internal/scan/IsConnectableChecker;

.field private final scanRecordParser:Lcom/polidea/rxandroidble2_codemao/internal/util/ScanRecordParser;


# direct methods
.method public constructor <init>(Lcom/polidea/rxandroidble2_codemao/internal/util/ScanRecordParser;Lcom/polidea/rxandroidble2_codemao/internal/scan/IsConnectableChecker;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/InternalScanResultCreator;->scanRecordParser:Lcom/polidea/rxandroidble2_codemao/internal/util/ScanRecordParser;

    .line 33
    iput-object p2, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/InternalScanResultCreator;->isConnectableChecker:Lcom/polidea/rxandroidble2_codemao/internal/scan/IsConnectableChecker;

    return-void
.end method

.method private static toScanCallbackType(I)Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_20

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1d

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1a

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 66
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "Unknown callback type %d -> check android.bluetooth.le.ScanSettings"

    invoke-static {p0, v0}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    sget-object p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;->CALLBACK_TYPE_UNKNOWN:Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

    return-object p0

    .line 64
    :cond_1a
    sget-object p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;->CALLBACK_TYPE_MATCH_LOST:Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

    return-object p0

    .line 62
    :cond_1d
    sget-object p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;->CALLBACK_TYPE_FIRST_MATCH:Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

    return-object p0

    .line 60
    :cond_20
    sget-object p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;->CALLBACK_TYPE_ALL_MATCHES:Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

    return-object p0
.end method


# virtual methods
.method public create(ILandroid/bluetooth/le/ScanResult;)Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;
    .registers 12

    .line 51
    new-instance v5, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanRecordImplNativeWrapper;

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/InternalScanResultCreator;->scanRecordParser:Lcom/polidea/rxandroidble2_codemao/internal/util/ScanRecordParser;

    invoke-direct {v5, v0, v1}, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanRecordImplNativeWrapper;-><init>(Landroid/bluetooth/le/ScanRecord;Lcom/polidea/rxandroidble2_codemao/internal/util/ScanRecordParser;)V

    .line 52
    new-instance v8, Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v2

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getTimestampNanos()J

    move-result-wide v3

    .line 53
    invoke-static {p1}, Lcom/polidea/rxandroidble2_codemao/internal/scan/InternalScanResultCreator;->toScanCallbackType(I)Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

    move-result-object v6

    iget-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/InternalScanResultCreator;->isConnectableChecker:Lcom/polidea/rxandroidble2_codemao/internal/scan/IsConnectableChecker;

    invoke-interface {p1, p2}, Lcom/polidea/rxandroidble2_codemao/internal/scan/IsConnectableChecker;->check(Landroid/bluetooth/le/ScanResult;)Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;-><init>(Landroid/bluetooth/BluetoothDevice;IJLcom/polidea/rxandroidble2_codemao/scan/ScanRecord;Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;)V

    return-object v8
.end method

.method public create(Landroid/bluetooth/BluetoothDevice;I[B)Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;
    .registers 13

    .line 37
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/InternalScanResultCreator;->scanRecordParser:Lcom/polidea/rxandroidble2_codemao/internal/util/ScanRecordParser;

    invoke-virtual {v0, p3}, Lcom/polidea/rxandroidble2_codemao/internal/util/ScanRecordParser;->parseFromBytes([B)Lcom/polidea/rxandroidble2_codemao/scan/ScanRecord;

    move-result-object v6

    .line 38
    new-instance p3, Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sget-object v7, Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;->CALLBACK_TYPE_UNSPECIFIED:Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

    sget-object v8, Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;->LEGACY_UNKNOWN:Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;

    move-object v1, p3

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;-><init>(Landroid/bluetooth/BluetoothDevice;IJLcom/polidea/rxandroidble2_codemao/scan/ScanRecord;Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;)V

    return-object p3
.end method

.method public create(Landroid/bluetooth/le/ScanResult;)Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;
    .registers 11

    .line 44
    new-instance v5, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanRecordImplNativeWrapper;

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/InternalScanResultCreator;->scanRecordParser:Lcom/polidea/rxandroidble2_codemao/internal/util/ScanRecordParser;

    invoke-direct {v5, v0, v1}, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanRecordImplNativeWrapper;-><init>(Landroid/bluetooth/le/ScanRecord;Lcom/polidea/rxandroidble2_codemao/internal/util/ScanRecordParser;)V

    .line 45
    new-instance v8, Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v2

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getTimestampNanos()J

    move-result-wide v3

    sget-object v6, Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;->CALLBACK_TYPE_BATCH:Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/InternalScanResultCreator;->isConnectableChecker:Lcom/polidea/rxandroidble2_codemao/internal/scan/IsConnectableChecker;

    .line 46
    invoke-interface {v0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/scan/IsConnectableChecker;->check(Landroid/bluetooth/le/ScanResult;)Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;-><init>(Landroid/bluetooth/BluetoothDevice;IJLcom/polidea/rxandroidble2_codemao/scan/ScanRecord;Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;)V

    return-object v8
.end method
