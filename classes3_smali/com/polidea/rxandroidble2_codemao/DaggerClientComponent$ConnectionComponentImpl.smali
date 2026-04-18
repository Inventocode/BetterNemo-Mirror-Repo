.class final Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;
.super Ljava/lang/Object;
.source "DaggerClientComponent.java"

# interfaces
.implements Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConnectionComponentImpl"
.end annotation


# instance fields
.field private final autoConnect:Ljava/lang/Boolean;

.field private bluetoothGattProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/BluetoothGattProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final clientComponentImpl:Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;

.field private connectionOperationQueueImplProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/serialization/ConnectionOperationQueueImpl;",
            ">;"
        }
    .end annotation
.end field

.field private descriptorWriterProvider:Lbleshadow/javax/inject/Provider;

.field private final deviceComponentImpl:Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentImpl;

.field private disconnectActionProvider:Lbleshadow/javax/inject/Provider;

.field private disconnectOperationProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/operations/DisconnectOperation;",
            ">;"
        }
    .end annotation
.end field

.field private disconnectionRouterProvider:Lbleshadow/javax/inject/Provider;

.field private illegalOperationCheckerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationChecker;",
            ">;"
        }
    .end annotation
.end field

.field private illegalOperationMessageCreatorProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationMessageCreator;",
            ">;"
        }
    .end annotation
.end field

.field private loggerUtilBluetoothServicesProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtilBluetoothServices;",
            ">;"
        }
    .end annotation
.end field

.field private loggingIllegalOperationHandlerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/LoggingIllegalOperationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private longWriteOperationBuilderImplProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/LongWriteOperationBuilderImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mtuBasedPayloadSizeLimitProvider:Lbleshadow/javax/inject/Provider;

.field private mtuWatcherProvider:Lbleshadow/javax/inject/Provider;

.field private notificationAndIndicationManagerProvider:Lbleshadow/javax/inject/Provider;

.field private operationTimeoutProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/Timeout;",
            ">;"
        }
    .end annotation
.end field

.field private operationsProviderImplProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/operations/OperationsProviderImpl;",
            ">;"
        }
    .end annotation
.end field

.field private provideBluetoothGattProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;"
        }
    .end annotation
.end field

.field private provideIllegalOperationHandlerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private providesOperationTimeoutConfProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private readRssiOperationProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/operations/ReadRssiOperation;",
            ">;"
        }
    .end annotation
.end field

.field private rxBleConnectionImplProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private rxBleGattCallbackProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;",
            ">;"
        }
    .end annotation
.end field

.field private serviceDiscoveryManagerProvider:Lbleshadow/javax/inject/Provider;

.field private suppressOperationChecksProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private throwingIllegalOperationHandlerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/ThrowingIllegalOperationHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentImpl;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/polidea/rxandroidble2_codemao/Timeout;)V
    .registers 6

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->clientComponentImpl:Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;

    .line 302
    iput-object p2, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->deviceComponentImpl:Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentImpl;

    .line 303
    iput-object p3, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->autoConnect:Ljava/lang/Boolean;

    .line 304
    invoke-direct {p0, p3, p4, p5}, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->initialize(Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/polidea/rxandroidble2_codemao/Timeout;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentImpl;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/polidea/rxandroidble2_codemao/Timeout;Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$1;)V
    .registers 7

    .line 232
    invoke-direct/range {p0 .. p5}, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;-><init>(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentImpl;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/polidea/rxandroidble2_codemao/Timeout;)V

    return-void
.end method

