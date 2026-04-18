.class Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;
.super Lcom/polidea/rxandroidble2_codemao/RxBleClient;
.source "RxBleClientImpl.java"


# instance fields
.field private final backgroundScanner:Lcom/polidea/rxandroidble2_codemao/scan/BackgroundScanner;

.field final bluetoothInteractionScheduler:Lio/reactivex/Scheduler;

.field private final checkerConnectPermission:Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerConnectPermission;

.field private final checkerScanPermission:Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerScanPermission;

.field private final clientComponentFinalizer:Lcom/polidea/rxandroidble2_codemao/ClientComponent$ClientComponentFinalizer;

.field final internalToExternalScanResultMapFunction:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;",
            "Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyClientStateObservable:Lbleshadow/dagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/dagger/Lazy<",
            "Lcom/polidea/rxandroidble2_codemao/internal/util/ClientStateObservable;",
            ">;"
        }
    .end annotation
.end field

.field private final locationServicesStatus:Lcom/polidea/rxandroidble2_codemao/internal/util/LocationServicesStatus;

.field final operationQueue:Lcom/polidea/rxandroidble2_codemao/internal/serialization/ClientOperationQueue;

.field private final rxBleAdapterStateObservable:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2_codemao/RxBleAdapterStateObservable$BleAdapterState;",
            ">;"
        }
    .end annotation
.end field

.field final scanPreconditionVerifier:Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanPreconditionsVerifier;

.field final scanSetupBuilder:Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSetupBuilder;


