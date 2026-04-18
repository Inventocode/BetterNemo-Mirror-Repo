.class Landroidx/camera/core/imagecapture/TakePictureManager$1;
.super Ljava/lang/Object;
.source "TakePictureManager.java"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/core/imagecapture/TakePictureManager;->submitCameraRequest(Landroidx/camera/core/imagecapture/CameraRequest;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/utils/futures/FutureCallback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/core/imagecapture/TakePictureManager;

.field final synthetic val$cameraRequest:Landroidx/camera/core/imagecapture/CameraRequest;

.field final synthetic val$successRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroidx/camera/core/imagecapture/TakePictureManager;Ljava/lang/Runnable;Landroidx/camera/core/imagecapture/CameraRequest;)V
    .registers 4

    .line 212
    iput-object p1, p0, Landroidx/camera/core/imagecapture/TakePictureManager$1;->this$0:Landroidx/camera/core/imagecapture/TakePictureManager;

    iput-object p2, p0, Landroidx/camera/core/imagecapture/TakePictureManager$1;->val$successRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Landroidx/camera/core/imagecapture/TakePictureManager$1;->val$cameraRequest:Landroidx/camera/core/imagecapture/CameraRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .registers 6

    .line 221
    instance-of v0, p1, Landroidx/camera/core/ImageCaptureException;

    if-eqz v0, :cond_c

    .line 222
    iget-object v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager$1;->val$cameraRequest:Landroidx/camera/core/imagecapture/CameraRequest;

    check-cast p1, Landroidx/camera/core/ImageCaptureException;

    invoke-virtual {v0, p1}, Landroidx/camera/core/imagecapture/CameraRequest;->onCaptureFailure(Landroidx/camera/core/ImageCaptureException;)V

    goto :goto_19

    .line 224
    :cond_c
    iget-object v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager$1;->val$cameraRequest:Landroidx/camera/core/imagecapture/CameraRequest;

    new-instance v1, Landroidx/camera/core/ImageCaptureException;

    const/4 v2, 0x2

    const-string v3, "Failed to submit capture request"

    invoke-direct {v1, v2, v3, p1}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroidx/camera/core/imagecapture/CameraRequest;->onCaptureFailure(Landroidx/camera/core/ImageCaptureException;)V

    .line 229
    :goto_19
    iget-object p1, p0, Landroidx/camera/core/imagecapture/TakePictureManager$1;->this$0:Landroidx/camera/core/imagecapture/TakePictureManager;

    iget-object p1, p1, Landroidx/camera/core/imagecapture/TakePictureManager;->mImageCaptureControl:Landroidx/camera/core/imagecapture/ImageCaptureControl;

    invoke-interface {p1}, Landroidx/camera/core/imagecapture/ImageCaptureControl;->unlockFlashMode()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 212
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidx/camera/core/imagecapture/TakePictureManager$1;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .registers 2

    .line 215
    iget-object p1, p0, Landroidx/camera/core/imagecapture/TakePictureManager$1;->val$successRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 216
    iget-object p1, p0, Landroidx/camera/core/imagecapture/TakePictureManager$1;->this$0:Landroidx/camera/core/imagecapture/TakePictureManager;

    iget-object p1, p1, Landroidx/camera/core/imagecapture/TakePictureManager;->mImageCaptureControl:Landroidx/camera/core/imagecapture/ImageCaptureControl;

    invoke-interface {p1}, Landroidx/camera/core/imagecapture/ImageCaptureControl;->unlockFlashMode()V

    return-void
.end method
