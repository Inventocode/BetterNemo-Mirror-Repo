.class public Lcom/giu/xzz/utils/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# direct methods
.method public static declared-synchronized copyFile(Ljava/io/File;Ljava/io/File;)V
    .registers 10

    const-class v0, Lcom/giu/xzz/utils/FileUtil;

    monitor-enter v0

    .line 296
    :try_start_3
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 297
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 298
    new-instance p0, Ljava/io/BufferedInputStream;

    invoke-direct {p0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 299
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 300
    new-instance p1, Ljava/io/BufferedOutputStream;

    invoke-direct {p1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 302
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 303
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    const/16 v5, 0x1000

    .line 304
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 306
    :goto_28
    invoke-virtual {v4, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_39

    .line 307
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 308
    invoke-virtual {v3, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 309
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_28

    .line 311
    :cond_39
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 312
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V

    .line 313
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V

    .line 314
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 315
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 316
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 317
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_4e} :catch_51
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4f

    goto :goto_55

    :catchall_4f
    move-exception p0

    goto :goto_57

    :catch_51
    move-exception p0

    .line 319
    :try_start_52
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_4f

    .line 321
    :goto_55
    monitor-exit v0

    return-void

    :goto_57
    monitor-exit v0

    throw p0
.end method

.method public static copyFiles(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 267
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_41

    .line 269
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 270
    array-length v1, v0

    :goto_11
    if-ge v2, v1, :cond_70

    aget-object v3, v0, v2

    .line 271
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, p2}, Lcom/giu/xzz/utils/FileUtil;->copyFiles(Ljava/lang/String;Ljava/lang/String;Z)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 274
    :cond_41
    invoke-static {p1}, Lcom/giu/xzz/utils/FileUtil;->createNewFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 275
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 276
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 279
    :goto_53
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5e

    .line 280
    invoke-virtual {v1, v3, v2, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_53

    .line 282
    :cond_5e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 283
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 284
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    if-eqz p2, :cond_70

    .line 286
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/io/File;->setLastModified(J)Z

    :cond_70
    const/4 p0, 0x1

    return p0
.end method

.method public static createNewFile(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "/"

    .line 509
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 510
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 511
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 512
    invoke-static {v1, p0}, Lcom/giu/xzz/utils/FileUtil;->createNewFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static createNewFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 516
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 517
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_e

    .line 518
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 520
    :cond_e
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1c

    .line 522
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 524
    :cond_1c
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    return-object v0
.end method

.method public static createTmpFile(Landroid/content/Context;)Ljava/io/File;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3b

    .line 154
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3f

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Camera"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3f

    .line 158
    invoke-static {p0, v1}, Lcom/giu/xzz/utils/FileUtil;->getCacheDirectory(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v0

    goto :goto_3f

    .line 162
    :cond_3b
    invoke-static {p0, v1}, Lcom/giu/xzz/utils/FileUtil;->getCacheDirectory(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v0

    :cond_3f
    :goto_3f
    const-string p0, "IMG_"

    const-string v1, ".jpg"

    .line 164
    invoke-static {p0, v1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static deleteDirectory(Ljava/lang/String;)V
    .registers 6

    .line 445
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 447
    :cond_17
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_51

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_29

    goto :goto_51

    .line 455
    :cond_29
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 456
    array-length v1, p0

    const/4 v2, 0x0

    :goto_2f
    if-ge v2, v1, :cond_4d

    aget-object v3, p0, v2

    .line 458
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 459
    invoke-static {v3}, Lcom/giu/xzz/utils/FileUtil;->deleteFile(Ljava/io/File;)V

    goto :goto_4a

    .line 462
    :cond_3d
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 463
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/giu/xzz/utils/FileUtil;->deleteDirectory(Ljava/lang/String;)V

    :cond_4a
    :goto_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 466
    :cond_4d
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    :cond_51
    :goto_51
    const-string p0, "删除失败"

    .line 450
    invoke-static {p0}, Lcom/giu/xzz/utils/Logger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static deleteFile(Ljava/io/File;)V
    .registers 5

    if-eqz p0, :cond_24

    .line 470
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_24

    .line 473
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 474
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 476
    array-length v1, v0

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_21

    aget-object v3, v0, v2

    .line 477
    invoke-static {v3}, Lcom/giu/xzz/utils/FileUtil;->deleteFile(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 482
    :cond_21
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_24
    :goto_24
    return-void
.end method

.method public static deleteFile(Ljava/lang/String;)V
    .registers 2

    .line 440
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/giu/xzz/utils/FileUtil;->deleteFile(Ljava/io/File;)V

    return-void
.end method

.method public static getCacheDirectory(Landroid/content/Context;Z)Ljava/io/File;
    .registers 3

    const-string v0, ""

    .line 198
    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_6} :catch_7
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_2 .. :try_end_6} :catch_7

    goto :goto_8

    :catch_7
    nop

    :goto_8
    if-eqz p1, :cond_1d

    const-string p1, "mounted"

    .line 204
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-static {p0}, Lcom/giu/xzz/utils/FileUtil;->hasExternalStoragePermission(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 205
    invoke-static {p0}, Lcom/giu/xzz/utils/FileUtil;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    if-nez p1, :cond_24

    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    :cond_24
    if-nez p1, :cond_45

    .line 211
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/data/data/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/cache/"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 212
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_45
    return-object p1
.end method

.method private static getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .registers 5

    .line 238
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "data"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 239
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p0, "cache"

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 240
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_3a

    .line 241
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_30

    const/4 p0, 0x0

    return-object p0

    .line 245
    :cond_30
    :try_start_30
    new-instance p0, Ljava/io/File;

    const-string v0, ".nomedia"

    invoke-direct {p0, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_3a} :catch_3a

    :catch_3a
    :cond_3a
    return-object v1
.end method

.method private static hasExternalStoragePermission(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 253
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static move(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 529
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 530
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 531
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_11

    return-void

    .line 534
    :cond_11
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 535
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 537
    :cond_1a
    new-instance p0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 538
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_40

    .line 539
    invoke-static {p0}, Lcom/giu/xzz/utils/FileUtil;->deleteFile(Ljava/io/File;)V

    .line 541
    :cond_40
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    return-void
.end method

.method public static parse(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 365
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lcom/giu/xzz/utils/FileUtil;->parse(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 369
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    .line 370
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 371
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 372
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 373
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0, v1, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 349
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/giu/xzz/utils/FileUtil;->parse(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static writeToFile(Ljava/lang/String;Ljava/io/InputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    invoke-static {p0}, Lcom/giu/xzz/utils/FileUtil;->createNewFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 380
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_23

    .line 381
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 382
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 384
    :cond_1b
    :try_start_1b
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception v0

    .line 386
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_23
    :goto_23
    const/4 v0, 0x0

    .line 391
    :try_start_24
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2e} :catch_52
    .catchall {:try_start_24 .. :try_end_2e} :catchall_50

    const/16 p0, 0x2000

    :try_start_30
    new-array v0, p0, [B

    :goto_32
    const/4 v2, 0x0

    .line 394
    invoke-virtual {p1, v0, v2, p0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3e

    .line 395
    invoke-virtual {v1, v0, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_3d} :catch_4d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_4a

    goto :goto_32

    .line 403
    :cond_3e
    :try_start_3e
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_46

    :catch_42
    move-exception p0

    .line 405
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 409
    :goto_46
    :try_start_46
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_64

    goto :goto_68

    :catchall_4a
    move-exception p0

    move-object v0, v1

    goto :goto_69

    :catch_4d
    move-exception p0

    move-object v0, v1

    goto :goto_53

    :catchall_50
    move-exception p0

    goto :goto_69

    :catch_52
    move-exception p0

    .line 400
    :goto_53
    :try_start_53
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_50

    .line 403
    :try_start_56
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_5e

    :catch_5a
    move-exception p0

    .line 405
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_5e
    if-eqz v0, :cond_68

    .line 409
    :try_start_60
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_68

    :catch_64
    move-exception p0

    .line 412
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_68
    :goto_68
    return-void

    .line 403
    :goto_69
    :try_start_69
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_71

    :catch_6d
    move-exception p1

    .line 405
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_71
    if-eqz v0, :cond_7b

    .line 409
    :try_start_73
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77

    goto :goto_7b

    :catch_77
    move-exception p1

    .line 412
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 414
    :cond_7b
    :goto_7b
    throw p0
.end method

.method public static writeToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 418
    invoke-static {p0}, Lcom/giu/xzz/utils/FileUtil;->createNewFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 419
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 420
    new-instance p0, Ljava/io/OutputStreamWriter;

    const-string v1, "utf-8"

    invoke-direct {p0, v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 421
    invoke-virtual {p0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p0}, Ljava/io/OutputStreamWriter;->close()V

    .line 423
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method
