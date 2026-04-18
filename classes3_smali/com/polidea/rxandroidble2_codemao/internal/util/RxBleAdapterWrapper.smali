.class public Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;
.super Ljava/lang/Object;
.source "RxBleAdapterWrapper.java"


# static fields
.field private static nullBluetoothAdapter:Lcom/polidea/rxandroidble2_codemao/exceptions/BleException;


# instance fields
.field private final bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/exceptions/BleException;

    const-string v1, "bluetoothAdapter is null"

    invoke-direct {v0, v1}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;->nullBluetoothAdapter:Lcom/polidea/rxandroidble2_codemao/exceptions/BleException;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method


# virtual methods
.method public getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .registers 3

    .line 33
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_9

    .line 36
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    return-object p1

    .line 34
    :cond_9
    sget-object p1, Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;->nullBluetoothAdapter:Lcom/polidea/rxandroidble2_codemao/exceptions/BleException;

    throw p1
.end method

.method public hasBluetoothAdapter()Z
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isBluetoothEnabled()Z
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public startLeScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Landroid/bluetooth/le/ScanCallback;",
            ")V"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_c

    .line 68
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    return-void

    .line 66
    :cond_c
    sget-object p1, Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;->nullBluetoothAdapter:Lcom/polidea/rxandroidble2_codemao/exceptions/BleException;

    throw p1
.end method

.method public startLegacyLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_9

    .line 52
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result p1

    return p1

    .line 50
    :cond_9
    sget-object p1, Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;->nullBluetoothAdapter:Lcom/polidea/rxandroidble2_codemao/exceptions/BleException;

    throw p1
.end method

.method public stopLeScan(Landroid/bluetooth/le/ScanCallback;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_34

    .line 92
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "BluetoothAdapter is disabled, calling BluetoothLeScanner.stopScan(ScanCallback) may cause IllegalStateException"

    .line 94
    invoke-static {v0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 100
    :cond_13
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    if-nez v0, :cond_30

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 104
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "Cannot call BluetoothLeScanner.stopScan(ScanCallback) on \'null\' reference; BluetoothAdapter.isEnabled() == %b"

    .line 102
    invoke-static {v0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 111
    :cond_30
    invoke-virtual {v0, p1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    return-void

    .line 90
    :cond_34
    sget-object p1, Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;->nullBluetoothAdapter:Lcom/polidea/rxandroidble2_codemao/exceptions/BleException;

    throw p1
.end method

.method public stopLegacyLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .registers 3

    .line 57
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_8

    .line 60
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    return-void

    .line 58
    :cond_8
    sget-object p1, Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;->nullBluetoothAdapter:Lcom/polidea/rxandroidble2_codemao/exceptions/BleException;

    throw p1
.end method
