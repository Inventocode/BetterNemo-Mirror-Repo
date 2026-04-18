.class public final Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideConnectionQueueExecutorServiceFactory;
.super Ljava/lang/Object;
.source "ClientComponent_ClientModule_ProvideConnectionQueueExecutorServiceFactory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideConnectionQueueExecutorServiceFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Ljava/util/concurrent/ExecutorService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideConnectionQueueExecutorServiceFactory;
    .registers 1

    .line 25
    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideConnectionQueueExecutorServiceFactory$InstanceHolder;->access$000()Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideConnectionQueueExecutorServiceFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideConnectionQueueExecutorService()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 29
    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/ClientComponent$ClientModule;->provideConnectionQueueExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lbleshadow/dagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideConnectionQueueExecutorServiceFactory;->get()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 21
    invoke-static {}, Lcom/polidea/rxandroidble2_codemao/ClientComponent_ClientModule_ProvideConnectionQueueExecutorServiceFactory;->provideConnectionQueueExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method
