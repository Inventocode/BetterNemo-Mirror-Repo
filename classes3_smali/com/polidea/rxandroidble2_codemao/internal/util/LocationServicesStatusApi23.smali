.class public Lcom/polidea/rxandroidble2_codemao/internal/util/LocationServicesStatusApi23;
.super Ljava/lang/Object;
.source "LocationServicesStatusApi23.java"

# interfaces
.implements Lcom/polidea/rxandroidble2_codemao/internal/util/LocationServicesStatus;


# instance fields
.field private final checkerLocationProvider:Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerLocationProvider;

.field private final checkerScanPermission:Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerScanPermission;

.field private final deviceSdk:I

.field private final isAndroidWear:Z

.field private final targetSdk:I


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerLocationProvider;Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerScanPermission;IIZ)V
    .registers 6

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/LocationServicesStatusApi23;->checkerLocationProvider:Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerLocationProvider;

    .line 25
    iput-object p2, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/LocationServicesStatusApi23;->checkerScanPermission:Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerScanPermission;

    .line 26
    iput p3, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/LocationServicesStatusApi23;->targetSdk:I

    .line 27
    iput p4, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/LocationServicesStatusApi23;->deviceSdk:I

    .line 28
    iput-boolean p5, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/LocationServicesStatusApi23;->isAndroidWear:Z

    return-void
.end method

.method private isLocationProviderEnabledRequired()Z
    .registers 3

    .line 47
    iget-boolean v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/LocationServicesStatusApi23;->isAndroidWear:Z

    if-nez v0, :cond_12

    iget v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/LocationServicesStatusApi23;->deviceSdk:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_10

    iget v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/LocationServicesStatusApi23;->targetSdk:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method


# virtual methods
.method public isLocationPermissionOk()Z
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/LocationServicesStatusApi23;->checkerScanPermission:Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerScanPermission;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerScanPermission;->isScanRuntimePermissionGranted()Z

    move-result v0

    return v0
.end method

.method public isLocationProviderOk()Z
    .registers 2

    .line 36
    invoke-direct {p0}, Lcom/polidea/rxandroidble2_codemao/internal/util/LocationServicesStatusApi23;->isLocationProviderEnabledRequired()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/LocationServicesStatusApi23;->checkerLocationProvider:Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerLocationProvider;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerLocationProvider;->isLocationProviderEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method
