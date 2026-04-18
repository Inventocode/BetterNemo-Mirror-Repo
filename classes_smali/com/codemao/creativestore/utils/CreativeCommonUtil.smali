.class public Lcom/codemao/creativestore/utils/CreativeCommonUtil;
.super Ljava/lang/Object;
.source "CreativeCommonUtil.java"


# direct methods
.method public static convertNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 30
    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "1"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const-string v0, "E"

    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "."

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v2, v5, :cond_4d

    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 34
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 35
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 37
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 38
    new-instance v0, Ljava/math/BigDecimal;

    const-string v5, "10"

    invoke-direct {v0, v5}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 39
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 40
    :goto_3b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_48

    .line 41
    invoke-virtual {v5, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 43
    :cond_48
    invoke-virtual {v2, v5}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_53

    .line 45
    :cond_4d
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    .line 48
    :goto_53
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 49
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 50
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fileToBase64(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 55
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 62
    :cond_8
    :try_start_8
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_28
    .catchall {:try_start_8 .. :try_end_d} :catchall_26

    .line 64
    :try_start_d
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result p0

    new-array p0, p0, [B

    .line 66
    invoke-virtual {v0, p0}, Ljava/io/InputStream;->read([B)I

    const/4 v2, 0x0

    .line 68
    invoke-static {p0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1b} :catch_24
    .catchall {:try_start_d .. :try_end_1b} :catchall_33

    .line 74
    :try_start_1b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_1f

    goto :goto_32

    :catch_1f
    move-exception p0

    .line 76
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_32

    :catch_24
    move-exception p0

    goto :goto_2a

    :catchall_26
    move-exception p0

    goto :goto_35

    :catch_28
    move-exception p0

    move-object v0, v1

    .line 70
    :goto_2a
    :try_start_2a
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_33

    if-eqz v0, :cond_32

    .line 74
    :try_start_2f
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_1f

    :cond_32
    :goto_32
    return-object v1

    :catchall_33
    move-exception p0

    move-object v1, v0

    :goto_35
    if-eqz v1, :cond_3f

    :try_start_37
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_3f

    :catch_3b
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 80
    :cond_3f
    :goto_3f
    throw p0
.end method
