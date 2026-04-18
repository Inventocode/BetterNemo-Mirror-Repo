.class final Lcom/king/zxing/camera/PreviewCallback;
.super Ljava/lang/Object;
.source "PreviewCallback.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field private final configManager:Lcom/king/zxing/camera/CameraConfigurationManager;

.field private previewHandler:Landroid/os/Handler;

.field private previewMessage:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const-class v0, Lcom/king/zxing/camera/PreviewCallback;

    return-void
.end method

.method constructor <init>(Lcom/king/zxing/camera/CameraConfigurationManager;)V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/king/zxing/camera/PreviewCallback;->configManager:Lcom/king/zxing/camera/CameraConfigurationManager;

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 6

    .line 47
    iget-object p2, p0, Lcom/king/zxing/camera/PreviewCallback;->configManager:Lcom/king/zxing/camera/CameraConfigurationManager;

    invoke-virtual {p2}, Lcom/king/zxing/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object p2

    .line 48
    iget-object v0, p0, Lcom/king/zxing/camera/PreviewCallback;->previewHandler:Landroid/os/Handler;

    if-eqz p2, :cond_1d

    if-eqz v0, :cond_1d

    .line 50
    iget v1, p0, Lcom/king/zxing/camera/PreviewCallback;->previewMessage:I

    iget v2, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2, p2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lcom/king/zxing/camera/PreviewCallback;->previewHandler:Landroid/os/Handler;

    goto :goto_22

    :cond_1d
    const-string p1, "Got preview callback, but no handler or resolution available"

    .line 55
    invoke-static {p1}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    :goto_22
    return-void
.end method

.method setHandler(Landroid/os/Handler;I)V
    .registers 3

    .line 41
    iput-object p1, p0, Lcom/king/zxing/camera/PreviewCallback;->previewHandler:Landroid/os/Handler;

    .line 42
    iput p2, p0, Lcom/king/zxing/camera/PreviewCallback;->previewMessage:I

    return-void
.end method
