.class public final Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSetupBuilderImplApi18_Factory;
.super Ljava/lang/Object;
.source "ScanSetupBuilderImplApi18_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSetupBuilderImplApi18;",
        ">;"
    }
.end annotation


# instance fields
.field private final internalScanResultCreatorProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/scan/InternalScanResultCreator;",
            ">;"
        }
    .end annotation
.end field

.field private final rxBleAdapterWrapperProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final scanSettingsEmulatorProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/scan/InternalScanResultCreator;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSetupBuilderImplApi18_Factory;->rxBleAdapterWrapperProvider:Lbleshadow/javax/inject/Provider;

    .line 30
    iput-object p2, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSetupBuilderImplApi18_Factory;->internalScanResultCreatorProvider:Lbleshadow/javax/inject/Provider;

    .line 31
    iput-object p3, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSetupBuilderImplApi18_Factory;->scanSettingsEmulatorProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSetupBuilderImplApi18_Factory;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/scan/InternalScanResultCreator;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator;",
            ">;)",
            "Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSetupBuilderImplApi18_Factory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSetupBuilderImplApi18_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSetupBuilderImplApi18_Factory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;Lcom/polidea/rxandroidble2_codemao/internal/scan/InternalScanResultCreator;Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator;)Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSetupBuilderImplApi18;
    .registers 4

    .line 49
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSetupBuilderImplApi18;

    invoke-direct {v0, p0, p1, p2}, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSetupBuilderImplApi18;-><init>(Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;Lcom/polidea/rxandroidble2_codemao/internal/scan/InternalScanResultCreator;Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSetupBuilderImplApi18;
    .registers 4

    .line 36
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSetupBuilderImplApi18_Factory;->rxBleAdapterWrapperProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSetupBuilderImplApi18_Factory;->internalScanResultCreatorProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/polidea/rxandroidble2_codemao/internal/scan/InternalScanResultCreator;

    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSetupBuilderImplApi18_Factory;->scanSettingsEmulatorProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v2}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator;

    invoke-static {v0, v1, v2}, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSetupBuilderImplApi18_Factory;->newInstance(Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;Lcom/polidea/rxandroidble2_codemao/internal/scan/InternalScanResultCreator;Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator;)Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSetupBuilderImplApi18;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSetupBuilderImplApi18_Factory;->get()Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSetupBuilderImplApi18;

    move-result-object v0

    return-object v0
.end method
