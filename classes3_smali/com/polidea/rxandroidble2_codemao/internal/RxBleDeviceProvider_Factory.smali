.class public final Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceProvider_Factory;
.super Ljava/lang/Object;
.source "RxBleDeviceProvider_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final deviceComponentBuilderProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceComponentCacheProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent$Builder;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceProvider_Factory;->deviceComponentCacheProvider:Lbleshadow/javax/inject/Provider;

    .line 26
    iput-object p2, p0, Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceProvider_Factory;->deviceComponentBuilderProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceProvider_Factory;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent$Builder;",
            ">;)",
            "Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceProvider_Factory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceProvider_Factory;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceProvider_Factory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceProvider;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent$Builder;",
            ">;)",
            "Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceProvider;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceProvider;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceProvider;-><init>(Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache;Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceProvider;
    .registers 3

    .line 31
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceProvider_Factory;->deviceComponentCacheProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceProvider_Factory;->deviceComponentBuilderProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {v0, v1}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceProvider_Factory;->newInstance(Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceProvider_Factory;->get()Lcom/polidea/rxandroidble2_codemao/internal/RxBleDeviceProvider;

    move-result-object v0

    return-object v0
.end method
