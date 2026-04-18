.class public Lcom/qiniu/android/http/dns/HttpDns;
.super Ljava/lang/Object;
.source "HttpDns.java"

# interfaces
.implements Lcom/qiniu/android/http/dns/Dns;


# instance fields
.field private httpResolver:Lcom/qiniu/android/dns/IResolver;


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/qiniu/android/dns/http/DnspodFree;

    const-string v1, "119.29.29.29"

    invoke-direct {v0, v1, p1}, Lcom/qiniu/android/dns/http/DnspodFree;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/qiniu/android/http/dns/HttpDns;->httpResolver:Lcom/qiniu/android/dns/IResolver;

    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/qiniu/android/http/dns/IDnsNetworkAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/qiniu/android/http/dns/HttpDns;->httpResolver:Lcom/qiniu/android/dns/IResolver;

    new-instance v1, Lcom/qiniu/android/dns/Domain;

    invoke-direct {v1, p1}, Lcom/qiniu/android/dns/Domain;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/qiniu/android/dns/IResolver;->resolve(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Lcom/qiniu/android/dns/Record;

    move-result-object v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_43

    if-eqz v0, :cond_42

    .line 32
    array-length v1, v0

    if-nez v1, :cond_12

    goto :goto_42

    .line 36
    :cond_12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    array-length v2, v0

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v2, :cond_41

    aget-object v4, v0, v3

    .line 38
    new-instance v11, Lcom/qiniu/android/http/dns/DnsNetworkAddress;

    iget-object v7, v4, Lcom/qiniu/android/dns/Record;->value:Ljava/lang/String;

    iget-wide v4, v4, Lcom/qiniu/android/dns/Record;->timeStamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v9, "httpdns"

    move-object v5, v11

    move-object v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/qiniu/android/http/dns/DnsNetworkAddress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V

    .line 39
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_41
    return-object v1

    :cond_42
    :goto_42
    return-object v2

    :catch_43
    move-exception p1

    .line 29
    new-instance v0, Ljava/net/UnknownHostException;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
