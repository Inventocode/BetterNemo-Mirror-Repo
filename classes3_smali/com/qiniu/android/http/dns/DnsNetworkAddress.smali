.class Lcom/qiniu/android/http/dns/DnsNetworkAddress;
.super Ljava/lang/Object;
.source "DnsNetworkAddress.java"

# interfaces
.implements Lcom/qiniu/android/http/dns/IDnsNetworkAddress;
.implements Ljava/io/Serializable;


# instance fields
.field private final hostValue:Ljava/lang/String;

.field private final ipValue:Ljava/lang/String;

.field private final sourceValue:Ljava/lang/String;

.field private final timestampValue:Ljava/lang/Long;

.field private final ttlValue:Ljava/lang/Long;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V
    .registers 6

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/qiniu/android/http/dns/DnsNetworkAddress;->hostValue:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/qiniu/android/http/dns/DnsNetworkAddress;->ipValue:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/qiniu/android/http/dns/DnsNetworkAddress;->ttlValue:Ljava/lang/Long;

    .line 51
    iput-object p4, p0, Lcom/qiniu/android/http/dns/DnsNetworkAddress;->sourceValue:Ljava/lang/String;

    .line 52
    iput-object p5, p0, Lcom/qiniu/android/http/dns/DnsNetworkAddress;->timestampValue:Ljava/lang/Long;

    return-void
.end method

.method static address(Lorg/json/JSONObject;)Lcom/qiniu/android/http/dns/DnsNetworkAddress;
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "hostValue"

    .line 24
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_7} :catch_9

    move-object v3, v1

    goto :goto_a

    :catch_9
    move-object v3, v0

    :goto_a
    :try_start_a
    const-string v1, "ipValue"

    .line 27
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_10} :catch_12

    move-object v4, v1

    goto :goto_13

    :catch_12
    move-object v4, v0

    :goto_13
    :try_start_13
    const-string v1, "ttlValue"

    .line 30
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_1d} :catch_1f

    move-object v5, v1

    goto :goto_20

    :catch_1f
    move-object v5, v0

    :goto_20
    :try_start_20
    const-string v1, "timestampValue"

    .line 33
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_2a} :catch_2c

    move-object v7, v1

    goto :goto_2d

    :catch_2c
    move-object v7, v0

    :goto_2d
    :try_start_2d
    const-string v1, "sourceValue"

    .line 36
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_33} :catch_33

    :catch_33
    move-object v6, v0

    .line 39
    new-instance p0, Lcom/qiniu/android/http/dns/DnsNetworkAddress;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/qiniu/android/http/dns/DnsNetworkAddress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V

    return-object p0
.end method


# virtual methods
.method public getHostValue()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/qiniu/android/http/dns/DnsNetworkAddress;->hostValue:Ljava/lang/String;

    return-object v0
.end method

.method public getIpValue()Ljava/lang/String;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/qiniu/android/http/dns/DnsNetworkAddress;->ipValue:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceValue()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/qiniu/android/http/dns/DnsNetworkAddress;->sourceValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestampValue()Ljava/lang/Long;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/qiniu/android/http/dns/DnsNetworkAddress;->timestampValue:Ljava/lang/Long;

    return-object v0
.end method

.method public getTtlValue()Ljava/lang/Long;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/qiniu/android/http/dns/DnsNetworkAddress;->ttlValue:Ljava/lang/Long;

    return-object v0
.end method

.method isValid()Z
    .registers 9

    .line 101
    iget-object v0, p0, Lcom/qiniu/android/http/dns/DnsNetworkAddress;->timestampValue:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/qiniu/android/http/dns/DnsNetworkAddress;->ipValue:Ljava/lang/String;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_10

    goto :goto_2a

    .line 104
    :cond_10
    invoke-static {}, Lcom/qiniu/android/storage/GlobalConfiguration;->getInstance()Lcom/qiniu/android/storage/GlobalConfiguration;

    move-result-object v0

    iget v0, v0, Lcom/qiniu/android/storage/GlobalConfiguration;->dnsCacheMaxTTL:I

    .line 105
    invoke-static {}, Lcom/qiniu/android/utils/Utils;->currentTimestamp()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-object v4, p0, Lcom/qiniu/android/http/dns/DnsNetworkAddress;->timestampValue:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    int-to-long v6, v0

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-gez v0, :cond_2a

    const/4 v1, 0x1

    :cond_2a
    :goto_2a
    return v1
.end method

.method needRefresh()Z
    .registers 9

    .line 109
    iget-object v0, p0, Lcom/qiniu/android/http/dns/DnsNetworkAddress;->timestampValue:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/qiniu/android/http/dns/DnsNetworkAddress;->ttlValue:Ljava/lang/Long;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/qiniu/android/http/dns/DnsNetworkAddress;->ipValue:Ljava/lang/String;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_14

    goto :goto_2e

    .line 112
    :cond_14
    iget-object v0, p0, Lcom/qiniu/android/http/dns/DnsNetworkAddress;->ttlValue:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    .line 113
    invoke-static {}, Lcom/qiniu/android/utils/Utils;->currentTimestamp()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-object v4, p0, Lcom/qiniu/android/http/dns/DnsNetworkAddress;->timestampValue:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    int-to-long v6, v0

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_2e

    const/4 v1, 0x1

    :cond_2e
    :goto_2e
    return v1
.end method

.method toJson()Lorg/json/JSONObject;
    .registers 4

    .line 56
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "hostValue"

    .line 58
    iget-object v2, p0, Lcom/qiniu/android/http/dns/DnsNetworkAddress;->hostValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_c} :catch_c

    :catch_c
    :try_start_c
    const-string v1, "ipValue"

    .line 61
    iget-object v2, p0, Lcom/qiniu/android/http/dns/DnsNetworkAddress;->ipValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_13} :catch_13

    :catch_13
    :try_start_13
    const-string v1, "ttlValue"

    .line 64
    iget-object v2, p0, Lcom/qiniu/android/http/dns/DnsNetworkAddress;->ttlValue:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1a
    const-string v1, "timestampValue"

    .line 67
    iget-object v2, p0, Lcom/qiniu/android/http/dns/DnsNetworkAddress;->timestampValue:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_21} :catch_21

    :catch_21
    :try_start_21
    const-string v1, "sourceValue"

    .line 70
    iget-object v2, p0, Lcom/qiniu/android/http/dns/DnsNetworkAddress;->sourceValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_28} :catch_28

    :catch_28
    return-object v0
.end method
