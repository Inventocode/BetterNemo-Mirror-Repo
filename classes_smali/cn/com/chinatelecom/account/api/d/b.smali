.class public final Lcn/com/chinatelecom/account/api/d/b;
.super Lcn/com/chinatelecom/account/api/d/f;


# static fields
.field private static final b:Ljava/lang/String; = "b"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/com/chinatelecom/account/api/d/f;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;ILcn/com/chinatelecom/account/api/d/g;)Lcn/com/chinatelecom/account/api/d/i;
    .registers 15

    const-string v0, "-"

    new-instance v1, Lcn/com/chinatelecom/account/api/d/i;

    invoke-direct {v1}, Lcn/com/chinatelecom/account/api/d/i;-><init>()V

    const v2, 0x13881

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_c
    iget-object v5, p0, Lcn/com/chinatelecom/account/api/d/f;->a:Landroid/content/Context;

    invoke-static {v5}, Lcn/com/chinatelecom/account/api/e/h;->b(Landroid/content/Context;)Z

    move-result v5

    iget-boolean v6, p4, Lcn/com/chinatelecom/account/api/d/g;->f:Z

    iget-object v7, p4, Lcn/com/chinatelecom/account/api/d/g;->g:Ljava/lang/String;

    const/4 v8, 0x1

    if-eqz v6, :cond_23

    if-eqz v7, :cond_23

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1d
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_1d} :catch_2fc
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_1d} :catch_288
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1d} :catch_213
    .catchall {:try_start_c .. :try_end_1d} :catchall_19e

    const/16 v9, 0x11

    if-lt v6, v9, :cond_23

    const/4 v6, 0x1

    goto :goto_24

    :cond_23
    const/4 v6, 0x0

    :goto_24
    if-eqz v6, :cond_2c

    :try_start_26
    iget-object v9, p4, Lcn/com/chinatelecom/account/api/d/g;->h:Ljava/lang/String;

    invoke-virtual {p1, v9, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_2c
    iget v7, p4, Lcn/com/chinatelecom/account/api/d/g;->b:I

    if-lez v7, :cond_3d

    if-nez v5, :cond_3d

    invoke-static {}, Lcn/com/chinatelecom/account/api/d/f;->a()Z

    move-result v5

    if-nez v5, :cond_3d

    iget-object v5, p0, Lcn/com/chinatelecom/account/api/d/f;->a:Landroid/content/Context;

    invoke-static {v5, p1}, Lcn/com/chinatelecom/account/api/d/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3d
    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/com/chinatelecom/account/api/d/f;->c(Ljava/lang/String;Ljava/lang/String;ILcn/com/chinatelecom/account/api/d/g;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result p2

    const/16 p3, 0xc8

    if-ne p2, p3, :cond_bc

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_4d
    .catch Ljava/net/SocketTimeoutException; {:try_start_26 .. :try_end_4d} :catch_199
    .catch Ljava/net/UnknownHostException; {:try_start_26 .. :try_end_4d} :catch_194
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_4d} :catch_18f
    .catchall {:try_start_26 .. :try_end_4d} :catchall_18b

    :try_start_4d
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5c
    .catch Ljava/net/SocketTimeoutException; {:try_start_4d .. :try_end_5c} :catch_b9
    .catch Ljava/net/UnknownHostException; {:try_start_4d .. :try_end_5c} :catch_b6
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_5c} :catch_b3
    .catchall {:try_start_4d .. :try_end_5c} :catchall_ad

    :goto_5c
    :try_start_5c
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6b

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5c

    :cond_6b
    iput v4, v1, Lcn/com/chinatelecom/account/api/d/i;->a:I

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_83

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v4, v1, Lcn/com/chinatelecom/account/api/d/i;->b:Lorg/json/JSONObject;

    iget-object p3, p4, Lcn/com/chinatelecom/account/api/d/g;->d:Ljava/lang/String;

    invoke-static {p3, v4, v3}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_83
    iget-object p3, p0, Lcn/com/chinatelecom/account/api/d/f;->a:Landroid/content/Context;

    invoke-static {p3, p1, v8}, Lcn/com/chinatelecom/account/api/e/a;->a(Landroid/content/Context;Ljava/net/HttpURLConnection;Z)Lcn/com/chinatelecom/account/api/e/c;

    move-result-object p1

    if-eqz p1, :cond_9a

    iget-object p3, p1, Lcn/com/chinatelecom/account/api/e/c;->a:Ljava/lang/String;

    iput-object p3, v1, Lcn/com/chinatelecom/account/api/d/i;->c:Ljava/lang/String;

    iget-object p3, p4, Lcn/com/chinatelecom/account/api/d/g;->d:Ljava/lang/String;

    invoke-static {p3}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object p3

    iget-object p1, p1, Lcn/com/chinatelecom/account/api/e/c;->c:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lcn/com/chinatelecom/account/api/e/e;->f(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;
    :try_end_9a
    .catch Ljava/net/SocketTimeoutException; {:try_start_5c .. :try_end_9a} :catch_a9
    .catch Ljava/net/UnknownHostException; {:try_start_5c .. :try_end_9a} :catch_a5
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_9a} :catch_a1
    .catchall {:try_start_5c .. :try_end_9a} :catchall_9d

    :cond_9a
    move-object v3, v5

    goto/16 :goto_177

    :catchall_9d
    move-exception p1

    move-object v3, p2

    goto/16 :goto_18d

    :catch_a1
    move-exception p1

    move-object v3, v5

    goto/16 :goto_191

    :catch_a5
    move-exception p1

    move-object v3, v5

    goto/16 :goto_196

    :catch_a9
    move-exception p1

    move-object v3, v5

    goto/16 :goto_19b

    :catchall_ad
    move-exception p1

    move-object v5, v3

    move v4, v6

    move-object v3, p2

    goto/16 :goto_1a0

    :catch_b3
    move-exception p1

    goto/16 :goto_191

    :catch_b6
    move-exception p1

    goto/16 :goto_196

    :catch_b9
    move-exception p1

    goto/16 :goto_19b

    :cond_bc
    const/16 p3, 0x12e

    if-ne p2, p3, :cond_131

    :try_start_c0
    iget p2, p4, Lcn/com/chinatelecom/account/api/d/g;->b:I

    const/16 p3, 0xa

    if-ge p2, p3, :cond_10c

    add-int/2addr p2, v8

    iput p2, p4, Lcn/com/chinatelecom/account/api/d/g;->b:I

    iput-boolean v4, p4, Lcn/com/chinatelecom/account/api/d/g;->f:Z

    const-string p2, "Location"

    invoke-virtual {p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcn/com/chinatelecom/account/api/e/a;->a(Ljava/net/HttpURLConnection;)Lcn/com/chinatelecom/account/api/e/c;

    move-result-object p1

    iget-object p3, p4, Lcn/com/chinatelecom/account/api/d/g;->d:Ljava/lang/String;

    invoke-static {p3}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object p3

    iget-object v5, p1, Lcn/com/chinatelecom/account/api/e/c;->c:Ljava/lang/String;

    invoke-virtual {p3, v5}, Lcn/com/chinatelecom/account/api/e/e;->f(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    iget-object p3, p1, Lcn/com/chinatelecom/account/api/e/c;->d:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_f4

    iget-object p1, p1, Lcn/com/chinatelecom/account/api/e/c;->d:Ljava/lang/String;

    const-string p3, "0"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f3

    goto :goto_f4

    :cond_f3
    const/4 v4, 0x1

    :cond_f4
    :goto_f4
    sget-object p1, Lcn/com/chinatelecom/account/api/d/b;->b:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v5, "method : "

    invoke-direct {p3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcn/com/chinatelecom/account/api/CtAuth;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2, v3, v4, p4}, Lcn/com/chinatelecom/account/api/d/b;->a(Ljava/lang/String;Ljava/lang/String;ILcn/com/chinatelecom/account/api/d/g;)Lcn/com/chinatelecom/account/api/d/i;

    move-result-object p1

    return-object p1

    :cond_10c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcn/com/chinatelecom/account/api/e/k;->b:[B

    invoke-static {p2}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "-Redirect more than 10 times"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/com/chinatelecom/account/api/e/k;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, v1, Lcn/com/chinatelecom/account/api/d/i;->b:Lorg/json/JSONObject;

    const-string p2, "Redirect more than 10 times"

    iget-object p3, p4, Lcn/com/chinatelecom/account/api/d/g;->d:Ljava/lang/String;

    invoke-static {p3, p1, p2}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_176

    :cond_131
    const p1, 0x13882

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcn/com/chinatelecom/account/api/e/k;->c:[B

    invoke-static {v4}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p4, Lcn/com/chinatelecom/account/api/d/g;->c:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-code : "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcn/com/chinatelecom/account/api/e/k;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, v1, Lcn/com/chinatelecom/account/api/d/i;->b:Lorg/json/JSONObject;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "response code ："

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p4, Lcn/com/chinatelecom/account/api/d/g;->d:Ljava/lang/String;

    iget-object p3, v1, Lcn/com/chinatelecom/account/api/d/i;->b:Lorg/json/JSONObject;

    invoke-static {p2, p3, p1}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    sget-object p2, Lcn/com/chinatelecom/account/api/d/b;->b:Ljava/lang/String;

    invoke-static {p2, p1}, Lcn/com/chinatelecom/account/api/CtAuth;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_176
    .catch Ljava/net/SocketTimeoutException; {:try_start_c0 .. :try_end_176} :catch_199
    .catch Ljava/net/UnknownHostException; {:try_start_c0 .. :try_end_176} :catch_194
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_176} :catch_18f
    .catchall {:try_start_c0 .. :try_end_176} :catchall_18b

    :goto_176
    move-object p2, v3

    :goto_177
    if-eqz v3, :cond_17f

    :try_start_179
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_17f

    :catch_17d
    move-exception p1

    goto :goto_186

    :cond_17f
    :goto_17f
    if-eqz p2, :cond_371

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_184
    .catch Ljava/io/IOException; {:try_start_179 .. :try_end_184} :catch_17d

    goto/16 :goto_371

    :goto_186
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_371

    :catchall_18b
    move-exception p1

    move-object v5, v3

    :goto_18d
    move v4, v6

    goto :goto_1a0

    :catch_18f
    move-exception p1

    move-object p2, v3

    :goto_191
    move v4, v6

    goto/16 :goto_215

    :catch_194
    move-exception p1

    move-object p2, v3

    :goto_196
    move v4, v6

    goto/16 :goto_28a

    :catch_199
    move-exception p1

    move-object p2, v3

    :goto_19b
    move v4, v6

    goto/16 :goto_2fe

    :catchall_19e
    move-exception p1

    move-object v5, v3

    :goto_1a0
    :try_start_1a0
    iget-boolean p2, p4, Lcn/com/chinatelecom/account/api/d/g;->e:Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lcn/com/chinatelecom/account/api/e/k;->b:[B

    invoke-static {p3}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p4, Lcn/com/chinatelecom/account/api/d/g;->c:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcn/com/chinatelecom/account/api/e/k;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    iput-object p2, v1, Lcn/com/chinatelecom/account/api/d/i;->b:Lorg/json/JSONObject;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Throwable : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p4, Lcn/com/chinatelecom/account/api/d/g;->d:Ljava/lang/String;

    iget-object v2, v1, Lcn/com/chinatelecom/account/api/d/i;->b:Lorg/json/JSONObject;

    invoke-static {p3, v2, p2}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    sget-object p2, Lcn/com/chinatelecom/account/api/d/b;->b:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "Throwable-"

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p4, Lcn/com/chinatelecom/account/api/d/g;->c:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcn/com/chinatelecom/account/api/CtAuth;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_204
    .catchall {:try_start_1a0 .. :try_end_204} :catchall_210

    if-eqz v5, :cond_209

    :try_start_206
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    :cond_209
    if-eqz v3, :cond_371

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_20e
    .catch Ljava/io/IOException; {:try_start_206 .. :try_end_20e} :catch_17d

    goto/16 :goto_371

    :catchall_210
    move-exception p1

    goto/16 :goto_375

    :catch_213
    move-exception p1

    move-object p2, v3

    :goto_215
    :try_start_215
    iget-boolean p3, p4, Lcn/com/chinatelecom/account/api/d/g;->e:Z

    const p3, 0x13887

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcn/com/chinatelecom/account/api/e/k;->f:[B

    invoke-static {v4}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p4, Lcn/com/chinatelecom/account/api/d/g;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lcn/com/chinatelecom/account/api/e/k;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    iput-object p3, v1, Lcn/com/chinatelecom/account/api/d/i;->b:Lorg/json/JSONObject;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "IOException : "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v2, p4, Lcn/com/chinatelecom/account/api/d/g;->d:Ljava/lang/String;

    iget-object v4, v1, Lcn/com/chinatelecom/account/api/d/i;->b:Lorg/json/JSONObject;

    invoke-static {v2, v4, p3}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    sget-object p3, Lcn/com/chinatelecom/account/api/d/b;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "IOException-"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p4, Lcn/com/chinatelecom/account/api/d/g;->c:Ljava/lang/String;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4, p1}, Lcn/com/chinatelecom/account/api/CtAuth;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27c
    .catchall {:try_start_215 .. :try_end_27c} :catchall_372

    if-eqz v3, :cond_281

    :try_start_27e
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_281
    if-eqz p2, :cond_371

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_286
    .catch Ljava/io/IOException; {:try_start_27e .. :try_end_286} :catch_17d

    goto/16 :goto_371

    :catch_288
    move-exception p1

    move-object p2, v3

    :goto_28a
    :try_start_28a
    iget-boolean p3, p4, Lcn/com/chinatelecom/account/api/d/g;->e:Z

    const p3, 0x13886

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcn/com/chinatelecom/account/api/e/k;->e:[B

    invoke-static {v4}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p4, Lcn/com/chinatelecom/account/api/d/g;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lcn/com/chinatelecom/account/api/e/k;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    iput-object p3, v1, Lcn/com/chinatelecom/account/api/d/i;->b:Lorg/json/JSONObject;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "UnknownHostException : "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v2, p4, Lcn/com/chinatelecom/account/api/d/g;->d:Ljava/lang/String;

    iget-object v4, v1, Lcn/com/chinatelecom/account/api/d/i;->b:Lorg/json/JSONObject;

    invoke-static {v2, v4, p3}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    sget-object p3, Lcn/com/chinatelecom/account/api/d/b;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "UnknownHostException-"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p4, Lcn/com/chinatelecom/account/api/d/g;->c:Ljava/lang/String;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4, p1}, Lcn/com/chinatelecom/account/api/CtAuth;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2f1
    .catchall {:try_start_28a .. :try_end_2f1} :catchall_372

    if-eqz v3, :cond_2f6

    :try_start_2f3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_2f6
    if-eqz p2, :cond_371

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_2fb
    .catch Ljava/io/IOException; {:try_start_2f3 .. :try_end_2fb} :catch_17d

    goto :goto_371

    :catch_2fc
    move-exception p1

    move-object p2, v3

    :goto_2fe
    :try_start_2fe
    iget-boolean p3, p4, Lcn/com/chinatelecom/account/api/d/g;->e:Z

    const p3, 0x13885

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcn/com/chinatelecom/account/api/e/k;->d:[B

    invoke-static {v4}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p4, Lcn/com/chinatelecom/account/api/d/g;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcn/com/chinatelecom/account/api/e/k;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    iput-object p3, v1, Lcn/com/chinatelecom/account/api/d/i;->b:Lorg/json/JSONObject;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "SocketTimeoutException : "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p4, Lcn/com/chinatelecom/account/api/d/g;->d:Ljava/lang/String;

    iget-object v2, v1, Lcn/com/chinatelecom/account/api/d/i;->b:Lorg/json/JSONObject;

    invoke-static {v0, v2, p3}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    sget-object p3, Lcn/com/chinatelecom/account/api/d/b;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "STE_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p4, Lcn/com/chinatelecom/account/api/d/g;->c:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "_"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4, p1}, Lcn/com/chinatelecom/account/api/CtAuth;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_367
    .catchall {:try_start_2fe .. :try_end_367} :catchall_372

    if-eqz v3, :cond_36c

    :try_start_369
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_36c
    if-eqz p2, :cond_371

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_371
    .catch Ljava/io/IOException; {:try_start_369 .. :try_end_371} :catch_17d

    :cond_371
    :goto_371
    return-object v1

    :catchall_372
    move-exception p1

    move-object v5, v3

    move-object v3, p2

    :goto_375
    if-eqz v5, :cond_37d

    :try_start_377
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    goto :goto_37d

    :catch_37b
    move-exception p2

    goto :goto_383

    :cond_37d
    :goto_37d
    if-eqz v3, :cond_386

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_382
    .catch Ljava/io/IOException; {:try_start_377 .. :try_end_382} :catch_37b

    goto :goto_386

    :goto_383
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_386
    :goto_386
    throw p1
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;ILcn/com/chinatelecom/account/api/d/g;)Lcn/com/chinatelecom/account/api/d/i;
    .registers 13

    const-string v0, "-"

    new-instance v1, Lcn/com/chinatelecom/account/api/d/i;

    invoke-direct {v1}, Lcn/com/chinatelecom/account/api/d/i;-><init>()V

    const v2, 0x13881

    const/4 v3, 0x0

    :try_start_b
    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/com/chinatelecom/account/api/d/f;->b(Ljava/lang/String;Ljava/lang/String;ILcn/com/chinatelecom/account/api/d/g;)Ljava/net/HttpURLConnection;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/16 p3, 0xc8

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p2, p3, :cond_90

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_1d
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_1d} :catch_2b7
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_1d} :catch_245
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1d} :catch_1d2
    .catchall {:try_start_b .. :try_end_1d} :catchall_15f

    :try_start_1d
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2c
    .catch Ljava/net/SocketTimeoutException; {:try_start_1d .. :try_end_2c} :catch_8d
    .catch Ljava/net/UnknownHostException; {:try_start_1d .. :try_end_2c} :catch_8a
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_2c} :catch_87
    .catchall {:try_start_1d .. :try_end_2c} :catchall_82

    :goto_2c
    :try_start_2c
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3b

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    :cond_3b
    iput v4, v1, Lcn/com/chinatelecom/account/api/d/i;->a:I

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_53

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v4, v1, Lcn/com/chinatelecom/account/api/d/i;->b:Lorg/json/JSONObject;

    iget-object p3, p4, Lcn/com/chinatelecom/account/api/d/g;->d:Ljava/lang/String;

    invoke-static {p3, v4, v3}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_53
    iget-object p3, p4, Lcn/com/chinatelecom/account/api/d/g;->d:Ljava/lang/String;

    iget-object v4, v1, Lcn/com/chinatelecom/account/api/d/i;->b:Lorg/json/JSONObject;

    invoke-static {p3, v4, v3}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    iget-object p3, p0, Lcn/com/chinatelecom/account/api/d/f;->a:Landroid/content/Context;

    invoke-static {p3, p1, v5}, Lcn/com/chinatelecom/account/api/e/a;->a(Landroid/content/Context;Ljava/net/HttpURLConnection;Z)Lcn/com/chinatelecom/account/api/e/c;

    move-result-object p1

    if-eqz p1, :cond_71

    iget-object p3, p1, Lcn/com/chinatelecom/account/api/e/c;->a:Ljava/lang/String;

    iput-object p3, v1, Lcn/com/chinatelecom/account/api/d/i;->c:Ljava/lang/String;

    iget-object p3, p4, Lcn/com/chinatelecom/account/api/d/g;->d:Ljava/lang/String;

    invoke-static {p3}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object p3

    iget-object p1, p1, Lcn/com/chinatelecom/account/api/e/c;->c:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lcn/com/chinatelecom/account/api/e/e;->f(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;
    :try_end_71
    .catch Ljava/net/SocketTimeoutException; {:try_start_2c .. :try_end_71} :catch_7e
    .catch Ljava/net/UnknownHostException; {:try_start_2c .. :try_end_71} :catch_7a
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_71} :catch_76
    .catchall {:try_start_2c .. :try_end_71} :catchall_74

    :cond_71
    move-object v3, v6

    goto/16 :goto_14b

    :catchall_74
    move-exception p1

    goto :goto_84

    :catch_76
    move-exception p1

    move-object v3, v6

    goto/16 :goto_1d4

    :catch_7a
    move-exception p1

    move-object v3, v6

    goto/16 :goto_247

    :catch_7e
    move-exception p1

    move-object v3, v6

    goto/16 :goto_2b9

    :catchall_82
    move-exception p1

    move-object v6, v3

    :goto_84
    move-object v3, p2

    goto/16 :goto_161

    :catch_87
    move-exception p1

    goto/16 :goto_1d4

    :catch_8a
    move-exception p1

    goto/16 :goto_247

    :catch_8d
    move-exception p1

    goto/16 :goto_2b9

    :cond_90
    const/16 p3, 0x12e

    if-ne p2, p3, :cond_105

    :try_start_94
    iget p2, p4, Lcn/com/chinatelecom/account/api/d/g;->b:I

    const/16 p3, 0xa

    if-ge p2, p3, :cond_e0

    add-int/2addr p2, v5

    iput p2, p4, Lcn/com/chinatelecom/account/api/d/g;->b:I

    iput-boolean v4, p4, Lcn/com/chinatelecom/account/api/d/g;->f:Z

    const-string p2, "Location"

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcn/com/chinatelecom/account/api/e/a;->a(Ljava/net/HttpURLConnection;)Lcn/com/chinatelecom/account/api/e/c;

    move-result-object p1

    iget-object p3, p4, Lcn/com/chinatelecom/account/api/d/g;->d:Ljava/lang/String;

    invoke-static {p3}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object p3

    iget-object v6, p1, Lcn/com/chinatelecom/account/api/e/c;->c:Ljava/lang/String;

    invoke-virtual {p3, v6}, Lcn/com/chinatelecom/account/api/e/e;->f(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    iget-object p3, p1, Lcn/com/chinatelecom/account/api/e/c;->d:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_c8

    iget-object p1, p1, Lcn/com/chinatelecom/account/api/e/c;->d:Ljava/lang/String;

    const-string p3, "0"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c7

    goto :goto_c8

    :cond_c7
    const/4 v4, 0x1

    :cond_c8
    :goto_c8
    sget-object p1, Lcn/com/chinatelecom/account/api/d/b;->b:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v5, " method : "

    invoke-direct {p3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcn/com/chinatelecom/account/api/CtAuth;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2, v3, v4, p4}, Lcn/com/chinatelecom/account/api/d/b;->a(Ljava/lang/String;Ljava/lang/String;ILcn/com/chinatelecom/account/api/d/g;)Lcn/com/chinatelecom/account/api/d/i;

    move-result-object p1

    return-object p1

    :cond_e0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcn/com/chinatelecom/account/api/e/k;->b:[B

    invoke-static {p2}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "-Redirect more than 10 times"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/com/chinatelecom/account/api/e/k;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, v1, Lcn/com/chinatelecom/account/api/d/i;->b:Lorg/json/JSONObject;

    const-string p2, "Redirect more than 10 times"

    iget-object p3, p4, Lcn/com/chinatelecom/account/api/d/g;->d:Ljava/lang/String;

    invoke-static {p3, p1, p2}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_14a

    :cond_105
    const p1, 0x13882

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcn/com/chinatelecom/account/api/e/k;->c:[B

    invoke-static {v4}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p4, Lcn/com/chinatelecom/account/api/d/g;->c:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-code : "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcn/com/chinatelecom/account/api/e/k;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, v1, Lcn/com/chinatelecom/account/api/d/i;->b:Lorg/json/JSONObject;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " Http response code :"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p4, Lcn/com/chinatelecom/account/api/d/g;->d:Ljava/lang/String;

    iget-object p3, v1, Lcn/com/chinatelecom/account/api/d/i;->b:Lorg/json/JSONObject;

    invoke-static {p2, p3, p1}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    sget-object p2, Lcn/com/chinatelecom/account/api/d/b;->b:Ljava/lang/String;

    invoke-static {p2, p1}, Lcn/com/chinatelecom/account/api/CtAuth;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14a
    .catch Ljava/net/SocketTimeoutException; {:try_start_94 .. :try_end_14a} :catch_2b7
    .catch Ljava/net/UnknownHostException; {:try_start_94 .. :try_end_14a} :catch_245
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_14a} :catch_1d2
    .catchall {:try_start_94 .. :try_end_14a} :catchall_15f

    :goto_14a
    move-object p2, v3

    :goto_14b
    if-eqz v3, :cond_153

    :try_start_14d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_153

    :catch_151
    move-exception p1

    goto :goto_15a

    :cond_153
    :goto_153
    if-eqz p2, :cond_328

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_158
    .catch Ljava/io/IOException; {:try_start_14d .. :try_end_158} :catch_151

    goto/16 :goto_328

    :goto_15a
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_328

    :catchall_15f
    move-exception p1

    move-object v6, v3

    :goto_161
    :try_start_161
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lcn/com/chinatelecom/account/api/e/k;->b:[B

    invoke-static {p3}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p4, Lcn/com/chinatelecom/account/api/d/g;->c:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcn/com/chinatelecom/account/api/e/k;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    iput-object p2, v1, Lcn/com/chinatelecom/account/api/d/i;->b:Lorg/json/JSONObject;

    sget-object p2, Lcn/com/chinatelecom/account/api/d/b;->b:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "Throwable-"

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p4, Lcn/com/chinatelecom/account/api/d/g;->c:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcn/com/chinatelecom/account/api/CtAuth;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Throwable ："

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p4, Lcn/com/chinatelecom/account/api/d/g;->d:Ljava/lang/String;

    iget-object p3, v1, Lcn/com/chinatelecom/account/api/d/i;->b:Lorg/json/JSONObject;

    invoke-static {p2, p3, p1}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_1c3
    .catchall {:try_start_161 .. :try_end_1c3} :catchall_1cf

    if-eqz v6, :cond_1c8

    :try_start_1c5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    :cond_1c8
    if-eqz v3, :cond_328

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1cd
    .catch Ljava/io/IOException; {:try_start_1c5 .. :try_end_1cd} :catch_151

    goto/16 :goto_328

    :catchall_1cf
    move-exception p1

    goto/16 :goto_32c

    :catch_1d2
    move-exception p1

    move-object p2, v3

    :goto_1d4
    const p3, 0x13887

    :try_start_1d7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcn/com/chinatelecom/account/api/e/k;->f:[B

    invoke-static {v4}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p4, Lcn/com/chinatelecom/account/api/d/g;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lcn/com/chinatelecom/account/api/e/k;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    iput-object p3, v1, Lcn/com/chinatelecom/account/api/d/i;->b:Lorg/json/JSONObject;

    sget-object p3, Lcn/com/chinatelecom/account/api/d/b;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "IOException-"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p4, Lcn/com/chinatelecom/account/api/d/g;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0, p1}, Lcn/com/chinatelecom/account/api/CtAuth;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "IOException ："

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p4, Lcn/com/chinatelecom/account/api/d/g;->d:Ljava/lang/String;

    iget-object p4, v1, Lcn/com/chinatelecom/account/api/d/i;->b:Lorg/json/JSONObject;

    invoke-static {p3, p4, p1}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_239
    .catchall {:try_start_1d7 .. :try_end_239} :catchall_329

    if-eqz v3, :cond_23e

    :try_start_23b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_23e
    if-eqz p2, :cond_328

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_243
    .catch Ljava/io/IOException; {:try_start_23b .. :try_end_243} :catch_151

    goto/16 :goto_328

    :catch_245
    move-exception p1

    move-object p2, v3

    :goto_247
    const p3, 0x13886

    :try_start_24a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcn/com/chinatelecom/account/api/e/k;->e:[B

    invoke-static {v4}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p4, Lcn/com/chinatelecom/account/api/d/g;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lcn/com/chinatelecom/account/api/e/k;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    iput-object p3, v1, Lcn/com/chinatelecom/account/api/d/i;->b:Lorg/json/JSONObject;

    sget-object p3, Lcn/com/chinatelecom/account/api/d/b;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "UnknownHostException-"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p4, Lcn/com/chinatelecom/account/api/d/g;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0, p1}, Lcn/com/chinatelecom/account/api/CtAuth;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "UnknownHostException ："

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p4, Lcn/com/chinatelecom/account/api/d/g;->d:Ljava/lang/String;

    iget-object p4, v1, Lcn/com/chinatelecom/account/api/d/i;->b:Lorg/json/JSONObject;

    invoke-static {p3, p4, p1}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_2ac
    .catchall {:try_start_24a .. :try_end_2ac} :catchall_329

    if-eqz v3, :cond_2b1

    :try_start_2ae
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_2b1
    if-eqz p2, :cond_328

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_2b6
    .catch Ljava/io/IOException; {:try_start_2ae .. :try_end_2b6} :catch_151

    goto :goto_328

    :catch_2b7
    move-exception p1

    move-object p2, v3

    :goto_2b9
    const p3, 0x13885

    :try_start_2bc
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcn/com/chinatelecom/account/api/e/k;->d:[B

    invoke-static {v4}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p4, Lcn/com/chinatelecom/account/api/d/g;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lcn/com/chinatelecom/account/api/e/k;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    iput-object p3, v1, Lcn/com/chinatelecom/account/api/d/i;->b:Lorg/json/JSONObject;

    sget-object p3, Lcn/com/chinatelecom/account/api/d/b;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "SocketTimeoutException-"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p4, Lcn/com/chinatelecom/account/api/d/g;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0, p1}, Lcn/com/chinatelecom/account/api/CtAuth;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "SocketTimeoutException ："

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p4, Lcn/com/chinatelecom/account/api/d/g;->d:Ljava/lang/String;

    iget-object p4, v1, Lcn/com/chinatelecom/account/api/d/i;->b:Lorg/json/JSONObject;

    invoke-static {p3, p4, p1}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_31e
    .catchall {:try_start_2bc .. :try_end_31e} :catchall_329

    if-eqz v3, :cond_323

    :try_start_320
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_323
    if-eqz p2, :cond_328

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_328
    .catch Ljava/io/IOException; {:try_start_320 .. :try_end_328} :catch_151

    :cond_328
    :goto_328
    return-object v1

    :catchall_329
    move-exception p1

    move-object v6, v3

    move-object v3, p2

    :goto_32c
    if-eqz v6, :cond_334

    :try_start_32e
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    goto :goto_334

    :catch_332
    move-exception p2

    goto :goto_33a

    :cond_334
    :goto_334
    if-eqz v3, :cond_33d

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_339
    .catch Ljava/io/IOException; {:try_start_32e .. :try_end_339} :catch_332

    goto :goto_33d

    :goto_33a
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_33d
    :goto_33d
    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;ILcn/com/chinatelecom/account/api/d/g;)Lcn/com/chinatelecom/account/api/d/i;
    .registers 6

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0, p1, p2, p3, p4}, Lcn/com/chinatelecom/account/api/d/b;->d(Ljava/lang/String;Ljava/lang/String;ILcn/com/chinatelecom/account/api/d/g;)Lcn/com/chinatelecom/account/api/d/i;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/com/chinatelecom/account/api/d/b;->e(Ljava/lang/String;Ljava/lang/String;ILcn/com/chinatelecom/account/api/d/g;)Lcn/com/chinatelecom/account/api/d/i;

    move-result-object p1

    return-object p1
.end method
