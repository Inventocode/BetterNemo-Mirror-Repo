.class public final Landroidx/camera/camera2/internal/CameraUnavailableExceptionHelper;
.super Ljava/lang/Object;
.source "CameraUnavailableExceptionHelper.java"


# direct methods
.method public static createFrom(Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;)Landroidx/camera/core/CameraUnavailableException;
    .registers 7

    .line 41
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->getReason()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v5, :cond_21

    if-eq v0, v4, :cond_1f

    if-eq v0, v3, :cond_1d

    if-eq v0, v2, :cond_1b

    if-eq v0, v1, :cond_22

    const/16 v1, 0x2711

    if-eq v0, v1, :cond_19

    const/4 v1, 0x0

    goto :goto_22

    :cond_19
    const/4 v1, 0x6

    goto :goto_22

    :cond_1b
    const/4 v1, 0x4

    goto :goto_22

    :cond_1d
    const/4 v1, 0x3

    goto :goto_22

    :cond_1f
    const/4 v1, 0x2

    goto :goto_22

    :cond_21
    const/4 v1, 0x1

    .line 63
    :cond_22
    :goto_22
    new-instance v0, Landroidx/camera/core/CameraUnavailableException;

    invoke-direct {v0, v1, p0}, Landroidx/camera/core/CameraUnavailableException;-><init>(ILjava/lang/Throwable;)V

    return-object v0
.end method
