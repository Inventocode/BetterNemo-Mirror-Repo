.class public final Lcom/king/zxing/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/king/zxing/camera/CameraManager$OnSensorListener;,
        Lcom/king/zxing/camera/CameraManager$OnTorchListener;
    }
.end annotation


# instance fields
.field private autoFocusManager:Lcom/king/zxing/camera/AutoFocusManager;

.field private camera:Lcom/king/zxing/camera/open/OpenCamera;

.field private final configManager:Lcom/king/zxing/camera/CameraConfigurationManager;

.field private final context:Landroid/content/Context;

.field private framingRect:Landroid/graphics/Rect;

.field private framingRectHorizontalOffset:I

.field private framingRectInPreview:Landroid/graphics/Rect;

.field private framingRectRatio:F

.field private framingRectVerticalOffset:I

.field private initialized:Z

.field private isFullScreenScan:Z

.field private isTorch:Z

.field private onSensorListener:Lcom/king/zxing/camera/CameraManager$OnSensorListener;

.field private onTorchListener:Lcom/king/zxing/camera/CameraManager$OnTorchListener;

.field private final previewCallback:Lcom/king/zxing/camera/PreviewCallback;

.field private previewing:Z

.field private requestedCameraId:I

.field private requestedFramingRectHeight:I

.field private requestedFramingRectWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 59
    iput v0, p0, Lcom/king/zxing/camera/CameraManager;->requestedCameraId:I

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/king/zxing/camera/CameraManager;->context:Landroid/content/Context;

    .line 81
    new-instance v0, Lcom/king/zxing/camera/CameraConfigurationManager;

    invoke-direct {v0, p1}, Lcom/king/zxing/camera/CameraConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/king/zxing/camera/CameraManager;->configManager:Lcom/king/zxing/camera/CameraConfigurationManager;

    .line 82
    new-instance p1, Lcom/king/zxing/camera/PreviewCallback;

    invoke-direct {p1, v0}, Lcom/king/zxing/camera/PreviewCallback;-><init>(Lcom/king/zxing/camera/CameraConfigurationManager;)V

    iput-object p1, p0, Lcom/king/zxing/camera/CameraManager;->previewCallback:Lcom/king/zxing/camera/PreviewCallback;

    return-void
.end method


# virtual methods
.method public buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;
    .registers 14

    .line 379
    invoke-virtual {p0}, Lcom/king/zxing/camera/CameraManager;->getFramingRectInPreview()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 384
    :cond_8
    iget-boolean v0, p0, Lcom/king/zxing/camera/CameraManager;->isFullScreenScan:Z

    if-eqz v0, :cond_1b

    .line 385
    new-instance v0, Lcom/google/zxing/PlanarYUVLuminanceSource;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v7, p2

    move v8, p3

    invoke-direct/range {v1 .. v9}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    return-object v0

    .line 387
    :cond_1b
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/king/zxing/camera/CameraManager;->framingRectRatio:F

    mul-float v0, v0, v1

    float-to-int v8, v0

    sub-int v0, p2, v8

    .line 388
    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/king/zxing/camera/CameraManager;->framingRectHorizontalOffset:I

    add-int v5, v0, v1

    sub-int v0, p3, v8

    .line 389
    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/king/zxing/camera/CameraManager;->framingRectVerticalOffset:I

    add-int v6, v0, v1

    .line 391
    new-instance v0, Lcom/google/zxing/PlanarYUVLuminanceSource;

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v7, v8

    invoke-direct/range {v1 .. v9}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    return-object v0
.end method

.method public closeDriver()V
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->camera:Lcom/king/zxing/camera/open/OpenCamera;

    if-eqz v0, :cond_12

    .line 150
    invoke-virtual {v0}, Lcom/king/zxing/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/king/zxing/camera/CameraManager;->camera:Lcom/king/zxing/camera/open/OpenCamera;

    .line 154
    iput-object v0, p0, Lcom/king/zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 155
    iput-object v0, p0, Lcom/king/zxing/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    :cond_12
    const/4 v0, 0x0

    .line 157
    iput-boolean v0, p0, Lcom/king/zxing/camera/CameraManager;->isTorch:Z

    .line 158
    iget-object v1, p0, Lcom/king/zxing/camera/CameraManager;->onTorchListener:Lcom/king/zxing/camera/CameraManager$OnTorchListener;

    if-eqz v1, :cond_1c

    .line 159
    invoke-interface {v1, v0}, Lcom/king/zxing/camera/CameraManager$OnTorchListener;->onTorchChanged(Z)V

    :cond_1c
    return-void
