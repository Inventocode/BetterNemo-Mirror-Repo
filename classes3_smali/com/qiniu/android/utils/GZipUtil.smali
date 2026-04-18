.class public Lcom/qiniu/android/utils/GZipUtil;
.super Ljava/lang/Object;
.source "GZipUtil.java"


# direct methods
.method public static gZip([B)[B
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 22
    :cond_4
    array-length v1, p0

    if-nez v1, :cond_8

    return-object p0

    .line 26
    :cond_8
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 29
    :try_start_d
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_25
    .catchall {:try_start_d .. :try_end_12} :catchall_1e

    .line 30
    :try_start_12
    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_1c
    .catchall {:try_start_12 .. :try_end_15} :catchall_19

    .line 35
    :try_start_15
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_2b

    goto :goto_2b

    :catchall_19
    move-exception p0

    move-object v0, v2

    goto :goto_1f

    :catch_1c
    move-object v0, v2

    goto :goto_26

    :catchall_1e
    move-exception p0

    :goto_1f
    if-eqz v0, :cond_24

    :try_start_21
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_24

    .line 39
    :catch_24
    :cond_24
    throw p0

    :catch_25
    nop

    :goto_26
    if-eqz v0, :cond_2b

    .line 35
    :try_start_28
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2b

    .line 41
    :catch_2b
    :cond_2b
    :goto_2b
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
