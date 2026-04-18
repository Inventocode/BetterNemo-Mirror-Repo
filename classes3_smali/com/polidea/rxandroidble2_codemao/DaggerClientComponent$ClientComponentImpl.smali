.class final Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;
.super Ljava/lang/Object;
.source "DaggerClientComponent.java"

# interfaces
.implements Lcom/polidea/rxandroidble2_codemao/ClientComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClientComponentImpl"
.end annotation


# instance fields
.field private androidScanObjectsConverterProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/scan/AndroidScanObjectsConverter;",
            ">;"
        }
    .end annotation
.end field

.field private final applicationContext:Landroid/content/Context;

.field private applicationContextProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private backgroundScannerImplProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/scan/BackgroundScannerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private bindClientOperationQueueProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/serialization/ClientOperationQueue;",
            ">;"
        }
    .end annotation
.end field

.field private bindRxBleClientProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/RxBleClient;",
            ">;"
        }
    .end annotation
.end field

.field private bluetoothManagerWrapperProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/util/BluetoothManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private checkerConnectPermissionProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerConnectPermission;",
            ">;"
        }
    .end annotation
.end field

.field private checkerLocationProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerLocationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private checkerPermissionProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerPermission;",
            ">;"
        }
    .end annotation
.end field

.field private checkerScanPermissionProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerScanPermission;",
            ">;"
        }
    .end annotation
.end field

.field private final clientComponentImpl:Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;

.field private clientOperationQueueImplProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/serialization/ClientOperationQueueImpl;",
            ">;"
        }
    .end annotation
.end field

.field private clientStateObservableProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/util/ClientStateObservable;",
            ">;"
        }
    .end annotation
.end field

.field private deviceComponentBuilderProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private deviceComponentCacheProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache;",
            ">;"
        }
    .end annotation
.end field

.field private internalScanResultCreatorProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/scan/InternalScanResultCreator;",
            ">;"
        }
    .end annotation
.end field

.field private internalToExternalScanResultConverterProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/scan/InternalToExternalScanResultConverter;",
            ">;"
        }
    .end annotation
.end field

.field private locationServicesOkObservableApi23FactoryProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/util/LocationServicesOkObservableApi23Factory;",
            ">;"
        }
    .end annotation
.end field

.field private locationServicesStatusApi23Provider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/util/LocationServicesStatusApi23;",
            ">;"
        }
    .end annotation
.end field

.field private locationServicesStatusApi31Provider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/util/LocationServicesStatusApi31;",
            ">;"
        }
    .end annotation
.end field

.field private provideBluetoothCallbacksSchedulerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private provideBluetoothInteractionExecutorServiceProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private provideBluetoothInteractionSchedulerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private provideBluetoothManagerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/bluetooth/BluetoothManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideConnectionQueueExecutorServiceProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private provideContentResolverProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private provideFinalizationCloseableProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/ClientComponent$ClientComponentFinalizer;",
            ">;"
        }
    .end annotation
.end field

.field private provideIsAndroidWearProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private provideIsConnectableCheckerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/scan/IsConnectableChecker;",
            ">;"
        }
    .end annotation
.end field

.field private provideIsNearbyPermissionNeverForLocationProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private provideLocationManagerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/location/LocationManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideLocationServicesOkObservableProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideLocationServicesStatusProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/util/LocationServicesStatus;",
            ">;"
        }
    .end annotation
.end field

.field private provideRecommendedConnectRuntimePermissionNamesProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "[[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private provideRecommendedScanRuntimePermissionNamesProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "[[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private provideScanPreconditionVerifierProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanPreconditionsVerifier;",
            ">;"
        }
    .end annotation
.end field

.field private provideScanSetupProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSetupBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private provideTargetSdkProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private rxBleAdapterStateObservableProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/RxBleAdapterStateObservable;",
            ">;"
        }
    .end annotation
.end field

.field private rxBleAdapterWrapperProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private rxBleClientImplProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;",
            ">;"
        }
    .end annotation
.end field

.field private rxBleDeviceProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceProvider;",
            ">;"
        }
    .end annotation
.end field

.field private scanPreconditionsVerifierApi18Provider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanPreconditionsVerifierApi18;",
            ">;"
        }
    .end annotation
.end field

.field private scanPreconditionsVerifierApi24Provider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanPreconditionsVerifierApi24;",
            ">;"
        }
    .end annotation
