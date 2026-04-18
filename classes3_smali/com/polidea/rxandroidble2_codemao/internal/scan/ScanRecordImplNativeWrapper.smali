.class public Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanRecordImplNativeWrapper;
.super Ljava/lang/Object;
.source "ScanRecordImplNativeWrapper.java"

# interfaces
.implements Lcom/polidea/rxandroidble2_codemao/scan/ScanRecord;


# instance fields
.field private final nativeScanRecord:Landroid/bluetooth/le/ScanRecord;

.field private final scanRecordParser:Lcom/polidea/rxandroidble2_codemao/internal/util/ScanRecordParser;


# direct methods
.method public constructor <init>(Landroid/bluetooth/le/ScanRecord;Lcom/polidea/rxandroidble2_codemao/internal/util/ScanRecordParser;)V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanRecordImplNativeWrapper;->nativeScanRecord:Landroid/bluetooth/le/ScanRecord;

    .line 25
    iput-object p2, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanRecordImplNativeWrapper;->scanRecordParser:Lcom/polidea/rxandroidble2_codemao/internal/util/ScanRecordParser;

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanRecordImplNativeWrapper;->nativeScanRecord:Landroid/bluetooth/le/ScanRecord;

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanRecordImplNativeWrapper;->nativeScanRecord:Landroid/bluetooth/le/ScanRecord;

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManufacturerSpecificData(I)[B
    .registers 3

    .line 55
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanRecordImplNativeWrapper;->nativeScanRecord:Landroid/bluetooth/le/ScanRecord;

    invoke-virtual {v0, p1}, Landroid/bluetooth/le/ScanRecord;->getManufacturerSpecificData(I)[B

    move-result-object p1

    return-object p1
.end method

.method public getServiceData(Landroid/os/ParcelUuid;)[B
    .registers 3

    .line 66
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanRecordImplNativeWrapper;->nativeScanRecord:Landroid/bluetooth/le/ScanRecord;

    invoke-virtual {v0, p1}, Landroid/bluetooth/le/ScanRecord;->getServiceData(Landroid/os/ParcelUuid;)[B

    move-result-object p1

    return-object p1
.end method

.method public getServiceSolicitationUuids()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_d

    .line 41
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanRecordImplNativeWrapper;->nativeScanRecord:Landroid/bluetooth/le/ScanRecord;

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getServiceSolicitationUuids()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 43
    :cond_d
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanRecordImplNativeWrapper;->scanRecordParser:Lcom/polidea/rxandroidble2_codemao/internal/util/ScanRecordParser;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanRecordImplNativeWrapper;->nativeScanRecord:Landroid/bluetooth/le/ScanRecord;

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/polidea/rxandroidble2_codemao/internal/util/ScanRecordParser;->parseFromBytes([B)Lcom/polidea/rxandroidble2_codemao/scan/ScanRecord;

    move-result-object v0

    invoke-interface {v0}, Lcom/polidea/rxandroidble2_codemao/scan/ScanRecord;->getServiceSolicitationUuids()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getServiceUuids()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanRecordImplNativeWrapper;->nativeScanRecord:Landroid/bluetooth/le/ScanRecord;

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getServiceUuids()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
