.class public abstract Lcom/chuanglan/shanyan_sdk/d/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .registers 1

    return-void
.end method

.method private a(Lcom/chuanglan/shanyan_sdk/d/d;)V
    .registers 2

    return-void
.end method

.method private a(Ljava/io/InputStream;)[B
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_2a
    .catchall {:try_start_1 .. :try_end_6} :catchall_28

    const/16 v0, 0x800

    :try_start_8
    new-array v2, v0, [B

    :goto_a
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_16

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_25
    .catchall {:try_start_8 .. :try_end_15} :catchall_22

    goto :goto_a

    :cond_16
    :try_start_16
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1c} :catch_1d

    goto :goto_3c

    :catch_1d
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3c

    :catchall_22
    move-exception p1

    move-object v0, v1

    goto :goto_41

    :catch_25
    move-exception p1

    move-object v0, v1

    goto :goto_2b

    :catchall_28
    move-exception p1

    goto :goto_41

    :catch_2a
    move-exception p1

    :goto_2b
    :try_start_2b
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_28

    if-eqz v0, :cond_3b

    :try_start_30
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_36} :catch_37

    goto :goto_3b

    :catch_37
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3b
    :goto_3b
    move-object v1, v0

    :goto_3c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :goto_41
    if-eqz v0, :cond_4e

    :try_start_43
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_49} :catch_4a

    goto :goto_4e

    :catch_4a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4e
    :goto_4e
    throw p1
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public a(Ljava/net/HttpURLConnection;)V
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_39

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_39

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    new-instance v3, Lcom/chuanglan/shanyan_sdk/d/d;

    invoke-direct {v3, v1, v2}, Lcom/chuanglan/shanyan_sdk/d/d;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v3}, Lcom/chuanglan/shanyan_sdk/d/b;->a(Lcom/chuanglan/shanyan_sdk/d/d;)V

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2a} :catch_70
    .catchall {:try_start_1 .. :try_end_2a} :catchall_6e

    :try_start_2a
    invoke-direct {p0, v1}, Lcom/chuanglan/shanyan_sdk/d/b;->a(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chuanglan/shanyan_sdk/d/b;->a([B)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_31} :catch_36
    .catchall {:try_start_2a .. :try_end_31} :catchall_33

    move-object v0, v1

    goto :goto_66

    :catchall_33
    move-exception p1

    move-object v0, v1

    goto :goto_8e

    :catch_36
    move-exception p1

    move-object v0, v1

    goto :goto_71

    :cond_39
    :try_start_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad Response Code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/chuanglan/shanyan_sdk/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_66} :catch_70
    .catchall {:try_start_39 .. :try_end_66} :catchall_6e

    :goto_66
    if-eqz v0, :cond_8a

    :try_start_68
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_8a

    :catch_6c
    move-exception p1

    goto :goto_87

    :catchall_6e
    move-exception p1

    goto :goto_8e

    :catch_70
    move-exception p1

    :goto_71
    :try_start_71
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/chuanglan/shanyan_sdk/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catchall {:try_start_71 .. :try_end_80} :catchall_6e

    if-eqz v0, :cond_8a

    :try_start_82
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_8a

    :catch_86
    move-exception p1

    :goto_87
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_8a
    :goto_8a
    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/d/b;->a()V

    return-void

    :goto_8e
    if-eqz v0, :cond_98

    :try_start_90
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_94

    goto :goto_98

    :catch_94
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_98
    :goto_98
    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/d/b;->a()V

    throw p1
.end method

.method public a(Ljavax/net/ssl/HttpsURLConnection;)V
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_39

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_39

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getContentLength()I

    move-result v2

    new-instance v3, Lcom/chuanglan/shanyan_sdk/d/d;

    invoke-direct {v3, v1, v2}, Lcom/chuanglan/shanyan_sdk/d/d;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v3}, Lcom/chuanglan/shanyan_sdk/d/b;->a(Lcom/chuanglan/shanyan_sdk/d/d;)V

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2a} :catch_70
    .catchall {:try_start_1 .. :try_end_2a} :catchall_6e

    :try_start_2a
    invoke-direct {p0, v1}, Lcom/chuanglan/shanyan_sdk/d/b;->a(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chuanglan/shanyan_sdk/d/b;->a([B)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_31} :catch_36
    .catchall {:try_start_2a .. :try_end_31} :catchall_33

    move-object v0, v1

    goto :goto_66

    :catchall_33
    move-exception p1

    move-object v0, v1

    goto :goto_8e

    :catch_36
    move-exception p1

    move-object v0, v1

    goto :goto_71

    :cond_39
    :try_start_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad Response Code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/chuanglan/shanyan_sdk/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_66} :catch_70
    .catchall {:try_start_39 .. :try_end_66} :catchall_6e

    :goto_66
    if-eqz v0, :cond_8a

    :try_start_68
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_8a

    :catch_6c
    move-exception p1

    goto :goto_87

    :catchall_6e
    move-exception p1

    goto :goto_8e

    :catch_70
    move-exception p1

    :goto_71
    :try_start_71
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/chuanglan/shanyan_sdk/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catchall {:try_start_71 .. :try_end_80} :catchall_6e

    if-eqz v0, :cond_8a

    :try_start_82
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_8a

    :catch_86
    move-exception p1

    :goto_87
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_8a
    :goto_8a
    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/d/b;->a()V

    return-void

    :goto_8e
    if-eqz v0, :cond_98

    :try_start_90
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_94

    goto :goto_98

    :catch_94
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_98
    :goto_98
    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/d/b;->a()V

    throw p1
.end method

.method protected abstract a([B)V
.end method
