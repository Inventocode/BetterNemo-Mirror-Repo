.class public Lcom/unikuwei/mianmi/account/shield/e/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/io/File;)V
    .registers 5

    if-eqz p0, :cond_21

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_1e

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/unikuwei/mianmi/account/shield/e/b;->a(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_1e
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_21
    return-void
.end method

.method public static a([BLjava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_2d
    .catchall {:try_start_1 .. :try_end_b} :catchall_2a

    :try_start_b
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_28
    .catchall {:try_start_b .. :try_end_10} :catchall_47

    :try_start_10
    invoke-virtual {v1, p0}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_16} :catch_25
    .catchall {:try_start_10 .. :try_end_16} :catchall_22

    :try_start_16
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1e
    :try_start_1e
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_42

    goto :goto_46

    :catchall_22
    move-exception p0

    move-object v0, v1

    goto :goto_48

    :catch_25
    move-exception p0

    move-object v0, v1

    goto :goto_2f

    :catch_28
    move-exception p0

    goto :goto_2f

    :catchall_2a
    move-exception p0

    move-object p1, v0

    goto :goto_48

    :catch_2d
    move-exception p0

    move-object p1, v0

    :goto_2f
    :try_start_2f
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_47

    if-eqz v0, :cond_3c

    :try_start_34
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_3c

    :catch_38
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3c
    :goto_3c
    if-eqz p1, :cond_46

    :try_start_3e
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_46

    :catch_42
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_46
    :goto_46
    return-void

    :catchall_47
    move-exception p0

    :goto_48
    if-eqz v0, :cond_52

    :try_start_4a
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_52

    :catch_4e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_52
    :goto_52
    if-eqz p1, :cond_5c

    :try_start_54
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_5c

    :catch_58
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_5c
    :goto_5c
    throw p0
.end method

.method public static a(Ljava/io/InputStream;)[B
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x2000

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_8} :catch_4c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_37
    .catchall {:try_start_1 .. :try_end_8} :catchall_32

    :try_start_8
    new-array v2, v2, [B

    :goto_a
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_16

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_a

    :cond_16
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_1d} :catch_30
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1d} :catch_2e
    .catchall {:try_start_8 .. :try_end_1d} :catchall_61

    :try_start_1d
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_25

    :catch_21
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_25
    :try_start_25
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_60

    :catch_29
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_60

    :catch_2e
    move-exception v2

    goto :goto_39

    :catch_30
    move-exception v2

    goto :goto_4e

    :catchall_32
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_62

    :catch_37
    move-exception v2

    move-object v1, v0

    :goto_39
    :try_start_39
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_61

    if-eqz p0, :cond_46

    :try_start_3e
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_46

    :catch_42
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_46
    :goto_46
    if-eqz v1, :cond_60

    :try_start_48
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_29

    goto :goto_60

    :catch_4c
    move-exception v2

    move-object v1, v0

    :goto_4e
    :try_start_4e
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_61

    if-eqz p0, :cond_5b

    :try_start_53
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_5b

    :catch_57
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5b
    :goto_5b
    if-eqz v1, :cond_60

    :try_start_5d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_29

    :cond_60
    :goto_60
    return-object v0

    :catchall_61
    move-exception v0

    :goto_62
    if-eqz p0, :cond_6c

    :try_start_64
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_6c

    :catch_68
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_6c
    :goto_6c
    if-eqz v1, :cond_76

    :try_start_6e
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_76

    :catch_72
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_76
    :goto_76
    throw v0
.end method
