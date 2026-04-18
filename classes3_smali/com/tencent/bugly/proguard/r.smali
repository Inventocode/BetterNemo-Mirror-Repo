.class public final Lcom/tencent/bugly/proguard/r;
.super Ljava/lang/Object;
.source "BUGLY"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/util/Pair;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "UTF-8"

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 57
    :try_start_4
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_9f

    :try_start_f
    const-string v3, "POST"

    .line 58
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 59
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 60
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v3, 0x0

    .line 61
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v3, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    .line 62
    invoke-virtual {p1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {p1, p3}, Lcom/tencent/bugly/proguard/r;->a(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    const/16 p3, 0x1388

    .line 64
    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 65
    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 66
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 68
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 69
    new-instance p3, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {p3, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_41
    .catchall {:try_start_f .. :try_end_41} :catchall_9b

    .line 70
    :try_start_41
    invoke-virtual {p3, p2}, Ljava/io/DataOutputStream;->write([B)V

    .line 71
    invoke-virtual {p3}, Ljava/io/DataOutputStream;->flush()V

    .line 72
    invoke-virtual {p3}, Ljava/io/DataOutputStream;->close()V
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_95

    .line 75
    :try_start_4a
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 p2, 0x190

    if-lt v2, p2, :cond_57

    .line 77
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p2

    goto :goto_5b

    .line 79
    :cond_57
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_5b
    .catchall {:try_start_4a .. :try_end_5b} :catchall_9b

    .line 81
    :goto_5b
    :try_start_5b
    new-instance p3, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p3, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    :goto_6a
    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_79

    .line 86
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    .line 87
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6a

    .line 89
    :cond_79
    invoke-virtual {p3}, Ljava/io/BufferedReader;->close()V

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3
    :try_end_80
    .catchall {:try_start_5b .. :try_end_80} :catchall_8f

    if-nez p2, :cond_83

    goto :goto_8b

    .line 96
    :cond_83
    :try_start_83
    invoke-interface {p2}, Ljava/io/Closeable;->close()V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_86} :catch_87

    goto :goto_8b

    :catch_87
    move-exception p2

    invoke-static {p2}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/Throwable;)Z

    .line 98
    :goto_8b
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_c5

    :catchall_8f
    move-exception p3

    move-object v5, p3

    move-object p3, p1

    move-object p1, p2

    move-object p2, v5

    goto :goto_a2

    :catchall_95
    move-exception p2

    move-object v5, p3

    move-object p3, p1

    move-object p1, v1

    move-object v1, v5

    goto :goto_a2

    :catchall_9b
    move-exception p2

    move-object p3, p1

    move-object p1, v1

    goto :goto_a2

    :catchall_9f
    move-exception p2

    move-object p1, v1

    move-object p3, p1

    .line 92
    :goto_a2
    :try_start_a2
    invoke-static {p2}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/Throwable;)Z

    .line 93
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2
    :try_end_a9
    .catchall {:try_start_a2 .. :try_end_a9} :catchall_cf

    if-nez v1, :cond_ac

    goto :goto_b4

    .line 95
    :cond_ac
    :try_start_ac
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_af} :catch_b0

    goto :goto_b4

    :catch_b0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/Throwable;)Z

    :goto_b4
    if-nez p1, :cond_b7

    goto :goto_bf

    .line 96
    :cond_b7
    :try_start_b7
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_ba} :catch_bb

    goto :goto_bf

    :catch_bb
    move-exception p1

    invoke-static {p1}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/Throwable;)Z

    :goto_bf
    if-eqz p3, :cond_c4

    .line 98
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c4
    move-object p3, p2

    .line 101
    :goto_c5
    new-instance p1, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :catchall_cf
    move-exception p2

    if-nez v1, :cond_d3

    goto :goto_db

    .line 95
    :cond_d3
    :try_start_d3
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_d6} :catch_d7

    goto :goto_db

    :catch_d7
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/Throwable;)Z

    :goto_db
    if-nez p1, :cond_de

    goto :goto_e6

    .line 96
    :cond_de
    :try_start_de
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_e1} :catch_e2

    goto :goto_e6

    :catch_e2
    move-exception p1

    invoke-static {p1}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/Throwable;)Z

    :goto_e6
    if-eqz p3, :cond_eb

    .line 98
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 100
    :cond_eb
    throw p2
.end method

.method private static a(Ljava/net/HttpURLConnection;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_2f

    if-eqz p1, :cond_2f

    .line 105
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2f

    .line 108
    :cond_b
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 109
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_2f
    :goto_2f
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 33
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Atta-Type"

    const-string v2, "batch-report"

    .line 34
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "attaid"

    const-string v3, "0d000062340"

    .line 36
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "token"

    const-string v4, "2273782735"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "type"

    const-string v4, "batch"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "version"

    const-string v4, "v1.0.0"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 38
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_39
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 39
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_39

    :cond_49
    const-string p1, "datas"

    .line 41
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "https://h.trace.qq.com/kv"

    .line 42
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lcom/tencent/bugly/proguard/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/util/Pair;

    move-result-object p1
    :try_end_58
    .catchall {:try_start_0 .. :try_end_58} :catchall_59

    return-object p1

    :catchall_59
    move-exception p1

    .line 44
    invoke-static {p1}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/Throwable;)Z

    .line 45
    new-instance v0, Landroid/util/Pair;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
