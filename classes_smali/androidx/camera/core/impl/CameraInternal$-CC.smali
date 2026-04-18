.class public final synthetic Landroidx/camera/core/impl/CameraInternal$-CC;
.super Ljava/lang/Object;
.source "CameraInternal.java"


# direct methods
.method public static $default$getCameraInfo(Landroidx/camera/core/impl/CameraInternal;)Landroidx/camera/core/CameraInfo;
    .registers 2
    .param p0, "_this"  # Landroidx/camera/core/impl/CameraInternal;

    .line 180
    invoke-interface {p0}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object v0

    return-object v0
.end method