.end method

.method public getCameraResolution()Landroid/graphics/Point;
    .registers 2

    .line 325
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->configManager:Lcom/king/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/king/zxing/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getFramingRect()Landroid/graphics/Rect;
    .registers 6

    monitor-enter p0

    .line 243
    :try_start_1
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    if-nez v0, :cond_47

    .line 244
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->camera:Lcom/king/zxing/camera/open/OpenCamera;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_4b

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 245
    monitor-exit p0

    return-object v1

    .line 247
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->configManager:Lcom/king/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/king/zxing/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_4b

    if-nez v0, :cond_16

    .line 250
    monitor-exit p0

    return-object v1

    .line 253
    :cond_16
    :try_start_16
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 254
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 256
    iget-boolean v2, p0, Lcom/king/zxing/camera/CameraManager;->isFullScreenScan:Z

    if-eqz v2, :cond_27

    .line 257
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/king/zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    goto :goto_47

    .line 259
    :cond_27
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/king/zxing/camera/CameraManager;->framingRectRatio:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    .line 261
    div-int/lit8 v1, v1, 0x2

    iget v3, p0, Lcom/king/zxing/camera/CameraManager;->framingRectHorizontalOffset:I

    add-int/2addr v1, v3

    sub-int/2addr v0, v2

    .line 262
    div-int/lit8 v0, v0, 0x2

    iget v3, p0, Lcom/king/zxing/camera/CameraManager;->framingRectVerticalOffset:I

    add-int/2addr v0, v3

    .line 263
    new-instance v3, Landroid/graphics/Rect;

    add-int v4, v1, v2

    add-int/2addr v2, v0

    invoke-direct {v3, v1, v0, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/king/zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 267
    :cond_47
    :goto_47
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;
    :try_end_49
    .catchall {:try_start_16 .. :try_end_49} :catchall_4b

    monitor-exit p0

    return-object v0

    :catchall_4b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFramingRectInPreview()Landroid/graphics/Rect;
    .registers 7

    monitor-enter p0

    .line 278
    :try_start_1
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    if-nez v0, :cond_4d

    .line 279
    invoke-virtual {p0}, Lcom/king/zxing/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_51

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 281
    monitor-exit p0

    return-object v1

    .line 283
    :cond_e
    :try_start_e
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 284
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->configManager:Lcom/king/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/king/zxing/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    .line 285
    iget-object v3, p0, Lcom/king/zxing/camera/CameraManager;->configManager:Lcom/king/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v3}, Lcom/king/zxing/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v3

    if-eqz v0, :cond_4b

    if-nez v3, :cond_24

    goto :goto_4b

    .line 296
    :cond_24
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    mul-int v1, v1, v4

    iget v5, v3, Landroid/graphics/Point;->x:I

    div-int/2addr v1, v5

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 297
    iget v1, v2, Landroid/graphics/Rect;->right:I

    mul-int v1, v1, v4

    div-int/2addr v1, v5

    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 298
    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Point;->x:I

    mul-int v1, v1, v0

    iget v3, v3, Landroid/graphics/Point;->y:I

    div-int/2addr v1, v3

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 299
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    mul-int v1, v1, v0

    div-int/2addr v1, v3

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 302
    iput-object v2, p0, Lcom/king/zxing/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;
    :try_end_4a
    .catchall {:try_start_e .. :try_end_4a} :catchall_51

    goto :goto_4d

    .line 288
    :cond_4b
    :goto_4b
    monitor-exit p0

    return-object v1

    .line 305
    :cond_4d
    :goto_4d
    :try_start_4d
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;
    :try_end_4f
    .catchall {:try_start_4d .. :try_end_4f} :catchall_51

    monitor-exit p0

    return-object v0

    :catchall_51
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getOpenCamera()Lcom/king/zxing/camera/open/OpenCamera;
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->camera:Lcom/king/zxing/camera/open/OpenCamera;

    return-object v0
.end method

