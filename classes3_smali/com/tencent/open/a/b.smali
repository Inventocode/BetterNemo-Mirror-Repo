.class Lcom/tencent/open/a/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/open/a/a;


# instance fields
.field private a:I

.field private b:I

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3a98

    .line 36
    iput v0, p0, Lcom/tencent/open/a/b;->a:I

    const/16 v0, 0x7530

    .line 37
    iput v0, p0, Lcom/tencent/open/a/b;->b:I

    .line 42
    iput-object p1, p0, Lcom/tencent/open/a/b;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;I)Lcom/tencent/open/a/g;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 121
    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a2

    :try_start_c
    const-string v1, "GET"

    .line 123
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 124
    invoke-direct {p0, p1}, Lcom/tencent/open/a/b;->a(Ljava/net/HttpURLConnection;)V

    const/4 v1, 0x1

    .line 125
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x0

    .line 126
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 127
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 128
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 129
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_67

    .line 130
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_9f

    .line 131
    :try_start_2e
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_65

    const/16 v0, 0x400

    :try_start_35
    new-array v0, v0, [B

    .line 134
    :goto_37
    invoke-virtual {v8, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_42

    .line 135
    invoke-virtual {v9, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_37

    .line 137
    :cond_42
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    .line 138
    new-instance v0, Lcom/tencent/open/a/c;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    .line 139
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const-string v7, ""

    move-object v1, v0

    move-object v2, p1

    move v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/tencent/open/a/c;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_58
    .catchall {:try_start_35 .. :try_end_58} :catchall_62

    .line 149
    invoke-static {v9}, Lcom/tencent/open/a/b;->a(Ljava/io/Closeable;)V

    .line 150
    invoke-static {v8}, Lcom/tencent/open/a/b;->a(Ljava/io/Closeable;)V

    .line 151
    invoke-static {p1}, Lcom/tencent/open/a/b;->b(Ljava/net/HttpURLConnection;)V

    return-object v0

    :catchall_62
    move-exception p2

    move-object v0, v9

    goto :goto_a5

    :catchall_65
    move-exception p2

    goto :goto_a5

    .line 141
    :cond_67
    :try_start_67
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_82

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "请求失败 code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_82
    move-object v7, v1

    .line 145
    new-instance v8, Lcom/tencent/open/a/c;

    const-string v3, ""

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    .line 146
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    move-object v1, v8

    move-object v2, p1

    move v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/tencent/open/a/c;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_95
    .catchall {:try_start_67 .. :try_end_95} :catchall_9f

    .line 149
    invoke-static {v0}, Lcom/tencent/open/a/b;->a(Ljava/io/Closeable;)V

    .line 150
    invoke-static {v0}, Lcom/tencent/open/a/b;->a(Ljava/io/Closeable;)V

    .line 151
    invoke-static {p1}, Lcom/tencent/open/a/b;->b(Ljava/net/HttpURLConnection;)V

    return-object v8

    :catchall_9f
    move-exception p2

    move-object v8, v0

    goto :goto_a5

    :catchall_a2
    move-exception p2

    move-object p1, v0

    move-object v8, p1

    .line 149
    :goto_a5
    invoke-static {v0}, Lcom/tencent/open/a/b;->a(Ljava/io/Closeable;)V

    .line 150
    invoke-static {v8}, Lcom/tencent/open/a/b;->a(Ljava/io/Closeable;)V

    .line 151
    invoke-static {p1}, Lcom/tencent/open/a/b;->b(Ljava/net/HttpURLConnection;)V

    .line 152
    throw p2
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;)Lcom/tencent/open/a/g;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 161
    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_b7

    :try_start_c
    const-string v1, "POST"

    .line 163
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 164
    invoke-direct {p0, p1}, Lcom/tencent/open/a/b;->a(Ljava/net/HttpURLConnection;)V

    const/4 v1, 0x1

    .line 165
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 166
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v1, 0x0

    .line 167
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    .line 168
    invoke-virtual {p1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v2, p3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 174
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 176
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    .line 177
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p3

    const/16 v2, 0xc8

    if-ne p3, v2, :cond_7f

    .line 179
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p3
    :try_end_4a
    .catchall {:try_start_c .. :try_end_4a} :catchall_b4

    .line 180
    :try_start_4a
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4f
    .catchall {:try_start_4a .. :try_end_4f} :catchall_7d

    const/16 v0, 0x400

    :try_start_51
    new-array v0, v0, [B

    .line 183
    :goto_53
    invoke-virtual {p3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5e

    .line 184
    invoke-virtual {v8, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_53

    .line 186
    :cond_5e
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    .line 188
    new-instance v0, Lcom/tencent/open/a/c;

    .line 189
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const-string v7, ""

    move-object v1, v0

    move-object v2, p1

    move v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/tencent/open/a/c;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_70
    .catchall {:try_start_51 .. :try_end_70} :catchall_7a

    .line 199
    invoke-static {v8}, Lcom/tencent/open/a/b;->a(Ljava/io/Closeable;)V

    .line 200
    invoke-static {p3}, Lcom/tencent/open/a/b;->a(Ljava/io/Closeable;)V

    .line 201
    invoke-static {p1}, Lcom/tencent/open/a/b;->b(Ljava/net/HttpURLConnection;)V

    return-object v0

    :catchall_7a
    move-exception p2

    move-object v0, v8

    goto :goto_ba

    :catchall_7d
    move-exception p2

    goto :goto_ba

    .line 191
    :cond_7f
    :try_start_7f
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_9a

    .line 193
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown fail: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_9a
    move-object v7, p3

    .line 195
    new-instance p3, Lcom/tencent/open/a/c;

    const-string v3, ""

    const/4 v4, 0x0

    .line 196
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    move-object v1, p3

    move-object v2, p1

    move v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/tencent/open/a/c;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_aa
    .catchall {:try_start_7f .. :try_end_aa} :catchall_b4

    .line 199
    invoke-static {v0}, Lcom/tencent/open/a/b;->a(Ljava/io/Closeable;)V

    .line 200
    invoke-static {v0}, Lcom/tencent/open/a/b;->a(Ljava/io/Closeable;)V

    .line 201
    invoke-static {p1}, Lcom/tencent/open/a/b;->b(Ljava/net/HttpURLConnection;)V

    return-object p3

    :catchall_b4
    move-exception p2

    move-object p3, v0

    goto :goto_ba

    :catchall_b7
    move-exception p2

    move-object p1, v0

    move-object p3, p1

    .line 199
    :goto_ba
    invoke-static {v0}, Lcom/tencent/open/a/b;->a(Ljava/io/Closeable;)V

    .line 200
    invoke-static {p3}, Lcom/tencent/open/a/b;->a(Ljava/io/Closeable;)V

    .line 201
    invoke-static {p1}, Lcom/tencent/open/a/b;->b(Ljava/net/HttpURLConnection;)V

    .line 202
    throw p2
.end method

.method private static a(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 313
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_5

    :catchall_5
    :cond_5
    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/tencent/open/a/b;->c:Ljava/lang/String;

    const-string v1, "User-Agent"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget v0, p0, Lcom/tencent/open/a/b;->a:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 107
    iget v0, p0, Lcom/tencent/open/a/b;->b:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v0, "Accept-Language"

    const-string v1, "zh-CN"

    .line 108
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Connection"

    const-string v1, "Keep-Alive"

    .line 109
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Charset"

    const-string v1, "UTF-8"

    .line 110
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/net/HttpURLConnection;)V
    .registers 1

    if-nez p0, :cond_3

    return-void

    .line 324
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/open/a/g;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "DefaultHttpServiceImpl"

    const-string v1, "get. "

    .line 56
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4e

    const-string v0, "?"

    .line 58
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_26

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3f

    .line 61
    :cond_26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_3f

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 64
    :cond_3f
    :goto_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 66
    :cond_4e
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/tencent/open/a/b;->a(Ljava/lang/String;I)Lcom/tencent/open/a/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)Lcom/tencent/open/a/g;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tencent/open/a/g;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "DefaultHttpServiceImpl"

    const-string v1, "post. "

    .line 72
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x1

    :goto_15
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v1, :cond_25

    const/4 v1, 0x0

    goto :goto_2a

    :cond_25
    const/16 v3, 0x26

    .line 79
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    :goto_2a
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    .line 82
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    .line 85
    :cond_4c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 86
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/tencent/open/a/b;->a(Ljava/lang/String;ILjava/lang/String;)Lcom/tencent/open/a/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[B)Lcom/tencent/open/a/g;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "[B)",
            "Lcom/tencent/open/a/g;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const-string v3, "UTF-8"

    const-string v4, ""

    const-string v5, "DefaultHttpServiceImpl"

    const-string v6, "文件上传"

    .line 211
    invoke-static {v5, v6}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "multipart/form-data"

    .line 224
    :try_start_1b
    new-instance v9, Ljava/net/URL;

    move-object/from16 v10, p1

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_20c

    const/4 v10, 0x1

    .line 226
    :try_start_29
    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 227
    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v10, "POST"

    .line 228
    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v10, 0x0

    .line 229
    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 230
    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v11, "Content-Type"

    .line 231
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ";boundary="

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v11, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_29 .. :try_end_54} :catchall_206

    move-object/from16 v7, p0

    .line 233
    :try_start_56
    invoke-direct {v7, v9}, Lcom/tencent/open/a/b;->a(Ljava/net/HttpURLConnection;)V

    .line 235
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->connect()V

    .line 237
    new-instance v15, Ljava/io/DataOutputStream;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v15, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_65
    .catchall {:try_start_56 .. :try_end_65} :catchall_204

    const-string v11, "\""

    const-string v12, "Content-Disposition: form-data; name=\""

    const-string v13, "--"

    const-string v14, "\r\n"

    if-eqz v0, :cond_ee

    .line 242
    :try_start_6f
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v16

    if-lez v16, :cond_ee

    .line 243
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 244
    :goto_7d
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_ee

    .line 245
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 246
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v10, v18

    check-cast v10, Ljava/lang/String;

    invoke-static {v10, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 247
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-virtual {v8, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "##"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/DataOutputStream;->write([B)V

    move-object/from16 v0, p2

    const/4 v10, 0x0

    goto :goto_7d

    :catchall_e9
    move-exception v0

    move-object v8, v15

    :goto_eb
    const/4 v2, 0x0

    goto/16 :goto_212

    :cond_ee
    if-eqz v2, :cond_173

    .line 260
    array-length v0, v2

    if-lez v0, :cond_173

    .line 261
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 262
    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 263
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\"; filename=\""

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content-Type: application/octet-stream; charset=UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 274
    array-length v0, v2

    const/4 v1, 0x0

    invoke-virtual {v15, v2, v1, v0}, Ljava/io/DataOutputStream;->write([BII)V

    .line 275
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 278
    invoke-virtual {v15, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 279
    array-length v0, v0

    const/4 v1, 0x0

    add-int/2addr v0, v1

    .line 280
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->flush()V
    :try_end_171
    .catchall {:try_start_6f .. :try_end_171} :catchall_e9

    move v14, v0

    goto :goto_174

    :cond_173
    const/4 v14, 0x0

    .line 282
    :goto_174
    :try_start_174
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18a
    .catchall {:try_start_174 .. :try_end_18a} :catchall_1ff

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1bc

    .line 285
    :try_start_18e
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_192
    .catchall {:try_start_18e .. :try_end_192} :catchall_e9

    .line 286
    :try_start_192
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_197
    .catchall {:try_start_192 .. :try_end_197} :catchall_1b6

    const/16 v0, 0x400

    :try_start_199
    new-array v0, v0, [B

    .line 289
    :goto_19b
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1a7

    const/4 v4, 0x0

    .line 290
    invoke-virtual {v2, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_19b

    .line 292
    :cond_1a7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1ab
    .catchall {:try_start_199 .. :try_end_1ab} :catchall_1b0

    move-object v12, v0

    move-object v8, v1

    move-object/from16 v17, v2

    goto :goto_1d3

    :catchall_1b0
    move-exception v0

    move-object/from16 v17, v1

    move-object v8, v15

    goto/16 :goto_214

    :catchall_1b6
    move-exception v0

    move-object/from16 v17, v1

    move-object v8, v15

    const/4 v2, 0x0

    goto :goto_214

    .line 296
    :cond_1bc
    :try_start_1bc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1cf
    .catchall {:try_start_1bc .. :try_end_1cf} :catchall_1ff

    move-object v12, v0

    const/4 v8, 0x0

    const/16 v17, 0x0

    .line 298
    :goto_1d3
    :try_start_1d3
    new-instance v0, Lcom/tencent/open/a/c;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v13

    .line 299
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const-string v16, ""
    :try_end_1df
    .catchall {:try_start_1d3 .. :try_end_1df} :catchall_1f5

    move-object v10, v0

    move-object v11, v9

    move-object v2, v15

    move v15, v1

    :try_start_1e3
    invoke-direct/range {v10 .. v16}, Lcom/tencent/open/a/c;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_1e6
    .catchall {:try_start_1e3 .. :try_end_1e6} :catchall_1f3

    .line 302
    invoke-static {v2}, Lcom/tencent/open/a/b;->a(Ljava/io/Closeable;)V

    .line 303
    invoke-static {v8}, Lcom/tencent/open/a/b;->a(Ljava/io/Closeable;)V

    .line 304
    invoke-static/range {v17 .. v17}, Lcom/tencent/open/a/b;->a(Ljava/io/Closeable;)V

    .line 305
    invoke-static {v9}, Lcom/tencent/open/a/b;->b(Ljava/net/HttpURLConnection;)V

    return-object v0

    :catchall_1f3
    move-exception v0

    goto :goto_1f7

    :catchall_1f5
    move-exception v0

    move-object v2, v15

    :goto_1f7
    move-object/from16 v19, v8

    move-object v8, v2

    move-object/from16 v2, v17

    move-object/from16 v17, v19

    goto :goto_214

    :catchall_1ff
    move-exception v0

    move-object v2, v15

    move-object v8, v2

    goto/16 :goto_eb

    :catchall_204
    move-exception v0

    goto :goto_209

    :catchall_206
    move-exception v0

    move-object/from16 v7, p0

    :goto_209
    const/4 v2, 0x0

    const/4 v8, 0x0

    goto :goto_212

    :catchall_20c
    move-exception v0

    move-object/from16 v7, p0

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_212
    const/16 v17, 0x0

    .line 302
    :goto_214
    invoke-static {v8}, Lcom/tencent/open/a/b;->a(Ljava/io/Closeable;)V

    .line 303
    invoke-static/range {v17 .. v17}, Lcom/tencent/open/a/b;->a(Ljava/io/Closeable;)V

    .line 304
    invoke-static {v2}, Lcom/tencent/open/a/b;->a(Ljava/io/Closeable;)V

    .line 305
    invoke-static {v9}, Lcom/tencent/open/a/b;->b(Ljava/net/HttpURLConnection;)V

    .line 306
    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/tencent/open/a/g;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)",
            "Lcom/tencent/open/a/g;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_30

    .line 92
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_9

    goto :goto_30

    .line 95
    :cond_9
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 96
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/tencent/open/a/b;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[B)Lcom/tencent/open/a/g;

    move-result-object p1

    return-object p1

    :cond_2e
    const/4 p1, 0x0

    return-object p1

    .line 93
    :cond_30
    :goto_30
    invoke-virtual {p0, p1, p2}, Lcom/tencent/open/a/b;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/tencent/open/a/g;

    move-result-object p1

    return-object p1
.end method

.method public a(JJ)V
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_11

    cmp-long v2, p3, v0

    if-gtz v2, :cond_b

    goto :goto_11

    :cond_b
    long-to-int p2, p1

    .line 50
    iput p2, p0, Lcom/tencent/open/a/b;->a:I

    long-to-int p1, p3

    .line 51
    iput p1, p0, Lcom/tencent/open/a/b;->b:I

    :cond_11
    :goto_11
    return-void
.end method
