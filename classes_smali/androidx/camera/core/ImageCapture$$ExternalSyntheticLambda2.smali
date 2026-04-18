.class public final synthetic Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/camera/core/ImageCapture$ImageCaptureRequestProcessor$RequestProcessCallback;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/internal/YuvToJpegProcessor;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/internal/YuvToJpegProcessor;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda2;->f$0:Landroidx/camera/core/internal/YuvToJpegProcessor;

    return-void
.end method


# virtual methods
.method public final onPreProcessRequest(Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)V
    .registers 3

    iget-object v0, p0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda2;->f$0:Landroidx/camera/core/internal/YuvToJpegProcessor;

    invoke-static {v0, p1}, Landroidx/camera/core/ImageCapture;->$r8$lambda$yclWqwcLM4UlF73nEIz9B3Qfr3c(Landroidx/camera/core/internal/YuvToJpegProcessor;Landroidx/camera/core/ImageCapture$ImageCaptureRequest;)V

    return-void
.end method