.method public getScreenResolution()Landroid/graphics/Point;
    .registers 2

    .line 329
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->configManager:Lcom/king/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/king/zxing/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized isOpen()Z
    .registers 2

    monitor-enter p0

    .line 138
    :try_start_1
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->camera:Lcom/king/zxing/camera/open/OpenCamera;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public openDriver(Landroid/view/SurfaceHolder;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->camera:Lcom/king/zxing/camera/open/OpenCamera;

    if-nez v0, :cond_17

    .line 94
    iget v0, p0, Lcom/king/zxing/camera/CameraManager;->requestedCameraId:I

    invoke-static {v0}, Lcom/king/zxing/camera/open/OpenCameraInterface;->open(I)Lcom/king/zxing/camera/open/OpenCamera;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 98
    iput-object v0, p0, Lcom/king/zxing/camera/CameraManager;->camera:Lcom/king/zxing/camera/open/OpenCamera;

    goto :goto_17

    .line 96
    :cond_f
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Camera.open() failed to return object from driver"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_17
    :goto_17
    iget-boolean v1, p0, Lcom/king/zxing/camera/CameraManager;->initialized:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_33

    .line 102
    iput-boolean v2, p0, Lcom/king/zxing/camera/CameraManager;->initialized:Z

    .line 103
    iget-object v1, p0, Lcom/king/zxing/camera/CameraManager;->configManager:Lcom/king/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v1, v0}, Lcom/king/zxing/camera/CameraConfigurationManager;->initFromCameraParameters(Lcom/king/zxing/camera/open/OpenCamera;)V

    .line 104
    iget v1, p0, Lcom/king/zxing/camera/CameraManager;->requestedFramingRectWidth:I

    if-lez v1, :cond_33

    iget v4, p0, Lcom/king/zxing/camera/CameraManager;->requestedFramingRectHeight:I

    if-lez v4, :cond_33

    .line 105
    invoke-virtual {p0, v1, v4}, Lcom/king/zxing/camera/CameraManager;->setManualFramingRect(II)V

    .line 106
    iput v3, p0, Lcom/king/zxing/camera/CameraManager;->requestedFramingRectWidth:I

    .line 107
    iput v3, p0, Lcom/king/zxing/camera/CameraManager;->requestedFramingRectHeight:I

    .line 111
    :cond_33
    invoke-virtual {v0}, Lcom/king/zxing/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    .line 112
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    if-nez v4, :cond_3f

    const/4 v4, 0x0

    goto :goto_43

    .line 113
    :cond_3f
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v4

    .line 115
    :goto_43
    :try_start_43
    iget-object v5, p0, Lcom/king/zxing/camera/CameraManager;->configManager:Lcom/king/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v5, v0, v3}, Lcom/king/zxing/camera/CameraConfigurationManager;->setDesiredCameraParameters(Lcom/king/zxing/camera/open/OpenCamera;Z)V
    :try_end_48
    .catch Ljava/lang/RuntimeException; {:try_start_43 .. :try_end_48} :catch_49

    goto :goto_7a

    :catch_49
    nop

    const-string v3, "Camera rejected parameters. Setting only minimal safe-mode parameters"

    .line 118
    invoke-static {v3}, Lcom/king/zxing/util/LogUtils;->w(Ljava/lang/String;)V

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resetting to saved camera params: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/king/zxing/util/LogUtils;->i(Ljava/lang/String;)V

    if-eqz v4, :cond_7a

    .line 122
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 123
    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 125
    :try_start_6c
    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 126
    iget-object v3, p0, Lcom/king/zxing/camera/CameraManager;->configManager:Lcom/king/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v3, v0, v2}, Lcom/king/zxing/camera/CameraConfigurationManager;->setDesiredCameraParameters(Lcom/king/zxing/camera/open/OpenCamera;Z)V
    :try_end_74
    .catch Ljava/lang/RuntimeException; {:try_start_6c .. :try_end_74} :catch_75

    goto :goto_7a

    :catch_75
    const-string v0, "Camera rejected even safe-mode parameters! No configuration"

    .line 129
    invoke-static {v0}, Lcom/king/zxing/util/LogUtils;->w(Ljava/lang/String;)V

    .line 133
    :cond_7a
    :goto_7a
    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public declared-synchronized requestPreviewFrame(Landroid/os/Handler;I)V
    .registers 5

    monitor-enter p0

    .line 228
    :try_start_1
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->camera:Lcom/king/zxing/camera/open/OpenCamera;

    if-eqz v0, :cond_17

    .line 229
    iget-boolean v1, p0, Lcom/king/zxing/camera/CameraManager;->previewing:Z

    if-eqz v1, :cond_17

    .line 230
    iget-object v1, p0, Lcom/king/zxing/camera/CameraManager;->previewCallback:Lcom/king/zxing/camera/PreviewCallback;

    invoke-virtual {v1, p1, p2}, Lcom/king/zxing/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 231
    invoke-virtual {v0}, Lcom/king/zxing/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object p1

    iget-object p2, p0, Lcom/king/zxing/camera/CameraManager;->previewCallback:Lcom/king/zxing/camera/PreviewCallback;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 233
    :cond_17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public sensorChanged(ZF)V
    .registers 5

    .line 412
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->onSensorListener:Lcom/king/zxing/camera/CameraManager$OnSensorListener;

    if-eqz v0, :cond_9

    .line 413
    iget-boolean v1, p0, Lcom/king/zxing/camera/CameraManager;->isTorch:Z

    invoke-interface {v0, v1, p1, p2}, Lcom/king/zxing/camera/CameraManager$OnSensorListener;->onSensorChanged(ZZF)V

    :cond_9
    return-void
