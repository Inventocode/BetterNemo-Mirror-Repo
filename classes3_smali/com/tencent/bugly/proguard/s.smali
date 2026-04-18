.class public final Lcom/tencent/bugly/proguard/s;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static b:Lcom/tencent/bugly/proguard/s;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/tencent/bugly/proguard/s;->a:Ljava/util/Map;

    .line 59
    iput-object p1, p0, Lcom/tencent/bugly/proguard/s;->c:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/s;
    .registers 2

    .line 69
    sget-object v0, Lcom/tencent/bugly/proguard/s;->b:Lcom/tencent/bugly/proguard/s;

    if-nez v0, :cond_b

    .line 70
    new-instance v0, Lcom/tencent/bugly/proguard/s;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/s;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/bugly/proguard/s;->b:Lcom/tencent/bugly/proguard/s;

    .line 72
    :cond_b
    sget-object p0, Lcom/tencent/bugly/proguard/s;->b:Lcom/tencent/bugly/proguard/s;

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 4

    .line 298
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->b()Ljava/net/Proxy;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 302
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->b()Ljava/net/Proxy;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    goto :goto_4f

    :cond_16
    if-eqz p0, :cond_49

    .line 303
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "wap"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_49

    const-string p0, "http.proxyHost"

    .line 304
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "http.proxyPort"

    .line 305
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 306
    new-instance v1, Ljava/net/InetSocketAddress;

    .line 307
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v1, p0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 308
    new-instance p0, Ljava/net/Proxy;

    sget-object p1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {p0, p1, v1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 309
    invoke-virtual {v0, p0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    goto :goto_4f

    .line 311
    :cond_49
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    :goto_4f
    const/16 p1, 0x7530

    .line 313
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 p1, 0x2710

    .line 314
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 p1, 0x1

    .line 315
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 316
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string p1, "POST"

    .line 317
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 318
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 320
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V
    :try_end_6c
    .catchall {:try_start_0 .. :try_end_6c} :catchall_6d

    return-object p0

    :catchall_6d
    move-exception p0

    .line 324
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_77

    .line 325
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_77
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_c

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "destUrl is null."

    .line 246
    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v0

    :cond_c
    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    .line 249
    new-instance v3, Lcom/tencent/bugly/proguard/s$1;

    invoke-direct {v3}, Lcom/tencent/bugly/proguard/s$1;-><init>()V

    aput-object v3, v2, v1

    :try_start_16
    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v0, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-static {v2}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2b} :catch_2c

    goto :goto_30

    :catch_2c
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 250
    :goto_30
    invoke-static {p3, p1}, Lcom/tencent/bugly/proguard/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1

    if-nez p1, :cond_3e

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Failed to get HttpURLConnection object."

    .line 252
    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v0

    :cond_3e
    :try_start_3e
    const-string v2, "wup_version"

    const-string v3, "3.0"

    .line 258
    invoke-virtual {p1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_97

    const-string v2, "utf-8"

    if-eqz p4, :cond_77

    .line 259
    :try_start_49
    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_77

    .line 260
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_57
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_77

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 262
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 263
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 262
    invoke-virtual {p1, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57

    :cond_77
    const-string p4, "A37"

    .line 267
    invoke-static {p3, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 266
    invoke-virtual {p1, p4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "A38"

    .line 269
    invoke-static {p3, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 268
    invoke-virtual {p1, p4, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    if-nez p2, :cond_93

    .line 275
    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_96

    .line 277
    :cond_93
    invoke-virtual {p3, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_96
    .catchall {:try_start_49 .. :try_end_96} :catchall_97

    :goto_96
    return-object p1

    :catchall_97
    move-exception p1

    .line 281
    invoke-static {p1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_a1

    .line 282
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a1
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Failed to upload, please check your network."

    .line 284
    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static a(Ljava/net/HttpURLConnection;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 184
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_3c

    .line 185
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_12

    goto :goto_3c

    .line 188
    :cond_12
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 190
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 191
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1a

    const/4 v4, 0x0

    .line 193
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :cond_3b
    return-object v0

    :cond_3c
    :goto_3c
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Ljava/net/HttpURLConnection;)[B
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 211
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_33

    .line 212
    :try_start_d
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 215
    :goto_16
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_21

    const/4 v4, 0x0

    .line 216
    invoke-virtual {p0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_16

    .line 218
    :cond_21
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 219
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_31

    .line 226
    :try_start_28
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_30

    :catchall_2c
    move-exception v0

    .line 230
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_30
    return-object p0

    :catchall_31
    move-exception p0

    goto :goto_35

    :catchall_33
    move-exception p0

    move-object v1, v0

    .line 221
    :goto_35
    :try_start_35
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 222
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_49

    :cond_3e
    if-eqz v1, :cond_48

    .line 227
    :try_start_40
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    goto :goto_48

    :catchall_44
    move-exception p0

    .line 230
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_48
    :goto_48
    return-object v0

    :catchall_49
    move-exception p0

    if-eqz v1, :cond_54

    .line 227
    :try_start_4c
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_50

    goto :goto_54

    :catchall_50
    move-exception v0

    .line 230
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 232
    :cond_54
    :goto_54
    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;[BLcom/tencent/bugly/proguard/w;Ljava/util/Map;)[B
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/tencent/bugly/proguard/w;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez p1, :cond_12

    new-array v0, v5, [Ljava/lang/Object;

    const-string v2, "Failed for no URL."

    .line 86
    invoke-static {v2, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v4

    :cond_12
    if-nez v2, :cond_17

    const-wide/16 v8, 0x0

    goto :goto_19

    .line 91
    :cond_17
    array-length v0, v2

    int-to-long v8, v0

    :goto_19
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v5

    .line 93
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v0, v11

    .line 94
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x2

    aput-object v10, v0, v12

    const/4 v10, 0x3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v0, v10

    const-string v10, "request: %s, send: %d (pid=%d | tid=%d)"

    .line 93
    invoke-static {v10, v0}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object/from16 v10, p1

    const/4 v0, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_45
    if-gtz v0, :cond_1b6

    if-gtz v13, :cond_1b6

    if-eqz v14, :cond_4e

    move v6, v0

    const/4 v14, 0x0

    goto :goto_7d

    :cond_4e
    add-int/lit8 v0, v0, 0x1

    if-le v0, v11, :cond_7c

    .line 105
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v6, "try time: "

    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 107
    new-instance v6, Ljava/util/Random;

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-direct {v6, v11, v12}, Ljava/util/Random;-><init>(J)V

    const/16 v11, 0x2710

    invoke-virtual {v6, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-long v11, v6

    const-wide/16 v18, 0x2710

    add-long v11, v11, v18

    .line 110
    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V

    :cond_7c
    move v6, v0

    .line 114
    :goto_7d
    iget-object v0, v1, Lcom/tencent/bugly/proguard/s;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_90

    new-array v0, v5, [Ljava/lang/Object;

    const-string v11, "Failed to request for network not avail"

    .line 116
    invoke-static {v11, v0}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v6

    :goto_8d
    const/4 v11, 0x1

    const/4 v12, 0x2

    goto :goto_45

    .line 120
    :cond_90
    invoke-virtual {v3, v8, v9}, Lcom/tencent/bugly/proguard/w;->a(J)V

    move-object/from16 v11, p4

    .line 122
    invoke-direct {v1, v10, v2, v0, v11}, Lcom/tencent/bugly/proguard/s;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v12

    if-eqz v12, :cond_1a1

    .line 126
    :try_start_9b
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 127
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v15, "response code "

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v15, v5, [Ljava/lang/Object;

    invoke-static {v7, v15}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/16 v7, 0xc8

    if-ne v0, v7, :cond_da

    .line 130
    invoke-static {v12}, Lcom/tencent/bugly/proguard/s;->a(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/bugly/proguard/s;->a:Ljava/util/Map;

    .line 132
    invoke-static {v12}, Lcom/tencent/bugly/proguard/s;->b(Ljava/net/HttpURLConnection;)[B

    move-result-object v7

    if-nez v7, :cond_c5

    const-wide/16 v4, 0x0

    goto :goto_c7

    .line 133
    :cond_c5
    array-length v0, v7

    int-to-long v4, v0

    :goto_c7
    invoke-virtual {v3, v4, v5}, Lcom/tencent/bugly/proguard/w;->b(J)V
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_ca} :catch_171
    .catchall {:try_start_9b .. :try_end_ca} :catchall_16e

    .line 160
    :try_start_ca
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_cd
    .catchall {:try_start_ca .. :try_end_cd} :catchall_ce

    goto :goto_d9

    :catchall_ce
    move-exception v0

    move-object v2, v0

    .line 162
    invoke-static {v2}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_d9

    .line 163
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d9
    :goto_d9
    return-object v7

    :cond_da
    const/16 v4, 0x12d

    if-eq v0, v4, :cond_ed

    const/16 v4, 0x12e

    if-eq v0, v4, :cond_ed

    const/16 v4, 0x12f

    if-eq v0, v4, :cond_ed

    const/16 v4, 0x133

    if-ne v0, v4, :cond_eb

    goto :goto_ed

    :cond_eb
    const/4 v4, 0x0

    goto :goto_ee

    :cond_ed
    :goto_ed
    const/4 v4, 0x1

    :goto_ee
    if-eqz v4, :cond_14c

    :try_start_f0
    const-string v4, "Location"

    .line 137
    invoke-virtual {v12, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_f6
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_f6} :catch_146
    .catchall {:try_start_f0 .. :try_end_f6} :catchall_16e

    if-nez v4, :cond_122

    .line 140
    :try_start_f8
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to redirect: %d"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0, v5}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_10c
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_10c} :catch_11e
    .catchall {:try_start_f8 .. :try_end_10c} :catchall_16e

    .line 141
    :try_start_10c
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_10f
    .catchall {:try_start_10c .. :try_end_10f} :catchall_111

    :cond_10f
    :goto_10f
    const/4 v2, 0x0

    goto :goto_11d

    :catchall_111
    move-exception v0

    move-object v2, v0

    .line 162
    invoke-static {v2}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_10f

    .line 163
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_10f

    :goto_11d
    return-object v2

    :catch_11e
    move-exception v0

    const/4 v7, 0x2

    const/4 v14, 0x1

    goto :goto_173

    :cond_122
    add-int/lit8 v13, v13, 0x1

    :try_start_124
    const-string v5, "redirect code: %d ,to:%s"
    :try_end_126
    .catch Ljava/io/IOException; {:try_start_124 .. :try_end_126} :catch_13f
    .catchall {:try_start_124 .. :try_end_126} :catchall_16e

    const/4 v7, 0x2

    :try_start_127
    new-array v6, v7, [Ljava/lang/Object;

    .line 147
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v10, 0x0

    aput-object v0, v6, v10
    :try_end_130
    .catch Ljava/io/IOException; {:try_start_127 .. :try_end_130} :catch_13d
    .catchall {:try_start_127 .. :try_end_130} :catchall_16e

    const/16 v18, 0x1

    :try_start_132
    aput-object v4, v6, v18

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_137
    .catch Ljava/io/IOException; {:try_start_132 .. :try_end_137} :catch_13b
    .catchall {:try_start_132 .. :try_end_137} :catchall_16e

    move-object v10, v4

    const/4 v6, 0x0

    const/4 v14, 0x1

    goto :goto_14f

    :catch_13b
    move-exception v0

    goto :goto_143

    :catch_13d
    move-exception v0

    goto :goto_141

    :catch_13f
    move-exception v0

    const/4 v7, 0x2

    :goto_141
    const/16 v18, 0x1

    :goto_143
    move-object v10, v4

    const/4 v6, 0x0

    goto :goto_14a

    :catch_146
    move-exception v0

    const/4 v7, 0x2

    const/16 v18, 0x1

    :goto_14a
    const/4 v14, 0x1

    goto :goto_175

    :cond_14c
    const/4 v7, 0x2

    const/16 v18, 0x1

    .line 151
    :goto_14f
    :try_start_14f
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v4, v0

    const-wide/16 v16, 0x0

    cmp-long v0, v4, v16

    if-gez v0, :cond_15c

    const-wide/16 v4, 0x0

    .line 153
    :cond_15c
    invoke-virtual {v3, v4, v5}, Lcom/tencent/bugly/proguard/w;->b(J)V
    :try_end_15f
    .catch Ljava/io/IOException; {:try_start_14f .. :try_end_15f} :catch_16c
    .catchall {:try_start_14f .. :try_end_15f} :catchall_16e

    .line 160
    :try_start_15f
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_162
    .catchall {:try_start_15f .. :try_end_162} :catchall_163

    goto :goto_18d

    :catchall_163
    move-exception v0

    move-object v4, v0

    .line 162
    invoke-static {v4}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_18d

    goto :goto_18a

    :catch_16c
    move-exception v0

    goto :goto_175

    :catchall_16e
    move-exception v0

    move-object v2, v0

    goto :goto_191

    :catch_171
    move-exception v0

    const/4 v7, 0x2

    :goto_173
    const/16 v18, 0x1

    .line 155
    :goto_175
    :try_start_175
    invoke-static {v0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_17e

    .line 156
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_17e
    .catchall {:try_start_175 .. :try_end_17e} :catchall_16e

    .line 160
    :cond_17e
    :try_start_17e
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_181
    .catchall {:try_start_17e .. :try_end_181} :catchall_182

    goto :goto_18d

    :catchall_182
    move-exception v0

    move-object v4, v0

    .line 162
    invoke-static {v4}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_18d

    .line 163
    :goto_18a
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_18d
    :goto_18d
    move v0, v6

    const-wide/16 v4, 0x0

    goto :goto_1b2

    .line 160
    :goto_191
    :try_start_191
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_194
    .catchall {:try_start_191 .. :try_end_194} :catchall_195

    goto :goto_1a0

    :catchall_195
    move-exception v0

    move-object v3, v0

    .line 162
    invoke-static {v3}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_1a0

    .line 163
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 166
    :cond_1a0
    :goto_1a0
    throw v2

    :cond_1a1
    const/4 v4, 0x0

    const/4 v7, 0x2

    const/16 v18, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v5, "Failed to execute post."

    .line 168
    invoke-static {v5, v0}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-wide/16 v4, 0x0

    .line 170
    invoke-virtual {v3, v4, v5}, Lcom/tencent/bugly/proguard/w;->b(J)V

    move v0, v6

    :goto_1b2
    const/4 v4, 0x0

    const/4 v5, 0x0

    goto/16 :goto_8d

    :cond_1b6
    move-object v2, v4

    return-object v2
.end method
