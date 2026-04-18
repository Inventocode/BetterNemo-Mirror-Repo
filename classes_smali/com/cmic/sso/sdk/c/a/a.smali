.class public Lcom/cmic/sso/sdk/c/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cmic/sso/sdk/c/a/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/io/Closeable;)V
    .registers 2

    if-eqz p1, :cond_a

    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_a
    return-void
.end method


# virtual methods
.method public a(Lcom/cmic/sso/sdk/c/c/c;Lcom/cmic/sso/sdk/c/d/c;Lcom/cmic/sso/sdk/a;)V
    .registers 22
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, ""

    const-string v5, "responseResult: "

    const-string v6, "responseCode: "

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "请求地址: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/cmic/sso/sdk/c/c/c;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "ConnectionInterceptor"

    invoke-static {v7, v0}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_27
    new-instance v0, Ljava/net/URL;

    invoke-virtual/range {p1 .. p1}, Lcom/cmic/sso/sdk/c/c/c;->a()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/cmic/sso/sdk/c/c/c;->h()Landroid/net/Network;

    move-result-object v13

    if-eqz v13, :cond_45

    const-string/jumbo v13, "开始wifi下取号"

    invoke-static {v7, v13}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/cmic/sso/sdk/c/c/c;->h()Landroid/net/Network;

    move-result-object v13

    invoke-virtual {v13, v0}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    goto :goto_4f

    :cond_45
    const-string/jumbo v13, "使用当前网络环境发送请求"

    invoke-static {v7, v13}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    :goto_4f
    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_51} :catch_1d6
    .catchall {:try_start_27 .. :try_end_51} :catchall_1cc

    move-object v13, v0

    :try_start_52
    invoke-virtual/range {p1 .. p1}, Lcom/cmic/sso/sdk/c/c/c;->c()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_78

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_60
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_78

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v15, v12}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_60

    :cond_78
    instance-of v0, v13, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_96

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x14

    if-ge v0, v12, :cond_96

    const-string v0, "5.0以下启动tls 1.2"

    invoke-static {v7, v0}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v13

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v12, Lcom/cmic/sso/sdk/c/b;

    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v14

    invoke-direct {v12, v14}, Lcom/cmic/sso/sdk/c/b;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-virtual {v0, v12}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_96
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v12, 0x0

    invoke-virtual {v13, v12}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v14, 0x1388

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v13, v12}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/cmic/sso/sdk/c/c/c;->e()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    instance-of v0, v2, Lcom/cmic/sso/sdk/c/c/b;

    if-eqz v0, :cond_c3

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->connect()V

    move-object v0, v2

    check-cast v0, Lcom/cmic/sso/sdk/c/c/b;
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_bd} :catch_1c3
    .catchall {:try_start_52 .. :try_end_bd} :catchall_1bc

    move-object/from16 v15, p3

    :try_start_bf
    invoke-virtual {v0, v15}, Lcom/cmic/sso/sdk/c/c/b;->a(Lcom/cmic/sso/sdk/a;)V

    goto :goto_c5

    :cond_c3
    move-object/from16 v15, p3

    :goto_c5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "请求参数:"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/cmic/sso/sdk/c/c/c;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "POST"

    invoke-virtual {v14, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_e4} :catch_1ba
    .catchall {:try_start_bf .. :try_end_e4} :catchall_1bc

    const-string v11, "utf-8"

    if-eqz v0, :cond_fb

    :try_start_e8
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_ec} :catch_1ba
    .catchall {:try_start_e8 .. :try_end_ec} :catchall_1bc

    :try_start_ec
    invoke-virtual/range {p1 .. p1}, Lcom/cmic/sso/sdk/c/c/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V

    goto :goto_fc

    :cond_fb
    const/4 v14, 0x0

    :goto_fc
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_100} :catch_1b3
    .catchall {:try_start_ec .. :try_end_100} :catchall_1ab

    :try_start_100
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_104} :catch_1a4
    .catchall {:try_start_100 .. :try_end_104} :catchall_19c

    const/16 v0, 0x800

    :try_start_106
    new-array v0, v0, [B

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_10d} :catch_197
    .catchall {:try_start_106 .. :try_end_10d} :catchall_192

    :goto_10d
    :try_start_10d
    invoke-virtual {v9, v0}, Ljava/io/InputStream;->read([B)I

    move-result v12

    if-lez v12, :cond_123

    new-instance v2, Ljava/lang/String;
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_115} :catch_18d
    .catchall {:try_start_10d .. :try_end_115} :catchall_187

    move-object/from16 v17, v4

    const/4 v4, 0x0

    :try_start_118
    invoke-direct {v2, v0, v4, v12, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    move-object/from16 v4, v17

    goto :goto_10d

    :cond_123
    move-object/from16 v17, v4

    new-instance v0, Lcom/cmic/sso/sdk/c/d/b;

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v8, v2, v4}, Lcom/cmic/sso/sdk/c/d/b;-><init>(ILjava/util/Map;Ljava/lang/String;)V
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_132} :catch_185
    .catchall {:try_start_118 .. :try_end_132} :catchall_183

    invoke-direct {v1, v14}, Lcom/cmic/sso/sdk/c/a/a;->a(Ljava/io/Closeable;)V

    invoke-direct {v1, v9}, Lcom/cmic/sso/sdk/c/a/a;->a(Ljava/io/Closeable;)V

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15e

    move-object/from16 v4, v17

    goto :goto_162

    :cond_15e
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_162
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc8

    if-eq v8, v2, :cond_17e

    const/16 v2, 0x12d

    if-eq v8, v2, :cond_17e

    const/16 v2, 0x12e

    if-eq v8, v2, :cond_17e

    invoke-static {v8}, Lcom/cmic/sso/sdk/c/d/a;->a(I)Lcom/cmic/sso/sdk/c/d/a;

    move-result-object v0

    goto/16 :goto_25c

    :cond_17e
    invoke-interface {v3, v0}, Lcom/cmic/sso/sdk/c/d/c;->a(Lcom/cmic/sso/sdk/c/d/b;)V

    goto/16 :goto_264

    :catchall_183
    move-exception v0

    goto :goto_18a

    :catch_185
    move-exception v0

    goto :goto_190

    :catchall_187
    move-exception v0

    move-object/from16 v17, v4

    :goto_18a
    move v12, v8

    goto/16 :goto_266

    :catch_18d
    move-exception v0

    move-object/from16 v17, v4

    :goto_190
    move v12, v8

    goto :goto_1e0

    :catchall_192
    move-exception v0

    move-object/from16 v17, v4

    move v12, v8

    goto :goto_1a1

    :catch_197
    move-exception v0

    move-object/from16 v17, v4

    move v12, v8

    goto :goto_1a9

    :catchall_19c
    move-exception v0

    move-object/from16 v17, v4

    move v12, v8

    const/4 v9, 0x0

    :goto_1a1
    const/4 v10, 0x0

    goto/16 :goto_266

    :catch_1a4
    move-exception v0

    move-object/from16 v17, v4

    move v12, v8

    const/4 v9, 0x0

    :goto_1a9
    const/4 v10, 0x0

    goto :goto_1e0

    :catchall_1ab
    move-exception v0

    move-object/from16 v17, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, -0x1

    goto/16 :goto_266

    :catch_1b3
    move-exception v0

    move-object/from16 v17, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, -0x1

    goto :goto_1e0

    :catch_1ba
    move-exception v0

    goto :goto_1c6

    :catchall_1bc
    move-exception v0

    move-object/from16 v17, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, -0x1

    goto :goto_1d3

    :catch_1c3
    move-exception v0

    move-object/from16 v15, p3

    :goto_1c6
    move-object/from16 v17, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, -0x1

    goto :goto_1df

    :catchall_1cc
    move-exception v0

    move-object/from16 v17, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    :goto_1d3
    const/4 v14, 0x0

    goto/16 :goto_266

    :catch_1d6
    move-exception v0

    move-object/from16 v15, p3

    move-object/from16 v17, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    :goto_1df
    const/4 v14, 0x0

    :goto_1e0
    :try_start_1e0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "请求失败: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/cmic/sso/sdk/c/c/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/cmic/sso/sdk/a;->a()Lcom/cmic/sso/sdk/d/b;

    move-result-object v2

    iget-object v2, v2, Lcom/cmic/sso/sdk/d/b;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    instance-of v0, v0, Ljava/io/EOFException;
    :try_end_207
    .catchall {:try_start_1e0 .. :try_end_207} :catchall_265

    if-eqz v0, :cond_20d

    const v0, 0x30d72

    goto :goto_210

    :cond_20d
    const v0, 0x18ed6

    :goto_210
    invoke-direct {v1, v14}, Lcom/cmic/sso/sdk/c/a/a;->a(Ljava/io/Closeable;)V

    invoke-direct {v1, v9}, Lcom/cmic/sso/sdk/c/a/a;->a(Ljava/io/Closeable;)V

    if-eqz v13, :cond_21b

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_21b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_23e

    move-object/from16 v4, v17

    goto :goto_242

    :cond_23e
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_242
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_260

    const/16 v2, 0x12d

    if-eq v0, v2, :cond_260

    const/16 v2, 0x12e

    if-eq v0, v2, :cond_260

    invoke-static {v0}, Lcom/cmic/sso/sdk/c/d/a;->a(I)Lcom/cmic/sso/sdk/c/d/a;

    move-result-object v0

    :goto_25c
    invoke-interface {v3, v0}, Lcom/cmic/sso/sdk/c/d/c;->a(Lcom/cmic/sso/sdk/c/d/a;)V

    goto :goto_264

    :cond_260
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Lcom/cmic/sso/sdk/c/d/c;->a(Lcom/cmic/sso/sdk/c/d/b;)V

    :goto_264
    return-void

    :catchall_265
    move-exception v0

    :goto_266
    invoke-direct {v1, v14}, Lcom/cmic/sso/sdk/c/a/a;->a(Ljava/io/Closeable;)V

    invoke-direct {v1, v9}, Lcom/cmic/sso/sdk/c/a/a;->a(Ljava/io/Closeable;)V

    if-eqz v13, :cond_271

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_294

    move-object/from16 v4, v17

    goto :goto_298

    :cond_294
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_298
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc8

    if-eq v12, v2, :cond_2b6

    const/16 v2, 0x12d

    if-eq v12, v2, :cond_2b6

    const/16 v2, 0x12e

    if-eq v12, v2, :cond_2b6

    invoke-static {v12}, Lcom/cmic/sso/sdk/c/d/a;->a(I)Lcom/cmic/sso/sdk/c/d/a;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/cmic/sso/sdk/c/d/c;->a(Lcom/cmic/sso/sdk/c/d/a;)V

    goto :goto_2ba

    :cond_2b6
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Lcom/cmic/sso/sdk/c/d/c;->a(Lcom/cmic/sso/sdk/c/d/b;)V

    :goto_2ba
    throw v0
.end method
