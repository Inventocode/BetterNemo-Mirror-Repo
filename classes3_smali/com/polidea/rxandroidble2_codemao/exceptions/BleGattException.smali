.class public Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattException;
.super Lcom/polidea/rxandroidble2_codemao/exceptions/BleException;
.source "BleGattException.java"


# instance fields
.field private final bleGattOperationType:Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;

.field private final gatt:Landroid/bluetooth/BluetoothGatt;

.field private final status:I


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothGatt;ILcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;)V
    .registers 5

    .line 38
    invoke-static {p1, p2, p3}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattException;->createMessage(Landroid/bluetooth/BluetoothGatt;ILcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleException;-><init>(Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattException;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 40
    iput p2, p0, Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattException;->status:I

    .line 41
    iput-object p3, p0, Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattException;->bleGattOperationType:Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;)V
    .registers 4

    const/4 v0, -0x1

    .line 45
    invoke-direct {p0, p1, v0, p2}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattException;-><init>(Landroid/bluetooth/BluetoothGatt;ILcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;)V

    return-void
.end method

.method private static createMessage(Landroid/bluetooth/BluetoothGatt;ILcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;)Ljava/lang/String;
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne p1, v3, :cond_17

    new-array p1, v0, [Ljava/lang/Object;

    .line 68
    invoke-static {p0}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattException;->getMacAddress(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v2

    aput-object p2, p1, v1

    const-string p0, "GATT exception from MAC address %s, with type %s"

    .line 67
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 71
    :cond_17
    invoke-static {p1}, Lcom/polidea/rxandroidble2_codemao/utils/GattStatusParser;->getGattCallbackStatusDescription(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    .line 75
    invoke-static {p0}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->commonMacMessage(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v1

    aput-object v3, v4, v0

    const/4 p0, 0x3

    aput-object p2, v4, p0

    const/4 p0, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, p0

    const/4 p0, 0x5

    const-string p1, "https://cs.android.com/android/platform/superproject/+/master:packages/modules/Bluetooth/system/stack/include/gatt_api.h"

    aput-object p1, v4, p0

    const-string p0, "GATT exception from %s, status %d (%s), type %s. (Look up status 0x%02x here %s)"

    .line 74
    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getMacAddress(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_11

    .line 61
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return-object p0
.end method


# virtual methods
.method public getBleGattOperationType()Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattException;->bleGattOperationType:Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;

    return-object v0
.end method
