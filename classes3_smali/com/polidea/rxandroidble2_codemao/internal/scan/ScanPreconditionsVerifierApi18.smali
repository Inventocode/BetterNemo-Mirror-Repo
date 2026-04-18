.class public Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanPreconditionsVerifierApi18;
.super Ljava/lang/Object;
.source "ScanPreconditionsVerifierApi18.java"

# interfaces
.implements Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanPreconditionsVerifier;


# instance fields
.field final locationServicesStatus:Lcom/polidea/rxandroidble2_codemao/internal/util/LocationServicesStatus;

.field final rxBleAdapterWrapper:Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;


# direct methods
.method public constructor <init>(Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;Lcom/polidea/rxandroidble2_codemao/internal/util/LocationServicesStatus;)V
    .registers 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanPreconditionsVerifierApi18;->rxBleAdapterWrapper:Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;

    .line 20
    iput-object p2, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanPreconditionsVerifierApi18;->locationServicesStatus:Lcom/polidea/rxandroidble2_codemao/internal/util/LocationServicesStatus;

    return-void
.end method


# virtual methods
.method public verify(Z)V
    .registers 3

    .line 25
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanPreconditionsVerifierApi18;->rxBleAdapterWrapper:Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;->hasBluetoothAdapter()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 27
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanPreconditionsVerifierApi18;->rxBleAdapterWrapper:Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;->isBluetoothEnabled()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 29
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanPreconditionsVerifierApi18;->locationServicesStatus:Lcom/polidea/rxandroidble2_codemao/internal/util/LocationServicesStatus;

    invoke-interface {v0}, Lcom/polidea/rxandroidble2_codemao/internal/util/LocationServicesStatus;->isLocationPermissionOk()Z

    move-result v0

    if-eqz v0, :cond_2b

    if-eqz p1, :cond_2a

    .line 31
    iget-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanPreconditionsVerifierApi18;->locationServicesStatus:Lcom/polidea/rxandroidble2_codemao/internal/util/LocationServicesStatus;

    invoke-interface {p1}, Lcom/polidea/rxandroidble2_codemao/internal/util/LocationServicesStatus;->isLocationProviderOk()Z

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_2a

    .line 32
    :cond_23
    new-instance p1, Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;-><init>(I)V

    throw p1

    :cond_2a
    :goto_2a
    return-void

    .line 30
    :cond_2b
    new-instance p1, Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;-><init>(I)V

    throw p1

    .line 28
    :cond_32
    new-instance p1, Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;-><init>(I)V

    throw p1

    .line 26
    :cond_39
    new-instance p1, Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;-><init>(I)V

    throw p1
.end method
