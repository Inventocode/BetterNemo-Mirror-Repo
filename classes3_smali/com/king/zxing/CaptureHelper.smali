.class public Lcom/king/zxing/CaptureHelper;
.super Ljava/lang/Object;
.source "CaptureHelper.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private activity:Landroid/app/Activity;

.field private ambientLightManager:Lcom/king/zxing/AmbientLightManager;

.field private beepManager:Lcom/king/zxing/BeepManager;

.field private brightEnoughLux:F

.field private cameraManager:Lcom/king/zxing/camera/CameraManager;

.field private captureHandler:Lcom/king/zxing/CaptureHandler;

.field private characterSet:Ljava/lang/String;

.field private decodeFormats:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private decodeHints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private framingRectHorizontalOffset:I

.field private framingRectRatio:F

.field private framingRectVerticalOffset:I

.field private hasCameraFlash:Z

.field private hasSurface:Z

.field private inactivityTimer:Lcom/king/zxing/InactivityTimer;

.field private isAutoRestartPreviewAndDecode:Z

.field private isContinuousScan:Z

.field private isFullScreenScan:Z

.field private isPlayBeep:Z

.field private isReturnBitmap:Z

.field private isSupportAutoZoom:Z

.field private isSupportLuminanceInvert:Z

.field private isSupportVerticalCode:Z

.field private isSupportZoom:Z

.field private isVibrate:Z

.field private ivTorch:Landroid/view/View;

.field private oldDistance:F

.field private onCaptureCallback:Lcom/king/zxing/OnCaptureCallback;

.field private onCaptureListener:Lcom/king/zxing/OnCaptureListener;

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private surfaceView:Landroid/view/SurfaceView;

.field private tooDarkLux:F

.field private viewfinderView:Lcom/king/zxing/ViewfinderView;


# direct methods
.method public static synthetic $r8$lambda$1IcX2VKpIq1cm5OwDVAmTgPmn7E(Lcom/king/zxing/CaptureHelper;Lcom/google/zxing/Result;Landroid/graphics/Bitmap;F)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/king/zxing/CaptureHelper;->lambda$onCreate$0(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;F)V

    return-void
.end method

