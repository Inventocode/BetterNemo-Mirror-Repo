.class public Landroidx/camera/core/imagecapture/ImagePipeline;
.super Ljava/lang/Object;
.source "ImagePipeline.java"


# static fields
.field static final EXIF_ROTATION_AVAILABILITY:Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;


# instance fields
.field private final mBundlingNode:Landroidx/camera/core/imagecapture/SingleBundlingNode;

.field private final mCaptureConfig:Landroidx/camera/core/impl/CaptureConfig;

.field private final mCaptureNode:Landroidx/camera/core/imagecapture/CaptureNode;

.field private final mPipelineIn:Landroidx/camera/core/imagecapture/CaptureNode$In;

.field private final mProcessingNode:Landroidx/camera/core/imagecapture/ProcessingNode;

.field private final mUseCaseConfig:Landroidx/camera/core/impl/ImageCaptureConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 60
    new-instance v0, Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;

    invoke-direct {v0}, Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;-><init>()V

    sput-object v0, Landroidx/camera/core/imagecapture/ImagePipeline;->EXIF_ROTATION_AVAILABILITY:Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/impl/ImageCaptureConfig;Landroid/util/Size;)V
    .registers 7

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 85
    iput-object p1, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mUseCaseConfig:Landroidx/camera/core/impl/ImageCaptureConfig;

    .line 86
    invoke-static {p1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->createFrom(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/impl/CaptureConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;->build()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mCaptureConfig:Landroidx/camera/core/impl/CaptureConfig;

    .line 89
    new-instance v0, Landroidx/camera/core/imagecapture/CaptureNode;

    invoke-direct {v0}, Landroidx/camera/core/imagecapture/CaptureNode;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mCaptureNode:Landroidx/camera/core/imagecapture/CaptureNode;

    .line 90
    new-instance v1, Landroidx/camera/core/imagecapture/SingleBundlingNode;

    invoke-direct {v1}, Landroidx/camera/core/imagecapture/SingleBundlingNode;-><init>()V

    iput-object v1, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mBundlingNode:Landroidx/camera/core/imagecapture/SingleBundlingNode;

    .line 91
    new-instance v2, Landroidx/camera/core/imagecapture/ProcessingNode;

    .line 92
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->ioExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/camera/core/impl/ImageCaptureConfig;->getIoExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/Executor;

    invoke-direct {v2, v3}, Landroidx/camera/core/imagecapture/ProcessingNode;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v2, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mProcessingNode:Landroidx/camera/core/imagecapture/ProcessingNode;

    .line 95
    invoke-virtual {p1}, Landroidx/camera/core/impl/ImageCaptureConfig;->getInputFormat()I

    move-result p1

    invoke-static {p2, p1}, Landroidx/camera/core/imagecapture/CaptureNode$In;->of(Landroid/util/Size;I)Landroidx/camera/core/imagecapture/CaptureNode$In;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mPipelineIn:Landroidx/camera/core/imagecapture/CaptureNode$In;

    .line 96
    invoke-virtual {v0, p1}, Landroidx/camera/core/imagecapture/CaptureNode;->transform(Landroidx/camera/core/imagecapture/CaptureNode$In;)Landroidx/camera/core/imagecapture/CaptureNode$Out;

    move-result-object p1

    .line 97
    invoke-virtual {v1, p1}, Landroidx/camera/core/imagecapture/SingleBundlingNode;->transform(Landroidx/camera/core/imagecapture/CaptureNode$Out;)Landroidx/camera/core/imagecapture/ProcessingNode$In;

    move-result-object p1

    .line 98
    invoke-virtual {v2, p1}, Landroidx/camera/core/imagecapture/ProcessingNode;->transform(Landroidx/camera/core/imagecapture/ProcessingNode$In;)Ljava/lang/Void;

    return-void
.end method

.method private createCameraRequest(Landroidx/camera/core/impl/CaptureBundle;Landroidx/camera/core/imagecapture/TakePictureRequest;Landroidx/camera/core/imagecapture/TakePictureCallback;)Landroidx/camera/core/imagecapture/CameraRequest;
    .registers 10

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-interface {p1}, Landroidx/camera/core/impl/CaptureBundle;->getCaptureStages()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/CaptureStage;

    .line 208
    new-instance v3, Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-direct {v3}, Landroidx/camera/core/impl/CaptureConfig$Builder;-><init>()V

    .line 209
    iget-object v4, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mCaptureConfig:Landroidx/camera/core/impl/CaptureConfig;

    invoke-virtual {v4}, Landroidx/camera/core/impl/CaptureConfig;->getTemplateType()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setTemplateType(I)V

    .line 212
    iget-object v4, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mCaptureConfig:Landroidx/camera/core/impl/CaptureConfig;

    invoke-virtual {v4}, Landroidx/camera/core/impl/CaptureConfig;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)V

    .line 214
    invoke-virtual {p2}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getSessionConfigCameraCaptureCallbacks()Ljava/util/List;

    move-result-object v4

    .line 213
    invoke-virtual {v3, v4}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addAllCameraCaptureCallbacks(Ljava/util/Collection;)V

    .line 215
    iget-object v4, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mPipelineIn:Landroidx/camera/core/imagecapture/CaptureNode$In;

    invoke-virtual {v4}, Landroidx/camera/core/imagecapture/CaptureNode$In;->getSurface()Landroidx/camera/core/impl/DeferrableSurface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addSurface(Landroidx/camera/core/impl/DeferrableSurface;)V

    .line 219
    iget-object v4, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mPipelineIn:Landroidx/camera/core/imagecapture/CaptureNode$In;

    invoke-virtual {v4}, Landroidx/camera/core/imagecapture/CaptureNode$In;->getFormat()I

    move-result v4

    const/16 v5, 0x100

    if-ne v4, v5, :cond_79

    .line 220
    sget-object v4, Landroidx/camera/core/imagecapture/ImagePipeline;->EXIF_ROTATION_AVAILABILITY:Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;

    invoke-virtual {v4}, Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;->isRotationOptionSupported()Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 221
    sget-object v4, Landroidx/camera/core/impl/CaptureConfig;->OPTION_ROTATION:Landroidx/camera/core/impl/Config$Option;

    .line 222
    invoke-virtual {p2}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getRotationDegrees()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 221
    invoke-virtual {v3, v4, v5}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 224
    :cond_6c
    sget-object v4, Landroidx/camera/core/impl/CaptureConfig;->OPTION_JPEG_QUALITY:Landroidx/camera/core/impl/Config$Option;

    .line 225
    invoke-virtual {p0, p2}, Landroidx/camera/core/imagecapture/ImagePipeline;->getCameraRequestJpegQuality(Landroidx/camera/core/imagecapture/TakePictureRequest;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 224
    invoke-virtual {v3, v4, v5}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 230
    :cond_79
    invoke-interface {v2}, Landroidx/camera/core/impl/CaptureStage;->getCaptureConfig()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/camera/core/impl/CaptureConfig;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    move-result-object v4

    .line 229
    invoke-virtual {v3, v4}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)V

    .line 233
    invoke-interface {v2}, Landroidx/camera/core/impl/CaptureStage;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addTag(Ljava/lang/String;Ljava/lang/Object;)V

    .line 234
    iget-object v2, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mPipelineIn:Landroidx/camera/core/imagecapture/CaptureNode$In;

    invoke-virtual {v2}, Landroidx/camera/core/imagecapture/CaptureNode$In;->getCameraCaptureCallback()Landroidx/camera/core/impl/CameraCaptureCallback;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    .line 235
    invoke-virtual {v3}, Landroidx/camera/core/impl/CaptureConfig$Builder;->build()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1a

    .line 238
    :cond_a1
    new-instance p1, Landroidx/camera/core/imagecapture/CameraRequest;

    invoke-direct {p1, v0, p3}, Landroidx/camera/core/imagecapture/CameraRequest;-><init>(Ljava/util/List;Landroidx/camera/core/imagecapture/TakePictureCallback;)V

    return-object p1
.end method

.method private createCaptureBundle()Landroidx/camera/core/impl/CaptureBundle;
    .registers 3

    .line 183
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mUseCaseConfig:Landroidx/camera/core/impl/ImageCaptureConfig;

    invoke-static {}, Landroidx/camera/core/CaptureBundles;->singleDefaultCaptureBundle()Landroidx/camera/core/impl/CaptureBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/ImageCaptureConfig;->getCaptureBundle(Landroidx/camera/core/impl/CaptureBundle;)Landroidx/camera/core/impl/CaptureBundle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/camera/core/impl/CaptureBundle;

    return-object v0
.end method

.method private createProcessingRequest(Landroidx/camera/core/impl/CaptureBundle;Landroidx/camera/core/imagecapture/TakePictureRequest;Landroidx/camera/core/imagecapture/TakePictureCallback;)Landroidx/camera/core/imagecapture/ProcessingRequest;
    .registers 13

    .line 191
    new-instance v8, Landroidx/camera/core/imagecapture/ProcessingRequest;

    .line 193
    invoke-virtual {p2}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getOutputFileOptions()Landroidx/camera/core/ImageCapture$OutputFileOptions;

    move-result-object v2

    .line 194
    invoke-virtual {p2}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getCropRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 195
    invoke-virtual {p2}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getRotationDegrees()I

    move-result v4

    .line 196
    invoke-virtual {p2}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getJpegQuality()I

    move-result v5

    .line 197
    invoke-virtual {p2}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getSensorToBufferTransform()Landroid/graphics/Matrix;

    move-result-object v6

    move-object v0, v8

    move-object v1, p1

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Landroidx/camera/core/imagecapture/ProcessingRequest;-><init>(Landroidx/camera/core/impl/CaptureBundle;Landroidx/camera/core/ImageCapture$OutputFileOptions;Landroid/graphics/Rect;IILandroid/graphics/Matrix;Landroidx/camera/core/imagecapture/TakePictureCallback;)V

    return-object v8
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 119
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 120
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mCaptureNode:Landroidx/camera/core/imagecapture/CaptureNode;

    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/CaptureNode;->release()V

    .line 121
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mBundlingNode:Landroidx/camera/core/imagecapture/SingleBundlingNode;

    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/SingleBundlingNode;->release()V

    .line 122
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mProcessingNode:Landroidx/camera/core/imagecapture/ProcessingNode;

    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/ProcessingNode;->release()V

    return-void
.end method

.method createRequests(Landroidx/camera/core/imagecapture/TakePictureRequest;Landroidx/camera/core/imagecapture/TakePictureCallback;)Landroidx/core/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/imagecapture/TakePictureRequest;",
            "Landroidx/camera/core/imagecapture/TakePictureCallback;",
            ")",
            "Landroidx/core/util/Pair<",
            "Landroidx/camera/core/imagecapture/CameraRequest;",
            "Landroidx/camera/core/imagecapture/ProcessingRequest;",
            ">;"
        }
    .end annotation

    .line 160
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 161
    invoke-direct {p0}, Landroidx/camera/core/imagecapture/ImagePipeline;->createCaptureBundle()Landroidx/camera/core/impl/CaptureBundle;

    move-result-object v0

    .line 162
    new-instance v1, Landroidx/core/util/Pair;

    .line 163
    invoke-direct {p0, v0, p1, p2}, Landroidx/camera/core/imagecapture/ImagePipeline;->createCameraRequest(Landroidx/camera/core/impl/CaptureBundle;Landroidx/camera/core/imagecapture/TakePictureRequest;Landroidx/camera/core/imagecapture/TakePictureCallback;)Landroidx/camera/core/imagecapture/CameraRequest;

    move-result-object v2

    .line 167
    invoke-direct {p0, v0, p1, p2}, Landroidx/camera/core/imagecapture/ImagePipeline;->createProcessingRequest(Landroidx/camera/core/impl/CaptureBundle;Landroidx/camera/core/imagecapture/TakePictureRequest;Landroidx/camera/core/imagecapture/TakePictureCallback;)Landroidx/camera/core/imagecapture/ProcessingRequest;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public createSessionConfigBuilder()Landroidx/camera/core/impl/SessionConfig$Builder;
    .registers 3

    .line 106
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mUseCaseConfig:Landroidx/camera/core/impl/ImageCaptureConfig;

    invoke-static {v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->createFrom(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object v0

    .line 107
    iget-object v1, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mPipelineIn:Landroidx/camera/core/imagecapture/CaptureNode$In;

    invoke-virtual {v1}, Landroidx/camera/core/imagecapture/CaptureNode$In;->getSurface()Landroidx/camera/core/impl/DeferrableSurface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->addNonRepeatingSurface(Landroidx/camera/core/impl/DeferrableSurface;)Landroidx/camera/core/impl/SessionConfig$Builder;

    return-object v0
.end method

.method getCameraRequestJpegQuality(Landroidx/camera/core/imagecapture/TakePictureRequest;)I
    .registers 5

    .line 250
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getOnDiskCallback()Landroidx/camera/core/ImageCapture$OnImageSavedCallback;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 251
    :goto_9
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getCropRect()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mPipelineIn:Landroidx/camera/core/imagecapture/CaptureNode$In;

    invoke-virtual {v2}, Landroidx/camera/core/imagecapture/CaptureNode$In;->getSize()Landroid/util/Size;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/camera/core/impl/utils/TransformUtils;->hasCropping(Landroid/graphics/Rect;Landroid/util/Size;)Z

    move-result v1

    if-eqz v0, :cond_27

    if-eqz v1, :cond_27

    .line 256
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getCaptureMode()I

    move-result p1

    if-nez p1, :cond_24

    const/16 p1, 0x64

    return p1

    :cond_24
    const/16 p1, 0x5f

    return p1

    .line 264
    :cond_27
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getJpegQuality()I

    move-result p1

    return p1
.end method

.method public getCapacity()I
    .registers 2

    .line 130
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 131
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mCaptureNode:Landroidx/camera/core/imagecapture/CaptureNode;

    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/CaptureNode;->getCapacity()I

    move-result v0

    return v0
.end method

.method postProcess(Landroidx/camera/core/imagecapture/ProcessingRequest;)V
    .registers 3

    .line 175
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 176
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mPipelineIn:Landroidx/camera/core/imagecapture/CaptureNode$In;

    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/CaptureNode$In;->getRequestEdge()Landroidx/camera/core/processing/Edge;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/camera/core/processing/Edge;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public setOnImageCloseListener(Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;)V
    .registers 3

    .line 141
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 142
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ImagePipeline;->mCaptureNode:Landroidx/camera/core/imagecapture/CaptureNode;

    invoke-virtual {v0, p1}, Landroidx/camera/core/imagecapture/CaptureNode;->setOnImageCloseListener(Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;)V

    return-void
.end method
