.class public Lcom/codemao/nemo/util/CommonUtil;
.super Ljava/lang/Object;
.source "CommonUtil.java"


# direct methods
.method public static convertBlock(I)I
    .registers 5

    int-to-double v0, p0

    .line 40
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x3fe999999999999aL  # 0.8

    mul-double v0, v0, v2

    double-to-int p0, v0

    return p0
.end method

.method public static convertNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 67
    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "1"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const-string v0, "E"

    .line 69
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "."

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v2, v5, :cond_4d

    .line 70
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 71
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 72
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 74
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 75
    new-instance v0, Ljava/math/BigDecimal;

    const-string v5, "10"

    invoke-direct {v0, v5}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 76
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 77
    :goto_3b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_48

    .line 78
    invoke-virtual {v5, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 80
    :cond_48
    invoke-virtual {v2, v5}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_53

    .line 82
    :cond_4d
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    .line 85
    :goto_53
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 86
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 87
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertRole(I)I
    .registers 5

    const/4 v0, 0x4

    if-le p0, v0, :cond_d

    const-wide/high16 v0, 0x4000000000000000L  # 2.0

    int-to-double v2, p0

    .line 31
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double v2, v2, v0

    double-to-int p0, v2

    :cond_d
    return p0
.end method

.method public static encodeBase64File(ZLjava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_f

    .line 46
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    goto :goto_19

    .line 48
    :cond_f
    new-instance p0, Ljava/io/FileInputStream;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 50
    :goto_19
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 51
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    :goto_28
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 54
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_28

    .line 56
    :cond_32
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 57
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getResourceArray(Landroid/content/Context;I)[I
    .registers 6

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 130
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result p1

    .line 131
    new-array v0, p1, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, p1, :cond_1b

    .line 133
    invoke-virtual {p0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 135
    :cond_1b
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method public static imageToBase64(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 92
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 99
    :cond_8
    :try_start_8
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_28
    .catchall {:try_start_8 .. :try_end_d} :catchall_26

    .line 101
    :try_start_d
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result p0

    new-array p0, p0, [B

    .line 103
    invoke-virtual {v0, p0}, Ljava/io/InputStream;->read([B)I

    const/4 v2, 0x0

    .line 105
    invoke-static {p0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1b} :catch_24
    .catchall {:try_start_d .. :try_end_1b} :catchall_33

    .line 111
    :try_start_1b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_1f

    goto :goto_32

    :catch_1f
    move-exception p0

    .line 113
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

    .line 107
    :goto_2a
    :try_start_2a
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_33

    if-eqz v0, :cond_32

    .line 111
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

    .line 113
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 117
    :cond_3f
    :goto_3f
    throw p0
.end method
