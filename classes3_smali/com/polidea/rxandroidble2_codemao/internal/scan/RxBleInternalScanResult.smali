.class public Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;
.super Ljava/lang/Object;
.source "RxBleInternalScanResult.java"

# interfaces
.implements Lcom/polidea/rxandroidble2_codemao/internal/ScanResultInterface;


# instance fields
.field private final bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private final isConnectable:Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;

.field private final rssi:I

.field private final scanCallbackType:Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

.field private final scanRecord:Lcom/polidea/rxandroidble2_codemao/scan/ScanRecord;

.field private final timestampNanos:J


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;IJLcom/polidea/rxandroidble2_codemao/scan/ScanRecord;Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;)V
    .registers 8

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 22
    iput p2, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;->rssi:I

    .line 23
    iput-wide p3, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;->timestampNanos:J

    .line 24
    iput-object p5, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;->scanRecord:Lcom/polidea/rxandroidble2_codemao/scan/ScanRecord;

    .line 25
    iput-object p6, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;->scanCallbackType:Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

    .line 26
    iput-object p7, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;->isConnectable:Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 2

    .line 60
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_c

    .line 61
    :cond_8
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public getRssi()I
    .registers 2

    .line 35
    iget v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;->rssi:I

    return v0
.end method

.method public getScanCallbackType()Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;->scanCallbackType:Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

    return-object v0
.end method

.method public getScanRecord()Lcom/polidea/rxandroidble2_codemao/scan/ScanRecord;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;->scanRecord:Lcom/polidea/rxandroidble2_codemao/scan/ScanRecord;

    return-object v0
.end method

.method public getTimestampNanos()J
    .registers 3

    .line 45
    iget-wide v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;->timestampNanos:J

    return-wide v0
.end method

.method public isConnectable()Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;->isConnectable:Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;

    return-object v0
.end method
