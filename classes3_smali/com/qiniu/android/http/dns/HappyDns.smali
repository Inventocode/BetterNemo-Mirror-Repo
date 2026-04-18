.class public Lcom/qiniu/android/http/dns/HappyDns;
.super Ljava/lang/Object;
.source "HappyDns.java"

# interfaces
.implements Lcom/qiniu/android/http/dns/Dns;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/http/dns/HappyDns$DnsQueryErrorHandler;
    }
.end annotation


# instance fields
.field private errorHandler:Lcom/qiniu/android/http/dns/HappyDns$DnsQueryErrorHandler;

.field private httpDns:Lcom/qiniu/android/http/dns/HttpDns;

.field private systemDns:Lcom/qiniu/android/http/dns/SystemDns;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Lcom/qiniu/android/storage/GlobalConfiguration;->getInstance()Lcom/qiniu/android/storage/GlobalConfiguration;

    move-result-object v0

    iget v0, v0, Lcom/qiniu/android/storage/GlobalConfiguration;->dnsResolveTimeout:I

    .line 22
    new-instance v1, Lcom/qiniu/android/http/dns/SystemDns;

    invoke-direct {v1, v0}, Lcom/qiniu/android/http/dns/SystemDns;-><init>(I)V

    iput-object v1, p0, Lcom/qiniu/android/http/dns/HappyDns;->systemDns:Lcom/qiniu/android/http/dns/SystemDns;

    .line 23
    new-instance v1, Lcom/qiniu/android/http/dns/HttpDns;

    invoke-direct {v1, v0}, Lcom/qiniu/android/http/dns/HttpDns;-><init>(I)V

    iput-object v1, p0, Lcom/qiniu/android/http/dns/HappyDns;->httpDns:Lcom/qiniu/android/http/dns/HttpDns;

    return-void
.end method

.method private handleDnsError(Ljava/io/IOException;Ljava/lang/String;)V
    .registers 4

    .line 55
    iget-object v0, p0, Lcom/qiniu/android/http/dns/HappyDns;->errorHandler:Lcom/qiniu/android/http/dns/HappyDns$DnsQueryErrorHandler;

    if-eqz v0, :cond_7

    .line 56
    invoke-interface {v0, p1, p2}, Lcom/qiniu/android/dns/DnsManager$QueryErrorHandler;->queryError(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/util/List;
    .registers 4
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

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/qiniu/android/http/dns/HappyDns;->systemDns:Lcom/qiniu/android/http/dns/SystemDns;

    invoke-virtual {v0, p1}, Lcom/qiniu/android/http/dns/SystemDns;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_c

    :catch_7
    move-exception v0

    .line 38
    invoke-direct {p0, v0, p1}, Lcom/qiniu/android/http/dns/HappyDns;->handleDnsError(Ljava/io/IOException;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_15

    .line 40
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_15

    return-object v0

    .line 46
    :cond_15
    :try_start_15
    iget-object v1, p0, Lcom/qiniu/android/http/dns/HappyDns;->httpDns:Lcom/qiniu/android/http/dns/HttpDns;

    invoke-virtual {v1, p1}, Lcom/qiniu/android/http/dns/HttpDns;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1b} :catch_1c

    goto :goto_20

    :catch_1c
    move-exception v1

    .line 48
    invoke-direct {p0, v1, p1}, Lcom/qiniu/android/http/dns/HappyDns;->handleDnsError(Ljava/io/IOException;Ljava/lang/String;)V

    :goto_20
    return-object v0
.end method

.method setQueryErrorHandler(Lcom/qiniu/android/http/dns/HappyDns$DnsQueryErrorHandler;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/qiniu/android/http/dns/HappyDns;->errorHandler:Lcom/qiniu/android/http/dns/HappyDns$DnsQueryErrorHandler;

    return-void
.end method
