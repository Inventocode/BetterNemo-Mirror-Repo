.class public Lcom/polidea/rxandroidble2_codemao/internal/scan/InternalToExternalScanResultConverter;
.super Ljava/lang/Object;
.source "InternalToExternalScanResultConverter.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;",
        "Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final deviceProvider:Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceProvider;


# direct methods
.method public constructor <init>(Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceProvider;)V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/InternalToExternalScanResultConverter;->deviceProvider:Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceProvider;

    return-void
.end method


# virtual methods
.method public apply(Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;)Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;
    .registers 11

    .line 25
    new-instance v8, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;

    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/InternalToExternalScanResultConverter;->deviceProvider:Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceProvider;

    .line 26
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceProvider;->getBleDevice(Ljava/lang/String;)Lcom/polidea/rxandroidble2_codemao/RxBleDevice;

    move-result-object v1

    .line 27
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;->getRssi()I

    move-result v2

    .line 28
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;->getTimestampNanos()J

    move-result-wide v3

    .line 29
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;->getScanCallbackType()Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

    move-result-object v5

    .line 30
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;->getScanRecord()Lcom/polidea/rxandroidble2_codemao/scan/ScanRecord;

    move-result-object v6

    .line 31
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;->isConnectable()Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;-><init>(Lcom/polidea/rxandroidble2_codemao/RxBleDevice;IJLcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;Lcom/polidea/rxandroidble2_codemao/scan/ScanRecord;Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;)V

    return-object v8
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13
    check-cast p1, Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/scan/InternalToExternalScanResultConverter;->apply(Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;)Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;

    move-result-object p1

    return-object p1
.end method
