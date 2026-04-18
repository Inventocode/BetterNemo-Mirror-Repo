.class public Landroidx/camera/camera2/internal/ExposureControl;
.super Ljava/lang/Object;
.source "ExposureControl.java"


# instance fields
.field private final mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mExposureStateImpl:Landroidx/camera/camera2/internal/ExposureStateImpl;

.field private mIsActive:Z

.field private mRunningCaptureResultListener:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;

.field private mRunningCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/camera/camera2/internal/Camera2CameraControlImpl;Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;Ljava/util/concurrent/Executor;)V
    .registers 5

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/ExposureControl;->mIsActive:Z

    .line 92
    iput-object p1, p0, Landroidx/camera/camera2/internal/ExposureControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 93
    new-instance p1, Landroidx/camera/camera2/internal/ExposureStateImpl;

    invoke-direct {p1, p2, v0}, Landroidx/camera/camera2/internal/ExposureStateImpl;-><init>(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;I)V

    iput-object p1, p0, Landroidx/camera/camera2/internal/ExposureControl;->mExposureStateImpl:Landroidx/camera/camera2/internal/ExposureStateImpl;

    .line 95
    iput-object p3, p0, Landroidx/camera/camera2/internal/ExposureControl;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private clearRunningTask()V
    .registers 5

    .line 226
    iget-object v0, p0, Landroidx/camera/camera2/internal/ExposureControl;->mRunningCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 227
    new-instance v2, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string v3, "Cancelled by another setExposureCompensationIndex()"

    invoke-direct {v2, v3}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 230
    iput-object v1, p0, Landroidx/camera/camera2/internal/ExposureControl;->mRunningCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 233
    :cond_11
    iget-object v0, p0, Landroidx/camera/camera2/internal/ExposureControl;->mRunningCaptureResultListener:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;

    if-eqz v0, :cond_1c

    .line 234
    iget-object v2, p0, Landroidx/camera/camera2/internal/ExposureControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {v2, v0}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->removeCaptureResultListener(Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;)V

    .line 235
    iput-object v1, p0, Landroidx/camera/camera2/internal/ExposureControl;->mRunningCaptureResultListener:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;

    :cond_1c
    return-void
.end method


# virtual methods
.method setActive(Z)V
    .registers 3

    .line 112
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/ExposureControl;->mIsActive:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 116
    :cond_5
    iput-boolean p1, p0, Landroidx/camera/camera2/internal/ExposureControl;->mIsActive:Z

    if-nez p1, :cond_12

    .line 119
    iget-object p1, p0, Landroidx/camera/camera2/internal/ExposureControl;->mExposureStateImpl:Landroidx/camera/camera2/internal/ExposureStateImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/camera/camera2/internal/ExposureStateImpl;->setExposureCompensationIndex(I)V

    .line 120
    invoke-direct {p0}, Landroidx/camera/camera2/internal/ExposureControl;->clearRunningTask()V

    :cond_12
    return-void
.end method

.method setCaptureRequestOption(Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;)V
    .registers 4

    .line 132
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Landroidx/camera/camera2/internal/ExposureControl;->mExposureStateImpl:Landroidx/camera/camera2/internal/ExposureStateImpl;

    .line 133
    invoke-virtual {v1}, Landroidx/camera/camera2/internal/ExposureStateImpl;->getExposureCompensationIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 132
    invoke-virtual {p1, v0, v1}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    return-void
.end method