.method public static synthetic $r8$lambda$1uresMuFuwWWrYtVkA7YhM1LYrY(Lcom/king/zxing/CaptureHelper;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/king/zxing/CaptureHelper;->lambda$initCameraManager$3(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$99NAd7BLUkcDIs1V6eOl1mvu9jY(Lcom/king/zxing/CaptureHelper;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/king/zxing/CaptureHelper;->lambda$initCameraManager$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g68U6nCvtdSTgjvxgOU_phQBZG0(Lcom/king/zxing/CaptureHelper;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/king/zxing/CaptureHelper;->lambda$onResult$5(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qnRJqNAsDpTXr0wPB54sXRH503s(Lcom/king/zxing/CaptureHelper;ZZF)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/king/zxing/CaptureHelper;->lambda$initCameraManager$2(ZZF)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/SurfaceView;Lcom/king/zxing/ViewfinderView;Landroid/view/View;)V
    .registers 7

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/king/zxing/CaptureHelper;->isSupportZoom:Z

    .line 90
    iput-boolean v0, p0, Lcom/king/zxing/CaptureHelper;->isSupportAutoZoom:Z

    const/4 v1, 0x0

    .line 95
    iput-boolean v1, p0, Lcom/king/zxing/CaptureHelper;->isSupportLuminanceInvert:Z

    .line 100
    iput-boolean v1, p0, Lcom/king/zxing/CaptureHelper;->isContinuousScan:Z

    .line 104
    iput-boolean v0, p0, Lcom/king/zxing/CaptureHelper;->isAutoRestartPreviewAndDecode:Z

    const v0, 0x3f666666  # 0.9f

    .line 132
    iput v0, p0, Lcom/king/zxing/CaptureHelper;->framingRectRatio:F

    const/high16 v0, 0x42340000  # 45.0f

    .line 144
    iput v0, p0, Lcom/king/zxing/CaptureHelper;->tooDarkLux:F

    const/high16 v0, 0x42c80000  # 100.0f

    .line 148
    iput v0, p0, Lcom/king/zxing/CaptureHelper;->brightEnoughLux:F

    .line 190
    iput-object p1, p0, Lcom/king/zxing/CaptureHelper;->activity:Landroid/app/Activity;

    .line 191
    iput-object p2, p0, Lcom/king/zxing/CaptureHelper;->surfaceView:Landroid/view/SurfaceView;

    .line 192
    iput-object p3, p0, Lcom/king/zxing/CaptureHelper;->viewfinderView:Lcom/king/zxing/ViewfinderView;

    .line 193
    iput-object p4, p0, Lcom/king/zxing/CaptureHelper;->ivTorch:Landroid/view/View;

    return-void
.end method

.method private calcFingerSpacing(Landroid/view/MotionEvent;)F
    .registers 6

    const/4 v0, 0x0

    .line 447
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 448
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    mul-float v1, v1, v1

    mul-float v0, v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    .line 449
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private handleZoom(ZLandroid/hardware/Camera;)V
    .registers 6

    .line 387
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 388
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 389
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    .line 390
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v2

    if-eqz p1, :cond_19

    if-ge v2, v1, :cond_19

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_19
    if-lez v2, :cond_1d

    add-int/lit8 v2, v2, -0x1

    .line 396
    :cond_1d
    :goto_1d
    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 397
    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_29

    :cond_24
    const-string p1, "zoom not supported"

    .line 399
    invoke-static {p1}, Lcom/king/zxing/util/LogUtils;->i(Ljava/lang/String;)V

    :goto_29
    return-void
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)V
    .registers 10

    if-eqz p1, :cond_56

    .line 337
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    invoke-virtual {v0}, Lcom/king/zxing/camera/CameraManager;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p1, "initCamera() while already open -- late SurfaceView callback?"

    .line 338
    invoke-static {p1}, Lcom/king/zxing/util/LogUtils;->w(Ljava/lang/String;)V

    return-void

    .line 342
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    invoke-virtual {v0, p1}, Lcom/king/zxing/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;)V

    .line 344
    iget-object p1, p0, Lcom/king/zxing/CaptureHelper;->captureHandler:Lcom/king/zxing/CaptureHandler;

    if-nez p1, :cond_55

    .line 345
    new-instance p1, Lcom/king/zxing/CaptureHandler;

    iget-object v1, p0, Lcom/king/zxing/CaptureHelper;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/king/zxing/CaptureHelper;->viewfinderView:Lcom/king/zxing/ViewfinderView;

    iget-object v3, p0, Lcom/king/zxing/CaptureHelper;->onCaptureListener:Lcom/king/zxing/OnCaptureListener;

    iget-object v4, p0, Lcom/king/zxing/CaptureHelper;->decodeFormats:Ljava/util/Collection;

    iget-object v5, p0, Lcom/king/zxing/CaptureHelper;->decodeHints:Ljava/util/Map;

    iget-object v6, p0, Lcom/king/zxing/CaptureHelper;->characterSet:Ljava/lang/String;

    iget-object v7, p0, Lcom/king/zxing/CaptureHelper;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/king/zxing/CaptureHandler;-><init>(Landroid/app/Activity;Lcom/king/zxing/ViewfinderView;Lcom/king/zxing/OnCaptureListener;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;Lcom/king/zxing/camera/CameraManager;)V

    iput-object p1, p0, Lcom/king/zxing/CaptureHelper;->captureHandler:Lcom/king/zxing/CaptureHandler;

    .line 346
    iget-boolean v0, p0, Lcom/king/zxing/CaptureHelper;->isSupportVerticalCode:Z

    invoke-virtual {p1, v0}, Lcom/king/zxing/CaptureHandler;->setSupportVerticalCode(Z)V

    .line 347
    iget-object p1, p0, Lcom/king/zxing/CaptureHelper;->captureHandler:Lcom/king/zxing/CaptureHandler;

    iget-boolean v0, p0, Lcom/king/zxing/CaptureHelper;->isReturnBitmap:Z

    invoke-virtual {p1, v0}, Lcom/king/zxing/CaptureHandler;->setReturnBitmap(Z)V

    .line 348
    iget-object p1, p0, Lcom/king/zxing/CaptureHelper;->captureHandler:Lcom/king/zxing/CaptureHandler;

    iget-boolean v0, p0, Lcom/king/zxing/CaptureHelper;->isSupportAutoZoom:Z

    invoke-virtual {p1, v0}, Lcom/king/zxing/CaptureHandler;->setSupportAutoZoom(Z)V

    .line 349
    iget-object p1, p0, Lcom/king/zxing/CaptureHelper;->captureHandler:Lcom/king/zxing/CaptureHandler;

    iget-boolean v0, p0, Lcom/king/zxing/CaptureHelper;->isSupportLuminanceInvert:Z

    invoke-virtual {p1, v0}, Lcom/king/zxing/CaptureHandler;->setSupportLuminanceInvert(Z)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_49} :catch_51
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_49} :catch_4a

    goto :goto_55

    :catch_4a
    move-exception p1

    const-string v0, "Unexpected error initializing camera"

    .line 356
    invoke-static {v0, p1}, Lcom/king/zxing/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_55

    :catch_51
    move-exception p1

    .line 352
    invoke-static {p1}, Lcom/king/zxing/util/LogUtils;->w(Ljava/lang/Throwable;)V

    :cond_55
    :goto_55
    return-void

    .line 335
    :cond_56
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No SurfaceHolder provided"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private initCameraManager()V
    .registers 3

    .line 301
    new-instance v0, Lcom/king/zxing/camera/CameraManager;

    iget-object v1, p0, Lcom/king/zxing/CaptureHelper;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/king/zxing/camera/CameraManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/king/zxing/CaptureHelper;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    .line 302
    iget-boolean v1, p0, Lcom/king/zxing/CaptureHelper;->isFullScreenScan:Z

    invoke-virtual {v0, v1}, Lcom/king/zxing/camera/CameraManager;->setFullScreenScan(Z)V

    .line 303
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    iget v1, p0, Lcom/king/zxing/CaptureHelper;->framingRectRatio:F

    invoke-virtual {v0, v1}, Lcom/king/zxing/camera/CameraManager;->setFramingRectRatio(F)V

    .line 304
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    iget v1, p0, Lcom/king/zxing/CaptureHelper;->framingRectVerticalOffset:I

    invoke-virtual {v0, v1}, Lcom/king/zxing/camera/CameraManager;->setFramingRectVerticalOffset(I)V

    .line 305
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    iget v1, p0, Lcom/king/zxing/CaptureHelper;->framingRectHorizontalOffset:I

    invoke-virtual {v0, v1}, Lcom/king/zxing/camera/CameraManager;->setFramingRectHorizontalOffset(I)V

    .line 306
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->ivTorch:Landroid/view/View;

    if-eqz v0, :cond_47

    iget-boolean v1, p0, Lcom/king/zxing/CaptureHelper;->hasCameraFlash:Z

    if-eqz v1, :cond_47

    .line 307
    new-instance v1, Lcom/king/zxing/CaptureHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/king/zxing/CaptureHelper$$ExternalSyntheticLambda0;-><init>(Lcom/king/zxing/CaptureHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    new-instance v1, Lcom/king/zxing/CaptureHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/king/zxing/CaptureHelper$$ExternalSyntheticLambda2;-><init>(Lcom/king/zxing/CaptureHelper;)V

    invoke-virtual {v0, v1}, Lcom/king/zxing/camera/CameraManager;->setOnSensorListener(Lcom/king/zxing/camera/CameraManager$OnSensorListener;)V

    .line 323
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    new-instance v1, Lcom/king/zxing/CaptureHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/king/zxing/CaptureHelper$$ExternalSyntheticLambda3;-><init>(Lcom/king/zxing/CaptureHelper;)V

    invoke-virtual {v0, v1}, Lcom/king/zxing/camera/CameraManager;->setOnTorchListener(Lcom/king/zxing/camera/CameraManager$OnTorchListener;)V

    :cond_47
    return-void
.end method

.method private synthetic lambda$initCameraManager$1(Landroid/view/View;)V
    .registers 3

    .line 308
    iget-object p1, p0, Lcom/king/zxing/CaptureHelper;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    if-eqz p1, :cond_f

    .line 309
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->ivTorch:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/king/zxing/camera/CameraManager;->setTorch(Z)V

    :cond_f
    return-void
.end method

.method private synthetic lambda$initCameraManager$2(ZZF)V
    .registers 4

    if-eqz p2, :cond_11

    .line 314
    iget-object p1, p0, Lcom/king/zxing/CaptureHelper;->ivTorch:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_21

    .line 315
    iget-object p1, p0, Lcom/king/zxing/CaptureHelper;->ivTorch:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_21

    :cond_11
    if-nez p1, :cond_21

    .line 318
    iget-object p1, p0, Lcom/king/zxing/CaptureHelper;->ivTorch:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_21

    .line 319
    iget-object p1, p0, Lcom/king/zxing/CaptureHelper;->ivTorch:Landroid/view/View;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_21
    :goto_21
    return-void
.end method

.method private synthetic lambda$initCameraManager$3(Z)V
    .registers 3

    .line 323
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->ivTorch:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;F)V
    .registers 5

    .line 209
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->inactivityTimer:Lcom/king/zxing/InactivityTimer;

    invoke-virtual {v0}, Lcom/king/zxing/InactivityTimer;->onActivity()V

    .line 210
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->beepManager:Lcom/king/zxing/BeepManager;

    invoke-virtual {v0}, Lcom/king/zxing/BeepManager;->playBeepSoundAndVibrate()V

    .line 211
    invoke-virtual {p0, p1, p2, p3}, Lcom/king/zxing/CaptureHelper;->onResult(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;F)V

    return-void
