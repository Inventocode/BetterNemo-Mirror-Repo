.class public final synthetic Landroidx/camera/camera2/internal/Camera2CameraControlImpl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

.field public final synthetic f$1:Landroidx/camera/core/impl/CameraCaptureCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/Camera2CameraControlImpl;Landroidx/camera/core/impl/CameraCaptureCallback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/Camera2CameraControlImpl$$ExternalSyntheticLambda6;->f$0:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    iput-object p2, p0, Landroidx/camera/camera2/internal/Camera2CameraControlImpl$$ExternalSyntheticLambda6;->f$1:Landroidx/camera/core/impl/CameraCaptureCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControlImpl$$ExternalSyntheticLambda6;->f$0:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraControlImpl$$ExternalSyntheticLambda6;->f$1:Landroidx/camera/core/impl/CameraCaptureCallback;

    invoke-static {v0, v1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->$r8$lambda$3bkIsmbPe1n_z53YzjZogAYTfaU(Landroidx/camera/camera2/internal/Camera2CameraControlImpl;Landroidx/camera/core/impl/CameraCaptureCallback;)V

    return-void
.end method
