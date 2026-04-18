.class public Lcom/codemao/toolssdk/image_selector/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static copyImgFromSrcPath(Landroid/content/Context;ILjava/lang/String;ZZ)Ljava/lang/String;
    .registers 12

    const-string v0, ".png"

    const-string v1, ".jpg"

    .line 235
    :try_start_4
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 236
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 237
    invoke-static {p2, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 238
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 239
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float p1, p1

    const/high16 v5, 0x3f800000  # 1.0f

    mul-float p1, p1, v5

    int-to-float v3, v3

    div-float v6, p1, v3

    int-to-float v4, v4

    div-float/2addr p1, v4

    .line 240
    invoke-static {v6, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1, v5}, Ljava/lang/Math;->min(FF)F

    move-result p1

    mul-float v4, v4, p1

    mul-float v3, v3, p1

    float-to-int p1, p1

    .line 243
    iput p1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    .line 244
    iput-boolean p1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 245
    invoke-static {p2, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    float-to-int v2, v3

    float-to-int v3, v4

    .line 246
    invoke-static {p1, v2, v3}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->scaleImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p3, :cond_49

    .line 248
    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->removeTransparency(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_49

    .line 250
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 p3, 0x50

    invoke-static {p3, p3, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 253
    :cond_49
    new-instance p3, Ljava/io/File;

    invoke-static {p0}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->getImageCacheDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_5b

    .line 255
    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    .line 257
    :cond_5b
    invoke-static {}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->getRandomImageName()Ljava/lang/String;

    move-result-object p0

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 260
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt p3, v2, :cond_80

    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->WEBP_LOSSLESS:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_82

    :cond_80
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    :goto_82
    if-nez p4, :cond_b4

    .line 262
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p4
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8c} :catch_c5

    const-string v2, ".webp"

    if-nez p4, :cond_ae

    :try_start_90
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p4

    const-string v3, ".jpeg"

    invoke-virtual {p4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_9d

    goto :goto_ae

    .line 265
    :cond_9d
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_b4

    .line 266
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 267
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_b4

    .line 263
    :cond_ae
    :goto_ae
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 264
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 270
    :cond_b4
    :goto_b4
    new-instance p4, Ljava/io/FileOutputStream;

    invoke-direct {p4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x4b

    .line 271
    invoke-virtual {p1, p3, v0, p4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 272
    invoke-virtual {p4}, Ljava/io/FileOutputStream;->flush()V

    .line 273
    invoke-virtual {p4}, Ljava/io/FileOutputStream;->close()V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_c4} :catch_c5

    return-object p0

    :catch_c5
    move-exception p0

    .line 276
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p2
.end method

.method public static createDir(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 68
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_54

    const-string v2, "----- 创建文件夹"

    if-eqz v1, :cond_2f

    .line 70
    :try_start_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/toolssdk/image_selector/utils/LogUtils;->i(Ljava/lang/Object;)V

    .line 71
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 72
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 74
    :cond_2f
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->createDir(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/toolssdk/image_selector/utils/LogUtils;->i(Ljava/lang/Object;)V

    .line 76
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_53} :catch_54

    goto :goto_58

    :catch_54
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_58
    return-object p0
.end method

.method public static createFile(Ljava/io/File;)Ljava/lang/String;
    .registers 3

    .line 92
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_4f

    const-string v1, "----- 创建文件"

    if-eqz v0, :cond_2a

    .line 93
    :try_start_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/toolssdk/image_selector/utils/LogUtils;->i(Ljava/lang/Object;)V

    .line 94
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 95
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 97
    :cond_2a
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->createDir(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/codemao/toolssdk/image_selector/utils/LogUtils;->i(Ljava/lang/Object;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_4e} :catch_4f

    goto :goto_53

    :catch_4f
    move-exception p0

    .line 102
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_53
    const-string p0, ""

    return-object p0
.end method

.method public static createRootPath(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_1e

    .line 39
    invoke-static {}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->isSdCardAvailable()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    goto :goto_48

    .line 42
    :cond_15
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    goto :goto_48

    .line 45
    :cond_1e
    invoke-virtual {p0}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2f

    .line 46
    array-length v0, p0

    if-lez v0, :cond_2f

    const/4 v0, 0x0

    .line 47
    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    goto :goto_48

    .line 49
    :cond_2f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/Android/media/temp"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 52
    :goto_48
    invoke-static {p0}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->createDir(Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public static deleteFile(Ljava/io/File;)V
    .registers 5

    .line 312
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 313
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 314
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_28

    .line 315
    :cond_10
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 316
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 318
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v1, :cond_28

    aget-object v3, v0, v2

    .line 319
    invoke-static {v3}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->deleteFile(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 323
    :cond_28
    :goto_28
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_2b
    return-void
.end method

.method public static flipImage(Landroid/graphics/Bitmap;IIFF)Landroid/graphics/Bitmap;
    .registers 12

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 211
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 212
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 213
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    int-to-float p2, p2

    .line 214
    invoke-virtual {v5, p1, p2, p3, p4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    .line 215
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getApplicationId(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "APP_ID"

    .line 110
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/codemao/toolssdk/image_selector/utils/LogUtils;->d(Ljava/lang/Object;)V

    .line 115
    iget-object p0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 112
    :cond_3a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, " get application info = null, has no meta data! "

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_42
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_42} :catch_42

    :catch_42
    move-exception p0

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " get application info error! "

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getBitmapFromPath(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "file://"

    const-string v1, ""

    .line 124
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/android_asset/"

    .line 125
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 126
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->initAssetImg(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_25

    .line 128
    :cond_1f
    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->initFileImg(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    return-object p0
.end method

.method public static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_19

    const/16 v0, 0x2e

    .line 407
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_19

    .line 408
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_19

    add-int/lit8 v0, v0, 0x1

    .line 409
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_19
    const-string p0, ""

    return-object p0
.end method

.method public static getFinalBitmapRect(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V
    .registers 12

    .line 353
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v0, v0, v1

    new-array v9, v0, [I

    .line 354
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v9

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 356
    :goto_22
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_4a

    const/4 v3, 0x0

    .line 357
    :goto_29
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_47

    .line 358
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int v4, v4, v3

    add-int/2addr v4, v2

    if-ge v4, v0, :cond_44

    .line 359
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int v4, v4, v3

    add-int/2addr v4, v2

    aget v4, v9, v4

    if-eqz v4, :cond_44

    goto :goto_4b

    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_4a
    const/4 v2, 0x0

    :goto_4b
    const/4 v3, 0x0

    .line 367
    :goto_4c
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_74

    move v4, v2

    .line 368
    :goto_53
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ge v4, v5, :cond_71

    .line 369
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    mul-int v5, v5, v3

    add-int/2addr v5, v4

    if-ge v5, v0, :cond_6e

    .line 370
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    mul-int v5, v5, v3

    add-int/2addr v5, v4

    aget v5, v9, v5

    if-eqz v5, :cond_6e

    goto :goto_75

    :cond_6e
    add-int/lit8 v4, v4, 0x1

    goto :goto_53

    :cond_71
    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    :cond_74
    const/4 v3, 0x0

    .line 378
    :goto_75
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_7b
    if-lt v4, v2, :cond_a0

    .line 379
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_83
    if-lt v5, v3, :cond_9d

    .line 380
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    mul-int v6, v6, v5

    add-int/2addr v6, v4

    if-ge v6, v0, :cond_9a

    .line 381
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    mul-int v6, v6, v5

    add-int/2addr v6, v4

    aget v6, v9, v6

    if-eqz v6, :cond_9a

    goto :goto_a1

    :cond_9a
    add-int/lit8 v5, v5, -0x1

    goto :goto_83

    :cond_9d
    add-int/lit8 v4, v4, -0x1

    goto :goto_7b

    :cond_a0
    const/4 v4, 0x0

    .line 389
    :goto_a1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_a7
    if-lt v5, v3, :cond_cd

    .line 391
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_af
    if-lt v6, v2, :cond_ca

    .line 392
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    mul-int v7, v7, v5

    add-int/2addr v7, v6

    if-ge v7, v0, :cond_c7

    .line 393
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    mul-int v7, v7, v5

    add-int/2addr v7, v6

    aget v7, v9, v7

    if-eqz v7, :cond_c7

    move v1, v5

    goto :goto_cd

    :cond_c7
    add-int/lit8 v6, v6, -0x1

    goto :goto_af

    :cond_ca
    add-int/lit8 v5, v5, -0x1

    goto :goto_a7

    :cond_cd
    :goto_cd
    int-to-float p0, v2

    int-to-float v0, v3

    int-to-float v2, v4

    int-to-float v1, v1

    .line 401
    invoke-virtual {p1, p0, v0, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public static getImageCacheDir(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 219
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/CMTools/compress_images/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRandomImageName()Ljava/lang/String;
    .registers 1

    const-string v0, ".webp"

    .line 224
    invoke-static {v0}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->getRandomImageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRandomImageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 228
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0xa

    .line 229
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "image_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initAssetImg(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    .line 137
    :try_start_8
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 138
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 139
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_13} :catch_14

    return-object p1

    :catch_14
    move-exception p0

    .line 142
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static initFileImg(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 6

    .line 148
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6d

    .line 153
    :try_start_c
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 154
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 155
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_19} :catch_50
    .catchall {:try_start_c .. :try_end_19} :catchall_4e

    .line 156
    :try_start_19
    invoke-static {v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 157
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 158
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 159
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v3, :cond_43

    if-nez v4, :cond_28

    goto :goto_43

    .line 163
    :cond_28
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2d} :catch_4c
    .catchall {:try_start_19 .. :try_end_2d} :catchall_60

    const/4 p0, 0x0

    .line 164
    :try_start_2e
    iput-boolean p0, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 165
    invoke-static {v3, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_34} :catch_40
    .catchall {:try_start_2e .. :try_end_34} :catchall_3d

    .line 170
    :try_start_34
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_3c

    :catch_38
    move-exception v0

    .line 172
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3c
    return-object p0

    :catchall_3d
    move-exception p0

    move-object v1, v3

    goto :goto_62

    :catch_40
    move-exception p0

    move-object v2, v3

    goto :goto_52

    .line 170
    :cond_43
    :goto_43
    :try_start_43
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_4b

    :catch_47
    move-exception p0

    .line 172
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4b
    return-object v1

    :catch_4c
    move-exception p0

    goto :goto_52

    :catchall_4e
    move-exception p0

    goto :goto_62

    :catch_50
    move-exception p0

    move-object v2, v1

    .line 167
    :goto_52
    :try_start_52
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_60

    if-eqz v2, :cond_6d

    .line 170
    :try_start_57
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_6d

    :catch_5b
    move-exception p0

    .line 172
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6d

    :catchall_60
    move-exception p0

    move-object v1, v2

    :goto_62
    if-eqz v1, :cond_6c

    .line 170
    :try_start_64
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_6c

    :catch_68
    move-exception v0

    .line 172
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 174
    :cond_6c
    :goto_6c
    throw p0

    :cond_6d
    :goto_6d
    return-object v1
.end method

.method public static isSdCardAvailable()Z
    .registers 2

    .line 57
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static removeTransparency(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .line 328
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-static {p0, v0}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->removeTransparency(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static removeTransparency(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    if-nez p1, :cond_b

    .line 336
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 338
    :cond_b
    invoke-static {p0, p1}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->getFinalBitmapRect(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    .line 340
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    return-object v0

    .line 343
    :cond_15
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    float-to-int p1, p1

    invoke-static {p0, v0, v1, v2, p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static rotateImage(Landroid/graphics/Bitmap;IFF)Landroid/graphics/Bitmap;
    .registers 11

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 200
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 201
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 202
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 203
    invoke-virtual {v5, p1, p2, p3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    .line 204
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    .line 283
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 285
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1f

    .line 286
    :cond_12
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 287
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 290
    :cond_1f
    :goto_1f
    :try_start_1f
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 292
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 294
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".WEBP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 295
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_3f

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->WEBP_LOSSY:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_53

    :cond_3f
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_53

    .line 296
    :cond_42
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".PNG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_51

    .line 297
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_53

    .line 299
    :cond_51
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_53
    const/16 v0, 0x4b

    .line 302
    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 303
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 304
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_5e} :catch_5f

    goto :goto_63

    :catch_5f
    move-exception p0

    .line 307
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_63
    :goto_63
    return-void
.end method

.method public static scaleImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 11

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 184
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 185
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-lez v4, :cond_28

    if-gtz v5, :cond_11

    goto :goto_28

    :cond_11
    int-to-float p1, p1

    int-to-float v0, v4

    div-float/2addr p1, v0

    int-to-float p2, p2

    int-to-float v0, v5

    div-float/2addr p2, v0

    .line 191
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 192
    invoke-virtual {v6, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    .line 193
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_28
    :goto_28
    return-object v0
.end method
