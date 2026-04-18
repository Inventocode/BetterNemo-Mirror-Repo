.class public Lcom/polidea/rxandroidble2_codemao/internal/util/LocationServicesStatusApi18;
.super Ljava/lang/Object;
.source "LocationServicesStatusApi18.java"

# interfaces
.implements Lcom/polidea/rxandroidble2_codemao/internal/util/LocationServicesStatus;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isLocationPermissionOk()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isLocationProviderOk()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
