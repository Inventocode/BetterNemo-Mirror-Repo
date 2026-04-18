.class public final Lcom/efs/sdk/base/a/h/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/efs/sdk/base/http/IHttpUtil;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/efs/sdk/base/a/h/b/a$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .line 32
    invoke-direct {p0}, Lcom/efs/sdk/base/a/h/b/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/efs/sdk/base/a/h/b/a;
    .registers 1

    .line 79
    invoke-static {}, Lcom/efs/sdk/base/a/h/b/a$a;->a()Lcom/efs/sdk/base/a/h/b/a;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;[B)Lcom/efs/sdk/base/http/HttpResponse;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "[B)",
            "Lcom/efs/sdk/base/http/HttpResponse;"
        }
    .end annotation

    const-string v0, "\' error"

    const-string v1, "post file \'"

    const-string v2, "efs.util.http"

    .line 209
    new-instance v3, Lcom/efs/sdk/base/http/HttpResponse;

    invoke-direct {v3}, Lcom/efs/sdk/base/http/HttpResponse;-><init>()V

    const/4 v4, 0x0

    .line 212
    :try_start_c
    invoke-static {p0, p1}, Lcom/efs/sdk/base/a/h/b/a;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object p1
    :try_end_10
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_10} :catch_112
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_10} :catch_f7
    .catchall {:try_start_c .. :try_end_10} :catchall_d4

    :try_start_10
    const-string v5, "POST"

    .line 213
    invoke-virtual {p1, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v5, "Connection"

    const-string v6, "close"

    .line 215
    invoke-virtual {p1, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Content-Type"

    const-string v6, "multipart/form-data;boundary=----WebKitFormBoundaryP0Rfzlf32iRoMhmb"

    .line 216
    invoke-virtual {p1, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5
    :try_end_27
    .catch Ljava/net/UnknownHostException; {:try_start_10 .. :try_end_27} :catch_ce
    .catch Ljava/net/SocketTimeoutException; {:try_start_10 .. :try_end_27} :catch_c8
    .catchall {:try_start_10 .. :try_end_27} :catchall_c2

    .line 218
    :try_start_27
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2c
    .catch Ljava/net/UnknownHostException; {:try_start_27 .. :try_end_2c} :catch_be
    .catch Ljava/net/SocketTimeoutException; {:try_start_27 .. :try_end_2c} :catch_ba
    .catchall {:try_start_27 .. :try_end_2c} :catchall_b6

    :try_start_2c
    const-string v7, "------WebKitFormBoundaryP0Rfzlf32iRoMhmb\r\n"

    .line 221
    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/net/UnknownHostException; {:try_start_2c .. :try_end_31} :catch_b3
    .catch Ljava/net/SocketTimeoutException; {:try_start_2c .. :try_end_31} :catch_b0
    .catchall {:try_start_2c .. :try_end_31} :catchall_ad

    const/4 v7, 0x0

    const-string v8, "\r\n"

    if-nez p3, :cond_87

    if-eqz p2, :cond_7a

    .line 225
    :try_start_38
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_3f

    goto :goto_7a

    .line 228
    :cond_3f
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v9, "Content-Disposition: form-data;name=\"file\";filename=\""

    invoke-direct {p3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\"\r\n"

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, p3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v6, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 230
    new-instance p3, Ljava/io/FileInputStream;

    invoke-direct {p3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_61
    .catch Ljava/net/UnknownHostException; {:try_start_38 .. :try_end_61} :catch_b3
    .catch Ljava/net/SocketTimeoutException; {:try_start_38 .. :try_end_61} :catch_b0
    .catchall {:try_start_38 .. :try_end_61} :catchall_ad

    const/16 p2, 0x1000

    :try_start_63
    new-array p2, p2, [B

    .line 233
    :goto_65
    invoke-virtual {p3, p2}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v9, -0x1

    if-eq v4, v9, :cond_70

    .line 234
    invoke-virtual {v6, p2, v7, v4}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_6f
    .catch Ljava/net/UnknownHostException; {:try_start_63 .. :try_end_6f} :catch_77
    .catch Ljava/net/SocketTimeoutException; {:try_start_63 .. :try_end_6f} :catch_74
    .catchall {:try_start_63 .. :try_end_6f} :catchall_72

    goto :goto_65

    :cond_70
    move-object v4, p3

    goto :goto_93

    :catchall_72
    move-exception p2

    goto :goto_c6

    :catch_74
    move-exception p2

    goto/16 :goto_cc

    :catch_77
    move-exception p2

    goto/16 :goto_d2

    .line 258
    :cond_7a
    :goto_7a
    invoke-static {p1}, Lcom/efs/sdk/base/a/h/b/a;->b(Ljava/net/HttpURLConnection;)V

    .line 259
    invoke-static {v5}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 260
    invoke-static {v6}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 261
    invoke-static {v4}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    return-object v3

    :cond_87
    :try_start_87
    const-string p2, "Content-Disposition: form-data;name=\"file\";filename=\"f\"\r\n"

    .line 237
    invoke-virtual {v6, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v6, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 239
    array-length p2, p3

    invoke-virtual {v6, p3, v7, p2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 241
    :goto_93
    invoke-virtual {v6, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string p2, "------WebKitFormBoundaryP0Rfzlf32iRoMhmb--\r\n"

    .line 242
    invoke-virtual {v6, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 243
    invoke-static {p1}, Lcom/efs/sdk/base/a/h/b/a;->a(Ljava/net/HttpURLConnection;)Lcom/efs/sdk/base/http/HttpResponse;

    move-result-object v3
    :try_end_9f
    .catch Ljava/net/UnknownHostException; {:try_start_87 .. :try_end_9f} :catch_b3
    .catch Ljava/net/SocketTimeoutException; {:try_start_87 .. :try_end_9f} :catch_b0
    .catchall {:try_start_87 .. :try_end_9f} :catchall_ad

    .line 258
    invoke-static {p1}, Lcom/efs/sdk/base/a/h/b/a;->b(Ljava/net/HttpURLConnection;)V

    .line 259
    invoke-static {v5}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 260
    invoke-static {v6}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 261
    invoke-static {v4}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    goto/16 :goto_12f

    :catchall_ad
    move-exception p2

    move-object p3, v4

    goto :goto_c6

    :catch_b0
    move-exception p2

    move-object p3, v4

    goto :goto_cc

    :catch_b3
    move-exception p2

    move-object p3, v4

    goto :goto_d2

    :catchall_b6
    move-exception p2

    move-object p3, v4

    move-object v6, p3

    goto :goto_c6

    :catch_ba
    move-exception p2

    move-object p3, v4

    move-object v6, p3

    goto :goto_cc

    :catch_be
    move-exception p2

    move-object p3, v4

    move-object v6, p3

    goto :goto_d2

    :catchall_c2
    move-exception p2

    move-object p3, v4

    move-object v5, p3

    move-object v6, v5

    :goto_c6
    move-object v4, p1

    goto :goto_d8

    :catch_c8
    move-exception p2

    move-object p3, v4

    move-object v5, p3

    move-object v6, v5

    :goto_cc
    move-object v4, p1

    goto :goto_fb

    :catch_ce
    move-exception p2

    move-object p3, v4

    move-object v5, p3

    move-object v6, v5

    :goto_d2
    move-object v4, p1

    goto :goto_116

    :catchall_d4
    move-exception p2

    move-object p3, v4

    move-object v5, p3

    move-object v6, v5

    .line 256
    :goto_d8
    :try_start_d8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p2}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_ea
    .catchall {:try_start_d8 .. :try_end_ea} :catchall_133

    .line 258
    :goto_ea
    invoke-static {v4}, Lcom/efs/sdk/base/a/h/b/a;->b(Ljava/net/HttpURLConnection;)V

    .line 259
    invoke-static {v5}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 260
    invoke-static {v6}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 261
    invoke-static {p3}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    goto :goto_12f

    :catch_f7
    move-exception p2

    move-object p3, v4

    move-object v5, p3

    move-object v6, v5

    :goto_fb
    const/4 p1, -0x3

    .line 252
    :try_start_fc
    invoke-virtual {v3, p1}, Lcom/efs/sdk/base/http/HttpResponse;->setHttpCode(I)V

    .line 253
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p2}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_ea

    :catch_112
    move-exception p2

    move-object p3, v4

    move-object v5, p3

    move-object v6, v5

    :goto_116
    const/4 p1, -0x2

    .line 248
    invoke-virtual {v3, p1}, Lcom/efs/sdk/base/http/HttpResponse;->setHttpCode(I)V

    .line 249
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' error， maybe network is disconnect"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p2}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_12e
    .catchall {:try_start_fc .. :try_end_12e} :catchall_133

    goto :goto_ea

    .line 263
    :goto_12f
    invoke-virtual {v3, p0}, Lcom/efs/sdk/base/http/HttpResponse;->setReqUrl(Ljava/lang/String;)V

    return-object v3

    :catchall_133
    move-exception p0

    .line 258
    invoke-static {v4}, Lcom/efs/sdk/base/a/h/b/a;->b(Ljava/net/HttpURLConnection;)V

    .line 259
    invoke-static {v5}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 260
    invoke-static {v6}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 261
    invoke-static {p3}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method private static a(Ljava/net/HttpURLConnection;)Lcom/efs/sdk/base/http/HttpResponse;
    .registers 6

    .line 118
    new-instance v0, Lcom/efs/sdk/base/http/HttpResponse;

    invoke-direct {v0}, Lcom/efs/sdk/base/http/HttpResponse;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    const/4 v1, 0x0

    .line 129
    :try_start_9
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 130
    invoke-virtual {v0, v2}, Lcom/efs/sdk/base/http/HttpResponse;->setHttpCode(I)V

    .line 133
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_3a

    const/16 v2, 0x400

    :try_start_16
    new-array v2, v2, [B

    .line 136
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_36

    .line 138
    :goto_21
    :try_start_21
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2d

    const/4 v4, 0x0

    .line 139
    invoke-virtual {v3, v2, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_21

    .line 141
    :cond_2d
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/efs/sdk/base/a/f/d;->data:Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_21 .. :try_end_33} :catchall_34

    goto :goto_45

    :catchall_34
    move-exception v1

    goto :goto_3e

    :catchall_36
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    goto :goto_3e

    :catchall_3a
    move-exception p0

    move-object v3, v1

    move-object v1, p0

    move-object p0, v3

    :goto_3e
    :try_start_3e
    const-string v2, "efs.util.http"

    const-string v4, "get response error"

    .line 144
    invoke-static {v2, v4, v1}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_4c

    .line 146
    :goto_45
    invoke-static {p0}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 147
    invoke-static {v3}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_4c
    move-exception v0

    .line 146
    invoke-static {p0}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 147
    invoke-static {v3}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    throw v0
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

    .line 92
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/16 v0, 0x3a98

    .line 94
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v0, 0x2710

    .line 95
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v0, 0x1

    .line 96
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 97
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    if-nez p1, :cond_26

    .line 102
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    .line 105
    :cond_26
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 106
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    :cond_4a
    return-object p0
.end method

.method private static b(Ljava/net/HttpURLConnection;)V
    .registers 1

    if-eqz p0, :cond_c

    .line 307
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 311
    :try_start_5
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_c

    :catchall_c
    :cond_c
    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/String;Ljava/util/Map;)Lcom/efs/sdk/base/http/HttpResponse;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/efs/sdk/base/http/HttpResponse;"
        }
    .end annotation

    const-string v0, "\' error"

    const-string v1, "get request \'"

    const-string v2, "efs.util.http"

    .line 157
    new-instance v3, Lcom/efs/sdk/base/http/HttpResponse;

    invoke-direct {v3}, Lcom/efs/sdk/base/http/HttpResponse;-><init>()V

    const/4 v4, 0x0

    :goto_c
    const/4 v5, 0x3

    if-ge v4, v5, :cond_81

    const/4 v5, 0x0

    .line 162
    :try_start_10
    invoke-static {p1, p2}, Lcom/efs/sdk/base/a/h/b/a;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v5

    const-string v6, "GET"

    .line 163
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 164
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v6, "Connection"

    const-string v7, "close"

    .line 165
    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 167
    invoke-static {v5}, Lcom/efs/sdk/base/a/h/b/a;->a(Ljava/net/HttpURLConnection;)Lcom/efs/sdk/base/http/HttpResponse;

    move-result-object v3
    :try_end_2b
    .catch Ljava/net/UnknownHostException; {:try_start_10 .. :try_end_2b} :catch_62
    .catch Ljava/net/SocketTimeoutException; {:try_start_10 .. :try_end_2b} :catch_48
    .catchall {:try_start_10 .. :try_end_2b} :catchall_2f

    .line 184
    invoke-static {v5}, Lcom/efs/sdk/base/a/h/b/a;->b(Ljava/net/HttpURLConnection;)V

    goto :goto_81

    :catchall_2f
    move-exception v6

    .line 181
    :try_start_30
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v6}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_42
    .catchall {:try_start_30 .. :try_end_42} :catchall_7c

    add-int/lit8 v4, v4, 0x1

    .line 184
    :goto_44
    invoke-static {v5}, Lcom/efs/sdk/base/a/h/b/a;->b(Ljava/net/HttpURLConnection;)V

    goto :goto_c

    :catch_48
    move-exception v6

    const/4 v7, -0x3

    .line 177
    :try_start_4a
    invoke-virtual {v3, v7}, Lcom/efs/sdk/base/http/HttpResponse;->setHttpCode(I)V

    .line 178
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "post file \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v6}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_44

    :catch_62
    move-exception v6

    const/4 v7, -0x2

    .line 173
    invoke-virtual {v3, v7}, Lcom/efs/sdk/base/http/HttpResponse;->setHttpCode(I)V

    .line 174
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\' error， maybe network is disconnect"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v6}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7b
    .catchall {:try_start_4a .. :try_end_7b} :catchall_7c

    goto :goto_44

    :catchall_7c
    move-exception p1

    .line 184
    invoke-static {v5}, Lcom/efs/sdk/base/a/h/b/a;->b(Ljava/net/HttpURLConnection;)V

    throw p1

    .line 187
    :cond_81
    :goto_81
    invoke-virtual {v3, p1}, Lcom/efs/sdk/base/http/HttpResponse;->setReqUrl(Ljava/lang/String;)V

    return-object v3
.end method

.method public final post(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;)Lcom/efs/sdk/base/http/HttpResponse;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")",
            "Lcom/efs/sdk/base/http/HttpResponse;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 200
    invoke-static {p1, p2, p3, v0}, Lcom/efs/sdk/base/a/h/b/a;->a(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;[B)Lcom/efs/sdk/base/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public final post(Ljava/lang/String;Ljava/util/Map;[B)Lcom/efs/sdk/base/http/HttpResponse;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Lcom/efs/sdk/base/http/HttpResponse;"
        }
    .end annotation

    const-string v0, "\' error"

    const-string v1, "efs.util.http"

    .line 274
    new-instance v2, Lcom/efs/sdk/base/http/HttpResponse;

    invoke-direct {v2}, Lcom/efs/sdk/base/http/HttpResponse;-><init>()V

    const/4 v3, 0x0

    .line 277
    :try_start_a
    invoke-static {p1, p2}, Lcom/efs/sdk/base/a/h/b/a;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object p2
    :try_end_e
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_e} :catch_64
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_e} :catch_49
    .catchall {:try_start_a .. :try_end_e} :catchall_32

    :try_start_e
    const-string v4, "POST"

    .line 279
    invoke-virtual {p2, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v4, "Connection"

    const-string v5, "close"

    .line 280
    invoke-virtual {p2, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 282
    invoke-virtual {v3, p3}, Ljava/io/OutputStream;->write([B)V

    .line 283
    invoke-static {p2}, Lcom/efs/sdk/base/a/h/b/a;->a(Ljava/net/HttpURLConnection;)Lcom/efs/sdk/base/http/HttpResponse;

    move-result-object v2
    :try_end_25
    .catch Ljava/net/UnknownHostException; {:try_start_e .. :try_end_25} :catch_30
    .catch Ljava/net/SocketTimeoutException; {:try_start_e .. :try_end_25} :catch_2e
    .catchall {:try_start_e .. :try_end_25} :catchall_2c

    .line 298
    :goto_25
    invoke-static {v3}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 299
    invoke-static {p2}, Lcom/efs/sdk/base/a/h/b/a;->b(Ljava/net/HttpURLConnection;)V

    goto :goto_81

    :catchall_2c
    move-exception p3

    goto :goto_34

    :catch_2e
    move-exception p3

    goto :goto_4b

    :catch_30
    move-exception p3

    goto :goto_66

    :catchall_32
    move-exception p3

    move-object p2, v3

    .line 296
    :goto_34
    :try_start_34
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "post data \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p3}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_25

    :catch_49
    move-exception p3

    move-object p2, v3

    :goto_4b
    const/4 v4, -0x3

    .line 292
    invoke-virtual {v2, v4}, Lcom/efs/sdk/base/http/HttpResponse;->setHttpCode(I)V

    .line 293
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "post file \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p3}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_25

    :catch_64
    move-exception p3

    move-object p2, v3

    :goto_66
    const/4 v0, -0x2

    .line 288
    invoke-virtual {v2, v0}, Lcom/efs/sdk/base/http/HttpResponse;->setHttpCode(I)V

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "post data to \'"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' error， maybe network is disconnect"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p3}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_80
    .catchall {:try_start_34 .. :try_end_80} :catchall_85

    goto :goto_25

    .line 301
    :goto_81
    invoke-virtual {v2, p1}, Lcom/efs/sdk/base/http/HttpResponse;->setReqUrl(Ljava/lang/String;)V

    return-object v2

    :catchall_85
    move-exception p1

    .line 298
    invoke-static {v3}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 299
    invoke-static {p2}, Lcom/efs/sdk/base/a/h/b/a;->b(Ljava/net/HttpURLConnection;)V

    throw p1
.end method

.method public final postAsFile(Ljava/lang/String;Ljava/util/Map;[B)Lcom/efs/sdk/base/http/HttpResponse;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Lcom/efs/sdk/base/http/HttpResponse;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 194
    invoke-static {p1, p2, v0, p3}, Lcom/efs/sdk/base/a/h/b/a;->a(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;[B)Lcom/efs/sdk/base/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method
