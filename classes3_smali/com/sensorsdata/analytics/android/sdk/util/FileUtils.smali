.class public Lcom/sensorsdata/analytics/android/sdk/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFileToString(Ljava/io/File;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    .line 52
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_66

    .line 54
    :try_start_b
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_3a
    .catchall {:try_start_b .. :try_end_10} :catchall_37

    const/16 v2, 0x400

    :try_start_12
    new-array v3, v2, [B

    :goto_14
    const/4 v4, 0x0

    .line 57
    invoke-virtual {v1, v3, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_20

    .line 58
    invoke-virtual {p0, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_14

    .line 60
    :cond_20
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_24} :catch_35
    .catchall {:try_start_12 .. :try_end_24} :catchall_52

    .line 66
    :try_start_24
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_28
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_66

    goto :goto_2c

    :catch_28
    move-exception v1

    .line 68
    :try_start_29
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_66

    .line 72
    :goto_2c
    :try_start_2c
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_66

    goto :goto_34

    :catch_30
    move-exception p0

    .line 75
    :try_start_31
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_66

    :goto_34
    return-object v2

    :catch_35
    move-exception v2

    goto :goto_3c

    :catchall_37
    move-exception v2

    move-object p0, v0

    goto :goto_53

    :catch_3a
    move-exception v2

    move-object p0, v0

    .line 62
    :goto_3c
    :try_start_3c
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_52

    .line 66
    :try_start_3f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_66

    goto :goto_47

    :catch_43
    move-exception v1

    .line 68
    :try_start_44
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_66

    :goto_47
    if-eqz p0, :cond_51

    .line 72
    :try_start_49
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_66

    goto :goto_51

    :catch_4d
    move-exception p0

    .line 75
    :try_start_4e
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_66

    :cond_51
    :goto_51
    return-object v0

    :catchall_52
    move-exception v2

    .line 66
    :goto_53
    :try_start_53
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_66

    goto :goto_5b

    :catch_57
    move-exception v1

    .line 68
    :try_start_58
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_66

    :goto_5b
    if-eqz p0, :cond_65

    .line 72
    :try_start_5d
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_61
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_66

    goto :goto_65

    :catch_61
    move-exception p0

    .line 75
    :try_start_62
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 77
    :cond_65
    :goto_65
    throw v2
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_66} :catch_66

    :catch_66
    move-exception p0

    .line 79
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static writeToFile(Ljava/io/File;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 34
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_19
    .catchall {:try_start_1 .. :try_end_6} :catchall_17

    .line 35
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_14
    .catchall {:try_start_6 .. :try_end_d} :catchall_11

    .line 41
    :try_start_d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_23

    goto :goto_27

    :catchall_11
    move-exception p0

    move-object v0, v1

    goto :goto_28

    :catch_14
    move-exception p0

    move-object v0, v1

    goto :goto_1a

    :catchall_17
    move-exception p0

    goto :goto_28

    :catch_19
    move-exception p0

    .line 37
    :goto_1a
    :try_start_1a
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_17

    if-eqz v0, :cond_27

    .line 41
    :try_start_1f
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception p0

    .line 43
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_27
    :goto_27
    return-void

    :goto_28
    if-eqz v0, :cond_32

    .line 41
    :try_start_2a
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_32

    :catch_2e
    move-exception p1

    .line 43
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 46
    :cond_32
    :goto_32
    throw p0
.end method
