.class final Landroidx/camera/core/imagecapture/Image2JpegBytes;
.super Ljava/lang/Object;
.source "Image2JpegBytes.java"

# interfaces
.implements Landroidx/camera/core/processing/Operation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/imagecapture/Image2JpegBytes$In;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/processing/Operation<",
        "Landroidx/camera/core/imagecapture/Image2JpegBytes$In;",
        "Landroidx/camera/core/processing/Packet<",
        "[B>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byteBufferToByteArray(Ljava/nio/ByteBuffer;)[B
    .registers 4

    .line 122
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 123
    new-array v1, v0, [B

    .line 124
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v2, 0x0

    .line 125
    invoke-virtual {p0, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object v1
.end method

.method private static extractExif([B)Landroidx/camera/core/impl/utils/Exif;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/core/ImageCaptureException;
        }
    .end annotation

    .line 131
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Landroidx/camera/core/impl/utils/Exif;->createFromInputStream(Ljava/io/InputStream;)Landroidx/camera/core/impl/utils/Exif;

    move-result-object p0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    move-exception p0

    .line 133
    new-instance v0, Landroidx/camera/core/ImageCaptureException;

    const/4 v1, 0x0

    const-string v2, "Failed to extract Exif from YUV-generated JPEG"

    invoke-direct {v0, v1, v2, p0}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private processJpegImage(Landroidx/camera/core/imagecapture/Image2JpegBytes$In;)Landroidx/camera/core/processing/Packet;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/imagecapture/Image2JpegBytes$In;",
            ")",
            "Landroidx/camera/core/processing/Packet<",
            "[B>;"
        }
    .end annotation

    .line 80
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/Image2JpegBytes$In;->getPacket()Landroidx/camera/core/processing/Packet;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/ImageProxy;

    invoke-static {v0}, Landroidx/camera/core/internal/utils/ImageUtil;->jpegImageToJpegByteArray(Landroidx/camera/core/ImageProxy;)[B

    move-result-object v1

    .line 83
    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->getExif()Landroidx/camera/core/impl/utils/Exif;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroidx/camera/core/impl/utils/Exif;

    .line 85
    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->getSize()Landroid/util/Size;

    move-result-object v4

    .line 86
    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->getCropRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 87
    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->getRotationDegrees()I

    move-result v6

    .line 88
    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->getSensorToBufferTransform()Landroid/graphics/Matrix;

    move-result-object v7

    .line 89
    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->getCameraCaptureResult()Landroidx/camera/core/impl/CameraCaptureResult;

    move-result-object v8

    const/16 v3, 0x100

    .line 81
    invoke-static/range {v1 .. v8}, Landroidx/camera/core/processing/Packet;->of([BLandroidx/camera/core/impl/utils/Exif;ILandroid/util/Size;Landroid/graphics/Rect;ILandroid/graphics/Matrix;Landroidx/camera/core/impl/CameraCaptureResult;)Landroidx/camera/core/processing/Packet;

    move-result-object p1

    return-object p1
.end method

.method private processYuvImage(Landroidx/camera/core/imagecapture/Image2JpegBytes$In;)Landroidx/camera/core/processing/Packet;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/imagecapture/Image2JpegBytes$In;",
            ")",
            "Landroidx/camera/core/processing/Packet<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/core/ImageCaptureException;
        }
    .end annotation

    .line 94
    invoke-virtual/range {p1 .. p1}, Landroidx/camera/core/imagecapture/Image2JpegBytes$In;->getPacket()Landroidx/camera/core/processing/Packet;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroidx/camera/core/processing/Packet;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/ImageProxy;

    .line 96
    invoke-virtual {v0}, Landroidx/camera/core/processing/Packet;->getCropRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 99
    invoke-static {v1}, Landroidx/camera/core/internal/utils/ImageUtil;->yuv_420_888toNv21(Landroidx/camera/core/ImageProxy;)[B

    move-result-object v4

    .line 100
    new-instance v9, Landroid/graphics/YuvImage;

    invoke-interface {v1}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result v6

    invoke-interface {v1}, Landroidx/camera/core/ImageProxy;->getHeight()I

    move-result v7

    const/16 v5, 0x11

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 103
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int v3, v3, v4

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 104
    new-instance v4, Landroidx/camera/core/impl/utils/ExifOutputStream;

    new-instance v5, Landroidx/camera/core/internal/ByteBufferOutputStream;

    invoke-direct {v5, v3}, Landroidx/camera/core/internal/ByteBufferOutputStream;-><init>(Ljava/nio/ByteBuffer;)V

    .line 105
    invoke-virtual {v0}, Landroidx/camera/core/processing/Packet;->getRotationDegrees()I

    move-result v6

    invoke-static {v1, v6}, Landroidx/camera/core/impl/utils/ExifData;->create(Landroidx/camera/core/ImageProxy;I)Landroidx/camera/core/impl/utils/ExifData;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Landroidx/camera/core/impl/utils/ExifOutputStream;-><init>(Ljava/io/OutputStream;Landroidx/camera/core/impl/utils/ExifData;)V

    .line 106
    invoke-virtual/range {p1 .. p1}, Landroidx/camera/core/imagecapture/Image2JpegBytes$In;->getJpegQuality()I

    move-result v1

    invoke-virtual {v9, v2, v1, v4}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 107
    invoke-static {v3}, Landroidx/camera/core/imagecapture/Image2JpegBytes;->byteBufferToByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v10

    .line 112
    invoke-static {v10}, Landroidx/camera/core/imagecapture/Image2JpegBytes;->extractExif([B)Landroidx/camera/core/impl/utils/Exif;

    move-result-object v11

    new-instance v13, Landroid/util/Size;

    .line 114
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v13, v1, v3}, Landroid/util/Size;-><init>(II)V

    new-instance v14, Landroid/graphics/Rect;

    .line 115
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v14, v4, v4, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 116
    invoke-virtual {v0}, Landroidx/camera/core/processing/Packet;->getRotationDegrees()I

    move-result v15

    .line 117
    invoke-virtual {v0}, Landroidx/camera/core/processing/Packet;->getSensorToBufferTransform()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-static {v1, v2}, Landroidx/camera/core/impl/utils/TransformUtils;->updateSensorToBufferTransform(Landroid/graphics/Matrix;Landroid/graphics/Rect;)Landroid/graphics/Matrix;

    move-result-object v16

    .line 118
    invoke-virtual {v0}, Landroidx/camera/core/processing/Packet;->getCameraCaptureResult()Landroidx/camera/core/impl/CameraCaptureResult;

    move-result-object v17

    const/16 v12, 0x100

    .line 110
    invoke-static/range {v10 .. v17}, Landroidx/camera/core/processing/Packet;->of([BLandroidx/camera/core/impl/utils/Exif;ILandroid/util/Size;Landroid/graphics/Rect;ILandroid/graphics/Matrix;Landroidx/camera/core/impl/CameraCaptureResult;)Landroidx/camera/core/processing/Packet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply(Landroidx/camera/core/imagecapture/Image2JpegBytes$In;)Landroidx/camera/core/processing/Packet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/imagecapture/Image2JpegBytes$In;",
            ")",
            "Landroidx/camera/core/processing/Packet<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/core/ImageCaptureException;
        }
    .end annotation

    .line 65
    :try_start_0
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/Image2JpegBytes$In;->getPacket()Landroidx/camera/core/processing/Packet;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/processing/Packet;->getFormat()I

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_39

    const/16 v1, 0x100

    if-ne v0, v1, :cond_22

    .line 68
    invoke-direct {p0, p1}, Landroidx/camera/core/imagecapture/Image2JpegBytes;->processJpegImage(Landroidx/camera/core/imagecapture/Image2JpegBytes$In;)Landroidx/camera/core/processing/Packet;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_3e

    .line 75
    :goto_14
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/Image2JpegBytes$In;->getPacket()Landroidx/camera/core/processing/Packet;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/ImageProxy;

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    return-object v0

    .line 72
    :cond_22
    :try_start_22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :cond_39
    invoke-direct {p0, p1}, Landroidx/camera/core/imagecapture/Image2JpegBytes;->processYuvImage(Landroidx/camera/core/imagecapture/Image2JpegBytes$In;)Landroidx/camera/core/processing/Packet;

    move-result-object v0
    :try_end_3d
    .catchall {:try_start_22 .. :try_end_3d} :catchall_3e

    goto :goto_14

    :catchall_3e
    move-exception v0

    .line 75
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/Image2JpegBytes$In;->getPacket()Landroidx/camera/core/processing/Packet;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/ImageProxy;

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    .line 76
    throw v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/core/ImageCaptureException;
        }
    .end annotation

    .line 58
    check-cast p1, Landroidx/camera/core/imagecapture/Image2JpegBytes$In;

    invoke-virtual {p0, p1}, Landroidx/camera/core/imagecapture/Image2JpegBytes;->apply(Landroidx/camera/core/imagecapture/Image2JpegBytes$In;)Landroidx/camera/core/processing/Packet;

    move-result-object p1

    return-object p1
.end method
