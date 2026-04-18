.class public final Lcom/codemao/toolssdk/func/camera/CTCameraUtils;
.super Ljava/lang/Object;
.source "CTCameraUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/func/camera/CTCameraUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/func/camera/CTCameraUtils;

    invoke-direct {v0}, Lcom/codemao/toolssdk/func/camera/CTCameraUtils;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/func/camera/CTCameraUtils;->INSTANCE:Lcom/codemao/toolssdk/func/camera/CTCameraUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getCacheDir(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/kn_add_material"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 64
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 65
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2c
    return-object p1
.end method


# virtual methods
.method public final bitmapToBase64(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 5

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 368
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 370
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 371
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    const/4 v0, 0x0

    .line 373
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data:image/jpeg;base64,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getCacheOptions(Landroid/content/Context;Z)Landroidx/camera/core/ImageCapture$OutputFileOptions;
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    new-instance v0, Landroidx/camera/core/ImageCapture$Metadata;

    invoke-direct {v0}, Landroidx/camera/core/ImageCapture$Metadata;-><init>()V

    .line 72
    invoke-virtual {v0, p2}, Landroidx/camera/core/ImageCapture$Metadata;->setReversedHorizontal(Z)V

    .line 74
    new-instance p2, Landroidx/camera/core/ImageCapture$OutputFileOptions$Builder;

    .line 75
    new-instance v0, Ljava/io/File;

    .line 76
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/func/camera/CTCameraUtils;->getCacheDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "material_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-direct {p2, v0}, Landroidx/camera/core/ImageCapture$OutputFileOptions$Builder;-><init>(Ljava/io/File;)V

    .line 81
    invoke-virtual {p2}, Landroidx/camera/core/ImageCapture$OutputFileOptions$Builder;->build()Landroidx/camera/core/ImageCapture$OutputFileOptions;

    move-result-object p1

    const-string p2, "Builder(\n            Fil…ata)\n            .build()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final processAndOverwriteImageFromUri(Landroid/content/Context;Landroid/net/Uri;I)Z
    .registers 19

    move-object/from16 v0, p2

    const-string v1, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "imageUri"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 302
    :try_start_10
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 303
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v12
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1c} :catch_b5
    .catchall {:try_start_10 .. :try_end_1c} :catchall_b2

    if-eqz v4, :cond_2c

    .line 304
    :try_start_1e
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_2c

    :catchall_22
    move-exception v0

    move-object v2, v1

    move-object v1, v12

    goto/16 :goto_c6

    :catch_27
    move-exception v0

    move-object v2, v1

    move-object v1, v12

    goto/16 :goto_b7

    :cond_2c
    :goto_2c
    if-nez v12, :cond_2f

    return v3

    .line 312
    :cond_2f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    const/16 v13, 0x5a

    const/4 v14, 0x1

    if-eqz v4, :cond_5f

    .line 314
    new-instance v5, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v5, v4}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    const-string v6, "Orientation"

    .line 315
    invoke-virtual {v5, v6, v14}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_59

    const/4 v6, 0x6

    if-eq v5, v6, :cond_56

    const/16 v6, 0x8

    if-eq v5, v6, :cond_53

    const/4 v5, 0x0

    goto :goto_5b

    :cond_53
    const/16 v5, 0x10e

    goto :goto_5b

    :cond_56
    const/16 v5, 0x5a

    goto :goto_5b

    :cond_59
    const/16 v5, 0xb4

    .line 325
    :goto_5b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_60

    :cond_5f
    const/4 v5, 0x0

    .line 329
    :goto_60
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v4, v5

    .line 330
    invoke-virtual {v10, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    if-nez p3, :cond_80

    const/high16 v4, -0x40800000  # -1.0f

    const/high16 v5, 0x3f800000  # 1.0f

    .line 333
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000  # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    invoke-virtual {v10, v4, v5, v6, v8}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_80
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 340
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 341
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v11, 0x1

    move-object v5, v12

    .line 336
    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 347
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_98} :catch_27
    .catchall {:try_start_1e .. :try_end_98} :catchall_22

    if-nez v0, :cond_a3

    .line 361
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz v1, :cond_a2

    .line 362
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_a2
    return v3

    .line 352
    :cond_a3
    :try_start_a3
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, v2, v13, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 353
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_ab} :catch_27
    .catchall {:try_start_a3 .. :try_end_ab} :catchall_22

    .line 361
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 362
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    return v14

    :catchall_b2
    move-exception v0

    move-object v2, v1

    goto :goto_c6

    :catch_b5
    move-exception v0

    move-object v2, v1

    .line 357
    :goto_b7
    :try_start_b7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_ba
    .catchall {:try_start_b7 .. :try_end_ba} :catchall_c5

    if-eqz v1, :cond_bf

    .line 361
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_bf
    if-eqz v2, :cond_c4

    .line 362
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_c4
    return v3

    :catchall_c5
    move-exception v0

    :goto_c6
    if-eqz v1, :cond_cb

    .line 361
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_cb
    if-eqz v2, :cond_d0

    .line 362
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_d0
    throw v0
.end method

.method public final processImageBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnsafeOptInUsageError"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_de

    .line 203
    :try_start_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 204
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 205
    sget-object v3, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "拍照结果宽高: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 212
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 213
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "处理后宽高: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    .line 216
    sget-object v2, Lcom/codemao/toolssdk/utils/ImageCompressUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/ImageCompressUtils;

    .line 218
    invoke-virtual {v2}, Lcom/codemao/toolssdk/utils/ImageCompressUtils;->createQuickCompressConfig()Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;

    move-result-object v4

    .line 216
    invoke-virtual {v2, p1, v4}, Lcom/codemao/toolssdk/utils/ImageCompressUtils;->compressBitmap(Landroid/graphics/Bitmap;Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;)Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;

    move-result-object v2

    .line 221
    invoke-virtual {v2}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->getSuccess()Z

    move-result v4

    if-eqz v4, :cond_c1

    .line 223
    invoke-virtual {v2}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v4, 0x0

    if-eqz p1, :cond_67

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    goto :goto_68

    :cond_67
    const/4 p1, 0x0

    .line 224
    :goto_68
    invoke-virtual {v2}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_72

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 225
    :cond_72
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "压缩后宽高: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    .line 226
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "拍照并压缩成功，原始大小: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->getOriginalSize()I

    move-result v1

    div-int/lit16 v1, v1, 0x400

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "KB，压缩后: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->getFileSize()I

    move-result v1

    div-int/lit16 v1, v1, 0x400

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "KB"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v2}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->getBase64()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1

    .line 230
    :cond_c1
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/func/camera/CTCameraUtils;->bitmapToBase64(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "压缩失败，使用处理后的原始图片: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    return-object p1

    .line 237
    :cond_de
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "图片解码失败，"

    invoke-virtual {p1, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e5} :catch_e6

    return-object v0

    :catch_e6
    move-exception p1

    .line 241
    sget-object v1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "处理图像失败："

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    return-object v0
.end method
