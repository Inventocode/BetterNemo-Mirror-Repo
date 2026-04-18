.class public Lcom/sdk/c/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/net/HttpURLConnection;Lcom/sdk/c/b;Ljava/lang/String;ZLjava/lang/String;)Ljava/io/File;
    .registers 23

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    return-object v3

    :cond_c
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2a

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_27

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-eqz v4, :cond_2a

    :cond_27
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    :cond_2a
    const-wide/16 v4, 0x0

    if-eqz p4, :cond_39

    :try_start_2e
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v6, v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    goto :goto_3e

    :cond_39
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    :goto_3e
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v7, v0

    add-long v15, v7, v4

    new-instance v14, Ljava/io/BufferedInputStream;

    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v14, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4e
    .catchall {:try_start_2e .. :try_end_4e} :catchall_ab

    :try_start_4e
    new-instance v13, Ljava/io/BufferedOutputStream;

    invoke-direct {v13, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_53
    .catchall {:try_start_4e .. :try_end_53} :catchall_a6

    const/4 v12, 0x1

    move-object/from16 v0, p2

    check-cast v0, Lcom/sdk/a/c;

    move-object v7, v0

    move-wide v8, v15

    move-wide v10, v4

    :try_start_5b
    invoke-virtual/range {v7 .. v12}, Lcom/sdk/a/c;->a(JJZ)Z

    move-result v3
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_a2

    if-nez v3, :cond_68

    :try_start_61
    invoke-virtual {v14}, Ljava/io/BufferedInputStream;->close()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_64

    :catchall_64
    :try_start_64
    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_67

    :catchall_67
    return-object v2

    :cond_68
    const/16 v3, 0x1000

    :try_start_6a
    new-array v3, v3, [B

    :goto_6c
    invoke-virtual {v14, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_90

    const/4 v7, 0x0

    invoke-virtual {v13, v3, v7, v6}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_77
    .catchall {:try_start_6a .. :try_end_77} :catchall_a2

    int-to-long v6, v6

    add-long/2addr v4, v6

    const/4 v6, 0x0

    move-object v9, v0

    move-wide v10, v15

    move-object v7, v13

    move-wide v12, v4

    move-object v8, v14

    move v14, v6

    :try_start_80
    invoke-virtual/range {v9 .. v14}, Lcom/sdk/a/c;->a(JJZ)Z

    move-result v6
    :try_end_84
    .catchall {:try_start_80 .. :try_end_84} :catchall_a0

    if-nez v6, :cond_8d

    :try_start_86
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_89

    :catchall_89
    :try_start_89
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_8c

    :catchall_8c
    return-object v2

    :cond_8d
    move-object v13, v7

    move-object v14, v8

    goto :goto_6c

    :cond_90
    move-object v7, v13

    move-object v8, v14

    :try_start_92
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    const/4 v14, 0x1

    move-object v9, v0

    move-wide v10, v15

    move-wide v12, v4

    invoke-virtual/range {v9 .. v14}, Lcom/sdk/a/c;->a(JJZ)Z
    :try_end_9c
    .catchall {:try_start_92 .. :try_end_9c} :catchall_a0

    :try_start_9c
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9f
    .catchall {:try_start_9c .. :try_end_9f} :catchall_b9

    goto :goto_b9

    :catchall_a0
    move-exception v0

    goto :goto_a9

    :catchall_a2
    move-exception v0

    move-object v7, v13

    move-object v8, v14

    goto :goto_a9

    :catchall_a6
    move-exception v0

    move-object v8, v14

    move-object v7, v3

    :goto_a9
    move-object v3, v8

    goto :goto_ad

    :catchall_ab
    move-exception v0

    move-object v7, v3

    :goto_ad
    :try_start_ad
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b0
    .catchall {:try_start_ad .. :try_end_b0} :catchall_ff

    if-eqz v3, :cond_b7

    :try_start_b2
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_b6

    goto :goto_b7

    :catchall_b6
    nop

    :cond_b7
    :goto_b7
    if-eqz v7, :cond_bf

    :catchall_b9
    :goto_b9
    move-object v13, v7

    :try_start_ba
    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_bd
    .catchall {:try_start_ba .. :try_end_bd} :catchall_be

    goto :goto_bf

    :catchall_be
    nop

    :cond_bf
    :goto_bf
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_fe

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_fe

    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_f7

    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d4

    :cond_f7
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_fe

    move-object v2, v0

    :cond_fe
    return-object v2

    :catchall_ff
    move-exception v0

    move-object v1, v0

    if-eqz v3, :cond_108

    :try_start_103
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_106
    .catchall {:try_start_103 .. :try_end_106} :catchall_107

    goto :goto_108

    :catchall_107
    nop

    :cond_108
    :goto_108
    if-eqz v7, :cond_10d

    :try_start_10a
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_10d
    .catchall {:try_start_10a .. :try_end_10d} :catchall_10d

    :catchall_10d
    :cond_10d
    throw v1
.end method
