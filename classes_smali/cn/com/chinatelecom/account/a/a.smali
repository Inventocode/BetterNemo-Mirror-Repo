.class public Lcn/com/chinatelecom/account/a/a;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v0, "UTF-8"

    const-string v1, ""

    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const-string v3, "accept"

    const-string v4, "*/*"

    invoke-virtual {p0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "POST"

    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/16 v3, 0x1388

    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v3, "Accept-Charset"

    invoke-virtual {p0, v3, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_56

    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    goto :goto_59

    :cond_56
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    :goto_59
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_91

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_65
    .catchall {:try_start_5 .. :try_end_65} :catchall_a4

    :try_start_65
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_74
    .catchall {:try_start_65 .. :try_end_74} :catchall_8c

    :goto_74
    :try_start_74
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_83

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_74

    :cond_83
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_87
    .catchall {:try_start_74 .. :try_end_87} :catchall_89

    move-object v2, v0

    goto :goto_92

    :catchall_89
    move-exception p1

    move-object v2, v0

    goto :goto_8d

    :catchall_8c
    move-exception p1

    :goto_8d
    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    goto :goto_a6

    :cond_91
    move-object p0, v2

    :goto_92
    if-eqz v2, :cond_9a

    :try_start_94
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_9a

    :catch_98
    move-exception p0

    goto :goto_a0

    :cond_9a
    :goto_9a
    if-eqz p0, :cond_b3

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_9f} :catch_98

    goto :goto_b3

    :goto_a0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b3

    :catchall_a4
    move-exception p0

    move-object p1, v2

    :goto_a6
    :try_start_a6
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_b4

    if-eqz v2, :cond_ae

    :try_start_ab
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_ae
    if-eqz p1, :cond_b3

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_b3} :catch_98

    :cond_b3
    :goto_b3
    return-object v1

    :catchall_b4
    move-exception p0

    if-eqz v2, :cond_bd

    :try_start_b7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_bd

    :catch_bb
    move-exception p1

    goto :goto_c3

    :cond_bd
    :goto_bd
    if-eqz p1, :cond_c6

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_c2} :catch_bb

    goto :goto_c6

    :goto_c3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c6
    :goto_c6
    throw p0
.end method
