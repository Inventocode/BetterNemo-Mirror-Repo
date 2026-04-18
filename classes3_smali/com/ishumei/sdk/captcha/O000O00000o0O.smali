.class public Lcom/ishumei/sdk/captcha/O000O00000o0O;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public O0000O000000oO(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_85
    .catchall {:try_start_1 .. :try_end_c} :catchall_80

    const/4 v1, 0x0

    :try_start_d
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v1, "GET"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v1, 0x7530

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_63

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_30} :catch_7d
    .catchall {:try_start_d .. :try_end_30} :catchall_7a

    :try_start_30
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_3a} :catch_5e
    .catchall {:try_start_30 .. :try_end_3a} :catchall_59

    :try_start_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_49

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    :cond_49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_4d} :catch_57
    .catchall {:try_start_3a .. :try_end_4d} :catchall_8e

    invoke-static {p1}, Lcom/ishumei/sdk/captcha/O000O0000O0oO;->O0000O000000oO(Ljava/net/HttpURLConnection;)V

    invoke-static {v1}, Lcom/ishumei/sdk/captcha/O000O0000O0oO;->O0000O000000oO(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/ishumei/sdk/captcha/O000O0000O0oO;->O0000O000000oO(Ljava/io/Closeable;)V

    return-object v0

    :catch_57
    move-exception v0

    goto :goto_8d

    :catchall_59
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_93

    :catch_5e
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_89

    :cond_63
    :try_start_63
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "responseCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_7a} :catch_7d
    .catchall {:try_start_63 .. :try_end_7a} :catchall_7a

    :catchall_7a
    move-exception v1

    move-object v2, v0

    goto :goto_93

    :catch_7d
    move-exception v1

    move-object v2, v0

    goto :goto_89

    :catchall_80
    move-exception p1

    move-object v1, p1

    move-object p1, v0

    move-object v2, p1

    goto :goto_93

    :catch_85
    move-exception p1

    move-object v1, p1

    move-object p1, v0

    move-object v2, p1

    :goto_89
    move-object v5, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v5

    :goto_8d
    :try_start_8d
    throw v0
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8e

    :catchall_8e
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v2

    move-object v2, v5

    :goto_93
    invoke-static {p1}, Lcom/ishumei/sdk/captcha/O000O0000O0oO;->O0000O000000oO(Ljava/net/HttpURLConnection;)V

    invoke-static {v2}, Lcom/ishumei/sdk/captcha/O000O0000O0oO;->O0000O000000oO(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/ishumei/sdk/captcha/O000O0000O0oO;->O0000O000000oO(Ljava/io/Closeable;)V

    throw v1
.end method
