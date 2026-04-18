.class public final synthetic Landroidx/camera/camera2/internal/compat/CameraManagerCompat$CameraManagerCompatImpl$-CC;
.super Ljava/lang/Object;
.source "CameraManagerCompat.java"


# direct methods
.method public static from(Landroid/content/Context;Landroid/os/Handler;)Landroidx/camera/camera2/internal/compat/CameraManagerCompat$CameraManagerCompatImpl;
    .registers 4

    .line 270
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_c

    .line 271
    new-instance p1, Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi29Impl;

    invoke-direct {p1, p0}, Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi29Impl;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_c
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_15

    .line 274
    invoke-static {p0}, Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi28Impl;->create(Landroid/content/Context;)Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi28Impl;

    move-result-object p0

    return-object p0

    .line 277
    :cond_15
    invoke-static {p0, p1}, Landroidx/camera/camera2/internal/compat/CameraManagerCompatBaseImpl;->create(Landroid/content/Context;Landroid/os/Handler;)Landroidx/camera/camera2/internal/compat/CameraManagerCompatBaseImpl;

    move-result-object p0

    return-object p0
.end method