.end method

.method public setFramingRectHorizontalOffset(I)V
    .registers 2

    .line 321
    iput p1, p0, Lcom/king/zxing/camera/CameraManager;->framingRectHorizontalOffset:I

    return-void
.end method

.method public setFramingRectRatio(F)V
    .registers 2

    .line 313
    iput p1, p0, Lcom/king/zxing/camera/CameraManager;->framingRectRatio:F

    return-void
.end method

.method public setFramingRectVerticalOffset(I)V
    .registers 2

    .line 317
    iput p1, p0, Lcom/king/zxing/camera/CameraManager;->framingRectVerticalOffset:I

    return-void
.end method

.method public setFullScreenScan(Z)V
    .registers 2

    .line 309
    iput-boolean p1, p0, Lcom/king/zxing/camera/CameraManager;->isFullScreenScan:Z

    return-void
.end method

.method public declared-synchronized setManualFramingRect(II)V
    .registers 6

    monitor-enter p0

    .line 350
    :try_start_1
    iget-boolean v0, p0, Lcom/king/zxing/camera/CameraManager;->initialized:Z

    if-eqz v0, :cond_3e

    .line 351
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->configManager:Lcom/king/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/king/zxing/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v0

    .line 352
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-le p1, v1, :cond_10

    move p1, v1

    .line 355
    :cond_10
    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le p2, v0, :cond_15

    move p2, v0

    :cond_15
    sub-int/2addr v1, p1

    .line 358
    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, p2

    .line 359
    div-int/lit8 v0, v0, 0x2

    .line 360
    new-instance v2, Landroid/graphics/Rect;

    add-int/2addr p1, v1

    add-int/2addr p2, v0

    invoke-direct {v2, v1, v0, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/king/zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 361
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Calculated manual framing rect: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/king/zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 362
    iput-object p1, p0, Lcom/king/zxing/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    goto :goto_42

    .line 364
    :cond_3e
    iput p1, p0, Lcom/king/zxing/camera/CameraManager;->requestedFramingRectWidth:I

    .line 365
    iput p2, p0, Lcom/king/zxing/camera/CameraManager;->requestedFramingRectHeight:I
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_44

    .line 367
    :goto_42
    monitor-exit p0

    return-void

    :catchall_44
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setOnSensorListener(Lcom/king/zxing/camera/CameraManager$OnSensorListener;)V
    .registers 2

    .line 408
    iput-object p1, p0, Lcom/king/zxing/camera/CameraManager;->onSensorListener:Lcom/king/zxing/camera/CameraManager$OnSensorListener;

    return-void
.end method

.method public setOnTorchListener(Lcom/king/zxing/camera/CameraManager$OnTorchListener;)V
    .registers 2

    .line 400
    iput-object p1, p0, Lcom/king/zxing/camera/CameraManager;->onTorchListener:Lcom/king/zxing/camera/CameraManager$OnTorchListener;

    return-void
.end method

.method public declared-synchronized setTorch(Z)V
    .registers 6

    monitor-enter p0

    .line 196
    :try_start_1
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->camera:Lcom/king/zxing/camera/open/OpenCamera;

    if-eqz v0, :cond_44

    .line 197
    iget-object v1, p0, Lcom/king/zxing/camera/CameraManager;->configManager:Lcom/king/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/king/zxing/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/king/zxing/camera/CameraConfigurationManager;->getTorchState(Landroid/hardware/Camera;)Z

    move-result v1

    if-eq p1, v1, :cond_44

    .line 198
    iget-object v1, p0, Lcom/king/zxing/camera/CameraManager;->autoFocusManager:Lcom/king/zxing/camera/AutoFocusManager;

    if-eqz v1, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    if-eqz v2, :cond_20

    .line 200
    invoke-virtual {v1}, Lcom/king/zxing/camera/AutoFocusManager;->stop()V

    const/4 v1, 0x0

    .line 201
    iput-object v1, p0, Lcom/king/zxing/camera/CameraManager;->autoFocusManager:Lcom/king/zxing/camera/AutoFocusManager;

    .line 203
    :cond_20
    iput-boolean p1, p0, Lcom/king/zxing/camera/CameraManager;->isTorch:Z

    .line 204
    iget-object v1, p0, Lcom/king/zxing/camera/CameraManager;->configManager:Lcom/king/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/king/zxing/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Lcom/king/zxing/camera/CameraConfigurationManager;->setTorch(Landroid/hardware/Camera;Z)V

    if-eqz v2, :cond_3d

    .line 206
    new-instance v1, Lcom/king/zxing/camera/AutoFocusManager;

    iget-object v2, p0, Lcom/king/zxing/camera/CameraManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/king/zxing/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/king/zxing/camera/AutoFocusManager;-><init>(Landroid/content/Context;Landroid/hardware/Camera;)V

    iput-object v1, p0, Lcom/king/zxing/camera/CameraManager;->autoFocusManager:Lcom/king/zxing/camera/AutoFocusManager;

    .line 207
    invoke-virtual {v1}, Lcom/king/zxing/camera/AutoFocusManager;->start()V

    .line 210
    :cond_3d
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->onTorchListener:Lcom/king/zxing/camera/CameraManager$OnTorchListener;

    if-eqz v0, :cond_44

    .line 211
    invoke-interface {v0, p1}, Lcom/king/zxing/camera/CameraManager$OnTorchListener;->onTorchChanged(Z)V
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_46

    .line 216
    :cond_44
    monitor-exit p0

    return-void

    :catchall_46
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public startPreview()V
    .registers 4

    .line 167
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->camera:Lcom/king/zxing/camera/open/OpenCamera;

    if-eqz v0, :cond_1f

    .line 168
    iget-boolean v1, p0, Lcom/king/zxing/camera/CameraManager;->previewing:Z

    if-nez v1, :cond_1f

    .line 169
    invoke-virtual {v0}, Lcom/king/zxing/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    const/4 v1, 0x1

    .line 170
    iput-boolean v1, p0, Lcom/king/zxing/camera/CameraManager;->previewing:Z

    .line 171
    new-instance v1, Lcom/king/zxing/camera/AutoFocusManager;

    iget-object v2, p0, Lcom/king/zxing/camera/CameraManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/king/zxing/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/king/zxing/camera/AutoFocusManager;-><init>(Landroid/content/Context;Landroid/hardware/Camera;)V

    iput-object v1, p0, Lcom/king/zxing/camera/CameraManager;->autoFocusManager:Lcom/king/zxing/camera/AutoFocusManager;

    :cond_1f
    return-void
.end method

.method public stopPreview()V
    .registers 4

    .line 179
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->autoFocusManager:Lcom/king/zxing/camera/AutoFocusManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 180
    invoke-virtual {v0}, Lcom/king/zxing/camera/AutoFocusManager;->stop()V

    .line 181
    iput-object v1, p0, Lcom/king/zxing/camera/CameraManager;->autoFocusManager:Lcom/king/zxing/camera/AutoFocusManager;

    .line 183
    :cond_a
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->camera:Lcom/king/zxing/camera/open/OpenCamera;

    if-eqz v0, :cond_21

    iget-boolean v2, p0, Lcom/king/zxing/camera/CameraManager;->previewing:Z

    if-eqz v2, :cond_21

    .line 184
    invoke-virtual {v0}, Lcom/king/zxing/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 185
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->previewCallback:Lcom/king/zxing/camera/PreviewCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/king/zxing/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 186
    iput-boolean v2, p0, Lcom/king/zxing/camera/CameraManager;->previewing:Z

    :cond_21
    return-void
.end method
