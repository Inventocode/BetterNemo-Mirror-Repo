.class public final Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator_Factory;
.super Ljava/lang/Object;
.source "ScanSettingsEmulator_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator;",
        ">;"
    }
.end annotation


# instance fields
.field private final schedulerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbleshadow/javax/inject/Provider;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator_Factory;->schedulerProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator_Factory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator_Factory;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator_Factory;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator_Factory;-><init>(Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lio/reactivex/Scheduler;)Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator;
    .registers 2

    .line 35
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator;-><init>(Lio/reactivex/Scheduler;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator_Factory;->schedulerProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Scheduler;

    invoke-static {v0}, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator_Factory;->newInstance(Lio/reactivex/Scheduler;)Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator_Factory;->get()Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator;

    move-result-object v0

    return-object v0
.end method