# direct methods
.method public static synthetic $r8$lambda$-DGwrqHFTDG16ptEucyxBz2NTjY(Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;[Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;)Lio/reactivex/ObservableSource;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;->lambda$scanBleDevices$1(Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;[Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Ub4tG59uMvSg5Bjuz44XvUp2iVY(Lcom/polidea/rxandroidble2_codemao/RxBleAdapterStateObservable$BleAdapterState;)Lio/reactivex/MaybeSource;
    .registers 1

    invoke-static {p0}, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;->lambda$bluetoothAdapterOffExceptionObservable$4(Lcom/polidea/rxandroidble2_codemao/RxBleAdapterStateObservable$BleAdapterState;)Lio/reactivex/MaybeSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Z4JjDvAu8AC4hb7QE51su-Mxc-A(Lcom/polidea/rxandroidble2_codemao/RxBleAdapterStateObservable$BleAdapterState;)Z
    .registers 1

    invoke-static {p0}, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;->lambda$bluetoothAdapterOffExceptionObservable$3(Lcom/polidea/rxandroidble2_codemao/RxBleAdapterStateObservable$BleAdapterState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lMDQpAm9yOh7DyNZpYs07Nbkewc(Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;)V
    .registers 1

    invoke-static {p0}, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;->lambda$scanBleDevices$0(Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;)V

    return-void
.end method

.method constructor <init>(Lcom/polidea/rxandroidble2_codemao/internal/util/BluetoothManagerWrapper;Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;Lcom/polidea/rxandroidble2_codemao/internal/serialization/ClientOperationQueue;Lio/reactivex/Observable;Lcom/polidea/rxandroidble2_codemao/internal/util/ScanRecordParser;Lcom/polidea/rxandroidble2_codemao/internal/util/LocationServicesStatus;Lbleshadow/dagger/Lazy;Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceProvider;Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSetupBuilder;Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanPreconditionsVerifier;Lio/reactivex/functions/Function;Lio/reactivex/Scheduler;Lcom/polidea/rxandroidble2_codemao/ClientComponent$ClientComponentFinalizer;Lcom/polidea/rxandroidble2_codemao/scan/BackgroundScanner;Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerScanPermission;Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerConnectPermission;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2_codemao/internal/util/BluetoothManagerWrapper;",
            "Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;",
            "Lcom/polidea/rxandroidble2_codemao/internal/serialization/ClientOperationQueue;",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2_codemao/RxBleAdapterStateObservable$BleAdapterState;",
            ">;",
            "Lcom/polidea/rxandroidble2_codemao/internal/util/ScanRecordParser;",
            "Lcom/polidea/rxandroidble2_codemao/internal/util/LocationServicesStatus;",
            "Lbleshadow/dagger/Lazy<",
            "Lcom/polidea/rxandroidble2_codemao/internal/util/ClientStateObservable;",
            ">;",
            "Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceProvider;",
            "Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSetupBuilder;",
            "Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanPreconditionsVerifier;",
            "Lio/reactivex/functions/Function<",
            "Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;",
            "Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;",
            ">;",
            "Lio/reactivex/Scheduler;",
            "Lcom/polidea/rxandroidble2_codemao/ClientComponent$ClientComponentFinalizer;",
            "Lcom/polidea/rxandroidble2_codemao/scan/BackgroundScanner;",
            "Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerScanPermission;",
            "Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerConnectPermission;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 86
    invoke-direct {p0}, Lcom/polidea/rxandroidble2_codemao/RxBleClient;-><init>()V

    .line 60
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v1, p3

    .line 87
    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;->operationQueue:Lcom/polidea/rxandroidble2_codemao/internal/serialization/ClientOperationQueue;

    move-object v1, p4

    .line 90
    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;->rxBleAdapterStateObservable:Lio/reactivex/Observable;

    move-object v1, p6

    .line 92
    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;->locationServicesStatus:Lcom/polidea/rxandroidble2_codemao/internal/util/LocationServicesStatus;

    move-object v1, p7

    .line 93
    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;->lazyClientStateObservable:Lbleshadow/dagger/Lazy;

    move-object v1, p9

    .line 95
    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;->scanSetupBuilder:Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSetupBuilder;

    move-object v1, p10

    .line 96
    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;->scanPreconditionVerifier:Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanPreconditionsVerifier;

    move-object v1, p11

    .line 97
    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;->internalToExternalScanResultMapFunction:Lio/reactivex/functions/Function;

    move-object v1, p12

    .line 98
    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;->bluetoothInteractionScheduler:Lio/reactivex/Scheduler;

    move-object v1, p13

    .line 99
    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;->clientComponentFinalizer:Lcom/polidea/rxandroidble2_codemao/ClientComponent$ClientComponentFinalizer;

    move-object/from16 v1, p14

    .line 100
    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;->backgroundScanner:Lcom/polidea/rxandroidble2_codemao/scan/BackgroundScanner;

    move-object/from16 v1, p15

    .line 101
    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;->checkerScanPermission:Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerScanPermission;

    move-object/from16 v1, p16

    .line 102
    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;->checkerConnectPermission:Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerConnectPermission;

    return-void
.end method

.method private static synthetic lambda$bluetoothAdapterOffExceptionObservable$3(Lcom/polidea/rxandroidble2_codemao/RxBleAdapterStateObservable$BleAdapterState;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 197
    sget-object v0, Lcom/polidea/rxandroidble2_codemao/RxBleAdapterStateObservable$BleAdapterState;->STATE_ON:Lcom/polidea/rxandroidble2_codemao/RxBleAdapterStateObservable$BleAdapterState;

    if-eq p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private static synthetic lambda$bluetoothAdapterOffExceptionObservable$4(Lcom/polidea/rxandroidble2_codemao/RxBleAdapterStateObservable$BleAdapterState;)Lio/reactivex/MaybeSource;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 200
    new-instance p0, Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;-><init>(I)V

    invoke-static {p0}, Lio/reactivex/Maybe;->error(Ljava/lang/Throwable;)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$scanBleDevices$0(Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 151
    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->getShouldLogScannedPeripherals()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "%s"

    invoke-static {p0, v0}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method private synthetic lambda$scanBleDevices$1(Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;[Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;)Lio/reactivex/ObservableSource;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;->scanPreconditionVerifier:Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanPreconditionsVerifier;

    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;->shouldCheckLocationProviderState()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanPreconditionsVerifier;->verify(Z)V

    .line 144
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;->scanSetupBuilder:Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSetupBuilder;

    invoke-interface {v0, p1, p2}, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSetupBuilder;->build(Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;[Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;)Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSetup;

    move-result-object p1

    .line 145
    iget-object p2, p1, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSetup;->scanOperation:Lcom/polidea/rxandroidble2_codemao/internal/operations/Operation;

    .line 146
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;->operationQueue:Lcom/polidea/rxandroidble2_codemao/internal/serialization/ClientOperationQueue;

    invoke-interface {v0, p2}, Lcom/polidea/rxandroidble2_codemao/internal/serialization/ClientOperationQueue;->queue(Lcom/polidea/rxandroidble2_codemao/internal/operations/Operation;)Lio/reactivex/Observable;

    move-result-object p2

    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;->bluetoothInteractionScheduler:Lio/reactivex/Scheduler;

    .line 147
    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->unsubscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    iget-object p1, p1, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSetup;->scanOperationBehaviourEmulatorTransformer:Lio/reactivex/ObservableTransformer;

    .line 148
    invoke-virtual {p2, p1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;->internalToExternalScanResultMapFunction:Lio/reactivex/functions/Function;

    .line 149
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl$$ExternalSyntheticLambda0;->INSTANCE:Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl$$ExternalSyntheticLambda0;

    .line 150
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 153
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;->bluetoothAdapterOffExceptionObservable()Lio/reactivex/Observable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->mergeWith(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method bluetoothAdapterOffExceptionObservable()Lio/reactivex/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;->rxBleAdapterStateObservable:Lio/reactivex/Observable;

    sget-object v1, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl$$ExternalSyntheticLambda2;->INSTANCE:Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl$$ExternalSyntheticLambda2;

    .line 197
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lio/reactivex/Observable;->firstElement()Lio/reactivex/Maybe;

    move-result-object v0

    sget-object v1, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl$$ExternalSyntheticLambda1;->INSTANCE:Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl$$ExternalSyntheticLambda1;

    .line 199
    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Maybe;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lio/reactivex/Maybe;->toObservable()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;->clientComponentFinalizer:Lcom/polidea/rxandroidble2_codemao/ClientComponent$ClientComponentFinalizer;

    invoke-interface {v0}, Lcom/polidea/rxandroidble2_codemao/ClientComponent$ClientComponentFinalizer;->onFinalize()V

    .line 108
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getRecommendedConnectRuntimePermissions()[Ljava/lang/String;
    .registers 2

    .line 272
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;->checkerConnectPermission:Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerConnectPermission;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerConnectPermission;->getRecommendedConnectRuntimePermissions()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecommendedScanRuntimePermissions()[Ljava/lang/String;
    .registers 2

    .line 267
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;->checkerScanPermission:Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerScanPermission;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerScanPermission;->getRecommendedScanRuntimePermissions()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isConnectRuntimePermissionGranted()Z
    .registers 2

    .line 262
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;->checkerConnectPermission:Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerConnectPermission;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerConnectPermission;->isConnectRuntimePermissionGranted()Z

    move-result v0

    return v0
.end method

.method public isScanRuntimePermissionGranted()Z
    .registers 2

    .line 257
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;->checkerScanPermission:Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerScanPermission;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerScanPermission;->isScanRuntimePermissionGranted()Z

    move-result v0

    return v0
.end method

.method public observeStateChanges()Lio/reactivex/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;",
            ">;"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;->lazyClientStateObservable:Lbleshadow/dagger/Lazy;

    invoke-interface {v0}, Lbleshadow/dagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Observable;

    return-object v0
.end method

.method public varargs scanBleDevices(Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;[Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;)Lio/reactivex/Observable;
    .registers 4
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

    .line 142
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl$$ExternalSyntheticLambda3;-><init>(Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;[Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;)V

    invoke-static {v0}, Lio/reactivex/Observable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
