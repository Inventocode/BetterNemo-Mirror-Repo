.class public final synthetic Landroidx/camera/core/internal/UseCaseEventConfig$-CC;
.super Ljava/lang/Object;
.source "UseCaseEventConfig.java"


# direct methods
.method public static $default$getUseCaseEventCallback(Landroidx/camera/core/internal/UseCaseEventConfig;Landroidx/camera/core/UseCase$EventCallback;)Landroidx/camera/core/UseCase$EventCallback;
    .registers 3
    .param p0, "_this"  # Landroidx/camera/core/internal/UseCaseEventConfig;

    .line 48
    sget-object v0, Landroidx/camera/core/internal/UseCaseEventConfig;->OPTION_USE_CASE_EVENT_CALLBACK:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p0, v0, p1}, Landroidx/camera/core/impl/ReadableConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/UseCase$EventCallback;

    return-object p1
.end method
