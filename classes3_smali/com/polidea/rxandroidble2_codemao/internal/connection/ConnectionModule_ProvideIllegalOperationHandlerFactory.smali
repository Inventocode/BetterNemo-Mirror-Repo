.class public final Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionModule_ProvideIllegalOperationHandlerFactory;
.super Ljava/lang/Object;
.source "ConnectionModule_ProvideIllegalOperationHandlerFactory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private final loggingIllegalOperationHandlerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/LoggingIllegalOperationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final suppressOperationCheckProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final throwingIllegalOperationHandlerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/ThrowingIllegalOperationHandler;",
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
            "Ljava/lang/Boolean;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/LoggingIllegalOperationHandler;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/ThrowingIllegalOperationHandler;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionModule_ProvideIllegalOperationHandlerFactory;->suppressOperationCheckProvider:Lbleshadow/javax/inject/Provider;

    .line 30
    iput-object p2, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionModule_ProvideIllegalOperationHandlerFactory;->loggingIllegalOperationHandlerProvider:Lbleshadow/javax/inject/Provider;

    .line 31
    iput-object p3, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionModule_ProvideIllegalOperationHandlerFactory;->throwingIllegalOperationHandlerProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionModule_ProvideIllegalOperationHandlerFactory;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/LoggingIllegalOperationHandler;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/ThrowingIllegalOperationHandler;",
            ">;)",
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionModule_ProvideIllegalOperationHandlerFactory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionModule_ProvideIllegalOperationHandlerFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionModule_ProvideIllegalOperationHandlerFactory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static provideIllegalOperationHandler(ZLbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationHandler;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/LoggingIllegalOperationHandler;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/ThrowingIllegalOperationHandler;",
            ">;)",
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationHandler;"
        }
    .end annotation

    .line 50
    invoke-static {p0, p1, p2}, Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionModule;->provideIllegalOperationHandler(ZLbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationHandler;

    move-result-object p0

    invoke-static {p0}, Lbleshadow/dagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationHandler;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationHandler;
    .registers 4

    .line 36
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionModule_ProvideIllegalOperationHandlerFactory;->suppressOperationCheckProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionModule_ProvideIllegalOperationHandlerFactory;->loggingIllegalOperationHandlerProvider:Lbleshadow/javax/inject/Provider;

    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionModule_ProvideIllegalOperationHandlerFactory;->throwingIllegalOperationHandlerProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionModule_ProvideIllegalOperationHandlerFactory;->provideIllegalOperationHandler(ZLbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionModule_ProvideIllegalOperationHandlerFactory;->get()Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationHandler;

    move-result-object v0

    return-object v0
.end method