.end method

.method private synthetic lambda$onResult$5(Ljava/lang/String;)V
    .registers 4

    .line 531
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->onCaptureCallback:Lcom/king/zxing/OnCaptureCallback;

    if-eqz v0, :cond_b

    invoke-interface {v0, p1}, Lcom/king/zxing/OnCaptureCallback;->onResultCallback(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 534
    :cond_b
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "SCAN_RESULT"

    .line 535
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 536
    iget-object p1, p0, Lcom/king/zxing/CaptureHelper;->activity:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 537
    iget-object p1, p0, Lcom/king/zxing/CaptureHelper;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public continuousScan(Z)Lcom/king/zxing/CaptureHelper;
    .registers 2

    .line 558
    iput-boolean p1, p0, Lcom/king/zxing/CaptureHelper;->isContinuousScan:Z

    return-object p0
.end method

.method public fullScreenScan(Z)Lcom/king/zxing/CaptureHelper;
    .registers 3

    .line 754
    iput-boolean p1, p0, Lcom/king/zxing/CaptureHelper;->isFullScreenScan:Z

    .line 755
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    if-eqz v0, :cond_9

    .line 756
    invoke-virtual {v0, p1}, Lcom/king/zxing/camera/CameraManager;->setFullScreenScan(Z)V

    :cond_9
    return-object p0
.end method

.method public onCreate()V
    .registers 3

    .line 199
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/king/zxing/CaptureHelper;->surfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v0, 0x0

    .line 200
    iput-boolean v0, p0, Lcom/king/zxing/CaptureHelper;->hasSurface:Z

    .line 201
    new-instance v0, Lcom/king/zxing/InactivityTimer;

    iget-object v1, p0, Lcom/king/zxing/CaptureHelper;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/king/zxing/InactivityTimer;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/king/zxing/CaptureHelper;->inactivityTimer:Lcom/king/zxing/InactivityTimer;

    .line 202
    new-instance v0, Lcom/king/zxing/BeepManager;

    iget-object v1, p0, Lcom/king/zxing/CaptureHelper;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/king/zxing/BeepManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/king/zxing/CaptureHelper;->beepManager:Lcom/king/zxing/BeepManager;

    .line 203
    new-instance v0, Lcom/king/zxing/AmbientLightManager;

    iget-object v1, p0, Lcom/king/zxing/CaptureHelper;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/king/zxing/AmbientLightManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/king/zxing/CaptureHelper;->ambientLightManager:Lcom/king/zxing/AmbientLightManager;

    .line 205
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera.flash"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/king/zxing/CaptureHelper;->hasCameraFlash:Z

    .line 206
    invoke-direct {p0}, Lcom/king/zxing/CaptureHelper;->initCameraManager()V

    .line 208
    new-instance v0, Lcom/king/zxing/CaptureHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/king/zxing/CaptureHelper$$ExternalSyntheticLambda1;-><init>(Lcom/king/zxing/CaptureHelper;)V

    iput-object v0, p0, Lcom/king/zxing/CaptureHelper;->onCaptureListener:Lcom/king/zxing/OnCaptureListener;

    .line 214
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->beepManager:Lcom/king/zxing/BeepManager;

    iget-boolean v1, p0, Lcom/king/zxing/CaptureHelper;->isPlayBeep:Z

    invoke-virtual {v0, v1}, Lcom/king/zxing/BeepManager;->setPlayBeep(Z)V

    .line 215
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->beepManager:Lcom/king/zxing/BeepManager;

    iget-boolean v1, p0, Lcom/king/zxing/CaptureHelper;->isVibrate:Z

    invoke-virtual {v0, v1}, Lcom/king/zxing/BeepManager;->setVibrate(Z)V

    .line 218
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->ambientLightManager:Lcom/king/zxing/AmbientLightManager;

    iget v1, p0, Lcom/king/zxing/CaptureHelper;->tooDarkLux:F

    invoke-virtual {v0, v1}, Lcom/king/zxing/AmbientLightManager;->setTooDarkLux(F)V

    .line 219
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->ambientLightManager:Lcom/king/zxing/AmbientLightManager;

    iget v1, p0, Lcom/king/zxing/CaptureHelper;->brightEnoughLux:F

    invoke-virtual {v0, v1}, Lcom/king/zxing/AmbientLightManager;->setBrightEnoughLux(F)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 262
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->inactivityTimer:Lcom/king/zxing/InactivityTimer;

    invoke-virtual {v0}, Lcom/king/zxing/InactivityTimer;->shutdown()V

    return-void
.end method

.method public onPause()V
    .registers 3

    .line 242
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->captureHandler:Lcom/king/zxing/CaptureHandler;

    if-eqz v0, :cond_a

    .line 243
    invoke-virtual {v0}, Lcom/king/zxing/CaptureHandler;->quitSynchronously()V

    const/4 v0, 0x0

    .line 244
    iput-object v0, p0, Lcom/king/zxing/CaptureHelper;->captureHandler:Lcom/king/zxing/CaptureHandler;

    .line 246
    :cond_a
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->inactivityTimer:Lcom/king/zxing/InactivityTimer;

    invoke-virtual {v0}, Lcom/king/zxing/InactivityTimer;->onPause()V

    .line 247
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->ambientLightManager:Lcom/king/zxing/AmbientLightManager;

    invoke-virtual {v0}, Lcom/king/zxing/AmbientLightManager;->stop()V

    .line 248
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->beepManager:Lcom/king/zxing/BeepManager;

    invoke-virtual {v0}, Lcom/king/zxing/BeepManager;->close()V

    .line 249
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    invoke-virtual {v0}, Lcom/king/zxing/camera/CameraManager;->closeDriver()V

    .line 250
    iget-boolean v0, p0, Lcom/king/zxing/CaptureHelper;->hasSurface:Z

    if-nez v0, :cond_27

    .line 251
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 253
    :cond_27
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->ivTorch:Landroid/view/View;

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3d

    .line 254
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->ivTorch:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 255
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->ivTorch:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3d
    return-void
.end method

.method public onResult(Lcom/google/zxing/Result;)V
    .registers 6

    .line 517
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p1

    .line 518
    iget-boolean v0, p0, Lcom/king/zxing/CaptureHelper;->isContinuousScan:Z

    if-eqz v0, :cond_17

    .line 519
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->onCaptureCallback:Lcom/king/zxing/OnCaptureCallback;

    if-eqz v0, :cond_f

    .line 520
    invoke-interface {v0, p1}, Lcom/king/zxing/OnCaptureCallback;->onResultCallback(Ljava/lang/String;)Z

    .line 522
    :cond_f
    iget-boolean p1, p0, Lcom/king/zxing/CaptureHelper;->isAutoRestartPreviewAndDecode:Z

    if-eqz p1, :cond_16

    .line 523
    invoke-virtual {p0}, Lcom/king/zxing/CaptureHelper;->restartPreviewAndDecode()V

    :cond_16
    return-void

    .line 528
    :cond_17
    iget-boolean v0, p0, Lcom/king/zxing/CaptureHelper;->isPlayBeep:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->captureHandler:Lcom/king/zxing/CaptureHandler;

    if-eqz v0, :cond_2a

    .line 529
    new-instance v1, Lcom/king/zxing/CaptureHelper$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/king/zxing/CaptureHelper$$ExternalSyntheticLambda4;-><init>(Lcom/king/zxing/CaptureHelper;Ljava/lang/String;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 544
    :cond_2a
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->onCaptureCallback:Lcom/king/zxing/OnCaptureCallback;

    if-eqz v0, :cond_35

    invoke-interface {v0, p1}, Lcom/king/zxing/OnCaptureCallback;->onResultCallback(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    return-void

    .line 547
    :cond_35
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "SCAN_RESULT"

    .line 548
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    iget-object p1, p0, Lcom/king/zxing/CaptureHelper;->activity:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 550
    iget-object p1, p0, Lcom/king/zxing/CaptureHelper;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onResult(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;F)V
    .registers 4

    .line 506
    invoke-virtual {p0, p1}, Lcom/king/zxing/CaptureHelper;->onResult(Lcom/google/zxing/Result;)V

    return-void
.end method

.method public onResume()V
    .registers 3

    .line 227
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->beepManager:Lcom/king/zxing/BeepManager;

    invoke-virtual {v0}, Lcom/king/zxing/BeepManager;->updatePrefs()V

    .line 229
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->inactivityTimer:Lcom/king/zxing/InactivityTimer;

    invoke-virtual {v0}, Lcom/king/zxing/InactivityTimer;->onResume()V

    .line 231
    iget-boolean v0, p0, Lcom/king/zxing/CaptureHelper;->hasSurface:Z

    if-eqz v0, :cond_14

    .line 232
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v0}, Lcom/king/zxing/CaptureHelper;->initCamera(Landroid/view/SurfaceHolder;)V

    goto :goto_19

    .line 234
    :cond_14
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 236
    :goto_19
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->ambientLightManager:Lcom/king/zxing/AmbientLightManager;

    iget-object v1, p0, Lcom/king/zxing/CaptureHelper;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    invoke-virtual {v0, v1}, Lcom/king/zxing/AmbientLightManager;->start(Lcom/king/zxing/camera/CameraManager;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 271
    iget-boolean v0, p0, Lcom/king/zxing/CaptureHelper;->isSupportZoom:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    invoke-virtual {v0}, Lcom/king/zxing/camera/CameraManager;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 272
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    invoke-virtual {v0}, Lcom/king/zxing/camera/CameraManager;->getOpenCamera()Lcom/king/zxing/camera/open/OpenCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/king/zxing/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_1a

    return v1

    .line 276
    :cond_1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_52

    .line 277
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/4 v4, 0x2

    if-eq v2, v4, :cond_35

    const/4 v0, 0x5

    if-eq v2, v0, :cond_2e

    goto :goto_51

    .line 279
    :cond_2e
    invoke-direct {p0, p1}, Lcom/king/zxing/CaptureHelper;->calcFingerSpacing(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/king/zxing/CaptureHelper;->oldDistance:F

    goto :goto_51

    .line 282
    :cond_35
    invoke-direct {p0, p1}, Lcom/king/zxing/CaptureHelper;->calcFingerSpacing(Landroid/view/MotionEvent;)F

    move-result p1

    .line 284
    iget v2, p0, Lcom/king/zxing/CaptureHelper;->oldDistance:F

    const/high16 v4, 0x40c00000  # 6.0f

    add-float v5, v2, v4

    cmpl-float v5, p1, v5

    if-lez v5, :cond_47

    .line 285
    invoke-direct {p0, v3, v0}, Lcom/king/zxing/CaptureHelper;->handleZoom(ZLandroid/hardware/Camera;)V

    goto :goto_4f

    :cond_47
    sub-float/2addr v2, v4

    cmpg-float v2, p1, v2

    if-gez v2, :cond_4f

    .line 287
    invoke-direct {p0, v1, v0}, Lcom/king/zxing/CaptureHelper;->handleZoom(ZLandroid/hardware/Camera;)V

    .line 289
    :cond_4f
    :goto_4f
    iput p1, p0, Lcom/king/zxing/CaptureHelper;->oldDistance:F

    :goto_51
    return v3

    :cond_52
    return v1
.end method

.method public restartPreviewAndDecode()V
    .registers 2

    .line 494
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->captureHandler:Lcom/king/zxing/CaptureHandler;

    if-eqz v0, :cond_7

    .line 495
    invoke-virtual {v0}, Lcom/king/zxing/CaptureHandler;->restartPreviewAndDecode()V

    :cond_7
    return-void
.end method

.method public setOnCaptureCallback(Lcom/king/zxing/OnCaptureCallback;)Lcom/king/zxing/CaptureHelper;
    .registers 2

    .line 808
    iput-object p1, p0, Lcom/king/zxing/CaptureHelper;->onCaptureCallback:Lcom/king/zxing/OnCaptureCallback;

    return-object p0
.end method

.method public supportLuminanceInvert(Z)Lcom/king/zxing/CaptureHelper;
    .registers 3

    .line 741
    iput-boolean p1, p0, Lcom/king/zxing/CaptureHelper;->isSupportLuminanceInvert:Z

    .line 742
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->captureHandler:Lcom/king/zxing/CaptureHandler;

    if-eqz v0, :cond_9

    .line 743
    invoke-virtual {v0, p1}, Lcom/king/zxing/CaptureHandler;->setSupportLuminanceInvert(Z)V

    :cond_9
    return-object p0
.end method

.method public supportVerticalCode(Z)Lcom/king/zxing/CaptureHelper;
    .registers 3

    .line 658
    iput-boolean p1, p0, Lcom/king/zxing/CaptureHelper;->isSupportVerticalCode:Z

    .line 659
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->captureHandler:Lcom/king/zxing/CaptureHandler;

    if-eqz v0, :cond_9

    .line 660
    invoke-virtual {v0, p1}, Lcom/king/zxing/CaptureHandler;->setSupportVerticalCode(Z)V

    :cond_9
    return-object p0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3

    if-nez p1, :cond_7

    const-string v0, "*** WARNING *** surfaceCreated() gave us a null surface!"

    .line 363
    invoke-static {v0}, Lcom/king/zxing/util/LogUtils;->w(Ljava/lang/String;)V

    .line 365
    :cond_7
    iget-boolean v0, p0, Lcom/king/zxing/CaptureHelper;->hasSurface:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    .line 366
    iput-boolean v0, p0, Lcom/king/zxing/CaptureHelper;->hasSurface:Z

    .line 367
    invoke-direct {p0, p1}, Lcom/king/zxing/CaptureHelper;->initCamera(Landroid/view/SurfaceHolder;)V

    :cond_11
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2

    const/4 p1, 0x0

    .line 378
    iput-boolean p1, p0, Lcom/king/zxing/CaptureHelper;->hasSurface:Z

    return-void
.end method

.method public vibrate(Z)Lcom/king/zxing/CaptureHelper;
    .registers 3

    .line 590
    iput-boolean p1, p0, Lcom/king/zxing/CaptureHelper;->isVibrate:Z

    .line 591
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->beepManager:Lcom/king/zxing/BeepManager;

    if-eqz v0, :cond_9

    .line 592
    invoke-virtual {v0, p1}, Lcom/king/zxing/BeepManager;->setVibrate(Z)V

    :cond_9
    return-object p0
.end method
