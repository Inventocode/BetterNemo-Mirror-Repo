.class final Landroidx/camera/core/ImageSaver;
.super Ljava/lang/Object;
.source "ImageSaver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/ImageSaver$OnImageSavedCallback;,
        Landroidx/camera/core/ImageSaver$SaveError;
    }
.end annotation


# instance fields
.field private final mCallback:Landroidx/camera/core/ImageSaver$OnImageSavedCallback;

.field private final mImage:Landroidx/camera/core/ImageProxy;

.field private final mJpegQuality:I

.field private final mOrientation:I

.field private final mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

.field private final mSequentialIoExecutor:Ljava/util/concurrent/Executor;

.field private final mUserCallbackExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic $r8$lambda$29vxg6qyjKwPRXgWrIwgYVInWKE(Landroidx/camera/core/ImageSaver;Landroid/net/Uri;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/camera/core/ImageSaver;->lambda$postSuccess$1(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$B3iHDvDM2UNgfd15W3q-MlcpXJc(Landroidx/camera/core/ImageSaver;Ljava/io/File;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/camera/core/ImageSaver;->lambda$run$0(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q5J8WAquxyekKA6et-sNzW3OiJM(Landroidx/camera/core/ImageSaver;Landroidx/camera/core/ImageSaver$SaveError;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/core/ImageSaver;->lambda$postError$2(Landroidx/camera/core/ImageSaver$SaveError;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method constructor <init>(Landroidx/camera/core/ImageProxy;Landroidx/camera/core/ImageCapture$OutputFileOptions;IILjava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageSaver$OnImageSavedCallback;)V
    .registers 8

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Landroidx/camera/core/ImageSaver;->mImage:Landroidx/camera/core/ImageProxy;

    .line 83
    iput-object p2, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    .line 84
    iput p3, p0, Landroidx/camera/core/ImageSaver;->mOrientation:I

    .line 85
    iput p4, p0, Landroidx/camera/core/ImageSaver;->mJpegQuality:I

    .line 86
    iput-object p7, p0, Landroidx/camera/core/ImageSaver;->mCallback:Landroidx/camera/core/ImageSaver$OnImageSavedCallback;

    .line 87
    iput-object p5, p0, Landroidx/camera/core/ImageSaver;->mUserCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 88
    iput-object p6, p0, Landroidx/camera/core/ImageSaver;->mSequentialIoExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private copyTempFileToOutputStream(Ljava/io/File;Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x400

    :try_start_7
    new-array p1, p1, [B

    .line 322
    :goto_9
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_14

    const/4 v2, 0x0

    .line 323
    invoke-virtual {p2, p1, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_18

    goto :goto_9

    .line 325
    :cond_14
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_18
    move-exception p1

    .line 319
    :try_start_19
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_21

    :catchall_1d
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_21
    throw p1
.end method

.method private copyTempFileToUri(Ljava/io/File;Landroid/net/Uri;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    iget-object v0, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    .line 307
    invoke-virtual {v0}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p2

    if-nez p2, :cond_13

    const/4 p1, 0x0

    if-eqz p2, :cond_12

    .line 313
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    :cond_12
    return p1

    .line 312
    :cond_13
    :try_start_13
    invoke-direct {p0, p1, p2}, Landroidx/camera/core/ImageSaver;->copyTempFileToOutputStream(Ljava/io/File;Ljava/io/OutputStream;)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_1b

    .line 313
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    const/4 p1, 0x1

    return p1

    :catchall_1b
    move-exception p1

    .line 306
    :try_start_1c
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_24
    throw p1
.end method

.method private imageToJpegByteArray(Landroidx/camera/core/ImageProxy;I)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException;
        }
    .end annotation

    .line 187
    invoke-static {p1}, Landroidx/camera/core/internal/utils/ImageUtil;->shouldCropImage(Landroidx/camera/core/ImageProxy;)Z

    move-result v0

    .line 188
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getFormat()I

    move-result v1

    const/16 v2, 0x100

    if-ne v1, v2, :cond_1c

    if-nez v0, :cond_13

    .line 194
    invoke-static {p1}, Landroidx/camera/core/internal/utils/ImageUtil;->jpegImageToJpegByteArray(Landroidx/camera/core/ImageProxy;)[B

    move-result-object p1

    return-object p1

    .line 196
    :cond_13
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroidx/camera/core/internal/utils/ImageUtil;->jpegImageToJpegByteArray(Landroidx/camera/core/ImageProxy;Landroid/graphics/Rect;I)[B

    move-result-object p1

    return-object p1

    :cond_1c
    const/16 v2, 0x23

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2c

    if-eqz v0, :cond_27

    .line 199
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getCropRect()Landroid/graphics/Rect;

    move-result-object v3

    :cond_27
    invoke-static {p1, v3, p2}, Landroidx/camera/core/internal/utils/ImageUtil;->yuvImageToJpegByteArray(Landroidx/camera/core/ImageProxy;Landroid/graphics/Rect;I)[B

    move-result-object p1

    return-object p1

    .line 202
    :cond_2c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unrecognized image format: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ImageSaver"

    invoke-static {p2, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private isSaveToFile()Z
    .registers 2

    .line 275
    iget-object v0, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {v0}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private isSaveToMediaStore()Z
    .registers 2

    .line 269
    iget-object v0, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {v0}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getSaveCollection()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    .line 270
    invoke-virtual {v0}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    .line 271
    invoke-virtual {v0}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method private isSaveToOutputStream()Z
    .registers 2

    .line 279
    iget-object v0, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {v0}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private synthetic lambda$postError$2(Landroidx/camera/core/ImageSaver$SaveError;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 342
    iget-object v0, p0, Landroidx/camera/core/ImageSaver;->mCallback:Landroidx/camera/core/ImageSaver$OnImageSavedCallback;

    invoke-interface {v0, p1, p2, p3}, Landroidx/camera/core/ImageSaver$OnImageSavedCallback;->onError(Landroidx/camera/core/ImageSaver$SaveError;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$postSuccess$1(Landroid/net/Uri;)V
    .registers 4

    .line 331
    iget-object v0, p0, Landroidx/camera/core/ImageSaver;->mCallback:Landroidx/camera/core/ImageSaver$OnImageSavedCallback;

    new-instance v1, Landroidx/camera/core/ImageCapture$OutputFileResults;

    invoke-direct {v1, p1}, Landroidx/camera/core/ImageCapture$OutputFileResults;-><init>(Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Landroidx/camera/core/ImageSaver$OnImageSavedCallback;->onImageSaved(Landroidx/camera/core/ImageCapture$OutputFileResults;)V

    return-void
.end method

.method private synthetic lambda$run$0(Ljava/io/File;)V
    .registers 2

    .line 99
    invoke-virtual {p0, p1}, Landroidx/camera/core/ImageSaver;->copyTempFileToDestination(Ljava/io/File;)V

    return-void
.end method

.method private postError(Landroidx/camera/core/ImageSaver$SaveError;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .line 342
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/ImageSaver;->mUserCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/core/ImageSaver$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/camera/core/ImageSaver$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/core/ImageSaver;Landroidx/camera/core/ImageSaver$SaveError;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_a
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_12

    :catch_b
    const-string p1, "ImageSaver"

    const-string p2, "Application executor rejected executing OnImageSavedCallback.onError callback. Skipping."

    .line 344
    invoke-static {p1, p2}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_12
    return-void
.end method

.method private postSuccess(Landroid/net/Uri;)V
    .registers 4

    .line 330
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/ImageSaver;->mUserCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/core/ImageSaver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroidx/camera/core/ImageSaver$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/core/ImageSaver;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_a
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_12

    :catch_b
    const-string p1, "ImageSaver"

    const-string v0, "Application executor rejected executing OnImageSavedCallback.onImageSaved callback. Skipping."

    .line 333
    invoke-static {p1, v0}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_12
    return-void
.end method

.method private saveImageToTempFile()Ljava/io/File;
    .registers 8

    const/4 v0, 0x0

    .line 112
    :try_start_1
    invoke-direct {p0}, Landroidx/camera/core/ImageSaver;->isSaveToFile()Z

    move-result v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5} :catch_ed

    const-string v2, ".tmp"

    const-string v3, "CameraX"

    if-eqz v1, :cond_35

    .line 114
    :try_start_b
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {v4}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    .line 117
    :cond_35
    invoke-static {v3, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_39} :catch_ed

    .line 127
    :goto_39
    :try_start_39
    iget-object v2, p0, Landroidx/camera/core/ImageSaver;->mImage:Landroidx/camera/core/ImageProxy;
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3b} :catch_de
    .catch Ljava/lang/IllegalArgumentException; {:try_start_39 .. :try_end_3b} :catch_dc
    .catch Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException; {:try_start_39 .. :try_end_3b} :catch_ba

    .line 128
    :try_start_3b
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_ae

    .line 129
    :try_start_40
    iget-object v4, p0, Landroidx/camera/core/ImageSaver;->mImage:Landroidx/camera/core/ImageProxy;

    iget v5, p0, Landroidx/camera/core/ImageSaver;->mJpegQuality:I

    invoke-direct {p0, v4, v5}, Landroidx/camera/core/ImageSaver;->imageToJpegByteArray(Landroidx/camera/core/ImageProxy;I)[B

    move-result-object v4

    .line 130
    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 133
    invoke-static {v1}, Landroidx/camera/core/impl/utils/Exif;->createFromFile(Ljava/io/File;)Landroidx/camera/core/impl/utils/Exif;

    move-result-object v4

    .line 134
    iget-object v5, p0, Landroidx/camera/core/ImageSaver;->mImage:Landroidx/camera/core/ImageProxy;

    invoke-static {v5}, Landroidx/camera/core/impl/utils/Exif;->createFromImageProxy(Landroidx/camera/core/ImageProxy;)Landroidx/camera/core/impl/utils/Exif;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/camera/core/impl/utils/Exif;->copyToCroppedImage(Landroidx/camera/core/impl/utils/Exif;)V

    .line 137
    new-instance v5, Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;

    invoke-direct {v5}, Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;-><init>()V

    iget-object v6, p0, Landroidx/camera/core/ImageSaver;->mImage:Landroidx/camera/core/ImageProxy;

    invoke-virtual {v5, v6}, Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;->shouldUseExifOrientation(Landroidx/camera/core/ImageProxy;)Z

    move-result v5

    if-nez v5, :cond_6a

    .line 138
    iget v5, p0, Landroidx/camera/core/ImageSaver;->mOrientation:I

    invoke-virtual {v4, v5}, Landroidx/camera/core/impl/utils/Exif;->rotate(I)V

    .line 142
    :cond_6a
    iget-object v5, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {v5}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getMetadata()Landroidx/camera/core/ImageCapture$Metadata;

    move-result-object v5

    .line 143
    invoke-virtual {v5}, Landroidx/camera/core/ImageCapture$Metadata;->isReversedHorizontal()Z

    move-result v6

    if-eqz v6, :cond_79

    .line 144
    invoke-virtual {v4}, Landroidx/camera/core/impl/utils/Exif;->flipHorizontally()V

    .line 146
    :cond_79
    invoke-virtual {v5}, Landroidx/camera/core/ImageCapture$Metadata;->isReversedVertical()Z

    move-result v6

    if-eqz v6, :cond_82

    .line 147
    invoke-virtual {v4}, Landroidx/camera/core/impl/utils/Exif;->flipVertically()V

    .line 149
    :cond_82
    invoke-virtual {v5}, Landroidx/camera/core/ImageCapture$Metadata;->getLocation()Landroid/location/Location;

    move-result-object v5

    if-eqz v5, :cond_95

    .line 150
    iget-object v5, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {v5}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getMetadata()Landroidx/camera/core/ImageCapture$Metadata;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/camera/core/ImageCapture$Metadata;->getLocation()Landroid/location/Location;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/camera/core/impl/utils/Exif;->attachLocation(Landroid/location/Location;)V

    .line 153
    :cond_95
    invoke-virtual {v4}, Landroidx/camera/core/impl/utils/Exif;->save()V
    :try_end_98
    .catchall {:try_start_40 .. :try_end_98} :catchall_a4

    .line 154
    :try_start_98
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_ae

    if-eqz v2, :cond_a0

    :try_start_9d
    invoke-interface {v2}, Landroidx/camera/core/ImageProxy;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_de
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9d .. :try_end_a0} :catch_dc
    .catch Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException; {:try_start_9d .. :try_end_a0} :catch_ba

    :cond_a0
    move-object v2, v0

    move-object v3, v2

    move-object v4, v3

    goto :goto_e3

    :catchall_a4
    move-exception v4

    .line 127
    :try_start_a5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_a9

    goto :goto_ad

    :catchall_a9
    move-exception v3

    :try_start_aa
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_ad
    throw v4
    :try_end_ae
    .catchall {:try_start_aa .. :try_end_ae} :catchall_ae

    :catchall_ae
    move-exception v3

    if-eqz v2, :cond_b9

    :try_start_b1
    invoke-interface {v2}, Landroidx/camera/core/ImageProxy;->close()V
    :try_end_b4
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_b5

    goto :goto_b9

    :catchall_b5
    move-exception v2

    :try_start_b6
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b9
    :goto_b9
    throw v3
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_ba} :catch_de
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b6 .. :try_end_ba} :catch_dc
    .catch Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException; {:try_start_b6 .. :try_end_ba} :catch_ba

    :catch_ba
    move-exception v2

    .line 159
    sget-object v3, Landroidx/camera/core/ImageSaver$1;->$SwitchMap$androidx$camera$core$internal$utils$ImageUtil$CodecFailedException$FailureType:[I

    invoke-virtual {v2}, Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException;->getFailureType()Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException$FailureType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_d7

    const/4 v4, 0x2

    if-eq v3, v4, :cond_d2

    .line 170
    sget-object v3, Landroidx/camera/core/ImageSaver$SaveError;->UNKNOWN:Landroidx/camera/core/ImageSaver$SaveError;

    const-string v4, "Failed to transcode mImage"

    goto :goto_e3

    .line 165
    :cond_d2
    sget-object v3, Landroidx/camera/core/ImageSaver$SaveError;->CROP_FAILED:Landroidx/camera/core/ImageSaver$SaveError;

    const-string v4, "Failed to crop mImage"

    goto :goto_e3

    .line 161
    :cond_d7
    sget-object v3, Landroidx/camera/core/ImageSaver$SaveError;->ENCODE_FAILED:Landroidx/camera/core/ImageSaver$SaveError;

    const-string v4, "Failed to encode mImage"

    goto :goto_e3

    :catch_dc
    move-exception v2

    goto :goto_df

    :catch_de
    move-exception v2

    .line 155
    :goto_df
    sget-object v3, Landroidx/camera/core/ImageSaver$SaveError;->FILE_IO_FAILED:Landroidx/camera/core/ImageSaver$SaveError;

    const-string v4, "Failed to write temp file"

    :goto_e3
    if-eqz v3, :cond_ec

    .line 177
    invoke-direct {p0, v3, v4, v2}, Landroidx/camera/core/ImageSaver;->postError(Landroidx/camera/core/ImageSaver$SaveError;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    return-object v0

    :cond_ec
    return-object v1

    :catch_ed
    move-exception v1

    .line 120
    sget-object v2, Landroidx/camera/core/ImageSaver$SaveError;->FILE_IO_FAILED:Landroidx/camera/core/ImageSaver$SaveError;

    const-string v3, "Failed to create temp file"

    invoke-direct {p0, v2, v3, v1}, Landroidx/camera/core/ImageSaver;->postError(Landroidx/camera/core/ImageSaver$SaveError;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private setContentValuePending(Landroid/content/ContentValues;I)V
    .registers 5

    .line 295
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_f

    .line 296
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "is_pending"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_f
    return-void
.end method

.method private setUriNotPending(Landroid/net/Uri;)V
    .registers 5

    .line 286
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_19

    .line 287
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    .line 288
    invoke-direct {p0, v0, v1}, Landroidx/camera/core/ImageSaver;->setContentValuePending(Landroid/content/ContentValues;I)V

    .line 289
    iget-object v1, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {v1}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_19
    return-void
.end method


# virtual methods
.method copyTempFileToDestination(Ljava/io/File;)V
    .registers 7

    .line 214
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 220
    :try_start_4
    invoke-direct {p0}, Landroidx/camera/core/ImageSaver;->isSaveToMediaStore()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 221
    iget-object v1, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {v1}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getContentValues()Landroid/content/ContentValues;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 222
    new-instance v1, Landroid/content/ContentValues;

    iget-object v2, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {v2}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    goto :goto_23

    .line 223
    :cond_1e
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    :goto_23
    const/4 v2, 0x1

    .line 224
    invoke-direct {p0, v1, v2}, Landroidx/camera/core/ImageSaver;->setContentValuePending(Landroid/content/ContentValues;I)V

    .line 225
    iget-object v2, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {v2}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    .line 226
    invoke-virtual {v3}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getSaveCollection()Landroid/net/Uri;

    move-result-object v3

    .line 225
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_37} :catch_93
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_37} :catch_91
    .catchall {:try_start_4 .. :try_end_37} :catchall_8f

    if-nez v1, :cond_3f

    .line 229
    :try_start_39
    sget-object v2, Landroidx/camera/core/ImageSaver$SaveError;->FILE_IO_FAILED:Landroidx/camera/core/ImageSaver$SaveError;

    const-string v3, "Failed to insert URI."

    goto/16 :goto_9b

    .line 232
    :cond_3f
    invoke-direct {p0, p1, v1}, Landroidx/camera/core/ImageSaver;->copyTempFileToUri(Ljava/io/File;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 233
    sget-object v2, Landroidx/camera/core/ImageSaver$SaveError;->FILE_IO_FAILED:Landroidx/camera/core/ImageSaver$SaveError;

    const-string v3, "Failed to save to URI."

    goto :goto_4c

    :cond_4a
    move-object v2, v0

    move-object v3, v2

    .line 236
    :goto_4c
    invoke-direct {p0, v1}, Landroidx/camera/core/ImageSaver;->setUriNotPending(Landroid/net/Uri;)V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_4f} :catch_52
    .catch Ljava/lang/IllegalArgumentException; {:try_start_39 .. :try_end_4f} :catch_50
    .catchall {:try_start_39 .. :try_end_4f} :catchall_8f

    goto :goto_9b

    :catch_50
    move-exception v0

    goto :goto_97

    :catch_52
    move-exception v0

    goto :goto_97

    .line 238
    :cond_54
    :try_start_54
    invoke-direct {p0}, Landroidx/camera/core/ImageSaver;->isSaveToOutputStream()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 239
    iget-object v1, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {v1}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Landroidx/camera/core/ImageSaver;->copyTempFileToOutputStream(Ljava/io/File;Ljava/io/OutputStream;)V

    goto :goto_8b

    .line 240
    :cond_64
    invoke-direct {p0}, Landroidx/camera/core/ImageSaver;->isSaveToFile()Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 241
    iget-object v1, p0, Landroidx/camera/core/ImageSaver;->mOutputFileOptions:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {v1}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getFile()Ljava/io/File;

    move-result-object v1

    .line 245
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_79

    .line 246
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 248
    :cond_79
    invoke-virtual {p1, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_84

    .line 249
    sget-object v2, Landroidx/camera/core/ImageSaver$SaveError;->FILE_IO_FAILED:Landroidx/camera/core/ImageSaver$SaveError;

    const-string v3, "Failed to rename file."

    goto :goto_86

    :cond_84
    move-object v2, v0

    move-object v3, v2

    .line 252
    :goto_86
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_8a} :catch_93
    .catch Ljava/lang/IllegalArgumentException; {:try_start_54 .. :try_end_8a} :catch_91
    .catchall {:try_start_54 .. :try_end_8a} :catchall_8f

    goto :goto_9b

    :cond_8b
    :goto_8b
    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    goto :goto_9b

    :catchall_8f
    move-exception v0

    goto :goto_a8

    :catch_91
    move-exception v1

    goto :goto_94

    :catch_93
    move-exception v1

    :goto_94
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 255
    :goto_97
    :try_start_97
    sget-object v2, Landroidx/camera/core/ImageSaver$SaveError;->FILE_IO_FAILED:Landroidx/camera/core/ImageSaver$SaveError;

    const-string v3, "Failed to write destination file."
    :try_end_9b
    .catchall {:try_start_97 .. :try_end_9b} :catchall_8f

    .line 259
    :goto_9b
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    if-eqz v2, :cond_a4

    .line 262
    invoke-direct {p0, v2, v3, v0}, Landroidx/camera/core/ImageSaver;->postError(Landroidx/camera/core/ImageSaver$SaveError;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a7

    .line 264
    :cond_a4
    invoke-direct {p0, v1}, Landroidx/camera/core/ImageSaver;->postSuccess(Landroid/net/Uri;)V

    :goto_a7
    return-void

    .line 259
    :goto_a8
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 260
    throw v0
.end method

.method public run()V
    .registers 4

    .line 95
    invoke-direct {p0}, Landroidx/camera/core/ImageSaver;->saveImageToTempFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 99
    iget-object v1, p0, Landroidx/camera/core/ImageSaver;->mSequentialIoExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/camera/core/ImageSaver$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Landroidx/camera/core/ImageSaver$$ExternalSyntheticLambda2;-><init>(Landroidx/camera/core/ImageSaver;Ljava/io/File;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_10
    return-void
.end method
