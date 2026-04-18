.class public final Lcom/meituan/android/walle/PayloadReader;
.super Ljava/lang/Object;
.source "PayloadReader.java"


# direct methods
.method public static get(Ljava/io/File;I)[B
    .registers 3

    .line 44
    invoke-static {p0}, Lcom/meituan/android/walle/PayloadReader;->getAll(Ljava/io/File;)Ljava/util/Map;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    .line 48
    :cond_8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    if-nez p0, :cond_15

    return-object v0

    .line 52
    :cond_15
    invoke-static {p0}, Lcom/meituan/android/walle/PayloadReader;->getBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object p0

    return-object p0
.end method

.method private static getAll(Ljava/io/File;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 81
    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_3a
    .catchall {:try_start_1 .. :try_end_8} :catchall_2a

    .line 82
    :try_start_8
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_c} :catch_28
    .catchall {:try_start_8 .. :try_end_c} :catchall_25

    .line 83
    :try_start_c
    invoke-static {p0}, Lcom/meituan/android/walle/ApkUtil;->findApkSigningBlock(Ljava/nio/channels/FileChannel;)Lcom/meituan/android/walle/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meituan/android/walle/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 84
    invoke-static {v2}, Lcom/meituan/android/walle/ApkUtil;->findIdValues(Ljava/nio/ByteBuffer;)Ljava/util/Map;

    move-result-object v0
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1a} :catch_3c
    .catchall {:try_start_c .. :try_end_1a} :catchall_23

    if-eqz p0, :cond_1f

    .line 89
    :try_start_1c
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_1f
    .catch Lcom/meituan/android/walle/SignatureNotFoundException; {:try_start_1c .. :try_end_1f} :catch_46

    .line 95
    :catch_1f
    :cond_1f
    :goto_1f
    :try_start_1f
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_46
    .catch Lcom/meituan/android/walle/SignatureNotFoundException; {:try_start_1f .. :try_end_22} :catch_46

    goto :goto_46

    :catchall_23
    move-exception v2

    goto :goto_2d

    :catchall_25
    move-exception v2

    move-object p0, v0

    goto :goto_2d

    :catch_28
    move-object p0, v0

    goto :goto_3c

    :catchall_2a
    move-exception v2

    move-object p0, v0

    move-object v1, p0

    :goto_2d
    if-eqz p0, :cond_34

    .line 89
    :try_start_2f
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33
    .catch Lcom/meituan/android/walle/SignatureNotFoundException; {:try_start_2f .. :try_end_32} :catch_46

    goto :goto_34

    :catch_33
    nop

    :cond_34
    :goto_34
    if-eqz v1, :cond_39

    .line 95
    :try_start_36
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_39
    .catch Lcom/meituan/android/walle/SignatureNotFoundException; {:try_start_36 .. :try_end_39} :catch_46

    .line 98
    :catch_39
    :cond_39
    :try_start_39
    throw v2
    :try_end_3a
    .catch Lcom/meituan/android/walle/SignatureNotFoundException; {:try_start_39 .. :try_end_3a} :catch_46

    :catch_3a
    move-object p0, v0

    move-object v1, p0

    :catch_3c
    :goto_3c
    if-eqz p0, :cond_43

    .line 89
    :try_start_3e
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42
    .catch Lcom/meituan/android/walle/SignatureNotFoundException; {:try_start_3e .. :try_end_41} :catch_46

    goto :goto_43

    :catch_42
    nop

    :cond_43
    :goto_43
    if-eqz v1, :cond_46

    goto :goto_1f

    :catch_46
    :cond_46
    :goto_46
    return-object v0
.end method

.method private static getBytes(Ljava/nio/ByteBuffer;)[B
    .registers 4

    .line 62
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    .line 64
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    .line 65
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    add-int/2addr v1, p0

    .line 64
    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static getString(Ljava/io/File;I)Ljava/lang/String;
    .registers 4

    .line 24
    invoke-static {p0, p1}, Lcom/meituan/android/walle/PayloadReader;->get(Ljava/io/File;I)[B

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_8

    return-object p1

    .line 29
    :cond_8
    :try_start_8
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_f} :catch_10

    return-object v0

    :catch_10
    move-exception p0

    .line 31
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    return-object p1
.end method
