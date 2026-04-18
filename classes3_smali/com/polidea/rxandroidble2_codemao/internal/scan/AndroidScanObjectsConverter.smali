.class public Lcom/polidea/rxandroidble2_codemao/internal/scan/AndroidScanObjectsConverter;
.super Ljava/lang/Object;
.source "AndroidScanObjectsConverter.java"


# instance fields
.field private final deviceSdk:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/AndroidScanObjectsConverter;->deviceSdk:I

    return-void
.end method

.method private static setMarshmallowSettings(Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;Landroid/bluetooth/le/ScanSettings$Builder;)V
    .registers 3

    .line 46
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->getCallbackType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/le/ScanSettings$Builder;->setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object p1

    .line 47
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->getMatchMode()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/le/ScanSettings$Builder;->setMatchMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object p1

    .line 48
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->getNumOfMatches()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/bluetooth/le/ScanSettings$Builder;->setNumOfMatches(I)Landroid/bluetooth/le/ScanSettings$Builder;

    return-void
.end method

.method private static toNative(Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;)Landroid/bluetooth/le/ScanFilter;
    .registers 5

    .line 69
    new-instance v0, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    .line 70
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->getServiceDataUuid()Landroid/os/ParcelUuid;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 71
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->getServiceDataUuid()Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-virtual {p0}, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->getServiceData()[B

    move-result-object v2

    invoke-virtual {p0}, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->getServiceDataMask()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceData(Landroid/os/ParcelUuid;[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 73
    :cond_1a
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 74
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 77
    :cond_27
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceName(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v0

    .line 78
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->getManufacturerId()I

    move-result v1

    invoke-virtual {p0}, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->getManufacturerData()[B

    move-result-object v2

    invoke-virtual {p0}, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->getManufacturerDataMask()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v0

    .line 79
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->getServiceUuid()Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-virtual {p0}, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->getServiceUuidMask()Landroid/os/ParcelUuid;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object p0

    .line 80
    invoke-virtual {p0}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public varargs toNativeFilters([Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 54
    array-length v1, p1

    if-lez v1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    if-eqz v1, :cond_20

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    array-length v2, p1

    :goto_12
    if-ge v0, v2, :cond_21

    aget-object v3, p1, v0

    .line 59
    invoke-static {v3}, Lcom/polidea/rxandroidble2_codemao/internal/scan/AndroidScanObjectsConverter;->toNative(Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;)Landroid/bluetooth/le/ScanFilter;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_20
    const/4 v1, 0x0

    :cond_21
    return-object v1
.end method

.method public toNativeSettings(Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;)Landroid/bluetooth/le/ScanSettings;
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 30
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    .line 31
    iget v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/AndroidScanObjectsConverter;->deviceSdk:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1b

    .line 32
    invoke-static {p1, v0}, Lcom/polidea/rxandroidble2_codemao/internal/scan/AndroidScanObjectsConverter;->setMarshmallowSettings(Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;Landroid/bluetooth/le/ScanSettings$Builder;)V

    .line 33
    iget v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/AndroidScanObjectsConverter;->deviceSdk:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1b

    .line 34
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->getLegacy()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setLegacy(Z)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 38
    :cond_1b
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->getReportDelayMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/le/ScanSettings$Builder;->setReportDelay(J)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->getScanMode()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object p1

    return-object p1
.end method