.end field

.field private scanSettingsEmulatorProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator;",
            ">;"
        }
    .end annotation
.end field

.field private scanSetupBuilderImplApi18Provider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSetupBuilderImplApi18;",
            ">;"
        }
    .end annotation
.end field

.field private scanSetupBuilderImplApi21Provider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSetupBuilderImplApi21;",
            ">;"
        }
    .end annotation
.end field

.field private scanSetupBuilderImplApi23Provider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSetupBuilderImplApi23;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    iput-object p0, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->clientComponentImpl:Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;

    .line 526
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->applicationContext:Landroid/content/Context;

    .line 527
    invoke-direct {p0, p1}, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$1;)V
    .registers 3

    .line 426
    invoke-direct {p0, p1}, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;)Lbleshadow/javax/inject/Provider;
    .registers 1

    .line 426
    iget-object p0, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->provideBluetoothInteractionSchedulerProvider:Lbleshadow/javax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;)Lbleshadow/javax/inject/Provider;
    .registers 1

    .line 426
    iget-object p0, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->provideBluetoothManagerProvider:Lbleshadow/javax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;)Lbleshadow/javax/inject/Provider;
    .registers 1

    .line 426
    iget-object p0, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->bindClientOperationQueueProvider:Lbleshadow/javax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;)Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;
    .registers 1

    .line 426
    invoke-direct {p0}, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->rxBleAdapterWrapper()Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;)Lbleshadow/javax/inject/Provider;
    .registers 1

    .line 426
    iget-object p0, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->checkerConnectPermissionProvider:Lbleshadow/javax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;)Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;
    .registers 1

    .line 426
    iget-object p0, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->clientComponentImpl:Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;

    return-object p0
.end method

.method static synthetic access$400(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;)Landroid/content/Context;
    .registers 1

    .line 426
    iget-object p0, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->applicationContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;)Lbleshadow/javax/inject/Provider;
    .registers 1

    .line 426
    iget-object p0, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->rxBleAdapterWrapperProvider:Lbleshadow/javax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$700(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;)Lbleshadow/javax/inject/Provider;
    .registers 1

    .line 426
    iget-object p0, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->rxBleAdapterStateObservableProvider:Lbleshadow/javax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$800(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;)Lbleshadow/javax/inject/Provider;
    .registers 1

    .line 426
    iget-object p0, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->provideBluetoothCallbacksSchedulerProvider:Lbleshadow/javax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$900(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;)Lbleshadow/javax/inject/Provider;
    .registers 1

    .line 426
    iget-object p0, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->provideConnectionQueueExecutorServiceProvider:Lbleshadow/javax/inject/Provider;

    return-object p0
.end method

