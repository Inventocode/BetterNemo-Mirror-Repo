.class Landroidx/camera/camera2/internal/Camera2CapturePipeline$AfTask;
.super Ljava/lang/Object;
.source "Camera2CapturePipeline.java"

# interfaces
.implements Landroidx/camera/camera2/internal/Camera2CapturePipeline$PipelineTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/internal/Camera2CapturePipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AfTask"
.end annotation


# instance fields
.field private final mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

.field private mIsExecuted:Z


# direct methods
.method constructor <init>(Landroidx/camera/camera2/internal/Camera2CameraControlImpl;)V
    .registers 3

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 482
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/Camera2CapturePipeline$AfTask;->mIsExecuted:Z

    .line 485
    iput-object p1, p0, Landroidx/camera/camera2/internal/Camera2CapturePipeline$AfTask;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    return-void
.end method


# virtual methods
.method public isCaptureResultNeeded()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public postCapture()V
    .registers 4

    .line 533
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/Camera2CapturePipeline$AfTask;->mIsExecuted:Z

    if-eqz v0, :cond_16

    const-string v0, "Camera2CapturePipeline"

    const-string v1, "cancel TriggerAF"

    .line 534
    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CapturePipeline$AfTask;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->getFocusMeteringControl()Landroidx/camera/camera2/internal/FocusMeteringControl;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/camera/camera2/internal/FocusMeteringControl;->cancelAfAeTrigger(ZZ)V

    :cond_16
    return-void
.end method

.method public preCapture(Landroid/hardware/camera2/TotalCaptureResult;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 494
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    if-nez p1, :cond_9

    return-object v0

    .line 500
    :cond_9
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_14

    return-object v0

    .line 504
    :cond_14
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1f

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1f

    goto :goto_48

    :cond_1f
    const-string v1, "Camera2CapturePipeline"

    const-string v3, "TriggerAf? AF mode auto"

    .line 507
    invoke-static {v1, v3}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_48

    .line 509
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_48

    const-string p1, "Trigger AF"

    .line 510
    invoke-static {v1, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iput-boolean v2, p0, Landroidx/camera/camera2/internal/Camera2CapturePipeline$AfTask;->mIsExecuted:Z

    .line 513
    iget-object p1, p0, Landroidx/camera/camera2/internal/Camera2CapturePipeline$AfTask;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {p1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->getFocusMeteringControl()Landroidx/camera/camera2/internal/FocusMeteringControl;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroidx/camera/camera2/internal/FocusMeteringControl;->triggerAf(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Z)V

    :cond_48
    :goto_48
    return-object v0
.end method
