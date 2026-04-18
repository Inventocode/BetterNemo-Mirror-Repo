.class final Landroidx/camera/core/imagecapture/ProcessingInput2Packet;
.super Ljava/lang/Object;
.source "ProcessingInput2Packet.java"

# interfaces
.implements Landroidx/camera/core/processing/Operation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/processing/Operation<",
        "Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;",
        "Landroidx/camera/core/processing/Packet<",
        "Landroidx/camera/core/ImageProxy;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getHalTransform(ILandroid/util/Size;I)Landroid/graphics/Matrix;
    .registers 6

    sub-int/2addr p0, p2

    .line 140
    invoke-static {p0}, Landroidx/camera/core/impl/utils/TransformUtils;->within360(I)I

    move-result p2

    invoke-static {p2}, Landroidx/camera/core/impl/utils/TransformUtils;->is90or270(I)Z

    move-result p2

    if-eqz p2, :cond_19

    .line 141
    new-instance p2, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-direct {p2, v0, v1}, Landroid/util/Size;-><init>(II)V

    goto :goto_1a

    :cond_19
    move-object p2, p1

    .line 143
    :goto_1a
    new-instance v0, Landroid/graphics/RectF;

    .line 144
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-float p2, p2

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance p2, Landroid/graphics/RectF;

    .line 145
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p2, v2, v2, v1, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 143
    invoke-static {v0, p2, p0}, Landroidx/camera/core/impl/utils/TransformUtils;->getRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;I)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method private static getUpdatedCropRect(Landroid/graphics/Rect;Landroid/graphics/Matrix;)Landroid/graphics/Rect;
    .registers 3

    .line 124
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 125
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 126
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 127
    invoke-virtual {v0, p0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    return-object p0
.end method

.method private static getUpdatedTransform(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .registers 3

    .line 114
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 115
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    return-object v0
.end method

.method private static isSizeMatch(Landroidx/camera/core/impl/utils/Exif;Landroidx/camera/core/ImageProxy;)Z
    .registers 4

    .line 105
    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/Exif;->getWidth()I

    move-result v0

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_16

    invoke-virtual {p0}, Landroidx/camera/core/impl/utils/Exif;->getHeight()I

    move-result p0

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getHeight()I

    move-result p1

    if-ne p0, p1, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method


# virtual methods
.method public apply(Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;)Landroidx/camera/core/processing/Packet;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;",
            ")",
            "Landroidx/camera/core/processing/Packet<",
            "Landroidx/camera/core/ImageProxy;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/core/ImageCaptureException;
        }
    .end annotation

    .line 62
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;->getImageProxy()Landroidx/camera/core/ImageProxy;

    move-result-object v0

    .line 63
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;->getProcessingRequest()Landroidx/camera/core/imagecapture/ProcessingRequest;

    move-result-object p1

    .line 67
    invoke-interface {v0}, Landroidx/camera/core/ImageProxy;->getFormat()I

    move-result v1

    const/16 v2, 0x100

    if-ne v1, v2, :cond_2d

    .line 69
    :try_start_10
    invoke-static {v0}, Landroidx/camera/core/impl/utils/Exif;->createFromImageProxy(Landroidx/camera/core/ImageProxy;)Landroidx/camera/core/impl/utils/Exif;

    move-result-object v1

    .line 71
    invoke-interface {v0}, Landroidx/camera/core/ImageProxy;->getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v2}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_22} :catch_23

    goto :goto_2e

    :catch_23
    move-exception p1

    .line 73
    new-instance v0, Landroidx/camera/core/ImageCaptureException;

    const/4 v1, 0x1

    const-string v2, "Failed to extract EXIF data."

    invoke-direct {v0, v1, v2, p1}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2d
    const/4 v1, 0x0

    .line 78
    :goto_2e
    invoke-interface {v0}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/internal/CameraCaptureResultImageInfo;

    invoke-virtual {v2}, Landroidx/camera/core/internal/CameraCaptureResultImageInfo;->getCameraCaptureResult()Landroidx/camera/core/impl/CameraCaptureResult;

    move-result-object v5

    .line 80
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/ProcessingRequest;->getCropRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 81
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/ProcessingRequest;->getSensorToBufferTransform()Landroid/graphics/Matrix;

    move-result-object v3

    .line 82
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/ProcessingRequest;->getRotationDegrees()I

    move-result v4

    .line 85
    sget-object v6, Landroidx/camera/core/imagecapture/ImagePipeline;->EXIF_ROTATION_AVAILABILITY:Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;

    invoke-virtual {v6, v0}, Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;->shouldUseExifOrientation(Landroidx/camera/core/ImageProxy;)Z

    move-result v6

    if-eqz v6, :cond_8c

    const-string v2, "The image must have JPEG exif."

    .line 86
    invoke-static {v1, v2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {v1, v0}, Landroidx/camera/core/imagecapture/ProcessingInput2Packet;->isSizeMatch(Landroidx/camera/core/impl/utils/Exif;Landroidx/camera/core/ImageProxy;)Z

    move-result v2

    const-string v3, "Exif size does not match image size."

    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/ProcessingRequest;->getRotationDegrees()I

    move-result v2

    new-instance v3, Landroid/util/Size;

    .line 92
    invoke-virtual {v1}, Landroidx/camera/core/impl/utils/Exif;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroidx/camera/core/impl/utils/Exif;->getHeight()I

    move-result v6

    invoke-direct {v3, v4, v6}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v1}, Landroidx/camera/core/impl/utils/Exif;->getRotation()I

    move-result v4

    .line 91
    invoke-static {v2, v3, v4}, Landroidx/camera/core/imagecapture/ProcessingInput2Packet;->getHalTransform(ILandroid/util/Size;I)Landroid/graphics/Matrix;

    move-result-object v2

    .line 93
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/ProcessingRequest;->getCropRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v3, v2}, Landroidx/camera/core/imagecapture/ProcessingInput2Packet;->getUpdatedCropRect(Landroid/graphics/Rect;Landroid/graphics/Matrix;)Landroid/graphics/Rect;

    move-result-object v3

    .line 95
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/ProcessingRequest;->getSensorToBufferTransform()Landroid/graphics/Matrix;

    move-result-object p1

    .line 94
    invoke-static {p1, v2}, Landroidx/camera/core/imagecapture/ProcessingInput2Packet;->getUpdatedTransform(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p1

    .line 96
    invoke-virtual {v1}, Landroidx/camera/core/impl/utils/Exif;->getRotation()I

    move-result v2

    move-object v4, p1

    move-object v7, v3

    move v3, v2

    move-object v2, v7

    goto :goto_8f

    :cond_8c
    move v7, v4

    move-object v4, v3

    move v3, v7

    .line 99
    :goto_8f
    invoke-static/range {v0 .. v5}, Landroidx/camera/core/processing/Packet;->of(Landroidx/camera/core/ImageProxy;Landroidx/camera/core/impl/utils/Exif;Landroid/graphics/Rect;ILandroid/graphics/Matrix;Landroidx/camera/core/impl/CameraCaptureResult;)Landroidx/camera/core/processing/Packet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/core/ImageCaptureException;
        }
    .end annotation

    .line 54
    check-cast p1, Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;

    invoke-virtual {p0, p1}, Landroidx/camera/core/imagecapture/ProcessingInput2Packet;->apply(Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;)Landroidx/camera/core/processing/Packet;

    move-result-object p1

    return-object p1
.end method
