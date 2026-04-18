.class public final Lcom/qiniu/android/dns/http/DnspodFree;
.super Ljava/lang/Object;
.source "DnspodFree.java"

# interfaces
.implements Lcom/qiniu/android/dns/IResolver;


# instance fields
.field private final ip:Ljava/lang/String;

.field private final timeout:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/qiniu/android/dns/http/DnspodFree;->ip:Ljava/lang/String;

    .line 26
    iput p2, p0, Lcom/qiniu/android/dns/http/DnspodFree;->timeout:I

    return-void
.end method


# virtual methods
.method public resolve(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Lcom/qiniu/android/dns/Record;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    new-instance p2, Ljava/net/URL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qiniu/android/dns/http/DnspodFree;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/d?ttl=1&dn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/16 p2, 0xbb8

    .line 37
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 38
    iget p2, p0, Lcom/qiniu/android/dns/http/DnspodFree;->timeout:I

    mul-int/lit16 p2, p2, 0x3e8

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 39
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/4 v0, 0x0

    const/16 v1, 0xc8

    if-eq p2, v1, :cond_3e

    return-object v0

    .line 44
    :cond_3e
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p2

    if-lez p2, :cond_9d

    const/16 v1, 0x400

    if-le p2, v1, :cond_49

    goto :goto_9d

    .line 48
    :cond_49
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 49
    new-array p2, p2, [B

    .line 50
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 51
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    if-gtz v1, :cond_59

    return-object v0

    .line 55
    :cond_59
    new-instance p1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p1, p2, v2, v1}, Ljava/lang/String;-><init>([BII)V

    const-string p2, ","

    .line 56
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 57
    array-length p2, p1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_6a

    return-object v0

    :cond_6a
    const/4 p2, 0x1

    .line 62
    :try_start_6b
    aget-object p2, p1, p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_71} :catch_9d

    .line 66
    aget-object p1, p1, v2

    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 67
    array-length v1, p1

    if-nez v1, :cond_7d

    return-object v0

    .line 70
    :cond_7d
    array-length v0, p1

    new-array v0, v0, [Lcom/qiniu/android/dns/Record;

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v10, v3, v5

    .line 72
    :goto_88
    array-length v1, p1

    if-ge v2, v1, :cond_9d

    .line 73
    new-instance v1, Lcom/qiniu/android/dns/Record;

    aget-object v4, p1, v2

    const/4 v5, 0x1

    sget-object v9, Lcom/qiniu/android/dns/Record$Source;->DnspodFree:Lcom/qiniu/android/dns/Record$Source;

    move-object v3, v1

    move v6, p2

    move-wide v7, v10

    invoke-direct/range {v3 .. v9}, Lcom/qiniu/android/dns/Record;-><init>(Ljava/lang/String;IIJLcom/qiniu/android/dns/Record$Source;)V

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_88

    :catch_9d
    :cond_9d
    :goto_9d
    return-object v0
.end method
