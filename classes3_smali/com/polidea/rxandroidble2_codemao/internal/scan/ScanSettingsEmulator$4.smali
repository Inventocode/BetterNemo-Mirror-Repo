.class Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator$4;
.super Ljava/lang/Object;
.source "ScanSettingsEmulator.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator;->toFirstMatch()Lio/reactivex/functions/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;",
        "Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;)Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;
    .registers 11

    .line 168
    new-instance v8, Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;

    .line 169
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 170
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;->getRssi()I

    move-result v2

    .line 171
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;->getTimestampNanos()J

    move-result-wide v3

    .line 172
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;->getScanRecord()Lcom/polidea/rxandroidble2_codemao/scan/ScanRecord;

    move-result-object v5

    sget-object v6, Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;->CALLBACK_TYPE_FIRST_MATCH:Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;

    .line 174
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;->isConnectable()Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;-><init>(Landroid/bluetooth/BluetoothDevice;IJLcom/polidea/rxandroidble2_codemao/scan/ScanRecord;Lcom/polidea/rxandroidble2_codemao/scan/ScanCallbackType;Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;)V

    return-object v8
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 165
    check-cast p1, Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator$4;->apply(Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;)Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;

    move-result-object p1

    return-object p1
.end method
