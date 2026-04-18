.class public final Lcom/polidea/rxandroidble2_codemao/internal/DeviceModule_ProvidesConnectTimeoutConfFactory;
.super Ljava/lang/Object;
.source "DeviceModule_ProvidesConnectTimeoutConfFactory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method public static providesConnectTimeoutConf(Lio/reactivex/Scheduler;)Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;
    .registers 1

    .line 39
    invoke-static {p0}, Lcom/polidea/rxandroidble2_codemao/internal/DeviceModule;->providesConnectTimeoutConf(Lio/reactivex/Scheduler;)Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;

    move-result-object p0

    invoke-static {p0}, Lbleshadow/dagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;

    return-object p0
.end method
