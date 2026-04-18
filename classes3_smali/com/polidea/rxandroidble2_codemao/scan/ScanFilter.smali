.class public Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;
.super Ljava/lang/Object;
.source "ScanFilter.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanFilterInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY:Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;


# instance fields
.field private final mDeviceAddress:Ljava/lang/String;

.field private final mDeviceName:Ljava/lang/String;

.field private final mManufacturerData:[B

.field private final mManufacturerDataMask:[B

.field private final mManufacturerId:I

.field private final mServiceData:[B

.field private final mServiceDataMask:[B

.field private final mServiceDataUuid:Landroid/os/ParcelUuid;

.field private final mServiceSolicitationUuid:Landroid/os/ParcelUuid;

.field private final mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

.field private final mServiceUuid:Landroid/os/ParcelUuid;

.field private final mServiceUuidMask:Landroid/os/ParcelUuid;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 65
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter$Builder;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter$Builder;->build()Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;

    move-result-object v0

    sput-object v0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->EMPTY:Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;

    .line 151
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter$1;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter$1;-><init>()V

    sput-object v0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[B)V
    .registers 13

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mDeviceName:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    .line 75
    iput-object p4, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    .line 76
    iput-object p5, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    .line 77
    iput-object p6, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    .line 78
    iput-object p2, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    .line 79
    iput-object p7, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    .line 80
    iput-object p8, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceData:[B

    .line 81
    iput-object p9, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceDataMask:[B

    .line 82
    iput p10, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mManufacturerId:I

    .line 83
    iput-object p11, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mManufacturerData:[B

    .line 84
    iput-object p12, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mManufacturerDataMask:[B

    return-void
.end method

.method private static deepEquals([B[B)Z
    .registers 2

    if-eq p0, p1, :cond_f

    if-eqz p0, :cond_d

    if-eqz p1, :cond_d

    .line 508
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method private static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    if-eq p0, p1, :cond_d

    if-eqz p0, :cond_b

    .line 501
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method private static matchesPartialData([B[B[B)Z
    .registers 9

    const/4 v0, 0x0

    if-eqz p2, :cond_2f

    .line 417
    array-length v1, p2

    array-length v2, p0

    if-ge v1, v2, :cond_8

    goto :goto_2f

    :cond_8
    const/4 v1, 0x1

    if-nez p1, :cond_1a

    const/4 p1, 0x0

    .line 421
    :goto_c
    array-length v2, p0

    if-ge p1, v2, :cond_19

    .line 422
    aget-byte v2, p2, p1

    aget-byte v3, p0, p1

    if-eq v2, v3, :cond_16

    return v0

    :cond_16
    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    :cond_19
    return v1

    :cond_1a
    const/4 v2, 0x0

    .line 428
    :goto_1b
    array-length v3, p0

    if-ge v2, v3, :cond_2e

    .line 429
    aget-byte v3, p1, v2

    aget-byte v4, p2, v2

    and-int/2addr v3, v4

    aget-byte v4, p1, v2

    aget-byte v5, p0, v2

    and-int/2addr v4, v5

    if-eq v3, v4, :cond_2b

    return v0

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_2e
    return v1

    :cond_2f
    :goto_2f
    return v0
.end method

.method private static matchesServiceSolicitationUuids(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelUuid;",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p2, :cond_8

    return v1

    .line 404
    :cond_8
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    if-nez p1, :cond_1c

    const/4 v3, 0x0

    goto :goto_20

    .line 406
    :cond_1c
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    .line 407
    :goto_20
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    .line 408
    invoke-virtual {v2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 407
    invoke-static {v4, v3, v2}, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->matchesServiceUuid(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v2

    if-eqz v2, :cond_c

    return v0

    :cond_2f
    return v1
.end method

.method private static matchesServiceUuid(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z
    .registers 9

    if-nez p1, :cond_7

    .line 382
    invoke-virtual {p0, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 384
    :cond_7
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    and-long/2addr v0, v2

    .line 385
    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    and-long/2addr v2, v4

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1f

    return v4

    .line 388
    :cond_1f
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    and-long/2addr v0, v2

    .line 389
    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide p0

    and-long/2addr p0, v2

    cmp-long p2, v0, p0

    if-nez p2, :cond_36

    const/4 v4, 0x1

    :cond_36
    return v4
.end method

.method private static matchesServiceUuids(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelUuid;",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p2, :cond_8

    return v1

    .line 370
    :cond_8
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    if-nez p1, :cond_1c

    const/4 v3, 0x0

    goto :goto_20

    .line 371
    :cond_1c
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    .line 372
    :goto_20
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-static {v4, v3, v2}, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->matchesServiceUuid(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v2

    if-eqz v2, :cond_c

    return v0

    :cond_2f
    return v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_8c

    .line 479
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_8c

    .line 482
    :cond_13
    check-cast p1, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;

    .line 483
    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mDeviceName:Ljava/lang/String;

    iget-object v3, p1, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mDeviceName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    .line 484
    invoke-static {v2, v3}, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    iget v2, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mManufacturerId:I

    iget v3, p1, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mManufacturerId:I

    if-ne v2, v3, :cond_8a

    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mManufacturerData:[B

    iget-object v3, p1, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mManufacturerData:[B

    .line 486
    invoke-static {v2, v3}, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->deepEquals([B[B)Z

    move-result v2

    if-eqz v2, :cond_8a

    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mManufacturerDataMask:[B

    iget-object v3, p1, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mManufacturerDataMask:[B

    .line 487
    invoke-static {v2, v3}, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->deepEquals([B[B)Z

    move-result v2

    if-eqz v2, :cond_8a

    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    iget-object v3, p1, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    .line 488
    invoke-static {v2, v3}, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceData:[B

    iget-object v3, p1, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceData:[B

    .line 489
    invoke-static {v2, v3}, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->deepEquals([B[B)Z

    move-result v2

    if-eqz v2, :cond_8a

    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceDataMask:[B

    iget-object v3, p1, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceDataMask:[B

    .line 490
    invoke-static {v2, v3}, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->deepEquals([B[B)Z

    move-result v2

    if-eqz v2, :cond_8a

    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    iget-object v3, p1, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    .line 491
    invoke-static {v2, v3}, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    iget-object v3, p1, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    .line 492
    invoke-static {v2, v3}, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    iget-object v3, p1, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    .line 493
    invoke-static {v2, v3}, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    iget-object p1, p1, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    .line 494
    invoke-static {v2, p1}, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8a

    goto :goto_8b

    :cond_8a
    const/4 v0, 0x0

    :goto_8b
    return v0

    :cond_8c
    :goto_8c
    return v1
.end method

.method public getDeviceAddress()Ljava/lang/String;
    .registers 2

    .line 264
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 2

    .line 231
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturerData()[B
    .registers 2

    .line 291
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mManufacturerData:[B

    return-object v0
.end method

.method public getManufacturerDataMask()[B
    .registers 2

    .line 296
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mManufacturerDataMask:[B

    return-object v0
.end method

.method public getManufacturerId()I
    .registers 2

    .line 286
    iget v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mManufacturerId:I

    return v0
.end method

.method public getServiceData()[B
    .registers 2

    .line 269
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceData:[B

    return-object v0
.end method

.method public getServiceDataMask()[B
    .registers 2

    .line 274
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceDataMask:[B

    return-object v0
.end method

.method public getServiceDataUuid()Landroid/os/ParcelUuid;
    .registers 2

    .line 279
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public getServiceUuid()Landroid/os/ParcelUuid;
    .registers 2

    .line 239
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public getServiceUuidMask()Landroid/os/ParcelUuid;
    .registers 2

    .line 244
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    .line 458
    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mDeviceName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mManufacturerId:I

    .line 461
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mManufacturerData:[B

    .line 462
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mManufacturerDataMask:[B

    .line 463
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceData:[B

    .line 465
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceDataMask:[B

    .line 466
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 458
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAllFieldsEmpty()Z
    .registers 2

    .line 516
    sget-object v0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->EMPTY:Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;

    invoke-virtual {p0, v0}, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public matches(Lcom/polidea/rxandroidble2_codemao/internal/ScanResultInterface;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 307
    :cond_4
    invoke-interface {p1}, Lcom/polidea/rxandroidble2_codemao/internal/ScanResultInterface;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 309
    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    if-eqz v2, :cond_13

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v0

    .line 313
    :cond_13
    invoke-interface {p1}, Lcom/polidea/rxandroidble2_codemao/internal/ScanResultInterface;->getScanRecord()Lcom/polidea/rxandroidble2_codemao/scan/ScanRecord;

    move-result-object v1

    .line 316
    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mDeviceName:Ljava/lang/String;

    if-eqz v2, :cond_34

    .line 317
    invoke-interface {p1}, Lcom/polidea/rxandroidble2_codemao/internal/ScanResultInterface;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    if-eqz v1, :cond_33

    iget-object p1, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mDeviceName:Ljava/lang/String;

    .line 318
    invoke-interface {v1}, Lcom/polidea/rxandroidble2_codemao/scan/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    :cond_33
    return v0

    :cond_34
    const/4 p1, 0x1

    if-nez v1, :cond_45

    .line 325
    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    if-nez v1, :cond_44

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mManufacturerData:[B

    if-nez v1, :cond_44

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceData:[B

    if-nez v1, :cond_44

    const/4 v0, 0x1

    :cond_44
    return v0

    .line 329
    :cond_45
    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    if-eqz v2, :cond_56

    iget-object v3, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    .line 330
    invoke-interface {v1}, Lcom/polidea/rxandroidble2_codemao/scan/ScanRecord;->getServiceUuids()Ljava/util/List;

    move-result-object v4

    .line 329
    invoke-static {v2, v3, v4}, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->matchesServiceUuids(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_56

    return v0

    .line 335
    :cond_56
    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    if-eqz v2, :cond_67

    iget-object v3, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    .line 337
    invoke-interface {v1}, Lcom/polidea/rxandroidble2_codemao/scan/ScanRecord;->getServiceSolicitationUuids()Ljava/util/List;

    move-result-object v4

    .line 335
    invoke-static {v2, v3, v4}, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->matchesServiceSolicitationUuids(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_67

    return v0

    .line 342
    :cond_67
    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-eqz v2, :cond_7a

    .line 343
    iget-object v3, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceData:[B

    iget-object v4, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceDataMask:[B

    .line 344
    invoke-interface {v1, v2}, Lcom/polidea/rxandroidble2_codemao/scan/ScanRecord;->getServiceData(Landroid/os/ParcelUuid;)[B

    move-result-object v2

    .line 343
    invoke-static {v3, v4, v2}, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->matchesPartialData([B[B[B)Z

    move-result v2

    if-nez v2, :cond_7a

    return v0

    .line 350
    :cond_7a
    iget v2, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mManufacturerId:I

    if-ltz v2, :cond_8d

    .line 351
    iget-object v3, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mManufacturerData:[B

    iget-object v4, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mManufacturerDataMask:[B

    .line 352
    invoke-interface {v1, v2}, Lcom/polidea/rxandroidble2_codemao/scan/ScanRecord;->getManufacturerSpecificData(I)[B

    move-result-object v1

    .line 351
    invoke-static {v3, v4, v1}, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->matchesPartialData([B[B[B)Z

    move-result v1

    if-nez v1, :cond_8d

    return v0

    :cond_8d
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothLeScanFilter [mDeviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    .line 439
    invoke-static {v1}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->commonMacMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    const/4 v2, 0x0

    if-nez v1, :cond_29

    move-object v1, v2

    goto :goto_31

    :cond_29
    invoke-virtual {v1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->getUuidToLog(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    :goto_31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUuidMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    if-nez v1, :cond_3f

    move-object v1, v2

    goto :goto_47

    :cond_3f
    invoke-virtual {v1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->getUuidToLog(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    :goto_47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSolicitedUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    if-nez v1, :cond_55

    move-object v1, v2

    goto :goto_5d

    .line 444
    :cond_55
    invoke-virtual {v1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->getUuidToLog(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    :goto_5d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSolicitedUuidMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    if-nez v1, :cond_6b

    move-object v1, v2

    goto :goto_73

    .line 447
    :cond_6b
    invoke-virtual {v1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->getUuidToLog(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    :goto_73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceDataUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-nez v1, :cond_80

    goto :goto_88

    :cond_80
    invoke-virtual {v1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->getUuidToLog(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v2

    :goto_88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceData:[B

    .line 449
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceDataMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceDataMask:[B

    .line 450
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mManufacturerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mManufacturerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mManufacturerData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mManufacturerData:[B

    .line 452
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mManufacturerDataMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mManufacturerDataMask:[B

    .line 453
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 94
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mDeviceName:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mDeviceName:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 96
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    :cond_13
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    if-nez v0, :cond_19

    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    const/4 v0, 0x1

    :goto_1a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 100
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    :cond_24
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    if-nez v0, :cond_2a

    const/4 v0, 0x0

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x1

    :goto_2b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_46

    .line 104
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 105
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    if-nez v0, :cond_3b

    const/4 v0, 0x0

    goto :goto_3c

    :cond_3b
    const/4 v0, 0x1

    :goto_3c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_46

    .line 107
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 110
    :cond_46
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    if-nez v0, :cond_4c

    const/4 v0, 0x0

    goto :goto_4d

    :cond_4c
    const/4 v0, 0x1

    :goto_4d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_68

    .line 112
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 113
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    if-nez v0, :cond_5d

    const/4 v0, 0x0

    goto :goto_5e

    :cond_5d
    const/4 v0, 0x1

    :goto_5e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_68

    .line 115
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 118
    :cond_68
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-nez v0, :cond_6e

    const/4 v0, 0x0

    goto :goto_6f

    :cond_6e
    const/4 v0, 0x1

    :goto_6f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_a7

    .line 120
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 121
    iget-object p2, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceData:[B

    if-nez p2, :cond_7f

    const/4 p2, 0x0

    goto :goto_80

    :cond_7f
    const/4 p2, 0x1

    :goto_80
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-object p2, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceData:[B

    if-eqz p2, :cond_a7

    .line 123
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget-object p2, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceData:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 126
    iget-object p2, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceDataMask:[B

    if-nez p2, :cond_96

    const/4 p2, 0x0

    goto :goto_97

    :cond_96
    const/4 p2, 0x1

    :goto_97
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget-object p2, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceDataMask:[B

    if-eqz p2, :cond_a7

    .line 128
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-object p2, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mServiceDataMask:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 133
    :cond_a7
    iget p2, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mManufacturerId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object p2, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mManufacturerData:[B

    if-nez p2, :cond_b2

    const/4 p2, 0x0

    goto :goto_b3

    :cond_b2
    const/4 p2, 0x1

    :goto_b3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget-object p2, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mManufacturerData:[B

    if-eqz p2, :cond_d9

    .line 136
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget-object p2, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mManufacturerData:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 139
    iget-object p2, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mManufacturerDataMask:[B

    if-nez p2, :cond_c8

    goto :goto_c9

    :cond_c8
    const/4 v1, 0x1

    :goto_c9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget-object p2, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mManufacturerDataMask:[B

    if-eqz p2, :cond_d9

    .line 141
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget-object p2, p0, Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;->mManufacturerDataMask:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_d9
    return-void
.end method
