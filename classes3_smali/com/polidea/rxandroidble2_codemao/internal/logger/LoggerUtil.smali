.class public Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;
.super Ljava/lang/Object;
.source "LoggerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil$AttributeLogWrapper;
    }
.end annotation


# static fields
.field private static final HEX_ARRAY:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "0123456789ABCDEF"

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->HEX_ARRAY:[C

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .registers 11

    if-nez p0, :cond_5

    const-string p0, "null"

    return-object p0

    .line 24
    :cond_5
    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->getShouldLogAttributeValues()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "[...]"

    return-object p0

    .line 28
    :cond_e
    array-length v0, p0

    if-nez v0, :cond_14

    const-string p0, "[]"

    return-object p0

    :cond_14
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v0, -0x1

    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x2

    .line 39
    new-array v3, v1, [C

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_21
    if-ge v5, v0, :cond_3f

    .line 42
    aget-byte v6, p0, v5

    and-int/lit16 v6, v6, 0xff

    mul-int/lit8 v7, v5, 0x2

    add-int/lit8 v8, v7, 0x1

    add-int/2addr v8, v7

    .line 44
    sget-object v7, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->HEX_ARRAY:[C

    ushr-int/lit8 v9, v6, 0x4

    aget-char v9, v7, v9

    aput-char v9, v3, v8

    add-int/lit8 v8, v8, 0x1

    and-int/lit8 v6, v6, 0xf

    .line 45
    aget-char v6, v7, v6

    aput-char v6, v3, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :cond_3f
    const/4 p0, 0x0

    :goto_40
    if-ge p0, v2, :cond_56

    mul-int/lit8 v0, p0, 0x2

    add-int/lit8 v5, v0, 0x1

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x2

    const/16 v0, 0x2c

    .line 50
    aput-char v0, v3, v5

    add-int/lit8 v5, v5, 0x1

    const/16 v0, 0x20

    .line 51
    aput-char v0, v3, v5

    add-int/lit8 p0, p0, 0x1

    goto :goto_40

    :cond_56
    const/16 p0, 0x5b

    .line 54
    aput-char p0, v3, v4

    add-int/lit8 v1, v1, -0x1

    const/16 p0, 0x5d

    .line 55
    aput-char p0, v3, v1

    .line 57
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static commonCallbackMessage()Ljava/lang/String;
    .registers 1

    const-string v0, " %24s()"

    return-object v0
.end method

.method public static commonMacMessage(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_5

    const-string p0, "MAC=null"

    return-object p0

    .line 152
    :cond_5
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->commonMacMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static commonMacMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_5

    const-string p0, "MAC=null"

    return-object p0

    .line 157
    :cond_5
    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->getMacAddressLogSetting()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_16

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_13

    goto :goto_2d

    :cond_13
    const-string p0, "XX:XX:XX:XX:XX:XX"

    goto :goto_2d

    .line 161
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xf

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "XX"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2d
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    const-string p0, "MAC=\'%s\'"

    .line 168
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static commonStatusMessage()Ljava/lang/String;
    .registers 1

    const-string v0, ", status=%d"

    return-object v0
.end method

.method private static commonValueMessage()Ljava/lang/String;
    .registers 1

    const-string v0, ", value=%s"

    return-object v0
.end method

.method public static getUuidToLog(Ljava/util/UUID;)Ljava/lang/String;
    .registers 3

    .line 192
    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->getUuidLogSetting()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 194
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    const-string p0, "..."

    return-object p0
.end method

.method public static logCallback(Ljava/lang/String;Landroid/bluetooth/BluetoothGatt;I)V
    .registers 5

    const/4 v0, 0x4

    .line 126
    invoke-static {v0}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->isAtLeast(I)Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    .line 129
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->commonMacMessage(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->commonCallbackMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->commonStatusMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p0

    invoke-static {p1, v0}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static logCallback(Ljava/lang/String;Landroid/bluetooth/BluetoothGatt;II)V
    .registers 6

    const/4 v0, 0x4

    .line 133
    invoke-static {v0}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->isAtLeast(I)Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    .line 136
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->commonMacMessage(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->commonCallbackMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->commonStatusMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->commonValueMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    .line 137
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p0

    const/4 p0, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p0

    .line 136
    invoke-static {p1, v0}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static logCallback(Ljava/lang/String;Landroid/bluetooth/BluetoothGatt;ILandroid/bluetooth/BluetoothGattCharacteristic;Z)V
    .registers 7

    const/4 v0, 0x4

    .line 98
    invoke-static {v0}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->isAtLeast(I)Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    .line 101
    :cond_8
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil$AttributeLogWrapper;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p3

    invoke-direct {v0, v1, p3, p4}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil$AttributeLogWrapper;-><init>(Ljava/util/UUID;[BZ)V

    .line 102
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->commonMacMessage(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->commonCallbackMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->commonStatusMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->commonValueMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p0, p3, p4

    const/4 p0, 0x1

    .line 103
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, p0

    const/4 p0, 0x2

    aput-object v0, p3, p0

    .line 102
    invoke-static {p1, p3}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static logCallback(Ljava/lang/String;Landroid/bluetooth/BluetoothGatt;ILandroid/bluetooth/BluetoothGattDescriptor;Z)V
    .registers 7

    const/4 v0, 0x4

    .line 117
    invoke-static {v0}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->isAtLeast(I)Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    .line 120
    :cond_8
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil$AttributeLogWrapper;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object p3

    invoke-direct {v0, v1, p3, p4}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil$AttributeLogWrapper;-><init>(Ljava/util/UUID;[BZ)V

    .line 121
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->commonMacMessage(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->commonCallbackMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->commonStatusMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->commonValueMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p0, p3, p4

    const/4 p0, 0x1

    .line 122
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, p0

    const/4 p0, 0x2

    aput-object v0, p3, p0

    .line 121
    invoke-static {p1, p3}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static logCallback(Ljava/lang/String;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V
    .registers 6

    const/4 v0, 0x4

    .line 108
    invoke-static {v0}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->isAtLeast(I)Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    .line 111
    :cond_8
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil$AttributeLogWrapper;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    invoke-direct {v0, v1, p2, p3}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil$AttributeLogWrapper;-><init>(Ljava/util/UUID;[BZ)V

    .line 112
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->commonMacMessage(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->commonCallbackMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->commonValueMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p0, p2, p3

    const/4 p0, 0x1

    aput-object v0, p2, p0

    invoke-static {p1, p2}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static logConnectionUpdateCallback(Ljava/lang/String;Landroid/bluetooth/BluetoothGatt;IIII)V
    .registers 9

    const/4 v0, 0x4

    .line 142
    invoke-static {v0}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->isAtLeast(I)Z

    move-result v1

    if-nez v1, :cond_8

    return-void

    .line 146
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->commonMacMessage(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->commonCallbackMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->commonStatusMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", interval=%d (%.2f ms), latency=%d, timeout=%d (%.0f ms)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    .line 147
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p0

    const/4 p0, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    int-to-float p2, p3

    const/high16 p3, 0x3fa00000  # 1.25f

    mul-float p2, p2, p3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v1, p0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v0

    const/4 p0, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p0

    const/4 p0, 0x6

    int-to-float p2, p5

    const/high16 p3, 0x41200000  # 10.0f

    mul-float p2, p2, p3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v1, p0

    .line 146
    invoke-static {p1, v1}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static logOperationFinished(Lcom/polidea/rxandroidble2_codemao/internal/operations/Operation;JJ)V
    .registers 8

    const/4 v0, 0x3

    .line 83
    invoke-static {v0}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->isAtLeast(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 85
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const/4 p0, 0x2

    sub-long/2addr p3, p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, p0

    const-string p0, "FINISHED %s(%d) in %d ms"

    .line 84
    invoke-static {p0, v0}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2c
    return-void
.end method

.method public static logOperationQueued(Lcom/polidea/rxandroidble2_codemao/internal/operations/Operation;)V
    .registers 4

    const/4 v0, 0x3

    .line 77
    invoke-static {v0}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->isAtLeast(I)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "QUEUED   %s(%d)"

    invoke-static {p0, v0}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_25
    return-void
.end method

.method public static logOperationRemoved(Lcom/polidea/rxandroidble2_codemao/internal/operations/Operation;)V
    .registers 4

    const/4 v0, 0x3

    .line 71
    invoke-static {v0}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->isAtLeast(I)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "REMOVED  %s(%d)"

    invoke-static {p0, v0}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_25
    return-void
.end method

.method public static logOperationRunning(Lcom/polidea/rxandroidble2_codemao/internal/operations/Operation;)V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "RUNNING  %s"

    .line 67
    invoke-static {p0, v0}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static logOperationSkippedBecauseDisposedWhenAboutToRun(Lcom/polidea/rxandroidble2_codemao/internal/operations/Operation;)V
    .registers 4

    const/4 v0, 0x2

    .line 90
    invoke-static {v0}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->isAtLeast(I)Z

    move-result v1

    if-eqz v1, :cond_24

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 92
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "SKIPPED  %s(%d) just before running — is disposed"

    .line 91
    invoke-static {p0, v0}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_24
    return-void
.end method

.method public static logOperationStarted(Lcom/polidea/rxandroidble2_codemao/internal/operations/Operation;)V
    .registers 4

    const/4 v0, 0x3

    .line 61
    invoke-static {v0}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->isAtLeast(I)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "STARTED  %s(%d)"

    invoke-static {p0, v0}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_25
    return-void
.end method

.method public static wrap(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil$AttributeLogWrapper;
    .registers 4

    .line 184
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil$AttributeLogWrapper;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p0

    invoke-direct {v0, v1, p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil$AttributeLogWrapper;-><init>(Ljava/util/UUID;[BZ)V

    return-object v0
.end method
