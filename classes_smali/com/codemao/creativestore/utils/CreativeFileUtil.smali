.class public Lcom/codemao/creativestore/utils/CreativeFileUtil;
.super Ljava/lang/Object;
.source "CreativeFileUtil.java"


# direct methods
.method public static declared-synchronized copyFile(Ljava/io/File;Ljava/io/File;)V
    .registers 10

    const-class v0, Lcom/codemao/creativestore/utils/CreativeFileUtil;

    monitor-enter v0

    .line 85
    :try_start_3
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 86
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 87
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 89
    :cond_1a
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_23

    .line 90
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 92
    :cond_23
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 93
    new-instance p0, Ljava/io/BufferedInputStream;

    invoke-direct {p0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 94
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 95
    new-instance p1, Ljava/io/BufferedOutputStream;

    invoke-direct {p1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 97
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 98
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    const/16 v5, 0x1000

    .line 99
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 101
    :goto_45
    invoke-virtual {v4, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_56

    .line 102
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 103
    invoke-virtual {v3, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 104
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_45

    .line 106
    :cond_56
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 107
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V

    .line 108
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V

    .line 109
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 110
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 111
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 112
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6b} :catch_6e
    .catchall {:try_start_3 .. :try_end_6b} :catchall_6c

    goto :goto_72

    :catchall_6c
    move-exception p0

    goto :goto_74

    :catch_6e
    move-exception p0

    .line 114
    :try_start_6f
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_6c

    .line 116
    :goto_72
    monitor-exit v0

    return-void

    :goto_74
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

    .line 57
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_41

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 60
    array-length v1, v0

    :goto_11
    if-ge v2, v1, :cond_70

    aget-object v3, v0, v2

    .line 61
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

    invoke-static {v4, v3, p2}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->copyFiles(Ljava/lang/String;Ljava/lang/String;Z)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 64
    :cond_41
    invoke-static {p1}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->createNewFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 65
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 66
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 69
    :goto_53
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5e

    .line 70
    invoke-virtual {v1, v3, v2, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_53

    .line 72
    :cond_5e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 73
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 74
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    if-eqz p2, :cond_70

    .line 76
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/io/File;->setLastModified(J)Z

    :cond_70
    const/4 p0, 0x1

    return p0
.end method

.method public static copyFilesAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 123
    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_3d

    .line 124
    array-length v1, v0

    :goto_d
    if-ge v2, v1, :cond_66

    aget-object v3, v0, v2

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v4, v3}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->copyFilesAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 128
    :cond_3d
    invoke-static {p2}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->createNewFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 130
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p2, 0x400

    new-array p2, p2, [B

    .line 133
    :goto_52
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5d

    .line 134
    invoke-virtual {p1, p2, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_52

    .line 136
    :cond_5d
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 137
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 138
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    :cond_66
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

    .line 268
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 269
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 270
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 271
    invoke-static {v1, p0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->createNewFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

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

    .line 275
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_e

    .line 277
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 279
    :cond_e
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1c

    .line 281
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 283
    :cond_1c
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    return-object v0
.end method

.method public static deleteDirectory(Ljava/lang/String;)V
    .registers 6

    .line 208
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 210
    :cond_17
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_51

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_29

    goto :goto_51

    .line 218
    :cond_29
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 219
    array-length v1, p0

    const/4 v2, 0x0

    :goto_2f
    if-ge v2, v1, :cond_4d

    aget-object v3, p0, v2

    .line 221
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 222
    invoke-static {v3}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->deleteFile(Ljava/io/File;)V

    goto :goto_4a

    .line 225
    :cond_3d
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 226
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->deleteDirectory(Ljava/lang/String;)V

    :cond_4a
    :goto_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 229
    :cond_4d
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    :cond_51
    :goto_51
    const-string/jumbo p0, "删除失败"

    .line 213
    invoke-static {p0}, Lcom/codemao/creativestore/utils/CreativeLoggerUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static deleteFile(Ljava/io/File;)V
    .registers 5

    if-eqz p0, :cond_22

    .line 233
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_22

    .line 236
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 237
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_1f

    aget-object v3, v0, v2

    .line 238
    invoke-static {v3}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->deleteFile(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 241
    :cond_1f
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_22
    :goto_22
    return-void
.end method

.method public static deleteFile(Ljava/lang/String;)V
    .registers 2

    .line 203
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->deleteFile(Ljava/io/File;)V

    return-void
.end method

.method private static getStringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 340
    :try_start_6
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_10} :catch_2a
    .catchall {:try_start_6 .. :try_end_10} :catchall_23

    .line 341
    :goto_10
    :try_start_10
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 342
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_19} :catch_21
    .catchall {:try_start_10 .. :try_end_19} :catchall_1e

    goto :goto_10

    .line 348
    :cond_1a
    :try_start_1a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_30

    goto :goto_30

    :catchall_1e
    move-exception p0

    move-object v1, v2

    goto :goto_24

    :catch_21
    move-object v1, v2

    goto :goto_2b

    :catchall_23
    move-exception p0

    :goto_24
    if-eqz v1, :cond_29

    :try_start_26
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_29

    .line 352
    :catch_29
    :cond_29
    throw p0

    :catch_2a
    nop

    :goto_2b
    if-eqz v1, :cond_30

    .line 348
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_30

    .line 353
    :catch_30
    :cond_30
    :goto_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static moveFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 357
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_12

    const-string/jumbo p0, "源文件不存在"

    .line 359
    invoke-static {p0}, Lcom/codemao/creativestore/utils/CreativeLoggerUtil;->d(Ljava/lang/String;)V

    return-void

    .line 362
    :cond_12
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 364
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 366
    :cond_20
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_2c

    const-string/jumbo p0, "移动失败"

    .line 368
    invoke-static {p0}, Lcom/codemao/creativestore/utils/CreativeLoggerUtil;->d(Ljava/lang/String;)V

    :cond_2c
    return-void
.end method

.method public static moveThemeMaterial(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 373
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_12

    const-string/jumbo p0, "源文件不存在"

    .line 375
    invoke-static {p0}, Lcom/codemao/creativestore/utils/CreativeLoggerUtil;->d(Ljava/lang/String;)V

    return-void

    .line 378
    :cond_12
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 381
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 383
    :cond_20
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_31

    .line 384
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 386
    :cond_31
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_3d

    const-string/jumbo p0, "移动失败"

    .line 388
    invoke-static {p0}, Lcom/codemao/creativestore/utils/CreativeLoggerUtil;->d(Ljava/lang/String;)V

    :cond_3d
    return-void
.end method

.method public static orderByDate([Ljava/io/File;)V
    .registers 2

    .line 413
    new-instance v0, Lcom/codemao/creativestore/utils/CreativeFileUtil$1;

    invoke-direct {v0}, Lcom/codemao/creativestore/utils/CreativeFileUtil$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method

.method public static orderByListPostion(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/ThemeMaterialListItem;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/ThemeMaterialListItem;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_30

    if-nez p1, :cond_5

    goto :goto_30

    .line 435
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_12

    goto :goto_30

    .line 438
    :cond_12
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    .line 439
    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    new-instance v2, Lcom/codemao/creativestore/utils/CreativeFileUtil$2;

    invoke-direct {v2, p1}, Lcom/codemao/creativestore/utils/CreativeFileUtil$2;-><init>(Ljava/util/List;)V

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 456
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 457
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_30
    :goto_30
    return-object p0
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

    .line 160
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->parse(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

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

    .line 164
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    .line 165
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 166
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 167
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 168
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

    .line 144
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->parse(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parseBcm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
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

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 151
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p1

    new-array p1, p1, [B

    .line 152
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    .line 153
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 154
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 155
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0, v0, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parseThemeMaterail(Ljava/io/File;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 172
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 173
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result p0

    new-array p0, p0, [B

    .line 174
    invoke-virtual {v0, p0}, Ljava/io/InputStream;->read([B)I

    .line 175
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    .line 176
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 177
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static readAssertResource(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 315
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 319
    :try_start_5
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 320
    invoke-static {v0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->getStringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_d} :catch_1a
    .catchall {:try_start_5 .. :try_end_d} :catchall_18

    if-eqz v0, :cond_2a

    .line 326
    :try_start_f
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_13

    goto :goto_2a

    :catch_13
    move-exception p1

    .line 328
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2a

    :catchall_18
    move-exception p0

    goto :goto_2b

    :catch_1a
    move-exception p0

    .line 322
    :try_start_1b
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_18

    if-eqz v0, :cond_28

    .line 326
    :try_start_20
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_28

    :catch_24
    move-exception p0

    .line 328
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_28
    :goto_28
    const-string p0, ""

    :cond_2a
    :goto_2a
    return-object p0

    :goto_2b
    if-eqz v0, :cond_35

    .line 326
    :try_start_2d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    move-exception p1

    .line 328
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 331
    :cond_35
    :goto_35
    throw p0
.end method

.method public static readFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 245
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 247
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 249
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x400

    new-array p0, p0, [B

    .line 251
    :goto_19
    invoke-virtual {v1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2a

    .line 252
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_19

    .line 254
    :cond_2a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 256
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static saveImageToGallery2(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z
    .registers 4

    .line 462
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 463
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 465
    :try_start_8
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1, p2}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 466
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_14} :catch_17

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catch_17
    move-exception p0

    .line 468
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static writeToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    invoke-static {p0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->createNewFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 182
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 183
    new-instance p0, Ljava/io/OutputStreamWriter;

    const-string v1, "utf-8"

    invoke-direct {p0, v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Ljava/io/OutputStreamWriter;->close()V

    .line 186
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method
