.class public Lcom/tencent/smtt/utils/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/smtt/utils/f$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Ljava/util/Map;[BLcom/tencent/smtt/utils/f$a;Z)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Lcom/tencent/smtt/utils/f$a;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return-object v0

    :cond_4
    invoke-static {p0, p1}, Lcom/tencent/smtt/utils/f;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object p0

    if-eqz p0, :cond_18

    if-eqz p4, :cond_10

    invoke-static {p0, p2}, Lcom/tencent/smtt/utils/f;->a(Ljava/net/HttpURLConnection;[B)V

    goto :goto_13

    :cond_10
    invoke-static {p0, p2}, Lcom/tencent/smtt/utils/f;->b(Ljava/net/HttpURLConnection;[B)V

    :goto_13
    const/4 p1, 0x0

    invoke-static {p0, p3, p1}, Lcom/tencent/smtt/utils/f;->a(Ljava/net/HttpURLConnection;Lcom/tencent/smtt/utils/f$a;Z)Ljava/lang/String;

    move-result-object v0

    :cond_18
    return-object v0
.end method

.method public static a(Ljava/lang/String;[BLcom/tencent/smtt/utils/f$a;Z)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    if-eqz p3, :cond_c

    :try_start_3
    invoke-static {}, Lcom/tencent/smtt/utils/h;->a()Lcom/tencent/smtt/utils/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/h;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    :cond_c
    invoke-static {}, Lcom/tencent/smtt/utils/g;->a()Lcom/tencent/smtt/utils/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/g;->b()Ljava/lang/String;

    move-result-object v1

    :goto_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_23} :catch_62

    if-eqz p3, :cond_2e

    :try_start_25
    invoke-static {}, Lcom/tencent/smtt/utils/h;->a()Lcom/tencent/smtt/utils/h;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/smtt/utils/h;->a([B)[B

    move-result-object p1

    goto :goto_3b

    :cond_2e
    invoke-static {}, Lcom/tencent/smtt/utils/g;->a()Lcom/tencent/smtt/utils/g;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/smtt/utils/g;->a([B)[B

    move-result-object p1
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_36} :catch_37

    goto :goto_3b

    :catch_37
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3b
    if-nez p1, :cond_3e

    return-object v0

    :cond_3e
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v2, p1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Content-Length"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v1}, Lcom/tencent/smtt/utils/f;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object p0

    if-eqz p0, :cond_61

    invoke-static {p0, p1}, Lcom/tencent/smtt/utils/f;->b(Ljava/net/HttpURLConnection;[B)V

    invoke-static {p0, p2, p3}, Lcom/tencent/smtt/utils/f;->a(Ljava/net/HttpURLConnection;Lcom/tencent/smtt/utils/f$a;Z)Ljava/lang/String;

    move-result-object v0

    :cond_61
    return-object v0

    :catch_62
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private static a(Ljava/net/HttpURLConnection;Lcom/tencent/smtt/utils/f$a;Z)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    if-eqz p1, :cond_a

    invoke-interface {p1, v1}, Lcom/tencent/smtt/utils/f$a;->a(I)V

    :cond_a
    const/16 p1, 0xc8

    if-ne v1, p1, :cond_7d

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_27

    const-string v1, "gzip"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    new-instance p0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_25
    move-object p1, p0

    goto :goto_3d

    :cond_27
    if-eqz p0, :cond_3d

    const-string v1, "deflate"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3d

    new-instance p0, Ljava/util/zip/InflaterInputStream;

    new-instance v1, Ljava/util/zip/Inflater;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p0, p1, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_87

    goto :goto_25

    :cond_3d
    :goto_3d
    :try_start_3d
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_79

    const/16 v1, 0x80

    :try_start_44
    new-array v1, v1, [B

    :goto_46
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_52

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_46

    :cond_52
    if-eqz p2, :cond_61

    new-instance p2, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "utf-8"

    invoke-direct {p2, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_5f
    move-object v0, p1

    goto :goto_7f

    :cond_61
    new-instance p2, Ljava/lang/String;

    invoke-static {}, Lcom/tencent/smtt/utils/g;->a()Lcom/tencent/smtt/utils/g;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/utils/g;->c([B)[B

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_72
    .catchall {:try_start_44 .. :try_end_72} :catchall_73

    goto :goto_5f

    :catchall_73
    move-exception p2

    move-object v4, p1

    move-object p1, p0

    move-object p0, p2

    move-object p2, v4

    goto :goto_8a

    :catchall_79
    move-exception p0

    move-object p2, p1

    move-object p1, v0

    goto :goto_8a

    :cond_7d
    move-object p0, v0

    move-object p2, p0

    :goto_7f
    invoke-static {v0}, Lcom/tencent/smtt/utils/f;->a(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcom/tencent/smtt/utils/f;->a(Ljava/io/Closeable;)V

    move-object v0, p2

    goto :goto_93

    :catchall_87
    move-exception p0

    move-object p1, v0

    move-object p2, p1

    :goto_8a
    :try_start_8a
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_94

    invoke-static {p2}, Lcom/tencent/smtt/utils/f;->a(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/tencent/smtt/utils/f;->a(Ljava/io/Closeable;)V

    :goto_93
    return-object v0

    :catchall_94
    move-exception p0

    invoke-static {p2}, Lcom/tencent/smtt/utils/f;->a(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/tencent/smtt/utils/f;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_5b

    :try_start_c
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_58

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/16 v0, 0x4e20

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-le v0, v1, :cond_2c

    const-string v0, "Connection"

    const-string v1, "close"

    goto :goto_30

    :cond_2c
    const-string v0, "http.keepAlive"

    const-string v1, "false"

    :goto_30
    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    :cond_57
    return-object p0

    :catch_58
    move-exception p1

    move-object v0, p0

    goto :goto_5c

    :catch_5b
    move-exception p1

    :goto_5c
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private static a(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;[B)V
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    const v3, 0x32000

    invoke-direct {v2, p0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_1e
    .catchall {:try_start_1 .. :try_end_12} :catchall_1b

    :try_start_12
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_18} :catch_19
    .catchall {:try_start_12 .. :try_end_18} :catchall_2a

    goto :goto_23

    :catch_19
    move-exception p0

    goto :goto_20

    :catchall_1b
    move-exception p0

    move-object v1, v0

    goto :goto_2b

    :catch_1e
    move-exception p0

    move-object v1, v0

    :goto_20
    :try_start_20
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_2a

    :goto_23
    invoke-static {v0}, Lcom/tencent/smtt/utils/f;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/tencent/smtt/utils/f;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_2a
    move-exception p0

    :goto_2b
    invoke-static {v0}, Lcom/tencent/smtt/utils/f;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/tencent/smtt/utils/f;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method private static b(Ljava/net/HttpURLConnection;[B)V
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_e
    .catchall {:try_start_1 .. :try_end_b} :catchall_c

    goto :goto_12

    :catchall_c
    move-exception p0

    goto :goto_16

    :catch_e
    move-exception p0

    :try_start_f
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_c

    :goto_12
    invoke-static {v0}, Lcom/tencent/smtt/utils/f;->a(Ljava/io/Closeable;)V

    return-void

    :goto_16
    invoke-static {v0}, Lcom/tencent/smtt/utils/f;->a(Ljava/io/Closeable;)V

    throw p0
.end method
