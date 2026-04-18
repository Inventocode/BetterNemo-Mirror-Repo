.class public Lcn/codemao/android/update/net/NetUtils;
.super Ljava/lang/Object;
.source "NetUtils.java"


# instance fields
.field private running:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcn/codemao/android/update/net/NetUtils;->running:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcn/codemao/android/update/net/NetUtils;->running:Z

    return-void
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 15

    const v0, 0xdbba2

    .line 85
    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filePath:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/codemao/android/update/util/LogUtils;->d(Ljava/lang/String;)V

    .line 88
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const-wide/16 v2, 0x0

    .line 92
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_56

    .line 93
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-string p2, "Range"

    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bytes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, p2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_56
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "responseCode:ResponseCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/codemao/android/update/util/LogUtils;->d(Ljava/lang/String;)V

    const/16 v4, 0xc8

    const/16 v5, 0x64

    if-eq p2, v4, :cond_85

    const/16 v4, 0xce

    if-ne p2, v4, :cond_79

    goto :goto_85

    :cond_79
    const/16 p1, 0x1a0

    if-ne p2, p1, :cond_81

    .line 123
    invoke-virtual {p3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_e8

    .line 125
    :cond_81
    invoke-virtual {p3, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_e8

    .line 102
    :cond_85
    :goto_85
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    .line 103
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v6, 0x1

    invoke-direct {v4, v1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 105
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p1

    int-to-long v6, p1

    add-long/2addr v6, v2

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 107
    invoke-virtual {p2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    :goto_9d
    const/4 v8, -0x1

    if-eq v1, v8, :cond_e8

    .line 109
    iget-boolean v8, p0, Lcn/codemao/android/update/net/NetUtils;->running:Z

    if-eqz v8, :cond_e8

    const/4 v8, 0x0

    .line 110
    invoke-virtual {v4, p1, v8, v1}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v8, v1

    add-long/2addr v2, v8

    .line 112
    invoke-virtual {p2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    cmp-long v8, v2, v6

    if-nez v8, :cond_b5

    const/16 v8, 0x64

    goto :goto_bd

    :cond_b5
    long-to-float v8, v2

    const/high16 v9, 0x42c80000  # 100.0f

    mul-float v8, v8, v9

    long-to-float v9, v6

    div-float/2addr v8, v9

    float-to-int v8, v8

    .line 119
    :goto_bd
    invoke-virtual {p3, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 120
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "percent:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "down:"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "total:"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcn/codemao/android/update/util/LogUtils;->d(Ljava/lang/String;)V
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e4} :catch_e5

    goto :goto_9d

    .line 127
    :catch_e5
    invoke-virtual {p3, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_e8
    :goto_e8
    return-void
.end method

.method public post(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "application/json"

    .line 38
    :try_start_2
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const-string v1, "POST"

    .line 39
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 40
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 41
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x0

    .line 42
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/16 v2, 0x1388

    .line 43
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v2, 0xbb8

    .line 44
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v2, "X-CodeMao-Mobile-Requested"

    .line 45
    invoke-static {}, Lcn/codemao/android/update/util/DeviceUtils;->getHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Accept"

    .line 46
    invoke-virtual {p1, v2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-type"

    .line 47
    invoke-virtual {p1, v2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 49
    new-instance v0, Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 50
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 53
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 54
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_87

    .line 59
    new-instance p2, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 60
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 63
    :goto_69
    invoke-virtual {p2, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_77

    .line 64
    invoke-virtual {v0, v2, v1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 65
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    goto :goto_69

    :cond_77
    const-string v1, "UTF-8"

    .line 67
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 69
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 70
    invoke-virtual {p2}, Ljava/io/BufferedInputStream;->close()V

    return-object v1

    .line 55
    :cond_87
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP POST Request Failed with Error code : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a2} :catch_a2

    :catch_a2
    move-exception p1

    const-string p2, "error"

    .line 73
    invoke-static {p2, p1}, Lcn/codemao/android/update/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method
