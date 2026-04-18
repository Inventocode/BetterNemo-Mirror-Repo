.class public Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceProvider;
.super Ljava/lang/Object;
.source "RxBleDeviceProvider.java"


# instance fields
.field private final cachedDeviceComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceComponentBuilder:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache;Lbleshadow/javax/inject/Provider;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent$Builder;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceProvider;->cachedDeviceComponents:Ljava/util/Map;

    .line 21
    iput-object p2, p0, Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceProvider;->deviceComponentBuilder:Lbleshadow/javax/inject/Provider;

    return-void
.end method


# virtual methods
.method public getBleDevice(Ljava/lang/String;)Lcom/polidea/rxandroidble2_codemao/RxBleDevice;
    .registers 6

    .line 25
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceProvider;->cachedDeviceComponents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;

    if-eqz v0, :cond_f

    .line 28
    invoke-interface {v0}, Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;->provideDevice()Lcom/polidea/rxandroidble2_codemao/RxBleDevice;

    move-result-object p1

    return-object p1

    .line 31
    :cond_f
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceProvider;->cachedDeviceComponents:Ljava/util/Map;

    monitor-enter v0

    .line 32
    :try_start_12
    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceProvider;->cachedDeviceComponents:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;

    if-eqz v1, :cond_22

    .line 35
    invoke-interface {v1}, Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;->provideDevice()Lcom/polidea/rxandroidble2_codemao/RxBleDevice;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 38
    :cond_22
    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceProvider;->deviceComponentBuilder:Lbleshadow/javax/inject/Provider;

    .line 39
    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent$Builder;

    .line 40
    invoke-interface {v1, p1}, Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent$Builder;->macAddress(Ljava/lang/String;)Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent$Builder;

    move-result-object v1

    .line 41
    invoke-interface {v1}, Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent$Builder;->build()Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;

    move-result-object v1

    .line 43
    invoke-interface {v1}, Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;->provideDevice()Lcom/polidea/rxandroidble2_codemao/RxBleDevice;

    move-result-object v2

    .line 44
    iget-object v3, p0, Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceProvider;->cachedDeviceComponents:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    monitor-exit v0

    return-object v2

    :catchall_3d
    move-exception p1

    .line 46
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_12 .. :try_end_3f} :catchall_3d

    throw p1
.end method
