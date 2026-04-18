.class public final synthetic Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/camera/core/ProcessingImageReader$OnProcessingErrorCallback;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/ImageCapture$ImageCaptureRequest;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda3;->f$0:Landroidx/camera/core/ImageCapture$ImageCaptureRequest;

    return-void
.end method


# virtual methods
.method public final notifyProcessingError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda3;->f$0:Landroidx/camera/core/ImageCapture$ImageCaptureRequest;

    invoke-static {v0, p1, p2}, Landroidx/camera/core/ImageCapture;->$r8$lambda$GZzd7qRT9QyXBuYilqRjFJjyQJY(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
