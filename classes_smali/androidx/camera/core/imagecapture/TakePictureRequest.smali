.class public abstract Landroidx/camera/core/imagecapture/TakePictureRequest;
.super Ljava/lang/Object;
.source "TakePictureRequest.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public static synthetic $r8$lambda$G4B-pGbg9E63wl3UHuA1rGnREY8(Landroidx/camera/core/imagecapture/TakePictureRequest;Landroidx/camera/core/ImageCaptureException;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->lambda$onError$0(Landroidx/camera/core/ImageCaptureException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hZ7nJhb4S6tFBXTb-yrjK-F2Bm8(Landroidx/camera/core/imagecapture/TakePictureRequest;Landroidx/camera/core/ImageCapture$OutputFileResults;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->lambda$onResult$1(Landroidx/camera/core/ImageCapture$OutputFileResults;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lXRy9kbXAtmO3Xpnyc_qVvw-9ks(Landroidx/camera/core/imagecapture/TakePictureRequest;Landroidx/camera/core/ImageProxy;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->lambda$onResult$2(Landroidx/camera/core/ImageProxy;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onError$0(Landroidx/camera/core/ImageCaptureException;)V
    .registers 6

    .line 130
    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getInMemoryCallback()Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 131
    :goto_b
    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getOnDiskCallback()Landroidx/camera/core/ImageCapture$OnImageSavedCallback;

    move-result-object v3

    if-eqz v3, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    if-eqz v0, :cond_24

    if-nez v1, :cond_24

    .line 133
    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getInMemoryCallback()Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    invoke-virtual {v0, p1}, Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;->onError(Landroidx/camera/core/ImageCaptureException;)V

    goto :goto_34

    :cond_24
    if-eqz v1, :cond_35

    if-nez v0, :cond_35

    .line 135
    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getOnDiskCallback()Landroidx/camera/core/ImageCapture$OnImageSavedCallback;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/camera/core/ImageCapture$OnImageSavedCallback;

    invoke-interface {v0, p1}, Landroidx/camera/core/ImageCapture$OnImageSavedCallback;->onError(Landroidx/camera/core/ImageCaptureException;)V

    :goto_34
    return-void

    .line 137
    :cond_35
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "One and only one callback is allowed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private synthetic lambda$onResult$1(Landroidx/camera/core/ImageCapture$OutputFileResults;)V
    .registers 3

    .line 146
    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getOnDiskCallback()Landroidx/camera/core/ImageCapture$OnImageSavedCallback;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/camera/core/ImageCapture$OnImageSavedCallback;

    .line 147
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroidx/camera/core/ImageCapture$OutputFileResults;

    .line 146
    invoke-interface {v0, p1}, Landroidx/camera/core/ImageCapture$OnImageSavedCallback;->onImageSaved(Landroidx/camera/core/ImageCapture$OutputFileResults;)V

    return-void
.end method

.method private synthetic lambda$onResult$2(Landroidx/camera/core/ImageProxy;)V
    .registers 3

    .line 154
    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getInMemoryCallback()Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    .line 155
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroidx/camera/core/ImageProxy;

    .line 154
    invoke-virtual {v0, p1}, Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;->onCaptureSuccess(Landroidx/camera/core/ImageProxy;)V

    return-void
.end method

.method public static of(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;Landroidx/camera/core/ImageCapture$OutputFileOptions;Landroid/graphics/Rect;Landroid/graphics/Matrix;IIILjava/util/List;)Landroidx/camera/core/imagecapture/TakePictureRequest;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;",
            "Landroidx/camera/core/ImageCapture$OnImageSavedCallback;",
            "Landroidx/camera/core/ImageCapture$OutputFileOptions;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Matrix;",
            "III",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CameraCaptureCallback;",
            ">;)",
            "Landroidx/camera/core/imagecapture/TakePictureRequest;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    if-nez p3, :cond_b

    const/4 v3, 0x1

    goto :goto_c

    :cond_b
    const/4 v3, 0x0

    :goto_c
    if-ne v2, v3, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    const-string v3, "onDiskCallback and outputFileOptions should be both null or both non-null."

    .line 172
    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-nez p2, :cond_1a

    const/4 v2, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    if-nez p1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    xor-int/2addr v0, v2

    const-string v1, "One and only one on-disk or in-memory callback should be present."

    .line 174
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 176
    new-instance v11, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Landroidx/camera/core/imagecapture/AutoValue_TakePictureRequest;-><init>(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;Landroidx/camera/core/ImageCapture$OutputFileOptions;Landroid/graphics/Rect;Landroid/graphics/Matrix;IIILjava/util/List;)V

    return-object v11
.end method


# virtual methods
.method abstract getAppExecutor()Ljava/util/concurrent/Executor;
.end method

.method abstract getCaptureMode()I
.end method

.method abstract getCropRect()Landroid/graphics/Rect;
.end method

.method abstract getInMemoryCallback()Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;
.end method

.method abstract getJpegQuality()I
.end method

.method abstract getOnDiskCallback()Landroidx/camera/core/ImageCapture$OnImageSavedCallback;
.end method

.method abstract getOutputFileOptions()Landroidx/camera/core/ImageCapture$OutputFileOptions;
.end method

.method abstract getRotationDegrees()I
.end method

.method abstract getSensorToBufferTransform()Landroid/graphics/Matrix;
.end method

.method abstract getSessionConfigCameraCaptureCallbacks()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CameraCaptureCallback;",
            ">;"
        }
    .end annotation
.end method

.method onError(Landroidx/camera/core/ImageCaptureException;)V
    .registers 4

    .line 129
    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getAppExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/camera/core/imagecapture/TakePictureRequest$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroidx/camera/core/imagecapture/TakePictureRequest$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/core/imagecapture/TakePictureRequest;Landroidx/camera/core/ImageCaptureException;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method onResult(Landroidx/camera/core/ImageCapture$OutputFileResults;)V
    .registers 4

    .line 146
    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getAppExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/camera/core/imagecapture/TakePictureRequest$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroidx/camera/core/imagecapture/TakePictureRequest$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/core/imagecapture/TakePictureRequest;Landroidx/camera/core/ImageCapture$OutputFileResults;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method onResult(Landroidx/camera/core/ImageProxy;)V
    .registers 4

    .line 154
    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getAppExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/camera/core/imagecapture/TakePictureRequest$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroidx/camera/core/imagecapture/TakePictureRequest$$ExternalSyntheticLambda2;-><init>(Landroidx/camera/core/imagecapture/TakePictureRequest;Landroidx/camera/core/ImageProxy;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
