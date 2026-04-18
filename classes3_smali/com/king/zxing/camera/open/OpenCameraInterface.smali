.class public final Lcom/king/zxing/camera/open/OpenCameraInterface;
.super Ljava/lang/Object;
.source "OpenCameraInterface.java"


# direct methods
.method public static open(I)Lcom/king/zxing/camera/open/OpenCamera;
    .registers 6

    .line 48
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    const-string p0, "No cameras!"

    .line 50
    invoke-static {p0}, Lcom/king/zxing/util/LogUtils;->w(Ljava/lang/String;)V

    return-object v1

    :cond_d
    if-lt p0, v0, :cond_24

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested camera does not exist: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/king/zxing/util/LogUtils;->w(Ljava/lang/String;)V

    return-object v1

    :cond_24
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-gt p0, v2, :cond_61

    const/4 p0, 0x0

    :goto_29
    if-ge p0, v0, :cond_43

    .line 61
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 62
    invoke-static {p0, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 63
    invoke-static {}, Lcom/king/zxing/camera/open/CameraFacing;->values()[Lcom/king/zxing/camera/open/CameraFacing;

    move-result-object v4

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    aget-object v2, v4, v2

    sget-object v4, Lcom/king/zxing/camera/open/CameraFacing;->BACK:Lcom/king/zxing/camera/open/CameraFacing;

    if-ne v2, v4, :cond_40

    goto :goto_43

    :cond_40
    add-int/lit8 p0, p0, 0x1

    goto :goto_29

    :cond_43
    :goto_43
    if-ne p0, v0, :cond_61

    .line 69
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No camera facing "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/king/zxing/camera/open/CameraFacing;->BACK:Lcom/king/zxing/camera/open/CameraFacing;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; returning camera #0"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/king/zxing/util/LogUtils;->i(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 74
    :cond_61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening camera #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/king/zxing/util/LogUtils;->i(Ljava/lang/String;)V

    .line 75
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 76
    invoke-static {p0, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 77
    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    if-nez v2, :cond_84

    return-object v1

    .line 81
    :cond_84
    new-instance v1, Lcom/king/zxing/camera/open/OpenCamera;

    .line 83
    invoke-static {}, Lcom/king/zxing/camera/open/CameraFacing;->values()[Lcom/king/zxing/camera/open/CameraFacing;

    move-result-object v3

    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    aget-object v3, v3, v4

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/king/zxing/camera/open/OpenCamera;-><init>(ILandroid/hardware/Camera;Lcom/king/zxing/camera/open/CameraFacing;I)V

    return-object v1
.end method
