.class public final synthetic Landroidx/camera/core/internal/TargetConfig$-CC;
.super Ljava/lang/Object;
.source "TargetConfig.java"


# direct methods
.method public static $default$getTargetName(Landroidx/camera/core/internal/TargetConfig;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "_this"  # Landroidx/camera/core/internal/TargetConfig;

    .line 94
    sget-object v0, Landroidx/camera/core/internal/TargetConfig;->OPTION_TARGET_NAME:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p0, v0, p1}, Landroidx/camera/core/impl/ReadableConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
