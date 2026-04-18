.class public Lcn/codemao/android/account/bean/DuerOSLoginVO;
.super Ljava/lang/Object;
.source "DuerOSLoginVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private agreementIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private model:Ljava/lang/String;

.field private nonceStr:Ljava/lang/String;

.field private pid:Ljava/lang/String;

.field private serialNumber:Ljava/lang/String;

.field private sign:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private generateSignString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 122
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 124
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_30

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_30

    goto :goto_12

    .line 128
    :cond_30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_47
    const-string v0, "key="

    .line 132
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private signByHMACSHA256(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "HmacSHA256"

    .line 140
    :try_start_2
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 141
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-direct {v2, p2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 142
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 143
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_27} :catch_28

    return-object p1

    :catch_28
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public generateSign()V
    .registers 4

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 87
    invoke-virtual {p0}, Lcn/codemao/android/account/bean/DuerOSLoginVO;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "serialNumber"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-virtual {p0}, Lcn/codemao/android/account/bean/DuerOSLoginVO;->getNonceStr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nonceStr"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-virtual {p0}, Lcn/codemao/android/account/bean/DuerOSLoginVO;->getTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-virtual {p0}, Lcn/codemao/android/account/bean/DuerOSLoginVO;->getModel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "model"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-virtual {p0}, Lcn/codemao/android/account/bean/DuerOSLoginVO;->getPid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-virtual {p0}, Lcn/codemao/android/account/bean/DuerOSLoginVO;->getAgreementIds()Ljava/util/List;

    move-result-object v1

    const-string v2, "agreementIds"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DX82NGFhMx7xM994wPXCjnfhSQS6Aa50"

    .line 93
    invoke-direct {p0, v0, v1}, Lcn/codemao/android/account/bean/DuerOSLoginVO;->generateSignString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-direct {p0, v0, v1}, Lcn/codemao/android/account/bean/DuerOSLoginVO;->signByHMACSHA256(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/account/bean/DuerOSLoginVO;->sign:Ljava/lang/String;

    return-void
.end method

.method public getAgreementIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcn/codemao/android/account/bean/DuerOSLoginVO;->agreementIds:Ljava/util/List;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lcn/codemao/android/account/bean/DuerOSLoginVO;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getNonceStr()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Lcn/codemao/android/account/bean/DuerOSLoginVO;->nonceStr:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Lcn/codemao/android/account/bean/DuerOSLoginVO;->pid:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Lcn/codemao/android/account/bean/DuerOSLoginVO;->serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lcn/codemao/android/account/bean/DuerOSLoginVO;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .line 68
    iget-wide v0, p0, Lcn/codemao/android/account/bean/DuerOSLoginVO;->timestamp:J

    return-wide v0
.end method

.method public setAgreementIds(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcn/codemao/android/account/bean/DuerOSLoginVO;->agreementIds:Ljava/util/List;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcn/codemao/android/account/bean/DuerOSLoginVO;->model:Ljava/lang/String;

    return-void
.end method

.method public setNonceStr(Ljava/lang/String;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcn/codemao/android/account/bean/DuerOSLoginVO;->nonceStr:Ljava/lang/String;

    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcn/codemao/android/account/bean/DuerOSLoginVO;->pid:Ljava/lang/String;

    return-void
.end method

.method public setSerialNumber(Ljava/lang/String;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcn/codemao/android/account/bean/DuerOSLoginVO;->serialNumber:Ljava/lang/String;

    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcn/codemao/android/account/bean/DuerOSLoginVO;->sign:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .registers 3

    .line 72
    iput-wide p1, p0, Lcn/codemao/android/account/bean/DuerOSLoginVO;->timestamp:J

    return-void
.end method
