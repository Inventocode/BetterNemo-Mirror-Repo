.class public final Landroidx/camera/camera2/internal/CameraCaptureSessionStateCallbacks;
.super Ljava/lang/Object;
.source "CameraCaptureSessionStateCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/internal/CameraCaptureSessionStateCallbacks$ComboSessionStateCallback;,
        Landroidx/camera/camera2/internal/CameraCaptureSessionStateCallbacks$NoOpSessionStateCallback;
    }
.end annotation


# direct methods
.method public static createComboCallback(Ljava/util/List;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            ">;)",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;"
        }
    .end annotation

    .line 53
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 54
    invoke-static {}, Landroidx/camera/camera2/internal/CameraCaptureSessionStateCallbacks;->createNoOpCallback()Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object p0

    return-object p0

    .line 55
    :cond_b
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x0

    .line 56
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    return-object p0

    .line 58
    :cond_1a
    new-instance v0, Landroidx/camera/camera2/internal/CameraCaptureSessionStateCallbacks$ComboSessionStateCallback;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/internal/CameraCaptureSessionStateCallbacks$ComboSessionStateCallback;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static createNoOpCallback()Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .registers 1

    .line 44
    new-instance v0, Landroidx/camera/camera2/internal/CameraCaptureSessionStateCallbacks$NoOpSessionStateCallback;

    invoke-direct {v0}, Landroidx/camera/camera2/internal/CameraCaptureSessionStateCallbacks$NoOpSessionStateCallback;-><init>()V

    return-object v0
.end method
