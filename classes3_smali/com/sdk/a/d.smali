.class public Lcom/sdk/a/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sdk/a/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String; = "d"

.field public static d:Z

.field public static final e:Ljava/lang/String;

.field public static final f:Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/sdk/a/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sdk/a/e<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/sdk/f/c;->b:Z

    sput-boolean v0, Lcom/sdk/a/d;->d:Z

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sdk/a/d;->e:Ljava/lang/String;

    new-instance v0, Lcom/sdk/a/d$a;

    invoke-direct {v0}, Lcom/sdk/a/d$a;-><init>()V

    sput-object v0, Lcom/sdk/a/d;->f:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sdk/a/e;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sdk/a/e<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sdk/a/d;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/sdk/a/d;->b:Lcom/sdk/a/e;

    return-void
.end method


# virtual methods
.method public a()Lcom/sdk/a/e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sdk/a/e<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sdk/a/d;->b:Lcom/sdk/a/e;

    return-object v0
.end method

.method public a(Ljava/lang/String;Z)Ljava/net/HttpURLConnection;
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const-string v0, ""

    :try_start_2
    invoke-static {p1}, Lcom/sdk/n/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_100

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sdk/a/d;->a:Landroid/content/Context;

    sget v4, Lcom/sdk/o/b;->a:I

    invoke-static {v3}, Lcom/sdk/o/a;->a(Landroid/content/Context;)Lcom/sdk/o/b$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sdk/o/b$b;->a()I

    move-result v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-virtual {p0, p1}, Lcom/sdk/a/d;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_57

    const/4 p1, 0x1

    if-eq v3, p1, :cond_57

    iget-object v4, p0, Lcom/sdk/a/d;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/sdk/base/framework/utils/app/AppUtils;->getAndroidSDKVersion(Landroid/content/Context;)I

    move-result v4

    const/16 v5, 0x17

    if-ge v4, v5, :cond_48

    invoke-virtual {p0}, Lcom/sdk/a/d;->c()I

    move-result v3

    const/16 v5, 0x15

    if-le v4, v5, :cond_46

    if-eq v3, p1, :cond_46

    new-instance p1, Lcom/sdk/a/a;

    iget-object v4, p0, Lcom/sdk/a/d;->a:Landroid/content/Context;

    invoke-direct {p1, v4, v1}, Lcom/sdk/a/a;-><init>(Landroid/content/Context;Ljava/net/URL;)V

    goto :goto_4f

    :cond_46
    move-object p1, v2

    goto :goto_53

    :cond_48
    new-instance p1, Lcom/sdk/a/a;

    iget-object v4, p0, Lcom/sdk/a/d;->a:Landroid/content/Context;

    invoke-direct {p1, v4, v1}, Lcom/sdk/a/a;-><init>(Landroid/content/Context;Ljava/net/URL;)V

    :goto_4f
    invoke-virtual {p1}, Lcom/sdk/a/a;->a()Ljava/net/HttpURLConnection;

    move-result-object p1

    :goto_53
    if-nez p1, :cond_56

    return-object v2

    :cond_56
    move-object v2, p1

    :cond_57
    if-nez v2, :cond_61

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/net/HttpURLConnection;

    goto :goto_64

    :cond_61
    if-nez v3, :cond_64

    const/4 v3, 0x2

    :cond_64
    :goto_64
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sdk/n/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_91

    if-eqz p2, :cond_91

    invoke-static {}, Lcom/sdk/base/module/manager/SDKManager;->isSmartTrust()Z

    move-result p2
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_78} :catch_101

    if-eqz p2, :cond_91

    const-string p2, "https"

    :try_start_7c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_91

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    sget-object p1, Lcom/sdk/a/d;->f:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v2, p1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_91
    const/16 p1, 0x7530

    invoke-virtual {v2, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v2, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object p1, p0, Lcom/sdk/a/d;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/sdk/l/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "user-agent"

    invoke-virtual {v2, p2, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_a8} :catch_101

    const-string p1, "netType"

    :try_start_aa
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "os"

    const-string p2, "android"

    invoke-virtual {v2, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sdk/a/d;->b:Lcom/sdk/a/e;

    iget-object p1, p1, Lcom/sdk/a/e;->e:Ljava/util/HashMap;

    if-eqz p1, :cond_100

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p2

    if-lez p2, :cond_100

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_100

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_ff} :catch_101

    goto :goto_d7

    :cond_100
    return-object v2

    :catch_101
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sdk/n/c;->b(Ljava/lang/String;)V

    sget-object p2, Lcom/sdk/a/d;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/sdk/a/d;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/sdk/n/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    throw p1
.end method

.method public a(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .registers 13

    const-string v0, "--"

    const-string v1, "\r\n"

    if-eqz p1, :cond_19b

    iget-object v2, p0, Lcom/sdk/a/d;->b:Lcom/sdk/a/e;

    const-string v3, "Content-Type"

    const/4 v4, 0x0

    if-eqz v2, :cond_31

    iget-object v2, v2, Lcom/sdk/a/e;->d:Ljava/util/ArrayList;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_18

    goto :goto_1a

    :cond_18
    const/4 v2, 0x1

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v2, 0x0

    :goto_1b
    if-eqz v2, :cond_31

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "multipart/form-data; boundary="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/sdk/a/d;->e:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_33

    :cond_31
    const-string v2, "application/x-www-form-urlencoded"

    :goto_33
    invoke-virtual {p1, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Charset"

    const-string v3, "UTF-8"

    invoke-virtual {p1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "connection"

    const-string v3, "keep-alive"

    invoke-virtual {p1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sdk/a/d;->b:Lcom/sdk/a/e;

    if-eqz v2, :cond_19b

    iget-object v2, v2, Lcom/sdk/a/e;->a:Ljava/lang/String;

    const-string v3, "POST"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_190

    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v2, p0, Lcom/sdk/a/d;->b:Lcom/sdk/a/e;

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz v2, :cond_184

    :try_start_64
    iget-object v5, p0, Lcom/sdk/a/d;->b:Lcom/sdk/a/e;

    iget-object v5, v5, Lcom/sdk/a/e;->c:Ljava/util/TreeMap;

    invoke-virtual {v2, v5}, Lcom/sdk/a/e;->a(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/sdk/a/e;->b:Ljava/lang/String;

    const-string v7, "/dro/log/v1.0/log"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7c

    iget-object v5, v2, Lcom/sdk/a/e;->c:Ljava/util/TreeMap;

    invoke-virtual {v5}, Ljava/util/TreeMap;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_7c
    iget-object v2, v2, Lcom/sdk/a/e;->d:Ljava/util/ArrayList;
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_7e} :catch_16d

    const-string v6, "utf-8"

    if-eqz v2, :cond_165

    :try_start_82
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_165

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/sdk/a/d;->e:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string v7, "Content-Disposition: form-data; name=\"params\""

    invoke-virtual {v7, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string v7, "\r\n\r\n"

    invoke-virtual {v7, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v5, 0x0

    :goto_c4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_184

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    if-eqz v7, :cond_161

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/sdk/a/d;->e:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Content-Disposition: form-data; name=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\"; filename=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\"\r\n"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string v7, "Content-Type: application/octet-stream\r\n"

    invoke-virtual {v7, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string v7, "Content-Transfer-Encoding: binary\r\n\r\n"

    invoke-virtual {v7, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 v7, 0x400

    new-array v7, v7, [B

    :goto_131
    invoke-virtual {v8, v7}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_13c

    invoke-virtual {v3, v7, v4, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_131

    :cond_13c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\r\n--"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/sdk/a/d;->e:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "--\r\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    :cond_161
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_c4

    :cond_165
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_16c
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_16c} :catch_16d

    goto :goto_184

    :catch_16d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sdk/n/c;->b(Ljava/lang/String;)V

    sget-object v1, Lcom/sdk/a/d;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v2, Lcom/sdk/a/d;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/sdk/n/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    :cond_184
    :goto_184
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_19b

    :cond_190
    const-string v0, "GET"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    :cond_19b
    :goto_19b
    return-object p1
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 4

    invoke-static {}, Lcom/sdk/base/module/manager/SDKManager;->isIsStrong()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    const-string v0, "/api/netm/v1.0/qhbt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "/api/netm/v1.0/qhbv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "/st/api/v1.0/ses"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_20

    goto :goto_22

    :cond_20
    const/4 p1, 0x1

    return p1

    :cond_22
    :goto_22
    return v1
.end method

.method public b()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/sdk/a/d;->b:Lcom/sdk/a/e;

    if-eqz v1, :cond_66

    iget-object v2, v1, Lcom/sdk/a/e;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/sdk/a/e;->b:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_56

    const-string v3, "GET"

    :try_start_b
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/sdk/a/d;->b:Lcom/sdk/a/e;

    iget-object v3, v2, Lcom/sdk/a/e;->c:Ljava/util/TreeMap;

    invoke-virtual {v2, v3}, Lcom/sdk/a/e;->a(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sdk/n/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_55

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4e

    :cond_31
    iget-object v2, p0, Lcom/sdk/a/d;->b:Lcom/sdk/a/e;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/sdk/n/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_55

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?unikey="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v0

    :goto_4e
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_55} :catch_56

    :cond_55
    return-object v1

    :catch_56
    move-exception v1

    sget-object v2, Lcom/sdk/a/d;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-boolean v3, Lcom/sdk/a/d;->d:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/sdk/n/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    :cond_66
    return-object v0
.end method

.method public c()I
    .registers 4

    iget-object v0, p0, Lcom/sdk/a/d;->b:Lcom/sdk/a/e;

    iget-object v0, v0, Lcom/sdk/a/e;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sdk/a/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/sdk/n/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    iget-object v0, p0, Lcom/sdk/a/d;->a:Landroid/content/Context;

    sget v1, Lcom/sdk/o/b;->a:I

    invoke-static {v0}, Lcom/sdk/o/a;->a(Landroid/content/Context;)Lcom/sdk/o/b$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdk/o/b$b;->a()I

    move-result v0

    return v0
.end method
