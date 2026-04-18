.class public Lcom/unikuwei/mianmi/account/shield/d/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unikuwei/mianmi/account/shield/d/b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_37
    .catchall {:try_start_1 .. :try_end_6} :catchall_28

    const/16 v2, 0x400

    :try_start_8
    new-array v2, v2, [B

    :goto_a
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_16

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_a

    :cond_16
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1f} :catch_38
    .catchall {:try_start_8 .. :try_end_1f} :catchall_26

    :try_start_1f
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_25} :catch_25

    :catch_25
    return-object v3

    :catchall_26
    move-exception v0

    goto :goto_2c

    :catchall_28
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_2c
    if-eqz v1, :cond_31

    :try_start_2e
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_31
    if-eqz p1, :cond_36

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_36} :catch_36

    :catch_36
    :cond_36
    throw v0

    :catch_37
    move-object v1, v0

    :catch_38
    if-eqz v1, :cond_3d

    :try_start_3a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_3d
    if-eqz p1, :cond_42

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_42} :catch_42

    :catch_42
    :cond_42
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const-string v0, ""

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljavax/net/ssl/TrustManager;

    new-instance v5, Lcom/unikuwei/mianmi/account/shield/d/b$a;

    invoke-direct {v5, p0}, Lcom/unikuwei/mianmi/account/shield/d/b$a;-><init>(Lcom/unikuwei/mianmi/account/shield/d/b;)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v1, v4, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_27} :catch_96
    .catchall {:try_start_3 .. :try_end_27} :catchall_94

    :try_start_27
    invoke-virtual {p1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    invoke-virtual {p1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    invoke-virtual {p1, v6}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    invoke-virtual {p1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v1, 0x7530

    invoke-virtual {p1, v1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    invoke-virtual {p1, v1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    const-string v1, "POST"

    invoke-virtual {p1, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance v1, Lcom/unikuwei/mianmi/account/shield/d/b$2;

    invoke-direct {v1, p0}, Lcom/unikuwei/mianmi/account/shield/d/b$2;-><init>(Lcom/unikuwei/mianmi/account/shield/d/b;)V

    invoke-virtual {p1, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    const-string v1, "Connection"

    const-string v2, "close"

    invoke-virtual {p1, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, "application/json;charset=UTF-8"

    invoke-virtual {p1, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    if-eqz p2, :cond_74

    const-string v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->write([B)V

    :cond_74
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result p2

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_8a

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/unikuwei/mianmi/account/shield/d/b;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_8a} :catch_91
    .catchall {:try_start_27 .. :try_end_8a} :catchall_8e

    :cond_8a
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    return-object v0

    :catchall_8e
    move-exception p2

    move-object v1, p1

    goto :goto_a0

    :catch_91
    move-exception p2

    move-object v1, p1

    goto :goto_97

    :catchall_94
    move-exception p2

    goto :goto_a0

    :catch_96
    move-exception p2

    :goto_97
    :try_start_97
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_94

    if-eqz v1, :cond_9f

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_9f
    return-object v0

    :goto_a0
    if-eqz v1, :cond_a5

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_a5
    throw p2
.end method

.method public a(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Network;)Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/Network;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "Keep-Alive"

    const-string v1, "data"

    const-string v2, "msg"

    const-string v3, "code"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unikuwei/mianmi/account/shield/e/f;->a(Ljava/lang/String;)V

    :try_start_1c
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_36
    .catch Ljava/net/MalformedURLException; {:try_start_1c .. :try_end_36} :catch_37

    goto :goto_3d

    :catch_37
    move-exception v4

    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V

    const-string v4, ""

    :goto_3d
    invoke-static {p1}, Lcom/unikuwei/mianmi/account/shield/e/g;->c(Ljava/lang/String;)V

    const/4 v5, 0x0

    :try_start_41
    const-string v6, "TLS"

    invoke-static {v6}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v6

    const/4 v7, 0x1

    new-array v8, v7, [Ljavax/net/ssl/TrustManager;

    new-instance v9, Lcom/unikuwei/mianmi/account/shield/d/b$a;

    invoke-direct {v9, p0}, Lcom/unikuwei/mianmi/account/shield/d/b$a;-><init>(Lcom/unikuwei/mianmi/account/shield/d/b;)V

    const/4 v10, 0x0

    aput-object v9, v8, v10

    new-instance v9, Ljava/security/SecureRandom;

    invoke-direct {v9}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v6, v5, v8, v9}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_6e

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-lt v9, v11, :cond_6e

    invoke-virtual {p3, v8}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v8

    :goto_6b
    check-cast v8, Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_73

    :cond_6e
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    goto :goto_6b

    :goto_73
    invoke-virtual {v8, v7}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    invoke-virtual {v8, v10}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    invoke-virtual {v8, v10}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    invoke-virtual {v8, v10}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v7, 0x7530

    invoke-virtual {v8, v7}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    invoke-virtual {v8, v7}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    const-string v7, "GET"

    invoke-virtual {v8, v7}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance v6, Lcom/unikuwei/mianmi/account/shield/d/b$1;

    invoke-direct {v6, p0}, Lcom/unikuwei/mianmi/account/shield/d/b$1;-><init>(Lcom/unikuwei/mianmi/account/shield/d/b;)V

    invoke-virtual {v8, v6}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    if-eqz p2, :cond_bb

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_bb

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v7, v9}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a5

    :cond_bb
    const-string p2, "https://opencloud.wostore.cn/openapi/netauth/precheck/wp?"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_c1} :catch_16a
    .catchall {:try_start_41 .. :try_end_c1} :catchall_168

    const-string p2, "Connection"

    if-eqz p1, :cond_cc

    :try_start_c5
    invoke-static {v0}, Lcom/unikuwei/mianmi/account/shield/e/f;->a(Ljava/lang/String;)V

    invoke-virtual {v8, p2, v0}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d1

    :cond_cc
    const-string p1, "close"

    invoke-virtual {v8, p2, p1}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d1
    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result p1

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_101

    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/unikuwei/mianmi/account/shield/d/b;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_100

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const/16 p2, 0x271c

    invoke-virtual {p1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "10012"

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_100
    return-object p1

    :cond_101
    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result p1

    const/16 p2, 0x12e

    if-ne p1, p2, :cond_13e

    const-string p1, "Location"

    invoke-virtual {v8, p1}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_127

    const-string p2, "https"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_122

    invoke-virtual {p0, p1, v5, p3}, Lcom/unikuwei/mianmi/account/shield/d/b;->a(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Network;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_122
    invoke-virtual {p0, p1, v5, p3}, Lcom/unikuwei/mianmi/account/shield/d/b;->b(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Network;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_127
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const/16 p2, 0x271d

    invoke-virtual {p1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "无跳转地址"

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_13e
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const/16 p2, 0x271a

    invoke-virtual {p1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "https状态码"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_167} :catch_16a
    .catchall {:try_start_c5 .. :try_end_167} :catchall_168

    return-object p1

    :catchall_168
    move-exception p1

    goto :goto_199

    :catch_16a
    move-exception p1

    :try_start_16b
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_16e
    .catchall {:try_start_16b .. :try_end_16e} :catchall_168

    :try_start_16e
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const/16 p3, 0x271b

    invoke-virtual {p2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https异常"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_197
    .catch Ljava/lang/Exception; {:try_start_16e .. :try_end_197} :catch_198
    .catchall {:try_start_16e .. :try_end_197} :catchall_168

    return-object p1

    :catch_198
    return-object v5

    :goto_199
    throw p1
.end method

.method public b(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Network;)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/Network;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "data"

    const-string v1, "msg"

    const-string v2, "code"

    :try_start_6
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_20
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_20} :catch_21

    goto :goto_26

    :catch_21
    move-exception v3

    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v3, p1

    :goto_26
    invoke-static {p1}, Lcom/unikuwei/mianmi/account/shield/e/g;->c(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/unikuwei/mianmi/account/shield/e/f;->a(Ljava/lang/String;)V

    const/4 v4, 0x0

    :try_start_2d
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_41

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt p1, v6, :cond_41

    invoke-virtual {p3, v5}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object p1

    :goto_3e
    check-cast p1, Ljava/net/HttpURLConnection;

    goto :goto_46

    :cond_41
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_45} :catch_13d
    .catchall {:try_start_2d .. :try_end_45} :catchall_13b

    goto :goto_3e

    :goto_46
    const/4 v5, 0x1

    :try_start_47
    invoke-virtual {p1, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {p1, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {p1, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v5, 0x7530

    invoke-virtual {p1, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {p1, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v5, "GET"

    invoke-virtual {p1, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p2, :cond_81

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_81

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6b

    :cond_81
    const-string p2, "Connection"

    const-string v5, "close"

    invoke-virtual {p1, p2, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/16 v5, 0xc8

    if-ne p2, v5, :cond_bf

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/unikuwei/mianmi/account/shield/d/b;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_bb

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const/16 p3, 0x271c

    invoke-virtual {p2, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p3, "10012"

    invoke-virtual {p2, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_b7} :catch_136
    .catchall {:try_start_47 .. :try_end_b7} :catchall_132

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p2

    :cond_bb
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p2

    :cond_bf
    :try_start_bf
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/16 v5, 0x12e

    if-ne p2, v5, :cond_105

    const-string p2, "Location"

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_eb

    const-string v5, "https"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e3

    invoke-virtual {p0, p2, v4, p3}, Lcom/unikuwei/mianmi/account/shield/d/b;->a(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Network;)Ljava/lang/String;

    move-result-object p2
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_df} :catch_136
    .catchall {:try_start_bf .. :try_end_df} :catchall_132

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p2

    :cond_e3
    :try_start_e3
    invoke-virtual {p0, p2, v4, p3}, Lcom/unikuwei/mianmi/account/shield/d/b;->b(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Network;)Ljava/lang/String;

    move-result-object p2
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_e7} :catch_136
    .catchall {:try_start_e3 .. :try_end_e7} :catchall_132

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p2

    :cond_eb
    :try_start_eb
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const/16 p3, 0x271d

    invoke-virtual {p2, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p3, "无跳转地址"

    invoke-virtual {p2, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_101} :catch_136
    .catchall {:try_start_eb .. :try_end_101} :catchall_132

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p2

    :cond_105
    :try_start_105
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const/16 p3, 0x271a

    invoke-virtual {p2, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https状态码"

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_12e} :catch_136
    .catchall {:try_start_105 .. :try_end_12e} :catchall_132

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p2

    :catchall_132
    move-exception p2

    move-object v4, p1

    move-object p1, p2

    goto :goto_17a

    :catch_136
    move-exception p2

    move-object v8, p2

    move-object p2, p1

    move-object p1, v8

    goto :goto_13f

    :catchall_13b
    move-exception p1

    goto :goto_17a

    :catch_13d
    move-exception p1

    move-object p2, v4

    :goto_13f
    :try_start_13f
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_142
    .catchall {:try_start_13f .. :try_end_142} :catchall_178

    :try_start_142
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    const/16 v5, 0x2728

    invoke-virtual {p3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http异常"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p3, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_16b
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_16b} :catch_171
    .catchall {:try_start_142 .. :try_end_16b} :catchall_178

    if-eqz p2, :cond_170

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_170
    return-object p1

    :catch_171
    nop

    if-eqz p2, :cond_177

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_177
    return-object v4

    :catchall_178
    move-exception p1

    move-object v4, p2

    :goto_17a
    if-eqz v4, :cond_17f

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_17f
    throw p1
.end method
