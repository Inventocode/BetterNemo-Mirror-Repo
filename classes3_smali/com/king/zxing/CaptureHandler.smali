.class public Lcom/king/zxing/CaptureHandler;
.super Landroid/os/Handler;
.source "CaptureHandler.java"

# interfaces
.implements Lcom/google/zxing/ResultPointCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/king/zxing/CaptureHandler$State;
    }
.end annotation


# instance fields
.field private final cameraManager:Lcom/king/zxing/camera/CameraManager;

.field private final decodeThread:Lcom/king/zxing/DecodeThread;

.field private isReturnBitmap:Z

.field private isSupportAutoZoom:Z

.field private isSupportLuminanceInvert:Z

.field private isSupportVerticalCode:Z

.field private final onCaptureListener:Lcom/king/zxing/OnCaptureListener;

.field private state:Lcom/king/zxing/CaptureHandler$State;

.field private final viewfinderView:Lcom/king/zxing/ViewfinderView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    const-class v0, Lcom/king/zxing/CaptureHandler;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/king/zxing/ViewfinderView;Lcom/king/zxing/OnCaptureListener;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;Lcom/king/zxing/camera/CameraManager;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/king/zxing/ViewfinderView;",
            "Lcom/king/zxing/OnCaptureListener;",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/king/zxing/camera/CameraManager;",
            ")V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 68
    iput-object p2, p0, Lcom/king/zxing/CaptureHandler;->viewfinderView:Lcom/king/zxing/ViewfinderView;

    .line 69
    iput-object p3, p0, Lcom/king/zxing/CaptureHandler;->onCaptureListener:Lcom/king/zxing/OnCaptureListener;

    .line 70
    new-instance p2, Lcom/king/zxing/DecodeThread;

    move-object v0, p2

    move-object v1, p1

    move-object v2, p7

    move-object v3, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/king/zxing/DecodeThread;-><init>(Landroid/content/Context;Lcom/king/zxing/camera/CameraManager;Lcom/king/zxing/CaptureHandler;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V

    iput-object p2, p0, Lcom/king/zxing/CaptureHandler;->decodeThread:Lcom/king/zxing/DecodeThread;

    .line 71
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 72
    sget-object p1, Lcom/king/zxing/CaptureHandler$State;->SUCCESS:Lcom/king/zxing/CaptureHandler$State;

    iput-object p1, p0, Lcom/king/zxing/CaptureHandler;->state:Lcom/king/zxing/CaptureHandler$State;

    .line 75
    iput-object p7, p0, Lcom/king/zxing/CaptureHandler;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    .line 76
    invoke-virtual {p7}, Lcom/king/zxing/camera/CameraManager;->startPreview()V

    .line 77
    invoke-virtual {p0}, Lcom/king/zxing/CaptureHandler;->restartPreviewAndDecode()V

    return-void
.end method

.method private transform(Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/ResultPoint;
    .registers 8

    .line 157
    iget-object v0, p0, Lcom/king/zxing/CaptureHandler;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    invoke-virtual {v0}, Lcom/king/zxing/camera/CameraManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/king/zxing/CaptureHandler;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    invoke-virtual {v1}, Lcom/king/zxing/camera/CameraManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v1

    .line 165
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/high16 v4, 0x3f800000  # 1.0f

    if-ge v2, v3, :cond_45

    int-to-float v2, v2

    mul-float v2, v2, v4

    .line 166
    iget v5, v1, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    int-to-float v3, v3

    mul-float v3, v3, v4

    .line 167
    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 169
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    mul-float v4, v4, v2

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v4, v2

    .line 170
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p1

    mul-float p1, p1, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_75

    :cond_45
    int-to-float v2, v2

    mul-float v2, v2, v4

    .line 172
    iget v5, v1, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    int-to-float v3, v3

    mul-float v3, v3, v4

    .line 173
    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 175
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    mul-float v4, v4, v2

    iget v2, v0, Landroid/graphics/Point;->y:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v4, v2

    .line 176
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p1

    mul-float p1, p1, v3

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :goto_75
    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 180
    new-instance v0, Lcom/google/zxing/ResultPoint;

    invoke-direct {v0, v4, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .registers 3

    .line 138
    iget-object v0, p0, Lcom/king/zxing/CaptureHandler;->viewfinderView:Lcom/king/zxing/ViewfinderView;

    if-eqz v0, :cond_d

    .line 139
    invoke-direct {p0, p1}, Lcom/king/zxing/CaptureHandler;->transform(Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/ResultPoint;

    move-result-object p1

    .line 140
    iget-object v0, p0, Lcom/king/zxing/CaptureHandler;->viewfinderView:Lcom/king/zxing/ViewfinderView;

    invoke-virtual {v0, p1}, Lcom/king/zxing/ViewfinderView;->addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    :cond_d
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/king/zxing/R$id;->restart_preview:I

    if-ne v0, v1, :cond_a

    .line 83
    invoke-virtual {p0}, Lcom/king/zxing/CaptureHandler;->restartPreviewAndDecode()V

    goto :goto_56

    .line 85
    :cond_a
    sget v1, Lcom/king/zxing/R$id;->decode_succeeded:I

    if-ne v0, v1, :cond_41

    .line 86
    sget-object v0, Lcom/king/zxing/CaptureHandler$State;->SUCCESS:Lcom/king/zxing/CaptureHandler$State;

    iput-object v0, p0, Lcom/king/zxing/CaptureHandler;->state:Lcom/king/zxing/CaptureHandler$State;

    .line 87
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_37

    const-string v1, "barcode_bitmap"

    .line 91
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_31

    const/4 v3, 0x0

    .line 93
    array-length v4, v1

    invoke-static {v1, v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 95
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v2, v1

    :cond_31
    const-string v1, "barcode_scaled_factor"

    .line 97
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    .line 99
    :cond_37
    iget-object v0, p0, Lcom/king/zxing/CaptureHandler;->onCaptureListener:Lcom/king/zxing/OnCaptureListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/zxing/Result;

    invoke-interface {v0, p1, v2, v1}, Lcom/king/zxing/OnCaptureListener;->onHandleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;F)V

    goto :goto_56

    .line 102
    :cond_41
    sget p1, Lcom/king/zxing/R$id;->decode_failed:I

    if-ne v0, p1, :cond_56

    .line 103
    sget-object p1, Lcom/king/zxing/CaptureHandler$State;->PREVIEW:Lcom/king/zxing/CaptureHandler$State;

    iput-object p1, p0, Lcom/king/zxing/CaptureHandler;->state:Lcom/king/zxing/CaptureHandler$State;

    .line 104
    iget-object p1, p0, Lcom/king/zxing/CaptureHandler;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    iget-object v0, p0, Lcom/king/zxing/CaptureHandler;->decodeThread:Lcom/king/zxing/DecodeThread;

    invoke-virtual {v0}, Lcom/king/zxing/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcom/king/zxing/R$id;->decode:I

    invoke-virtual {p1, v0, v1}, Lcom/king/zxing/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    :cond_56
    :goto_56
    return-void
.end method

.method public isReturnBitmap()Z
    .registers 2

    .line 192
    iget-boolean v0, p0, Lcom/king/zxing/CaptureHandler;->isReturnBitmap:Z

    return v0
.end method

.method public isSupportAutoZoom()Z
    .registers 2

    .line 200
    iget-boolean v0, p0, Lcom/king/zxing/CaptureHandler;->isSupportAutoZoom:Z

    return v0
.end method

.method public isSupportLuminanceInvert()Z
    .registers 2

    .line 208
    iget-boolean v0, p0, Lcom/king/zxing/CaptureHandler;->isSupportLuminanceInvert:Z

    return v0
.end method

.method public isSupportVerticalCode()Z
    .registers 2

    .line 184
    iget-boolean v0, p0, Lcom/king/zxing/CaptureHandler;->isSupportVerticalCode:Z

    return v0
.end method

.method public quitSynchronously()V
    .registers 4

    .line 110
    sget-object v0, Lcom/king/zxing/CaptureHandler$State;->DONE:Lcom/king/zxing/CaptureHandler$State;

    iput-object v0, p0, Lcom/king/zxing/CaptureHandler;->state:Lcom/king/zxing/CaptureHandler$State;

    .line 111
    iget-object v0, p0, Lcom/king/zxing/CaptureHandler;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    invoke-virtual {v0}, Lcom/king/zxing/camera/CameraManager;->stopPreview()V

    .line 112
    iget-object v0, p0, Lcom/king/zxing/CaptureHandler;->decodeThread:Lcom/king/zxing/DecodeThread;

    invoke-virtual {v0}, Lcom/king/zxing/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcom/king/zxing/R$id;->quit:I

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 116
    :try_start_18
    iget-object v0, p0, Lcom/king/zxing/CaptureHandler;->decodeThread:Lcom/king/zxing/DecodeThread;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1f} :catch_1f

    .line 122
    :catch_1f
    sget v0, Lcom/king/zxing/R$id;->decode_succeeded:I

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 123
    sget v0, Lcom/king/zxing/R$id;->decode_failed:I

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public restartPreviewAndDecode()V
    .registers 4

    .line 127
    iget-object v0, p0, Lcom/king/zxing/CaptureHandler;->state:Lcom/king/zxing/CaptureHandler$State;

    sget-object v1, Lcom/king/zxing/CaptureHandler$State;->SUCCESS:Lcom/king/zxing/CaptureHandler$State;

    if-ne v0, v1, :cond_1e

    .line 128
    sget-object v0, Lcom/king/zxing/CaptureHandler$State;->PREVIEW:Lcom/king/zxing/CaptureHandler$State;

    iput-object v0, p0, Lcom/king/zxing/CaptureHandler;->state:Lcom/king/zxing/CaptureHandler$State;

    .line 129
    iget-object v0, p0, Lcom/king/zxing/CaptureHandler;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    iget-object v1, p0, Lcom/king/zxing/CaptureHandler;->decodeThread:Lcom/king/zxing/DecodeThread;

    invoke-virtual {v1}, Lcom/king/zxing/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget v2, Lcom/king/zxing/R$id;->decode:I

    invoke-virtual {v0, v1, v2}, Lcom/king/zxing/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    .line 130
    iget-object v0, p0, Lcom/king/zxing/CaptureHandler;->viewfinderView:Lcom/king/zxing/ViewfinderView;

    if-eqz v0, :cond_1e

    .line 131
    invoke-virtual {v0}, Lcom/king/zxing/ViewfinderView;->drawViewfinder()V

    :cond_1e
    return-void
.end method

.method public setReturnBitmap(Z)V
    .registers 2

    .line 196
    iput-boolean p1, p0, Lcom/king/zxing/CaptureHandler;->isReturnBitmap:Z

    return-void
.end method

.method public setSupportAutoZoom(Z)V
    .registers 2

    .line 204
    iput-boolean p1, p0, Lcom/king/zxing/CaptureHandler;->isSupportAutoZoom:Z

    return-void
.end method

.method public setSupportLuminanceInvert(Z)V
    .registers 2

    .line 212
    iput-boolean p1, p0, Lcom/king/zxing/CaptureHandler;->isSupportLuminanceInvert:Z

    return-void
.end method

.method public setSupportVerticalCode(Z)V
    .registers 2

    .line 188
    iput-boolean p1, p0, Lcom/king/zxing/CaptureHandler;->isSupportVerticalCode:Z

    return-void
.end method
