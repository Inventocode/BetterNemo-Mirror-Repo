.class public Lcn/codemao/android/account/bean/ReadBoyLoginVO;
.super Ljava/lang/Object;
.source "ReadBoyLoginVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private age:I

.field private agreementIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private avatar:Ljava/lang/String;

.field private gender:Ljava/lang/String;

.field private nonceStr:Ljava/lang/String;

.field private pid:Ljava/lang/String;

.field private realname:Ljava/lang/String;

.field private serial:Ljava/lang/String;

.field private sign:Ljava/lang/String;

.field private timestamp:J

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->nonceStr:Ljava/lang/String;

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->timestamp:J

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

    .line 170
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 173
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
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

    .line 177
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 179
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_30

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_30

    goto :goto_12

    .line 183
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

    .line 187
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private signByHMACSHA256(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "HmacSHA256"

    .line 196
    :try_start_2
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 197
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-direct {v2, p2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 198
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 199
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

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 122
    invoke-virtual {p0}, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->getUid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-virtual {p0}, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->getAvatar()Ljava/lang/String;

    move-result-object v1

    const-string v2, "avatar"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-virtual {p0}, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->getSerial()Ljava/lang/String;

    move-result-object v1

    const-string v2, "serial"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-virtual {p0}, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->getRealname()Ljava/lang/String;

    move-result-object v1

    const-string v2, "realname"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-virtual {p0}, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->getGender()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gender"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual {p0}, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->getNonceStr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nonceStr"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-virtual {p0}, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->getTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-virtual {p0}, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->getPid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-virtual {p0}, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->getAge()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "age"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-virtual {p0}, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->getAgreeProtocolIds()Ljava/util/List;

    move-result-object v1

    const-string v2, "agreementIds"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "vamf9k07z4920969szeicxaqx2f4l4hz"

    .line 132
    invoke-direct {p0, v0, v1}, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->generateSignString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-direct {p0, v0, v1}, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->signByHMACSHA256(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->sign:Ljava/lang/String;

    return-void
.end method

.method public getAge()I
    .registers 2

    .line 32
    iget v0, p0, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->age:I

    return v0
.end method

.method public getAgreeProtocolIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->agreementIds:Ljava/util/List;

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getNonceStr()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->nonceStr:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->pid:Ljava/lang/String;

    return-object v0
.end method

.method public getRealname()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->realname:Ljava/lang/String;

    return-object v0
.end method

.method public getSerial()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->serial:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .line 95
    iget-wide v0, p0, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->timestamp:J

    return-wide v0
.end method

.method public getUid()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setAge(I)V
    .registers 2

    .line 36
    iput p1, p0, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->age:I

    return-void
.end method

.method public setAgreeProtocolIds(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->agreementIds:Ljava/util/List;

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->gender:Ljava/lang/String;

    return-void
.end method

.method public setNonceStr(Ljava/lang/String;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->nonceStr:Ljava/lang/String;

    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->pid:Ljava/lang/String;

    return-void
.end method

.method public setRealname(Ljava/lang/String;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->realname:Ljava/lang/String;

    return-void
.end method

.method public setSerial(Ljava/lang/String;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->serial:Ljava/lang/String;

    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->sign:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .registers 3

    .line 99
    iput-wide p1, p0, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->timestamp:J

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->uid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReadBoyLoginVO{age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->age:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", avatar=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", gender=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->gender:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", nonceStr=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->nonceStr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->pid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", realname=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->realname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", serial=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->serial:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sign=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->sign:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", timestamp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->timestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", uid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->uid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
