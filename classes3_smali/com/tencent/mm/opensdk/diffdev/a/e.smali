.class public final Lcom/tencent/mm/opensdk/diffdev/a/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)[B
    .registers 10

    const-string v0, "httpGet ex:"

    const-string v1, "MicroMsg.SDK.NetUtil"

    const/4 v2, 0x0

    if-eqz p0, :cond_150

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_f

    goto/16 :goto_150

    :cond_f
    :try_start_f
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_1a
    .catch Ljava/net/MalformedURLException; {:try_start_f .. :try_end_1a} :catch_10f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1a} :catch_e4
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1a} :catch_b9
    .catchall {:try_start_f .. :try_end_1a} :catchall_b4

    if-nez p0, :cond_27

    :try_start_1c
    const-string v3, "open connection failed."

    invoke-static {v1, v3}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/net/MalformedURLException; {:try_start_1c .. :try_end_21} :catch_b0
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_21} :catch_ad
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_21} :catch_aa
    .catchall {:try_start_1c .. :try_end_21} :catchall_a5

    if-eqz p0, :cond_26

    :try_start_23
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_26

    :catchall_26
    :cond_26
    return-object v2

    :cond_27
    :try_start_27
    const-string v3, "GET"

    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const v3, 0xea60

    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0x12c

    if-lt v3, v4, :cond_46

    const-string v3, "httpURLConnectionGet 300"

    invoke-static {v1, v3}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/net/MalformedURLException; {:try_start_27 .. :try_end_42} :catch_b0
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_42} :catch_ad
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_42} :catch_aa
    .catchall {:try_start_27 .. :try_end_42} :catchall_a5

    :try_start_42
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_45

    :catchall_45
    return-object v2

    :cond_46
    :try_start_46
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_4a
    .catch Ljava/net/MalformedURLException; {:try_start_46 .. :try_end_4a} :catch_b0
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4a} :catch_ad
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4a} :catch_aa
    .catchall {:try_start_46 .. :try_end_4a} :catchall_a5

    :try_start_4a
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4f
    .catch Ljava/net/MalformedURLException; {:try_start_4a .. :try_end_4f} :catch_9e
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4f} :catch_98
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4f} :catch_92
    .catchall {:try_start_4a .. :try_end_4f} :catchall_8d

    const/16 v5, 0x400

    :try_start_51
    new-array v5, v5, [B

    :goto_53
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5f

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_53

    :cond_5f
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const-string v6, "httpGet end"

    invoke-static {v1, v6}, Lcom/tencent/mm/opensdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/net/MalformedURLException; {:try_start_51 .. :try_end_68} :catch_86
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_68} :catch_7f
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_68} :catch_78
    .catchall {:try_start_51 .. :try_end_68} :catchall_72

    :try_start_68
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_6b

    :catchall_6b
    :try_start_6b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_6e

    :catchall_6e
    :try_start_6e
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_71

    :catchall_71
    return-object v5

    :catchall_72
    move-exception v0

    move-object v2, p0

    move-object v5, v4

    move-object v4, v3

    goto/16 :goto_13c

    :catch_78
    move-exception v5

    move-object v8, v4

    move-object v4, v3

    move-object v3, v5

    move-object v5, v8

    goto/16 :goto_bd

    :catch_7f
    move-exception v5

    move-object v8, v4

    move-object v4, v3

    move-object v3, v5

    move-object v5, v8

    goto/16 :goto_e8

    :catch_86
    move-exception v5

    move-object v8, v4

    move-object v4, v3

    move-object v3, v5

    move-object v5, v8

    goto/16 :goto_113

    :catchall_8d
    move-exception v0

    move-object v5, v2

    move-object v4, v3

    goto/16 :goto_13b

    :catch_92
    move-exception v4

    move-object v5, v2

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    goto :goto_bd

    :catch_98
    move-exception v4

    move-object v5, v2

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    goto :goto_e8

    :catch_9e
    move-exception v4

    move-object v5, v2

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    goto/16 :goto_113

    :catchall_a5
    move-exception v0

    move-object v4, v2

    move-object v5, v4

    goto/16 :goto_13b

    :catch_aa
    move-exception v3

    move-object v4, v2

    goto :goto_bc

    :catch_ad
    move-exception v3

    move-object v4, v2

    goto :goto_e7

    :catch_b0
    move-exception v3

    move-object v4, v2

    goto/16 :goto_112

    :catchall_b4
    move-exception v0

    move-object v4, v2

    move-object v5, v4

    goto/16 :goto_13c

    :catch_b9
    move-exception v3

    move-object p0, v2

    move-object v4, p0

    :goto_bc
    move-object v5, v4

    :goto_bd
    :try_start_bd
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d0
    .catchall {:try_start_bd .. :try_end_d0} :catchall_13a

    if-eqz p0, :cond_d7

    :try_start_d2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_d6

    goto :goto_d7

    :catchall_d6
    nop

    :cond_d7
    :goto_d7
    if-eqz v4, :cond_de

    :try_start_d9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_dc
    .catchall {:try_start_d9 .. :try_end_dc} :catchall_dd

    goto :goto_de

    :catchall_dd
    nop

    :cond_de
    :goto_de
    if-eqz v5, :cond_e3

    :try_start_e0
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e3
    .catchall {:try_start_e0 .. :try_end_e3} :catchall_e3

    :catchall_e3
    :cond_e3
    return-object v2

    :catch_e4
    move-exception v3

    move-object p0, v2

    move-object v4, p0

    :goto_e7
    move-object v5, v4

    :goto_e8
    :try_start_e8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_fb
    .catchall {:try_start_e8 .. :try_end_fb} :catchall_13a

    if-eqz p0, :cond_102

    :try_start_fd
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_100
    .catchall {:try_start_fd .. :try_end_100} :catchall_101

    goto :goto_102

    :catchall_101
    nop

    :cond_102
    :goto_102
    if-eqz v4, :cond_109

    :try_start_104
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_107
    .catchall {:try_start_104 .. :try_end_107} :catchall_108

    goto :goto_109

    :catchall_108
    nop

    :cond_109
    :goto_109
    if-eqz v5, :cond_10e

    :try_start_10b
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_10e
    .catchall {:try_start_10b .. :try_end_10e} :catchall_10e

    :catchall_10e
    :cond_10e
    return-object v2

    :catch_10f
    move-exception v3

    move-object p0, v2

    move-object v4, p0

    :goto_112
    move-object v5, v4

    :goto_113
    :try_start_113
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_126
    .catchall {:try_start_113 .. :try_end_126} :catchall_13a

    if-eqz p0, :cond_12d

    :try_start_128
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_12b
    .catchall {:try_start_128 .. :try_end_12b} :catchall_12c

    goto :goto_12d

    :catchall_12c
    nop

    :cond_12d
    :goto_12d
    if-eqz v4, :cond_134

    :try_start_12f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_132
    .catchall {:try_start_12f .. :try_end_132} :catchall_133

    goto :goto_134

    :catchall_133
    nop

    :cond_134
    :goto_134
    if-eqz v5, :cond_139

    :try_start_136
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_139
    .catchall {:try_start_136 .. :try_end_139} :catchall_139

    :catchall_139
    :cond_139
    return-object v2

    :catchall_13a
    move-exception v0

    :goto_13b
    move-object v2, p0

    :goto_13c
    if-eqz v2, :cond_143

    :try_start_13e
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_141
    .catchall {:try_start_13e .. :try_end_141} :catchall_142

    goto :goto_143

    :catchall_142
    nop

    :cond_143
    :goto_143
    if-eqz v4, :cond_14a

    :try_start_145
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_148
    .catchall {:try_start_145 .. :try_end_148} :catchall_149

    goto :goto_14a

    :catchall_149
    nop

    :cond_14a
    :goto_14a
    if-eqz v5, :cond_14f

    :try_start_14c
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_14f
    .catchall {:try_start_14c .. :try_end_14f} :catchall_14f

    :catchall_14f
    :cond_14f
    throw v0

    :cond_150
    :goto_150
    const-string p0, "httpGet, url is null"

    invoke-static {v1, p0}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
