.class public Lcom/qiniu/android/http/dns/DnsCacheInfo;
.super Ljava/lang/Object;
.source "DnsCacheInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private currentTime:Ljava/lang/String;

.field private info:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/qiniu/android/http/dns/IDnsNetworkAddress;",
            ">;>;"
        }
    .end annotation
.end field

.field private localIp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/qiniu/android/http/dns/IDnsNetworkAddress;",
            ">;>;)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/qiniu/android/http/dns/DnsCacheInfo;->currentTime:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lcom/qiniu/android/http/dns/DnsCacheInfo;->localIp:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lcom/qiniu/android/http/dns/DnsCacheInfo;->info:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static createDnsCacheInfoByData([B)Lcom/qiniu/android/http/dns/DnsCacheInfo;
    .registers 10

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 28
    :cond_4
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_71

    .line 35
    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    :try_start_13
    const-string v2, "currentTime"

    .line 38
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_19} :catch_1a

    goto :goto_1b

    :catch_1a
    move-object v2, v0

    :goto_1b
    :try_start_1b
    const-string v3, "localIp"

    .line 42
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-object v3, v0

    :goto_23
    :try_start_23
    const-string v4, "info"

    .line 48
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_29} :catch_2a

    goto :goto_2b

    :catch_2a
    move-object v1, v0

    :goto_2b
    if-eqz v2, :cond_71

    if-eqz v3, :cond_71

    if-nez v1, :cond_32

    goto :goto_71

    .line 56
    :cond_32
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :cond_36
    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 59
    :try_start_42
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v7, 0x0

    .line 61
    :goto_4c
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_60

    .line 62
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8}, Lcom/qiniu/android/http/dns/DnsNetworkAddress;->address(Lorg/json/JSONObject;)Lcom/qiniu/android/http/dns/DnsNetworkAddress;

    move-result-object v8

    .line 63
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_4c

    .line 65
    :cond_60
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_36

    .line 66
    invoke-virtual {p0, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_69} :catch_6a

    goto :goto_36

    :catch_6a
    nop

    goto :goto_36

    .line 72
    :cond_6c
    new-instance v0, Lcom/qiniu/android/http/dns/DnsCacheInfo;

    invoke-direct {v0, v2, v3, p0}, Lcom/qiniu/android/http/dns/DnsCacheInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;)V

    :catch_71
    :cond_71
    :goto_71
    return-object v0
.end method


# virtual methods
.method public cacheKey()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/qiniu/android/http/dns/DnsCacheInfo;->localIp:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/qiniu/android/http/dns/IDnsNetworkAddress;",
            ">;>;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/qiniu/android/http/dns/DnsCacheInfo;->info:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method getLocalIp()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/qiniu/android/http/dns/DnsCacheInfo;->localIp:Ljava/lang/String;

    return-object v0
.end method

.method public setInfo(Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/qiniu/android/http/dns/IDnsNetworkAddress;",
            ">;>;)V"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/qiniu/android/http/dns/DnsCacheInfo;->info:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public toJsonData()[B
    .registers 9

    .line 113
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "currentTime"

    .line 115
    iget-object v2, p0, Lcom/qiniu/android/http/dns/DnsCacheInfo;->currentTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_c} :catch_c

    :catch_c
    :try_start_c
    const-string v1, "localIp"

    .line 119
    iget-object v2, p0, Lcom/qiniu/android/http/dns/DnsCacheInfo;->currentTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_13} :catch_13

    .line 123
    :catch_13
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 124
    iget-object v2, p0, Lcom/qiniu/android/http/dns/DnsCacheInfo;->info:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_22
    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 125
    iget-object v4, p0, Lcom/qiniu/android/http/dns/DnsCacheInfo;->info:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 127
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    if-eqz v4, :cond_5d

    .line 129
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_41
    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/qiniu/android/http/dns/IDnsNetworkAddress;

    .line 130
    instance-of v7, v6, Lcom/qiniu/android/http/dns/DnsNetworkAddress;

    if-eqz v7, :cond_41

    .line 132
    :try_start_51
    check-cast v6, Lcom/qiniu/android/http/dns/DnsNetworkAddress;

    invoke-virtual {v6}, Lcom/qiniu/android/http/dns/DnsNetworkAddress;->toJson()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5a
    .catch Lorg/json/JSONException; {:try_start_51 .. :try_end_5a} :catch_5b

    goto :goto_41

    :catch_5b
    nop

    goto :goto_41

    .line 139
    :cond_5d
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_22

    .line 141
    :try_start_63
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_66
    .catch Lorg/json/JSONException; {:try_start_63 .. :try_end_66} :catch_67

    goto :goto_22

    :catch_67
    nop

    goto :goto_22

    :cond_69
    :try_start_69
    const-string v2, "info"

    .line 147
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6e
    .catch Lorg/json/JSONException; {:try_start_69 .. :try_end_6e} :catch_6e

    .line 150
    :catch_6e
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"currentTime\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qiniu/android/http/dns/DnsCacheInfo;->currentTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", \"localIp\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qiniu/android/http/dns/DnsCacheInfo;->localIp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
