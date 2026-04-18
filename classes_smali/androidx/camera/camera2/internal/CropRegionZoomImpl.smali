.class final Landroidx/camera/camera2/internal/CropRegionZoomImpl;
.super Ljava/lang/Object;
.source "CropRegionZoomImpl.java"

# interfaces
.implements Landroidx/camera/camera2/internal/ZoomControl$ZoomImpl;


# instance fields
.field private final mCameraCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

.field private mCurrentCropRect:Landroid/graphics/Rect;

.field private mPendingZoomCropRegion:Landroid/graphics/Rect;

.field private mPendingZoomRatioCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->mCurrentCropRect:Landroid/graphics/Rect;

    .line 41
    iput-object v0, p0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->mPendingZoomCropRegion:Landroid/graphics/Rect;

    .line 44
    iput-object p1, p0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->mCameraCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    return-void
.end method


# virtual methods
.method public addRequestOption(Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;)V
    .registers 4

    .line 69
    iget-object v0, p0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->mCurrentCropRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_9

    .line 70
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1, v0}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    :cond_9
    return-void
.end method

.method public getMaxZoom()F
    .registers 4

    .line 54
    iget-object v0, p0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->mCameraCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-nez v0, :cond_f

    const/high16 v0, 0x3f800000  # 1.0f

    return v0

    .line 60
    :cond_f
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0}, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->getMinZoom()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_20

    .line 61
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->getMinZoom()F

    move-result v0

    return v0

    .line 63
    :cond_20
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getMinZoom()F
    .registers 2

    const/high16 v0, 0x3f800000  # 1.0f

    return v0
.end method

.method public onCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 4

    .line 125
    iget-object v0, p0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->mPendingZoomRatioCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-eqz v0, :cond_28

    .line 126
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_d

    move-object p1, v0

    goto :goto_15

    .line 128
    :cond_d
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 130
    :goto_15
    iget-object v1, p0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->mPendingZoomCropRegion:Landroid/graphics/Rect;

    if-eqz v1, :cond_28

    .line 131
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 132
    iget-object p1, p0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->mPendingZoomRatioCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {p1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 133
    iput-object v0, p0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->mPendingZoomRatioCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 134
    iput-object v0, p0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->mPendingZoomCropRegion:Landroid/graphics/Rect;

    :cond_28
    return-void
.end method

.method public resetZoom()V
    .registers 5

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->mPendingZoomCropRegion:Landroid/graphics/Rect;

    .line 77
    iput-object v0, p0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->mCurrentCropRect:Landroid/graphics/Rect;

    .line 80
    iget-object v1, p0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->mPendingZoomRatioCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-eqz v1, :cond_15

    .line 81
    new-instance v2, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string v3, "Camera is not active."

    invoke-direct {v2, v3}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 84
    iput-object v0, p0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;->mPendingZoomRatioCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    :cond_15
    return-void
.end method