.method private initialize(Landroid/content/Context;)V
    .registers 20

    move-object/from16 v0, p0

    .line 549
    invoke-static/range {p1 .. p1}, Lbleshadow/dagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Lbleshadow/dagger/internal/Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->applicationContextProvider:Lbleshadow/javax/inject/Provider;

    .line 550
    invoke-static {v1}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideContentResolverFactory;->create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideContentResolverFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->provideContentResolverProvider:Lbleshadow/javax/inject/Provider;

    .line 551
    iget-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->applicationContextProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {v1}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideLocationManagerFactory;->create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideLocationManagerFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->provideLocationManagerProvider:Lbleshadow/javax/inject/Provider;

    .line 552
    iget-object v2, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->provideContentResolverProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {v2, v1}, Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerLocationProvider_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerLocationProvider_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->checkerLocationProvider:Lbleshadow/javax/inject/Provider;

    .line 553
    iget-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->applicationContextProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {v1}, Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerPermission_Factory;->create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerPermission_Factory;

    move-result-object v1

    invoke-static {v1}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->checkerPermissionProvider:Lbleshadow/javax/inject/Provider;

    .line 554
    iget-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->applicationContextProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {v1}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideTargetSdkFactory;->create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideTargetSdkFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->provideTargetSdkProvider:Lbleshadow/javax/inject/Provider;

    .line 555
    iget-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->applicationContextProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {v1}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideIsNearbyPermissionNeverForLocationFactory;->create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideIsNearbyPermissionNeverForLocationFactory;

    move-result-object v1

    invoke-static {v1}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->provideIsNearbyPermissionNeverForLocationProvider:Lbleshadow/javax/inject/Provider;

    .line 556
    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideDeviceSdkFactory;->create()Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideDeviceSdkFactory;

    move-result-object v1

    iget-object v2, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->provideTargetSdkProvider:Lbleshadow/javax/inject/Provider;

    iget-object v3, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->provideIsNearbyPermissionNeverForLocationProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {v1, v2, v3}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideRecommendedScanRuntimePermissionNamesFactory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideRecommendedScanRuntimePermissionNamesFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->provideRecommendedScanRuntimePermissionNamesProvider:Lbleshadow/javax/inject/Provider;

    .line 557
    iget-object v2, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->checkerPermissionProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {v2, v1}, Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerScanPermission_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerScanPermission_Factory;

    move-result-object v1

    invoke-static {v1}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->checkerScanPermissionProvider:Lbleshadow/javax/inject/Provider;

    .line 558
    iget-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->applicationContextProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideDeviceSdkFactory;->create()Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideDeviceSdkFactory;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideIsAndroidWearFactory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideIsAndroidWearFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->provideIsAndroidWearProvider:Lbleshadow/javax/inject/Provider;

    .line 559
    iget-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->checkerLocationProvider:Lbleshadow/javax/inject/Provider;

    iget-object v2, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->checkerScanPermissionProvider:Lbleshadow/javax/inject/Provider;

    iget-object v3, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->provideTargetSdkProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideDeviceSdkFactory;->create()Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideDeviceSdkFactory;

    move-result-object v4

    iget-object v5, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->provideIsAndroidWearProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/polidea/rxandroidble2_codemao/internal/util/LocationServicesStatusApi23_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/util/LocationServicesStatusApi23_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->locationServicesStatusApi23Provider:Lbleshadow/javax/inject/Provider;

    .line 560
    iget-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->checkerLocationProvider:Lbleshadow/javax/inject/Provider;

    iget-object v2, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->checkerScanPermissionProvider:Lbleshadow/javax/inject/Provider;

    iget-object v3, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->provideIsAndroidWearProvider:Lbleshadow/javax/inject/Provider;

    iget-object v4, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->provideIsNearbyPermissionNeverForLocationProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {v1, v2, v3, v4}, Lcom/polidea/rxandroidble2_codemao/internal/util/LocationServicesStatusApi31_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/util/LocationServicesStatusApi31_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->locationServicesStatusApi31Provider:Lbleshadow/javax/inject/Provider;

    .line 561
    iget-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->applicationContextProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {v1}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideBluetoothManagerFactory;->create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideBluetoothManagerFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->provideBluetoothManagerProvider:Lbleshadow/javax/inject/Provider;

    .line 562
    invoke-static {v1}, Lcom/polidea/rxandroidble2_codemao/internal/util/BluetoothManagerWrapper_Factory;->create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/util/BluetoothManagerWrapper_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->bluetoothManagerWrapperProvider:Lbleshadow/javax/inject/Provider;

    .line 563
    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideBluetoothAdapterFactory;->create()Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideBluetoothAdapterFactory;

    move-result-object v1

    invoke-static {v1}, Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper_Factory;->create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->rxBleAdapterWrapperProvider:Lbleshadow/javax/inject/Provider;

    .line 564
    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideBluetoothInteractionExecutorServiceFactory;->create()Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideBluetoothInteractionExecutorServiceFactory;

    move-result-object v1

    invoke-static {v1}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->provideBluetoothInteractionExecutorServiceProvider:Lbleshadow/javax/inject/Provider;

    .line 565
    invoke-static {v1}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideBluetoothInteractionSchedulerFactory;->create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideBluetoothInteractionSchedulerFactory;

    move-result-object v1

    invoke-static {v1}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->provideBluetoothInteractionSchedulerProvider:Lbleshadow/javax/inject/Provider;

    .line 566
    invoke-static {v1}, Lcom/polidea/rxandroidble2_codemao/internal/serialization/ClientOperationQueueImpl_Factory;->create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/serialization/ClientOperationQueueImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->clientOperationQueueImplProvider:Lbleshadow/javax/inject/Provider;

    .line 567
    invoke-static {v1}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->bindClientOperationQueueProvider:Lbleshadow/javax/inject/Provider;

    .line 568
    iget-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->applicationContextProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {v1}, Lcom/polidea/rxandroidble2_codemao/RxBleAdapterStateObservable_Factory;->create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/RxBleAdapterStateObservable_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->rxBleAdapterStateObservableProvider:Lbleshadow/javax/inject/Provider;

    .line 569
    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideDeviceSdkFactory;->create()Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideDeviceSdkFactory;

    move-result-object v1

    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/internal/util/LocationServicesStatusApi18_Factory;->create()Lcom/polidea/rxandroidble2_codemao/internal/util/LocationServicesStatusApi18_Factory;

    move-result-object v2

    iget-object v3, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->locationServicesStatusApi23Provider:Lbleshadow/javax/inject/Provider;

    iget-object v4, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->locationServicesStatusApi31Provider:Lbleshadow/javax/inject/Provider;

    invoke-static {v1, v2, v3, v4}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideLocationServicesStatusFactory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideLocationServicesStatusFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->provideLocationServicesStatusProvider:Lbleshadow/javax/inject/Provider;

    .line 570
    iget-object v2, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->applicationContextProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {v2, v1}, Lcom/polidea/rxandroidble2_codemao/internal/util/LocationServicesOkObservableApi23Factory_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/util/LocationServicesOkObservableApi23Factory_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->locationServicesOkObservableApi23FactoryProvider:Lbleshadow/javax/inject/Provider;

    .line 571
    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideDeviceSdkFactory;->create()Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideDeviceSdkFactory;

    move-result-object v1

    iget-object v2, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->locationServicesOkObservableApi23FactoryProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {v1, v2}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideLocationServicesOkObservableFactory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideLocationServicesOkObservableFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->provideLocationServicesOkObservableProvider:Lbleshadow/javax/inject/Provider;

    .line 572
    iget-object v2, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->rxBleAdapterWrapperProvider:Lbleshadow/javax/inject/Provider;

    iget-object v3, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->rxBleAdapterStateObservableProvider:Lbleshadow/javax/inject/Provider;

    iget-object v4, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->provideLocationServicesStatusProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideComputationSchedulerFactory;->create()Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideComputationSchedulerFactory;

    move-result-object v5

    invoke-static {v2, v3, v1, v4, v5}, Lcom/polidea/rxandroidble2_codemao/internal/util/ClientStateObservable_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/util/ClientStateObservable_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->clientStateObservableProvider:Lbleshadow/javax/inject/Provider;

    .line 573
    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache_Factory;->create()Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache_Factory;

    move-result-object v1

    invoke-static {v1}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->deviceComponentCacheProvider:Lbleshadow/javax/inject/Provider;

    .line 574
    new-instance v1, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl$1;

    invoke-direct {v1, v0}, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl$1;-><init>(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;)V

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->deviceComponentBuilderProvider:Lbleshadow/javax/inject/Provider;

    .line 580
    iget-object v2, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->deviceComponentCacheProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {v2, v1}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceProvider_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceProvider_Factory;

    move-result-object v1

    invoke-static {v1}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->rxBleDeviceProvider:Lbleshadow/javax/inject/Provider;

    .line 581
    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideDeviceSdkFactory;->create()Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideDeviceSdkFactory;

    move-result-object v1

    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/internal/scan/IsConnectableCheckerApi18_Factory;->create()Lcom/polidea/rxandroidble2_codemao/internal/scan/IsConnectableCheckerApi18_Factory;

    move-result-object v2

    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/internal/scan/IsConnectableCheckerApi26_Factory;->create()Lcom/polidea/rxandroidble2_codemao/internal/scan/IsConnectableCheckerApi26_Factory;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideIsConnectableCheckerFactory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideIsConnectableCheckerFactory;

    move-result-object v1

    invoke-static {v1}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->provideIsConnectableCheckerProvider:Lbleshadow/javax/inject/Provider;

    .line 582
    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/internal/util/ScanRecordParser_Factory;->create()Lcom/polidea/rxandroidble2_codemao/internal/util/ScanRecordParser_Factory;

    move-result-object v1

    iget-object v2, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->provideIsConnectableCheckerProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {v1, v2}, Lcom/polidea/rxandroidble2_codemao/internal/scan/InternalScanResultCreator_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/scan/InternalScanResultCreator_Factory;

    move-result-object v1

    invoke-static {v1}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->internalScanResultCreatorProvider:Lbleshadow/javax/inject/Provider;

    .line 583
    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideComputationSchedulerFactory;->create()Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideComputationSchedulerFactory;

    move-result-object v1

    invoke-static {v1}, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator_Factory;->create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->scanSettingsEmulatorProvider:Lbleshadow/javax/inject/Provider;

    .line 584
    iget-object v2, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->rxBleAdapterWrapperProvider:Lbleshadow/javax/inject/Provider;

    iget-object v3, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->internalScanResultCreatorProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {v2, v3, v1}, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSetupBuilderImplApi18_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSetupBuilderImplApi18_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->scanSetupBuilderImplApi18Provider:Lbleshadow/javax/inject/Provider;

    .line 585
    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideDeviceSdkFactory;->create()Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideDeviceSdkFactory;

    move-result-object v1

    invoke-static {v1}, Lcom/polidea/rxandroidble2_codemao/internal/scan/AndroidScanObjectsConverter_Factory;->create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/scan/AndroidScanObjectsConverter_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->androidScanObjectsConverterProvider:Lbleshadow/javax/inject/Provider;

    .line 586
    iget-object v2, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->rxBleAdapterWrapperProvider:Lbleshadow/javax/inject/Provider;

    iget-object v3, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->internalScanResultCreatorProvider:Lbleshadow/javax/inject/Provider;

    iget-object v4, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->scanSettingsEmulatorProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {v2, v3, v4, v1}, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSetupBuilderImplApi21_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSetupBuilderImplApi21_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->scanSetupBuilderImplApi21Provider:Lbleshadow/javax/inject/Provider;

    .line 587
    iget-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->rxBleAdapterWrapperProvider:Lbleshadow/javax/inject/Provider;

    iget-object v2, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->internalScanResultCreatorProvider:Lbleshadow/javax/inject/Provider;

    iget-object v3, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->scanSettingsEmulatorProvider:Lbleshadow/javax/inject/Provider;

    iget-object v4, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->androidScanObjectsConverterProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {v1, v2, v3, v4}, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSetupBuilderImplApi23_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSetupBuilderImplApi23_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->scanSetupBuilderImplApi23Provider:Lbleshadow/javax/inject/Provider;

    .line 588
    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideDeviceSdkFactory;->create()Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideDeviceSdkFactory;

    move-result-object v1

    iget-object v2, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->scanSetupBuilderImplApi18Provider:Lbleshadow/javax/inject/Provider;

    iget-object v3, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->scanSetupBuilderImplApi21Provider:Lbleshadow/javax/inject/Provider;

    iget-object v4, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->scanSetupBuilderImplApi23Provider:Lbleshadow/javax/inject/Provider;

    invoke-static {v1, v2, v3, v4}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideScanSetupProviderFactory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideScanSetupProviderFactory;

    move-result-object v1

    invoke-static {v1}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->provideScanSetupProvider:Lbleshadow/javax/inject/Provider;

    .line 589
    iget-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->rxBleAdapterWrapperProvider:Lbleshadow/javax/inject/Provider;

    iget-object v2, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->provideLocationServicesStatusProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {v1, v2}, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanPreconditionsVerifierApi18_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanPreconditionsVerifierApi18_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->scanPreconditionsVerifierApi18Provider:Lbleshadow/javax/inject/Provider;

    .line 590
    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideComputationSchedulerFactory;->create()Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideComputationSchedulerFactory;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanPreconditionsVerifierApi24_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanPreconditionsVerifierApi24_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->scanPreconditionsVerifierApi24Provider:Lbleshadow/javax/inject/Provider;

    .line 591
    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideDeviceSdkFactory;->create()Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideDeviceSdkFactory;

    move-result-object v1

    iget-object v2, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->scanPreconditionsVerifierApi18Provider:Lbleshadow/javax/inject/Provider;

    iget-object v3, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->scanPreconditionsVerifierApi24Provider:Lbleshadow/javax/inject/Provider;

    invoke-static {v1, v2, v3}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideScanPreconditionVerifierFactory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideScanPreconditionVerifierFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->provideScanPreconditionVerifierProvider:Lbleshadow/javax/inject/Provider;

    .line 592
    iget-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->rxBleDeviceProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {v1}, Lcom/polidea/rxandroidble2_codemao/internal/scan/InternalToExternalScanResultConverter_Factory;->create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/scan/InternalToExternalScanResultConverter_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->internalToExternalScanResultConverterProvider:Lbleshadow/javax/inject/Provider;

    .line 593
    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideBluetoothCallbacksSchedulerFactory;->create()Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideBluetoothCallbacksSchedulerFactory;

    move-result-object v1

    invoke-static {v1}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->provideBluetoothCallbacksSchedulerProvider:Lbleshadow/javax/inject/Provider;

    .line 594
    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideConnectionQueueExecutorServiceFactory;->create()Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideConnectionQueueExecutorServiceFactory;

    move-result-object v1

    invoke-static {v1}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->provideConnectionQueueExecutorServiceProvider:Lbleshadow/javax/inject/Provider;

    .line 595
    iget-object v2, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->provideBluetoothInteractionExecutorServiceProvider:Lbleshadow/javax/inject/Provider;

    iget-object v3, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->provideBluetoothCallbacksSchedulerProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {v2, v3, v1}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideFinalizationCloseableFactory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideFinalizationCloseableFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->provideFinalizationCloseableProvider:Lbleshadow/javax/inject/Provider;

    .line 596
    iget-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->rxBleAdapterWrapperProvider:Lbleshadow/javax/inject/Provider;

    iget-object v2, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->androidScanObjectsConverterProvider:Lbleshadow/javax/inject/Provider;

    iget-object v3, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->internalScanResultCreatorProvider:Lbleshadow/javax/inject/Provider;

    iget-object v4, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->internalToExternalScanResultConverterProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {v1, v2, v3, v4}, Lcom/polidea/rxandroidble2_codemao/internal/scan/BackgroundScannerImpl_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/scan/BackgroundScannerImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->backgroundScannerImplProvider:Lbleshadow/javax/inject/Provider;

    .line 597
    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideDeviceSdkFactory;->create()Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideDeviceSdkFactory;

    move-result-object v1

    iget-object v2, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->provideTargetSdkProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {v1, v2}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideRecommendedConnectRuntimePermissionNamesFactory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideRecommendedConnectRuntimePermissionNamesFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->provideRecommendedConnectRuntimePermissionNamesProvider:Lbleshadow/javax/inject/Provider;

    .line 598
    iget-object v2, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->checkerPermissionProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {v2, v1}, Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerConnectPermission_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/util/CheckerConnectPermission_Factory;

    move-result-object v1

    invoke-static {v1}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->checkerConnectPermissionProvider:Lbleshadow/javax/inject/Provider;

    .line 599
    iget-object v2, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->bluetoothManagerWrapperProvider:Lbleshadow/javax/inject/Provider;

    iget-object v3, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->rxBleAdapterWrapperProvider:Lbleshadow/javax/inject/Provider;

    iget-object v4, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->bindClientOperationQueueProvider:Lbleshadow/javax/inject/Provider;

    iget-object v5, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->rxBleAdapterStateObservableProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/internal/util/ScanRecordParser_Factory;->create()Lcom/polidea/rxandroidble2_codemao/internal/util/ScanRecordParser_Factory;

    move-result-object v6

    iget-object v7, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->provideLocationServicesStatusProvider:Lbleshadow/javax/inject/Provider;

    iget-object v8, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->clientStateObservableProvider:Lbleshadow/javax/inject/Provider;

    iget-object v9, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->rxBleDeviceProvider:Lbleshadow/javax/inject/Provider;

    iget-object v10, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->provideScanSetupProvider:Lbleshadow/javax/inject/Provider;

    iget-object v11, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->provideScanPreconditionVerifierProvider:Lbleshadow/javax/inject/Provider;

    iget-object v12, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->internalToExternalScanResultConverterProvider:Lbleshadow/javax/inject/Provider;

    iget-object v13, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->provideBluetoothInteractionSchedulerProvider:Lbleshadow/javax/inject/Provider;

    iget-object v14, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->provideFinalizationCloseableProvider:Lbleshadow/javax/inject/Provider;

    iget-object v15, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->backgroundScannerImplProvider:Lbleshadow/javax/inject/Provider;

    iget-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->checkerScanPermissionProvider:Lbleshadow/javax/inject/Provider;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->checkerConnectPermissionProvider:Lbleshadow/javax/inject/Provider;

    move-object/from16 v17, v1

    invoke-static/range {v2 .. v17}, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->rxBleClientImplProvider:Lbleshadow/javax/inject/Provider;

    .line 600
    invoke-static {v1}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->bindRxBleClientProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method private rxBleAdapterWrapper()Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;
    .registers 3

    .line 544
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;

    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/ClientComponent$ClientModule;->provideBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    return-object v0
.end method


# virtual methods
.method public rxBleClient()Lcom/polidea/rxandroidble2_codemao/RxBleClient;
    .registers 2

    .line 610
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->bindRxBleClientProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/rxandroidble2_codemao/RxBleClient;

    return-object v0
.end method
