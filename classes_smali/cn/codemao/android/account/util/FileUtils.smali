.class public Lcn/codemao/android/account/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byte2File([BLjava/io/File;)V
    .registers 4

    const/4 v0, 0x0

    .line 22
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_25
    .catchall {:try_start_1 .. :try_end_6} :catchall_22

    .line 23
    :try_start_6
    new-instance p1, Ljava/io/BufferedOutputStream;

    invoke-direct {p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_20
    .catchall {:try_start_6 .. :try_end_b} :catchall_3f

    .line 24
    :try_start_b
    invoke-virtual {p1, p0}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_1d
    .catchall {:try_start_b .. :try_end_e} :catchall_1a

    .line 30
    :try_start_e
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception p0

    .line 32
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 37
    :goto_16
    :try_start_16
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_3a

    goto :goto_3e

    :catchall_1a
    move-exception p0

    move-object v0, p1

    goto :goto_40

    :catch_1d
    move-exception p0

    move-object v0, p1

    goto :goto_27

    :catch_20
    move-exception p0

    goto :goto_27

    :catchall_22
    move-exception p0

    move-object v1, v0

    goto :goto_40

    :catch_25
    move-exception p0

    move-object v1, v0

    .line 26
    :goto_27
    :try_start_27
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_3f

    if-eqz v0, :cond_34

    .line 30
    :try_start_2c
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_34

    :catch_30
    move-exception p0

    .line 32
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_34
    :goto_34
    if-eqz v1, :cond_3e

    .line 37
    :try_start_36
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_3e

    :catch_3a
    move-exception p0

    .line 39
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3e
    :goto_3e
    return-void

    :catchall_3f
    move-exception p0

    :goto_40
    if-eqz v0, :cond_4a

    .line 30
    :try_start_42
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_4a

    :catch_46
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4a
    :goto_4a
    if-eqz v1, :cond_54

    .line 37
    :try_start_4c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_54

    :catch_50
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 42
    :cond_54
    :goto_54
    throw p0
.end method

.method public static checkDir(Ljava/io/File;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 95
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_e

    .line 97
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    :cond_e
    return v0
.end method

.method public static varargs checkDirs([Ljava/io/File;)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    .line 86
    :cond_3
    array-length v0, p0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_f

    aget-object v2, p0, v1

    .line 87
    invoke-static {v2}, Lcn/codemao/android/account/util/FileUtils;->checkDir(Ljava/io/File;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_f
    return-void
.end method

.method public static varargs close([Ljava/io/Closeable;)V
    .registers 4

    if-eqz p0, :cond_1a

    .line 103
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_1a

    .line 106
    :cond_6
    array-length v0, p0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_1a

    aget-object v2, p0, v1

    if-nez v2, :cond_f

    goto :goto_17

    .line 111
    :cond_f
    :try_start_f
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception v2

    .line 113
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1a
    :goto_1a
    return-void
.end method

.method public static createNewFile(Ljava/io/File;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/File;

    .line 73
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Lcn/codemao/android/account/util/FileUtils;->checkDirs([Ljava/io/File;)V

    .line 75
    :try_start_10
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result p0
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_14} :catch_15

    return p0

    :catch_15
    move-exception p0

    .line 77
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v0
.end method

.method public static file2byte(Ljava/lang/String;)[B
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 50
    :try_start_4
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_e} :catch_54
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_e} :catch_44
    .catchall {:try_start_4 .. :try_end_e} :catchall_3f

    .line 52
    :try_start_e
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_13} :catch_3c
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_39
    .catchall {:try_start_e .. :try_end_13} :catchall_34

    const/16 v5, 0x400

    :try_start_15
    new-array v5, v5, [B

    .line 55
    :goto_17
    invoke-virtual {p0, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_22

    .line 56
    invoke-virtual {v4, v5, v3, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_17

    .line 58
    :cond_22
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_26} :catch_32
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_26} :catch_30
    .catchall {:try_start_15 .. :try_end_26} :catchall_64

    new-array v2, v2, [Ljava/io/Closeable;

    aput-object p0, v2, v3

    aput-object v4, v2, v1

    .line 64
    invoke-static {v2}, Lcn/codemao/android/account/util/FileUtils;->close([Ljava/io/Closeable;)V

    goto :goto_63

    :catch_30
    move-exception v5

    goto :goto_47

    :catch_32
    move-exception v5

    goto :goto_57

    :catchall_34
    move-exception v4

    move-object v8, v4

    move-object v4, v0

    move-object v0, v8

    goto :goto_65

    :catch_39
    move-exception v5

    move-object v4, v0

    goto :goto_47

    :catch_3c
    move-exception v5

    move-object v4, v0

    goto :goto_57

    :catchall_3f
    move-exception p0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_65

    :catch_44
    move-exception v5

    move-object p0, v0

    move-object v4, p0

    .line 62
    :goto_47
    :try_start_47
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_64

    new-array v2, v2, [Ljava/io/Closeable;

    aput-object p0, v2, v3

    aput-object v4, v2, v1

    .line 64
    invoke-static {v2}, Lcn/codemao/android/account/util/FileUtils;->close([Ljava/io/Closeable;)V

    goto :goto_63

    :catch_54
    move-exception v5

    move-object p0, v0

    move-object v4, p0

    .line 60
    :goto_57
    :try_start_57
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_64

    new-array v2, v2, [Ljava/io/Closeable;

    aput-object p0, v2, v3

    aput-object v4, v2, v1

    .line 64
    invoke-static {v2}, Lcn/codemao/android/account/util/FileUtils;->close([Ljava/io/Closeable;)V

    :goto_63
    return-object v0

    :catchall_64
    move-exception v0

    :goto_65
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object p0, v2, v3

    aput-object v4, v2, v1

    invoke-static {v2}, Lcn/codemao/android/account/util/FileUtils;->close([Ljava/io/Closeable;)V

    .line 65
    throw v0
.end method
