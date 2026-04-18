.class public Lcom/qiniu/android/http/request/Request;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field public final allHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public host:Ljava/lang/String;

.field public httpBody:[B

.field public final httpMethod:Ljava/lang/String;

.field public ip:Ljava/lang/String;

.field public final timeout:I

.field public final urlString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BI)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BI)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/qiniu/android/http/request/Request;->urlString:Ljava/lang/String;

    if-eqz p2, :cond_8

    goto :goto_a

    :cond_8
    const-string p2, "GET"

    .line 30
    :goto_a
    iput-object p2, p0, Lcom/qiniu/android/http/request/Request;->httpMethod:Ljava/lang/String;

    if-eqz p3, :cond_f

    goto :goto_14

    .line 31
    :cond_f
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :goto_14
    iput-object p3, p0, Lcom/qiniu/android/http/request/Request;->allHeaders:Ljava/util/Map;

    if-eqz p4, :cond_19

    goto :goto_1c

    :cond_19
    const/4 p1, 0x0

    new-array p4, p1, [B

    .line 32
    :goto_1c
    iput-object p4, p0, Lcom/qiniu/android/http/request/Request;->httpBody:[B

    .line 33
    iput p5, p0, Lcom/qiniu/android/http/request/Request;->timeout:I

    return-void
.end method


# virtual methods
.method public getInetAddress()Ljava/net/InetAddress;
    .registers 4

    .line 37
    iget-object v0, p0, Lcom/qiniu/android/http/request/Request;->host:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/qiniu/android/http/request/Request;->ip:Ljava/lang/String;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_10

    goto :goto_21

    .line 42
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/qiniu/android/http/request/Request;->ip:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 43
    iget-object v2, p0, Lcom/qiniu/android/http/request/Request;->host:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-static {v2, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_20} :catch_21

    return-object v0

    :catch_21
    :cond_21
    :goto_21
    return-object v1
.end method
