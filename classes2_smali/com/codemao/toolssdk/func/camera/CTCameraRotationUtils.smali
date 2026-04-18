.class public final Lcom/codemao/toolssdk/func/camera/CTCameraRotationUtils;
.super Ljava/lang/Object;
.source "CTCameraRotationUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/func/camera/CTCameraRotationUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/func/camera/CTCameraRotationUtils;

    invoke-direct {v0}, Lcom/codemao/toolssdk/func/camera/CTCameraRotationUtils;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/func/camera/CTCameraRotationUtils;->INSTANCE:Lcom/codemao/toolssdk/func/camera/CTCameraRotationUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final imageProxyToBitmap(Landroidx/camera/core/ImageProxy;)Landroid/graphics/Bitmap;
    .registers 16

    .line 93
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getFormat()I

    move-result v0

    const/16 v1, 0x23

    const-string v2, "image.planes[0].buffer"

    const/4 v3, 0x0

    if-eq v0, v1, :cond_4a

    const/16 v1, 0x100

    if-eq v0, v1, :cond_2c

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported image format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getFormat()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraWysiwyg"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    goto/16 :goto_c3

    .line 95
    :cond_2c
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 97
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v1, v0, [B

    .line 98
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 99
    invoke-static {v1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_c3

    .line 103
    :cond_4a
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-interface {v0}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v1}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    const-string v2, "image.planes[1].buffer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v2

    const/4 v4, 0x2

    aget-object v2, v2, v4

    invoke-interface {v2}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    const-string v4, "image.planes[2].buffer"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 107
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    .line 108
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    add-int v7, v4, v5

    add-int/2addr v7, v6

    .line 110
    new-array v9, v7, [B

    .line 111
    invoke-virtual {v0, v9, v3, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 112
    invoke-virtual {v2, v9, v4, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v4, v6

    .line 113
    invoke-virtual {v1, v9, v4, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 115
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v10, 0x11

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result v11

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getHeight()I

    move-result v12

    const/4 v13, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 116
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 117
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v4

    invoke-direct {v1, v3, v3, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, p1}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 118
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 119
    array-length v0, p1

    invoke-static {p1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_c3
    return-object p1
.end method


# virtual methods
.method public final processCaptureImageProxy(Landroidx/camera/core/ImageProxy;ZF)Landroid/graphics/Bitmap;
    .registers 12

    const-string v0, "image"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/func/camera/CTCameraRotationUtils;->imageProxyToBitmap(Landroidx/camera/core/ImageProxy;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_d

    const/4 p1, 0x0

    return-object p1

    .line 69
    :cond_d
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 71
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object p1

    invoke-interface {p1}, Landroidx/camera/core/ImageInfo;->getRotationDegrees()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v6, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    if-eqz p2, :cond_35

    const/high16 p1, -0x40800000  # -1.0f

    const/high16 p2, 0x3f800000  # 1.0f

    .line 75
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v6, p1, p2, v0, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 79
    :cond_35
    invoke-virtual {v6, p3}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 84
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    .line 83
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final webRotation2PreviewRotation(Ljava/lang/Float;)F
    .registers 3

    if-eqz p1, :cond_8

    .line 51
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-int p1, p1

    goto :goto_9

    :cond_8
    const/4 p1, 0x1

    :goto_9
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x3

    if-eq p1, v0, :cond_17

    const/4 v0, 0x4

    if-eq p1, v0, :cond_14

    const/4 p1, 0x0

    goto :goto_1c

    :cond_14
    const/high16 p1, 0x43870000  # 270.0f

    goto :goto_1c

    :cond_17
    const/high16 p1, 0x43340000  # 180.0f

    goto :goto_1c

    :cond_1a
    const/high16 p1, 0x42b40000  # 90.0f

    :goto_1c
    return p1
.end method