.method private bleConnectionCompat()Lcom/polidea/rxandroidble2_codemao/internal/util/BleConnectionCompat;
    .registers 3

    .line 309
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/util/BleConnectionCompat;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->clientComponentImpl:Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;

    invoke-static {v1}, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->access$400(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/polidea/rxandroidble2_codemao/internal/util/BleConnectionCompat;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private initialize(Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/polidea/rxandroidble2_codemao/Timeout;)V
    .registers 15

    .line 315
    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/internal/connection/BluetoothGattProvider_Factory;->create()Lcom/polidea/rxandroidble2_codemao/internal/connection/BluetoothGattProvider_Factory;

    move-result-object p1

    invoke-static {p1}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->bluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    .line 316
    iget-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->deviceComponentImpl:Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentImpl;

    invoke-static {p1}, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentImpl;->access$500(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentImpl;)Lbleshadow/javax/inject/Provider;

    move-result-object p1

    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->clientComponentImpl:Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;

    invoke-static {v0}, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->access$600(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;)Lbleshadow/javax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->clientComponentImpl:Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;

    invoke-static {v1}, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->access$700(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;)Lbleshadow/javax/inject/Provider;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter_Factory;

    move-result-object p1

    invoke-static {p1}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->disconnectionRouterProvider:Lbleshadow/javax/inject/Provider;

    .line 317
    iget-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->clientComponentImpl:Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;

    invoke-static {p1}, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->access$800(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;)Lbleshadow/javax/inject/Provider;

    move-result-object p1

    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->bluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->disconnectionRouterProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NativeCallbackDispatcher_Factory;->create()Lcom/polidea/rxandroidble2_codemao/internal/connection/NativeCallbackDispatcher_Factory;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback_Factory;

    move-result-object p1

    invoke-static {p1}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->rxBleGattCallbackProvider:Lbleshadow/javax/inject/Provider;

    .line 318
    iget-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->deviceComponentImpl:Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentImpl;

    invoke-static {p1}, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentImpl;->access$500(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentImpl;)Lbleshadow/javax/inject/Provider;

    move-result-object p1

    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->disconnectionRouterProvider:Lbleshadow/javax/inject/Provider;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->clientComponentImpl:Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;

    invoke-static {v1}, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->access$900(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;)Lbleshadow/javax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->clientComponentImpl:Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;

    invoke-static {v2}, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->access$1000(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;)Lbleshadow/javax/inject/Provider;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/polidea/rxandroidble2_codemao/internal/serialization/ConnectionOperationQueueImpl_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/serialization/ConnectionOperationQueueImpl_Factory;

    move-result-object p1

    invoke-static {p1}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->connectionOperationQueueImplProvider:Lbleshadow/javax/inject/Provider;

    .line 319
    iget-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->bluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {p1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionModule_ProvideBluetoothGattFactory;->create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionModule_ProvideBluetoothGattFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->provideBluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    .line 320
    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionModule_ProvideCharacteristicPropertiesParserFactory;->create()Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionModule_ProvideCharacteristicPropertiesParserFactory;

    move-result-object p1

    invoke-static {p1}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtilBluetoothServices_Factory;->create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtilBluetoothServices_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->loggerUtilBluetoothServicesProvider:Lbleshadow/javax/inject/Provider;

    .line 321
    invoke-static {p3}, Lbleshadow/dagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Lbleshadow/dagger/internal/Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->operationTimeoutProvider:Lbleshadow/javax/inject/Provider;

    .line 322
    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideComputationSchedulerFactory;->create()Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideComputationSchedulerFactory;

    move-result-object p1

    iget-object p3, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->operationTimeoutProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {p1, p3}, Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionModule_ProvidesOperationTimeoutConfFactory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionModule_ProvidesOperationTimeoutConfFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->providesOperationTimeoutConfProvider:Lbleshadow/javax/inject/Provider;

    .line 323
    iget-object p3, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->rxBleGattCallbackProvider:Lbleshadow/javax/inject/Provider;

    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->provideBluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {p3, v0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/operations/ReadRssiOperation_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/operations/ReadRssiOperation_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->readRssiOperationProvider:Lbleshadow/javax/inject/Provider;

    .line 324
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->rxBleGattCallbackProvider:Lbleshadow/javax/inject/Provider;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->provideBluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->loggerUtilBluetoothServicesProvider:Lbleshadow/javax/inject/Provider;

    iget-object v3, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->providesOperationTimeoutConfProvider:Lbleshadow/javax/inject/Provider;

    iget-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->clientComponentImpl:Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;

    invoke-static {p1}, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->access$1000(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;)Lbleshadow/javax/inject/Provider;

    move-result-object v4

    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideComputationSchedulerFactory;->create()Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideComputationSchedulerFactory;

    move-result-object v5

    iget-object v6, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->readRssiOperationProvider:Lbleshadow/javax/inject/Provider;

    invoke-static/range {v0 .. v6}, Lcom/polidea/rxandroidble2_codemao/internal/operations/OperationsProviderImpl_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/operations/OperationsProviderImpl_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->operationsProviderImplProvider:Lbleshadow/javax/inject/Provider;

    .line 325
    iget-object p3, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->connectionOperationQueueImplProvider:Lbleshadow/javax/inject/Provider;

    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->provideBluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {p3, v0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/ServiceDiscoveryManager_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/connection/ServiceDiscoveryManager_Factory;

    move-result-object p1

    invoke-static {p1}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->serviceDiscoveryManagerProvider:Lbleshadow/javax/inject/Provider;

    .line 326
    iget-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->connectionOperationQueueImplProvider:Lbleshadow/javax/inject/Provider;

    iget-object p3, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->operationsProviderImplProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {p1, p3}, Lcom/polidea/rxandroidble2_codemao/internal/connection/DescriptorWriter_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/connection/DescriptorWriter_Factory;

    move-result-object p1

    invoke-static {p1}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->descriptorWriterProvider:Lbleshadow/javax/inject/Provider;

    .line 327
    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideEnableNotificationValueFactory;->create()Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideEnableNotificationValueFactory;

    move-result-object v0

    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideEnableIndicationValueFactory;->create()Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideEnableIndicationValueFactory;

    move-result-object v1

    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideDisableNotificationValueFactory;->create()Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideDisableNotificationValueFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->provideBluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    iget-object v4, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->rxBleGattCallbackProvider:Lbleshadow/javax/inject/Provider;

    iget-object v5, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->descriptorWriterProvider:Lbleshadow/javax/inject/Provider;

    invoke-static/range {v0 .. v5}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager_Factory;

    move-result-object p1

    invoke-static {p1}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->notificationAndIndicationManagerProvider:Lbleshadow/javax/inject/Provider;

    .line 328
    iget-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->rxBleGattCallbackProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionModule_MinimumMtuFactory;->create()Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionModule_MinimumMtuFactory;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/polidea/rxandroidble2_codemao/internal/connection/MtuWatcher_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/connection/MtuWatcher_Factory;

    move-result-object p1

    invoke-static {p1}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->mtuWatcherProvider:Lbleshadow/javax/inject/Provider;

    .line 329
    new-instance p1, Lbleshadow/dagger/internal/DelegateFactory;

    invoke-direct {p1}, Lbleshadow/dagger/internal/DelegateFactory;-><init>()V

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->rxBleConnectionImplProvider:Lbleshadow/javax/inject/Provider;

    .line 330
    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionModule_GattWriteMtuOverheadFactory;->create()Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionModule_GattWriteMtuOverheadFactory;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/polidea/rxandroidble2_codemao/internal/connection/MtuBasedPayloadSizeLimit_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/connection/MtuBasedPayloadSizeLimit_Factory;

    move-result-object p1

    invoke-static {p1}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->mtuBasedPayloadSizeLimitProvider:Lbleshadow/javax/inject/Provider;

    .line 331
    iget-object p3, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->connectionOperationQueueImplProvider:Lbleshadow/javax/inject/Provider;

    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->rxBleConnectionImplProvider:Lbleshadow/javax/inject/Provider;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->operationsProviderImplProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {p3, p1, v0, v1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/LongWriteOperationBuilderImpl_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/connection/LongWriteOperationBuilderImpl_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->longWriteOperationBuilderImplProvider:Lbleshadow/javax/inject/Provider;

    .line 332
    invoke-static {p2}, Lbleshadow/dagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Lbleshadow/dagger/internal/Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->suppressOperationChecksProvider:Lbleshadow/javax/inject/Provider;

    .line 333
    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionModule_ProvideCharacteristicPropertiesParserFactory;->create()Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionModule_ProvideCharacteristicPropertiesParserFactory;

    move-result-object p1

    invoke-static {p1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationMessageCreator_Factory;->create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationMessageCreator_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->illegalOperationMessageCreatorProvider:Lbleshadow/javax/inject/Provider;

    .line 334
    invoke-static {p1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/LoggingIllegalOperationHandler_Factory;->create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/connection/LoggingIllegalOperationHandler_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->loggingIllegalOperationHandlerProvider:Lbleshadow/javax/inject/Provider;

    .line 335
    iget-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->illegalOperationMessageCreatorProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {p1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/ThrowingIllegalOperationHandler_Factory;->create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/connection/ThrowingIllegalOperationHandler_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->throwingIllegalOperationHandlerProvider:Lbleshadow/javax/inject/Provider;

    .line 336
    iget-object p2, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->suppressOperationChecksProvider:Lbleshadow/javax/inject/Provider;

    iget-object p3, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->loggingIllegalOperationHandlerProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {p2, p3, p1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionModule_ProvideIllegalOperationHandlerFactory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionModule_ProvideIllegalOperationHandlerFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->provideIllegalOperationHandlerProvider:Lbleshadow/javax/inject/Provider;

    .line 337
    invoke-static {p1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationChecker_Factory;->create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationChecker_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->illegalOperationCheckerProvider:Lbleshadow/javax/inject/Provider;

    .line 338
    iget-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->rxBleConnectionImplProvider:Lbleshadow/javax/inject/Provider;

    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->connectionOperationQueueImplProvider:Lbleshadow/javax/inject/Provider;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->rxBleGattCallbackProvider:Lbleshadow/javax/inject/Provider;

    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->provideBluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    iget-object v3, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->serviceDiscoveryManagerProvider:Lbleshadow/javax/inject/Provider;

    iget-object v4, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->notificationAndIndicationManagerProvider:Lbleshadow/javax/inject/Provider;

    iget-object v5, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->mtuWatcherProvider:Lbleshadow/javax/inject/Provider;

    iget-object v6, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->descriptorWriterProvider:Lbleshadow/javax/inject/Provider;

    iget-object v7, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->operationsProviderImplProvider:Lbleshadow/javax/inject/Provider;

    iget-object v8, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->longWriteOperationBuilderImplProvider:Lbleshadow/javax/inject/Provider;

    iget-object p2, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->clientComponentImpl:Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;

    invoke-static {p2}, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->access$1000(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;)Lbleshadow/javax/inject/Provider;

    move-result-object v9

    iget-object v10, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->illegalOperationCheckerProvider:Lbleshadow/javax/inject/Provider;

    invoke-static/range {v0 .. v10}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl_Factory;

    move-result-object p2

    invoke-static {p2}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object p2

    invoke-static {p1, p2}, Lbleshadow/dagger/internal/DelegateFactory;->setDelegate(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    .line 339
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->rxBleGattCallbackProvider:Lbleshadow/javax/inject/Provider;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->bluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    iget-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->deviceComponentImpl:Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentImpl;

    invoke-static {p1}, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentImpl;->access$500(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentImpl;)Lbleshadow/javax/inject/Provider;

    move-result-object v2

    iget-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->clientComponentImpl:Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;

    invoke-static {p1}, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->access$1100(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;)Lbleshadow/javax/inject/Provider;

    move-result-object v3

    iget-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->clientComponentImpl:Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;

    invoke-static {p1}, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->access$1000(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;)Lbleshadow/javax/inject/Provider;

    move-result-object v4

    iget-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->deviceComponentImpl:Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentImpl;

    invoke-static {p1}, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentImpl;->access$1200(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentImpl;)Lbleshadow/javax/inject/Provider;

    move-result-object v5

    iget-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->deviceComponentImpl:Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentImpl;

    invoke-static {p1}, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentImpl;->access$1300(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentImpl;)Lbleshadow/javax/inject/Provider;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/polidea/rxandroidble2_codemao/internal/operations/DisconnectOperation_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/operations/DisconnectOperation_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->disconnectOperationProvider:Lbleshadow/javax/inject/Provider;

    .line 340
    iget-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->clientComponentImpl:Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;

    invoke-static {p1}, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;->access$1400(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;)Lbleshadow/javax/inject/Provider;

    move-result-object p1

    iget-object p2, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->disconnectOperationProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {p1, p2}, Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectAction_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectAction_Factory;

    move-result-object p1

    invoke-static {p1}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->disconnectActionProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method


# virtual methods
.method public connectOperation()Lcom/polidea/rxandroidble2_codemao/internal/operations/ConnectOperation;
    .registers 9

    .line 345
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->deviceComponentImpl:Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentImpl;

    invoke-static {v0}, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentImpl;->access$1500(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentImpl;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-direct {p0}, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->bleConnectionCompat()Lcom/polidea/rxandroidble2_codemao/internal/util/BleConnectionCompat;

    move-result-object v2

    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->rxBleGattCallbackProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->bluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/polidea/rxandroidble2_codemao/internal/connection/BluetoothGattProvider;

    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->deviceComponentImpl:Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentImpl;

    invoke-static {v0}, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentImpl;->access$1600(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentImpl;)Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;

    move-result-object v5

    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->autoConnect:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->deviceComponentImpl:Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentImpl;

    invoke-static {v0}, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentImpl;->access$1300(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentImpl;)Lbleshadow/javax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionStateChangeListener;

    invoke-static/range {v1 .. v7}, Lcom/polidea/rxandroidble2_codemao/internal/operations/ConnectOperation_Factory;->newInstance(Landroid/bluetooth/BluetoothDevice;Lcom/polidea/rxandroidble2_codemao/internal/util/BleConnectionCompat;Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;Lcom/polidea/rxandroidble2_codemao/internal/connection/BluetoothGattProvider;Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;ZLcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionStateChangeListener;)Lcom/polidea/rxandroidble2_codemao/internal/operations/ConnectOperation;

    move-result-object v0

    return-object v0
.end method

.method public connectionSubscriptionWatchers()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionSubscriptionWatcher;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 360
    invoke-static {v0}, Lbleshadow/dagger/internal/SetBuilder;->newSetBuilder(I)Lbleshadow/dagger/internal/SetBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->mtuWatcherProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionSubscriptionWatcher;

    invoke-virtual {v0, v1}, Lbleshadow/dagger/internal/SetBuilder;->add(Ljava/lang/Object;)Lbleshadow/dagger/internal/SetBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->disconnectActionProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionSubscriptionWatcher;

    invoke-virtual {v0, v1}, Lbleshadow/dagger/internal/SetBuilder;->add(Ljava/lang/Object;)Lbleshadow/dagger/internal/SetBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->connectionOperationQueueImplProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionSubscriptionWatcher;

    invoke-virtual {v0, v1}, Lbleshadow/dagger/internal/SetBuilder;->add(Ljava/lang/Object;)Lbleshadow/dagger/internal/SetBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lbleshadow/dagger/internal/SetBuilder;->build()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public gattCallback()Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;
    .registers 2

    .line 355
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->rxBleGattCallbackProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    return-object v0
.end method

.method public rxBleConnection()Lcom/polidea/rxandroidble2_codemao/RxBleConnection;
    .registers 2

    .line 350
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;->rxBleConnectionImplProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/rxandroidble2_codemao/RxBleConnection;

    return-object v0
.end method
