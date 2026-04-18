.class public interface abstract Lcom/polidea/rxandroidble2_codemao/scan/ScanRecord;
.super Ljava/lang/Object;
.source "ScanRecord.java"


# virtual methods
.method public abstract getBytes()[B
.end method

.method public abstract getDeviceName()Ljava/lang/String;
.end method

.method public abstract getManufacturerSpecificData(I)[B
.end method

.method public abstract getServiceData(Landroid/os/ParcelUuid;)[B
.end method

.method public abstract getServiceSolicitationUuids()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getServiceUuids()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end method
