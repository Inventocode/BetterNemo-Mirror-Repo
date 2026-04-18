.class public final synthetic Landroidx/camera/core/imagecapture/TakePictureManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/imagecapture/TakePictureManager;

.field public final synthetic f$1:Landroidx/camera/core/imagecapture/ProcessingRequest;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/imagecapture/TakePictureManager;Landroidx/camera/core/imagecapture/ProcessingRequest;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/imagecapture/TakePictureManager$$ExternalSyntheticLambda2;->f$0:Landroidx/camera/core/imagecapture/TakePictureManager;

    iput-object p2, p0, Landroidx/camera/core/imagecapture/TakePictureManager$$ExternalSyntheticLambda2;->f$1:Landroidx/camera/core/imagecapture/ProcessingRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager$$ExternalSyntheticLambda2;->f$0:Landroidx/camera/core/imagecapture/TakePictureManager;

    iget-object v1, p0, Landroidx/camera/core/imagecapture/TakePictureManager$$ExternalSyntheticLambda2;->f$1:Landroidx/camera/core/imagecapture/ProcessingRequest;

    invoke-static {v0, v1}, Landroidx/camera/core/imagecapture/TakePictureManager;->$r8$lambda$-bPg_V8GpljUVsmpRIyVGT2n-dI(Landroidx/camera/core/imagecapture/TakePictureManager;Landroidx/camera/core/imagecapture/ProcessingRequest;)V

    return-void
.end method
