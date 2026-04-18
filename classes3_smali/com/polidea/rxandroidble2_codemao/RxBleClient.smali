.class public abstract Lcom/polidea/rxandroidble2_codemao/RxBleClient;
.super Ljava/lang/Object;
.source "RxBleClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/polidea/rxandroidble2_codemao/RxBleClient;
    .registers 2

    .line 56
    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent;->builder()Lcom/polidea/rxandroidble2_codemao/ClientComponent$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/polidea/rxandroidble2_codemao/ClientComponent$Builder;->applicationContext(Landroid/content/Context;)Lcom/polidea/rxandroidble2_codemao/ClientComponent$Builder;

    move-result-object p0

    .line 58
    invoke-interface {p0}, Lcom/polidea/rxandroidble2_codemao/ClientComponent$Builder;->build()Lcom/polidea/rxandroidble2_codemao/ClientComponent;

    move-result-object p0

    .line 59
    invoke-interface {p0}, Lcom/polidea/rxandroidble2_codemao/ClientComponent;->rxBleClient()Lcom/polidea/rxandroidble2_codemao/RxBleClient;

    move-result-object p0

    return-object p0
.end method

.method public static updateLogOptions(Lcom/polidea/rxandroidble2_codemao/LogOptions;)V
    .registers 1

    .line 85
    invoke-static {p0}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->updateLogOptions(Lcom/polidea/rxandroidble2_codemao/LogOptions;)V

    return-void
.end method


# virtual methods
.method public abstract getRecommendedConnectRuntimePermissions()[Ljava/lang/String;
.end method

.method public abstract getRecommendedScanRuntimePermissions()[Ljava/lang/String;
.end method

.method public abstract isConnectRuntimePermissionGranted()Z
.end method

.method public abstract isScanRuntimePermissionGranted()Z
.end method

.method public abstract observeStateChanges()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract scanBleDevices(Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;[Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;",
            "[",
            "Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;",
            ">;"
        }
    .end annotation
.end method
