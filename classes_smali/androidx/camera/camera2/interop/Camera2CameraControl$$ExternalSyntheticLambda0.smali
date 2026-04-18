.class public final synthetic Landroidx/camera/camera2/interop/Camera2CameraControl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/interop/Camera2CameraControl;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/interop/Camera2CameraControl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/interop/Camera2CameraControl$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/camera2/interop/Camera2CameraControl;

    return-void
.end method


# virtual methods
.method public final onCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .registers 3

    iget-object v0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/camera2/interop/Camera2CameraControl;

    invoke-static {v0, p1}, Landroidx/camera/camera2/interop/Camera2CameraControl;->$r8$lambda$Ej_FjUiWBzvsopQiC01iY8bGhEE(Landroidx/camera/camera2/interop/Camera2CameraControl;Landroid/hardware/camera2/TotalCaptureResult;)Z

    move-result p1

    return p1
.end method
