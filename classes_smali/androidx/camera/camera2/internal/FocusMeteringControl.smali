.class Landroidx/camera/camera2/internal/FocusMeteringControl;
.super Ljava/lang/Object;
.source "FocusMeteringControl.java"


# static fields
.field private static final EMPTY_RECTANGLES:[Landroid/hardware/camera2/params/MeteringRectangle;


# instance fields
.field private mAeRects:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private mAfRects:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private mAutoCancelHandle:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private mAutoFocusTimeoutHandle:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private mAwbRects:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private final mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

.field final mExecutor:Ljava/util/concurrent/Executor;

.field private volatile mIsActive:Z

.field private mIsInAfAutoMode:Z

.field mRunningActionCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mRunningCancelCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private mSessionListenerForCancel:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;

.field private mSessionListenerForFocus:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;

.field private mTemplate:I


# direct methods
.method public static synthetic $r8$lambda$-MMfpVa5SFdkx1YDAfyPTpA7stc(Landroidx/camera/camera2/internal/FocusMeteringControl;IJLandroid/hardware/camera2/TotalCaptureResult;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/internal/FocusMeteringControl;->lambda$cancelFocusAndMeteringInternal$9(IJLandroid/hardware/camera2/TotalCaptureResult;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 92
    sput-object v0, Landroidx/camera/camera2/internal/FocusMeteringControl;->EMPTY_RECTANGLES:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-void
.end method

.method constructor <init>(Landroidx/camera/camera2/internal/Camera2CameraControlImpl;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/Quirks;)V
    .registers 7

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsActive:Z

    .line 97
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsInAfAutoMode:Z

    const/4 v0, 0x1

    .line 109
    iput v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mTemplate:I

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mSessionListenerForFocus:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;

    .line 112
    iput-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mSessionListenerForCancel:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;

    .line 113
    sget-object v1, Landroidx/camera/camera2/internal/FocusMeteringControl;->EMPTY_RECTANGLES:[Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAfRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 114
    iput-object v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAeRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 115
    iput-object v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAwbRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 116
    iput-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mRunningActionCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 117
    iput-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mRunningCancelCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 134
    iput-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 135
    iput-object p3, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 136
    iput-object p2, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 137
    new-instance p1, Landroidx/camera/camera2/internal/compat/workaround/MeteringRegionCorrection;

    invoke-direct {p1, p4}, Landroidx/camera/camera2/internal/compat/workaround/MeteringRegionCorrection;-><init>(Landroidx/camera/core/impl/Quirks;)V

    return-void
.end method

.method private clearAutoFocusTimeoutHandle()V
    .registers 3

    .line 512
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAutoFocusTimeoutHandle:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    .line 513
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 514
    iput-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAutoFocusTimeoutHandle:Ljava/util/concurrent/ScheduledFuture;

    :cond_b
    return-void
.end method

.method private completeCancelFuture()V
    .registers 3

    .line 566
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mRunningCancelCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    .line 567
    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 568
    iput-object v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mRunningCancelCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    :cond_a
    return-void
.end method

.method private disableAutoCancel()V
    .registers 3

    .line 504
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAutoCancelHandle:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    .line 505
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 506
    iput-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAutoCancelHandle:Ljava/util/concurrent/ScheduledFuture;

    :cond_b
    return-void
.end method

.method private failActionFuture(Ljava/lang/String;)V
    .registers 4

    .line 546
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    iget-object v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mSessionListenerForFocus:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->removeCaptureResultListener(Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;)V

    .line 547
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mRunningActionCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-eqz v0, :cond_16

    .line 548
    new-instance v1, Landroidx/camera/core/CameraControl$OperationCanceledException;

    invoke-direct {v1, p1}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    const/4 p1, 0x0

    .line 550
    iput-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mRunningActionCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    :cond_16
    return-void
.end method

.method private failCancelFuture(Ljava/lang/String;)V
    .registers 4

    .line 556
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    iget-object v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mSessionListenerForCancel:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->removeCaptureResultListener(Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;)V

    .line 557
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mRunningCancelCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-eqz v0, :cond_16

    .line 558
    new-instance v1, Landroidx/camera/core/CameraControl$OperationCanceledException;

    invoke-direct {v1, p1}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    const/4 p1, 0x0

    .line 560
    iput-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mRunningCancelCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    :cond_16
    return-void
.end method

.method private synthetic lambda$cancelFocusAndMeteringInternal$9(IJLandroid/hardware/camera2/TotalCaptureResult;)Z
    .registers 6

    .line 713
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p4, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 714
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_19

    .line 715
    invoke-static {p4, p2, p3}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->isSessionUpdated(Landroid/hardware/camera2/TotalCaptureResult;J)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 717
    invoke-direct {p0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->completeCancelFuture()V

    const/4 p1, 0x1

    return p1

    :cond_19
    const/4 p1, 0x0

    return p1
.end method

.method private shouldTriggerAF()Z
    .registers 2

    .line 674
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAfRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    array-length v0, v0

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method


# virtual methods
.method addFocusMeteringOptions(Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;)V
    .registers 5

    .line 186
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsInAfAutoMode:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_a

    .line 188
    :cond_6
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->getDefaultAfMode()I

    move-result v0

    .line 190
    :goto_a
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 191
    invoke-virtual {v2, v0}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->getSupportedAfMode(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 190
    invoke-virtual {p1, v1, v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 193
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAfRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    array-length v1, v0

    if-eqz v1, :cond_23

    .line 194
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1, v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 197
    :cond_23
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAeRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    array-length v1, v0

    if-eqz v1, :cond_2d

    .line 198
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1, v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 201
    :cond_2d
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAwbRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    array-length v1, v0

    if-eqz v1, :cond_37

    .line 202
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1, v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    :cond_37
    return-void
.end method

.method cancelAfAeTrigger(ZZ)V
    .registers 7

    .line 481
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsActive:Z

    if-nez v0, :cond_5

    return-void

    .line 485
    :cond_5
    new-instance v0, Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-direct {v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;-><init>()V

    const/4 v1, 0x1

    .line 486
    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setUseRepeatingSurface(Z)V

    .line 487
    iget v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mTemplate:I

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setTemplateType(I)V

    .line 489
    new-instance v1, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-direct {v1}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;-><init>()V

    const/4 v2, 0x2

    if-eqz p1, :cond_24

    .line 491
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 492
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 491
    invoke-virtual {v1, p1, v3}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 494
    :cond_24
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt p1, v3, :cond_35

    if-eqz p2, :cond_35

    .line 495
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 496
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 495
    invoke-virtual {v1, p1, p2}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 498
    :cond_35
    invoke-virtual {v1}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->build()Landroidx/camera/camera2/impl/Camera2ImplConfig;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)V

    .line 499
    iget-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;->build()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->submitCaptureRequestsInternal(Ljava/util/List;)V

    return-void
.end method

.method cancelFocusAndMeteringInternal(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Cancelled by another cancelFocusAndMetering()"

    .line 693
    invoke-direct {p0, v0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->failCancelFuture(Ljava/lang/String;)V

    const-string v0, "Cancelled by cancelFocusAndMetering()"

    .line 694
    invoke-direct {p0, v0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->failActionFuture(Ljava/lang/String;)V

    .line 695
    iput-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mRunningCancelCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 696
    invoke-direct {p0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->disableAutoCancel()V

    .line 697
    invoke-direct {p0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->clearAutoFocusTimeoutHandle()V

    .line 699
    invoke-direct {p0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->shouldTriggerAF()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1d

    const/4 p1, 0x1

    .line 700
    invoke-virtual {p0, p1, v0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->cancelAfAeTrigger(ZZ)V

    .line 702
    :cond_1d
    sget-object p1, Landroidx/camera/camera2/internal/FocusMeteringControl;->EMPTY_RECTANGLES:[Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAfRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 703
    iput-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAeRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 704
    iput-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAwbRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 706
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsInAfAutoMode:Z

    .line 707
    iget-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {p1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->updateSessionConfigSynchronous()J

    move-result-wide v0

    .line 709
    iget-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mRunningCancelCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-eqz p1, :cond_47

    .line 710
    iget-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {p0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->getDefaultAfMode()I

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->getSupportedAfMode(I)I

    move-result p1

    .line 711
    new-instance v2, Landroidx/camera/camera2/internal/FocusMeteringControl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v0, v1}, Landroidx/camera/camera2/internal/FocusMeteringControl$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/internal/FocusMeteringControl;IJ)V

    iput-object v2, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mSessionListenerForCancel:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;

    .line 723
    iget-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {p1, v2}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->addCaptureResultListener(Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;)V

    :cond_47
    return-void
.end method

.method cancelFocusAndMeteringWithoutAsyncResult()V
    .registers 2

    const/4 v0, 0x0

    .line 687
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->cancelFocusAndMeteringInternal(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method

.method getDefaultAfMode()I
    .registers 3

    .line 521
    iget v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mTemplate:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    const/4 v0, 0x4

    return v0

    :cond_7
    return v1
.end method

.method setActive(Z)V
    .registers 3

    .line 149
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsActive:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 153
    :cond_5
    iput-boolean p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsActive:Z

    .line 155
    iget-boolean p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsActive:Z

    if-nez p1, :cond_e

    .line 156
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->cancelFocusAndMeteringWithoutAsyncResult()V

    :cond_e
    return-void
.end method

.method public setPreviewAspectRatio(Landroid/util/Rational;)V
    .registers 2

    return-void
.end method

.method setTemplate(I)V
    .registers 2

    .line 176
    iput p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mTemplate:I

    return-void
.end method

.method triggerAePrecapture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 436
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsActive:Z

    if-nez v0, :cond_11

    if-eqz p1, :cond_10

    .line 438
    new-instance v0, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string v1, "Camera is not active."

    invoke-direct {v0, v1}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    :cond_10
    return-void

    .line 444
    :cond_11
    new-instance v0, Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-direct {v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;-><init>()V

    .line 445
    iget v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mTemplate:I

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setTemplateType(I)V

    const/4 v1, 0x1

    .line 446
    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setUseRepeatingSurface(Z)V

    .line 447
    new-instance v2, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-direct {v2}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;-><init>()V

    .line 448
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 449
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 448
    invoke-virtual {v2, v3, v1}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 450
    invoke-virtual {v2}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->build()Landroidx/camera/camera2/impl/Camera2ImplConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)V

    .line 451
    new-instance v1, Landroidx/camera/camera2/internal/FocusMeteringControl$2;

    invoke-direct {v1, p0, p1}, Landroidx/camera/camera2/internal/FocusMeteringControl$2;-><init>(Landroidx/camera/camera2/internal/FocusMeteringControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    .line 475
    iget-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;->build()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->submitCaptureRequestsInternal(Ljava/util/List;)V

    return-void
.end method

.method triggerAf(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Landroidx/camera/core/impl/CameraCaptureResult;",
            ">;Z)V"
        }
    .end annotation

    .line 376
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsActive:Z

    if-nez v0, :cond_11

    if-eqz p1, :cond_10

    .line 378
    new-instance p2, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string v0, "Camera is not active."

    invoke-direct {p2, v0}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    :cond_10
    return-void

    .line 384
    :cond_11
    new-instance v0, Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-direct {v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;-><init>()V

    .line 385
    iget v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mTemplate:I

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setTemplateType(I)V

    const/4 v1, 0x1

    .line 386
    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setUseRepeatingSurface(Z)V

    .line 387
    new-instance v2, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-direct {v2}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;-><init>()V

    .line 388
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 389
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 388
    invoke-virtual {v2, v3, v4}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    if-eqz p2, :cond_3e

    .line 396
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v3, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 397
    invoke-virtual {v3, v1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->getSupportedAeMode(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 396
    invoke-virtual {v2, p2, v1}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 399
    :cond_3e
    invoke-virtual {v2}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->build()Landroidx/camera/camera2/impl/Camera2ImplConfig;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)V

    .line 400
    new-instance p2, Landroidx/camera/camera2/internal/FocusMeteringControl$1;

    invoke-direct {p2, p0, p1}, Landroidx/camera/camera2/internal/FocusMeteringControl$1;-><init>(Landroidx/camera/camera2/internal/FocusMeteringControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    invoke-virtual {v0, p2}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    .line 425
    iget-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;->build()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->submitCaptureRequestsInternal(Ljava/util/List;)V

    return-void
.end method
