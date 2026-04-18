.class public Lcom/qiniu/android/http/dns/DnsPrefetcher;
.super Ljava/lang/Object;
.source "DnsPrefetcher.java"


# static fields
.field private static final dnsPrefetcher:Lcom/qiniu/android/http/dns/DnsPrefetcher;


# instance fields
.field private addressDictionary:Ljava/util/concurrent/ConcurrentHashMap;
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

.field private dnsCacheInfo:Lcom/qiniu/android/http/dns/DnsCacheInfo;

.field private final happyDns:Lcom/qiniu/android/http/dns/HappyDns;

.field private isPrefetching:Z

.field public lastPrefetchErrorMessage:Ljava/lang/String;

.field private prefetchHosts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Lcom/qiniu/android/http/dns/DnsPrefetcher;

    invoke-direct {v0}, Lcom/qiniu/android/http/dns/DnsPrefetcher;-><init>()V

    sput-object v0, Lcom/qiniu/android/http/dns/DnsPrefetcher;->dnsPrefetcher:Lcom/qiniu/android/http/dns/DnsPrefetcher;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/qiniu/android/http/dns/DnsPrefetcher;->isPrefetching:Z

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/qiniu/android/http/dns/DnsPrefetcher;->dnsCacheInfo:Lcom/qiniu/android/http/dns/DnsCacheInfo;

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/http/dns/DnsPrefetcher;->prefetchHosts:Ljava/util/HashSet;

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/http/dns/DnsPrefetcher;->addressDictionary:Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    new-instance v0, Lcom/qiniu/android/http/dns/HappyDns;

    invoke-direct {v0}, Lcom/qiniu/android/http/dns/HappyDns;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/http/dns/DnsPrefetcher;->happyDns:Lcom/qiniu/android/http/dns/HappyDns;

    .line 38
    new-instance v1, Lcom/qiniu/android/http/dns/DnsPrefetcher$1;

    invoke-direct {v1, p0}, Lcom/qiniu/android/http/dns/DnsPrefetcher$1;-><init>(Lcom/qiniu/android/http/dns/DnsPrefetcher;)V

    invoke-virtual {v0, v1}, Lcom/qiniu/android/http/dns/HappyDns;->setQueryErrorHandler(Lcom/qiniu/android/http/dns/HappyDns$DnsQueryErrorHandler;)V

    return-void
.end method

.method private clearPreHosts()V
    .registers 2

    .line 290
    iget-object v0, p0, Lcom/qiniu/android/http/dns/DnsPrefetcher;->addressDictionary:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method private endPreFetch()V
    .registers 2

    const/4 v0, 0x0

    .line 172
    invoke-direct {p0, v0}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->setPrefetching(Z)V

    return-void
.end method

.method private getCurrentZoneHosts(Lcom/qiniu/android/common/Zone;Lcom/qiniu/android/storage/UpToken;)[Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_50

    if-nez p2, :cond_5

    goto :goto_50

    .line 303
    :cond_5
    new-instance v0, Lcom/qiniu/android/utils/Wait;

    invoke-direct {v0}, Lcom/qiniu/android/utils/Wait;-><init>()V

    .line 305
    new-instance v1, Lcom/qiniu/android/http/dns/DnsPrefetcher$2;

    invoke-direct {v1, p0, v0}, Lcom/qiniu/android/http/dns/DnsPrefetcher$2;-><init>(Lcom/qiniu/android/http/dns/DnsPrefetcher;Lcom/qiniu/android/utils/Wait;)V

    invoke-virtual {p1, p2, v1}, Lcom/qiniu/android/common/Zone;->preQuery(Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/common/Zone$QueryHandler;)V

    .line 312
    invoke-virtual {v0}, Lcom/qiniu/android/utils/Wait;->startWait()V

    .line 314
    invoke-virtual {p1, p2}, Lcom/qiniu/android/common/Zone;->getZonesInfo(Lcom/qiniu/android/storage/UpToken;)Lcom/qiniu/android/common/ZonesInfo;

    move-result-object p1

    .line 315
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_46

    .line 316
    iget-object v0, p1, Lcom/qiniu/android/common/ZonesInfo;->zonesInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_46

    .line 317
    iget-object p1, p1, Lcom/qiniu/android/common/ZonesInfo;->zonesInfo:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_30
    :goto_30
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qiniu/android/common/ZoneInfo;

    if-eqz v0, :cond_30

    .line 318
    iget-object v0, v0, Lcom/qiniu/android/common/ZoneInfo;->allHosts:Ljava/util/List;

    if-eqz v0, :cond_30

    .line 319
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_30

    :cond_46
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 323
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_50
    :goto_50
    const/4 p1, 0x0

    return-object p1
.end method

.method private declared-synchronized getDnsCacheInfo()Lcom/qiniu/android/http/dns/DnsCacheInfo;
    .registers 2

    monitor-enter p0

    .line 355
    :try_start_1
    iget-object v0, p0, Lcom/qiniu/android/http/dns/DnsPrefetcher;->dnsCacheInfo:Lcom/qiniu/android/http/dns/DnsCacheInfo;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance()Lcom/qiniu/android/http/dns/DnsPrefetcher;
    .registers 1

    .line 47
    sget-object v0, Lcom/qiniu/android/http/dns/DnsPrefetcher;->dnsPrefetcher:Lcom/qiniu/android/http/dns/DnsPrefetcher;

    return-object v0
.end method

.method private getLocalPreHost()[Ljava/lang/String;
    .registers 2

    const-string v0, "uplog.qbox.me"

    .line 295
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private preFetchHost(Ljava/lang/String;Lcom/qiniu/android/http/dns/Dns;)Z
    .registers 14

    const/4 v0, 0x0

    if-eqz p1, :cond_8a

    .line 211
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_8a

    .line 215
    :cond_b
    iget-object v1, p0, Lcom/qiniu/android/http/dns/DnsPrefetcher;->addressDictionary:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v1, :cond_29

    .line 216
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_29

    .line 217
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qiniu/android/http/dns/DnsNetworkAddress;

    .line 218
    invoke-virtual {v1}, Lcom/qiniu/android/http/dns/DnsNetworkAddress;->needRefresh()Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    .line 223
    :cond_29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 225
    :try_start_2e
    invoke-interface {p2, p1}, Lcom/qiniu/android/http/dns/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_7e

    .line 226
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7e

    .line 227
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qiniu/android/http/dns/IDnsNetworkAddress;

    .line 228
    new-instance v10, Lcom/qiniu/android/http/dns/DnsNetworkAddress;

    invoke-interface {v3}, Lcom/qiniu/android/http/dns/IDnsNetworkAddress;->getHostValue()Ljava/lang/String;

    move-result-object v5

    .line 229
    invoke-interface {v3}, Lcom/qiniu/android/http/dns/IDnsNetworkAddress;->getIpValue()Ljava/lang/String;

    move-result-object v6

    .line 230
    invoke-interface {v3}, Lcom/qiniu/android/http/dns/IDnsNetworkAddress;->getTtlValue()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_63

    invoke-interface {v3}, Lcom/qiniu/android/http/dns/IDnsNetworkAddress;->getTtlValue()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_6a

    :cond_63
    invoke-static {}, Lcom/qiniu/android/storage/GlobalConfiguration;->getInstance()Lcom/qiniu/android/storage/GlobalConfiguration;

    move-result-object v4

    iget v4, v4, Lcom/qiniu/android/storage/GlobalConfiguration;->dnsCacheTime:I

    int-to-long v7, v4

    :goto_6a
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 231
    invoke-interface {v3}, Lcom/qiniu/android/http/dns/IDnsNetworkAddress;->getSourceValue()Ljava/lang/String;

    move-result-object v8

    .line 232
    invoke-interface {v3}, Lcom/qiniu/android/http/dns/IDnsNetworkAddress;->getTimestampValue()Ljava/lang/Long;

    move-result-object v9

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/qiniu/android/http/dns/DnsNetworkAddress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V

    .line 233
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7d
    .catch Ljava/net/UnknownHostException; {:try_start_2e .. :try_end_7d} :catch_7e

    goto :goto_3e

    .line 239
    :catch_7e
    :cond_7e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_8a

    .line 240
    iget-object p2, p0, Lcom/qiniu/android/http/dns/DnsPrefetcher;->addressDictionary:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_8a
    :goto_8a
    return v0
.end method

.method private preFetchHosts([Ljava/lang/String;)V
    .registers 3

    .line 178
    invoke-static {}, Lcom/qiniu/android/storage/GlobalConfiguration;->getInstance()Lcom/qiniu/android/storage/GlobalConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/qiniu/android/storage/GlobalConfiguration;->dns:Lcom/qiniu/android/http/dns/Dns;

    invoke-direct {p0, p1, v0}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->preFetchHosts([Ljava/lang/String;Lcom/qiniu/android/http/dns/Dns;)[Ljava/lang/String;

    move-result-object p1

    .line 179
    iget-object v0, p0, Lcom/qiniu/android/http/dns/DnsPrefetcher;->happyDns:Lcom/qiniu/android/http/dns/HappyDns;

    invoke-direct {p0, p1, v0}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->preFetchHosts([Ljava/lang/String;Lcom/qiniu/android/http/dns/Dns;)[Ljava/lang/String;

    return-void
.end method

.method private preFetchHosts([Ljava/lang/String;Lcom/qiniu/android/http/dns/Dns;)[Ljava/lang/String;
    .registers 10

    if-eqz p1, :cond_3b

    .line 183
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_3b

    :cond_6
    if-nez p2, :cond_9

    return-object p1

    .line 190
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v1, :cond_32

    aget-object v4, p1, v3

    const/4 v5, 0x0

    .line 195
    :goto_16
    invoke-static {}, Lcom/qiniu/android/storage/GlobalConfiguration;->getInstance()Lcom/qiniu/android/storage/GlobalConfiguration;

    move-result-object v6

    iget v6, v6, Lcom/qiniu/android/storage/GlobalConfiguration;->dnsRepreHostNum:I

    if-ge v5, v6, :cond_29

    .line 196
    invoke-direct {p0, v4, p2}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->preFetchHost(Ljava/lang/String;Lcom/qiniu/android/http/dns/Dns;)Z

    move-result v6

    if-eqz v6, :cond_26

    const/4 v5, 0x1

    goto :goto_2a

    :cond_26
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :cond_29
    const/4 v5, 0x0

    :goto_2a
    if-nez v5, :cond_2f

    .line 204
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_32
    new-array p1, v2, [Ljava/lang/String;

    .line 207
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_3b
    :goto_3b
    const/4 p1, 0x0

    return-object p1
.end method

.method private declared-synchronized prepareToPreFetch()Z
    .registers 3

    monitor-enter p0

    .line 154
    :try_start_1
    invoke-virtual {p0}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->isDnsOpen()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_35

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 155
    monitor-exit p0

    return v1

    .line 158
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->isPrefetching()Z

    move-result v0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_35

    if-eqz v0, :cond_12

    .line 159
    monitor-exit p0

    return v1

    .line 162
    :cond_12
    :try_start_12
    invoke-static {}, Lcom/qiniu/android/utils/AndroidNetwork;->getHostIP()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 163
    invoke-direct {p0}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->getDnsCacheInfo()Lcom/qiniu/android/http/dns/DnsCacheInfo;

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-direct {p0}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->getDnsCacheInfo()Lcom/qiniu/android/http/dns/DnsCacheInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qiniu/android/http/dns/DnsCacheInfo;->getLocalIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 164
    :cond_2c
    invoke-direct {p0}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->clearPreHosts()V

    :cond_2f
    const/4 v0, 0x1

    .line 167
    invoke-direct {p0, v0}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->setPrefetching(Z)V
    :try_end_33
    .catchall {:try_start_12 .. :try_end_33} :catchall_35

    .line 168
    monitor-exit p0

    return v0

    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private recorderDnsCache()Z
    .registers 6

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qiniu/android/utils/Utils;->currentTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-static {}, Lcom/qiniu/android/utils/AndroidNetwork;->getHostIP()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1d

    return v2

    .line 269
    :cond_1d
    new-instance v3, Lcom/qiniu/android/http/dns/DnsCacheInfo;

    iget-object v4, p0, Lcom/qiniu/android/http/dns/DnsPrefetcher;->addressDictionary:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3, v0, v1, v4}, Lcom/qiniu/android/http/dns/DnsCacheInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 273
    :try_start_24
    new-instance v0, Lcom/qiniu/android/http/dns/DnsCacheFile;

    invoke-static {}, Lcom/qiniu/android/storage/GlobalConfiguration;->getInstance()Lcom/qiniu/android/storage/GlobalConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/qiniu/android/storage/GlobalConfiguration;->dnsCacheDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/qiniu/android/http/dns/DnsCacheFile;-><init>(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2f} :catch_42

    .line 278
    invoke-direct {p0, v3}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->setDnsCacheInfo(Lcom/qiniu/android/http/dns/DnsCacheInfo;)V

    .line 280
    invoke-virtual {v3}, Lcom/qiniu/android/http/dns/DnsCacheInfo;->toJsonData()[B

    move-result-object v1

    if-nez v1, :cond_39

    return v2

    .line 284
    :cond_39
    invoke-virtual {v3}, Lcom/qiniu/android/http/dns/DnsCacheInfo;->cacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/qiniu/android/http/dns/DnsCacheFile;->set(Ljava/lang/String;[B)V

    const/4 v0, 0x1

    return v0

    :catch_42
    return v2
.end method

.method private recoverDnsCache([B)Z
    .registers 5

    .line 249
    invoke-static {p1}, Lcom/qiniu/android/http/dns/DnsCacheInfo;->createDnsCacheInfoByData([B)Lcom/qiniu/android/http/dns/DnsCacheInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_29

    .line 250
    invoke-virtual {p1}, Lcom/qiniu/android/http/dns/DnsCacheInfo;->getInfo()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-virtual {p1}, Lcom/qiniu/android/http/dns/DnsCacheInfo;->getInfo()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-nez v1, :cond_18

    goto :goto_29

    .line 254
    :cond_18
    iget-object v1, p0, Lcom/qiniu/android/http/dns/DnsPrefetcher;->addressDictionary:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/qiniu/android/http/dns/DnsCacheInfo;->getInfo()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 255
    iget-object v1, p0, Lcom/qiniu/android/http/dns/DnsPrefetcher;->addressDictionary:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v1}, Lcom/qiniu/android/http/dns/DnsCacheInfo;->setInfo(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 256
    invoke-direct {p0, p1}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->setDnsCacheInfo(Lcom/qiniu/android/http/dns/DnsCacheInfo;)V

    :cond_29
    :goto_29
    return v0
.end method

.method private declared-synchronized setDnsCacheInfo(Lcom/qiniu/android/http/dns/DnsCacheInfo;)V
    .registers 2

    monitor-enter p0

    .line 359
    :try_start_1
    iput-object p1, p0, Lcom/qiniu/android/http/dns/DnsPrefetcher;->dnsCacheInfo:Lcom/qiniu/android/http/dns/DnsCacheInfo;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 360
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setPrefetching(Z)V
    .registers 2

    monitor-enter p0

    .line 351
    :try_start_1
    iput-boolean p1, p0, Lcom/qiniu/android/http/dns/DnsPrefetcher;->isPrefetching:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 352
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public addPreFetchHosts([Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 89
    :cond_4
    monitor-enter p0

    .line 90
    :try_start_5
    iget-object v1, p0, Lcom/qiniu/android/http/dns/DnsPrefetcher;->prefetchHosts:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    .line 91
    iget-object v2, p0, Lcom/qiniu/android/http/dns/DnsPrefetcher;->prefetchHosts:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 92
    iget-object p1, p0, Lcom/qiniu/android/http/dns/DnsPrefetcher;->prefetchHosts:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    const/4 v2, 0x1

    if-le p1, v1, :cond_1f

    const/4 p1, 0x1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    .line 96
    :goto_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_28

    if-eqz p1, :cond_27

    .line 99
    invoke-virtual {p0}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->checkWhetherCachedDnsValid()V

    return v2

    :cond_27
    return v0

    :catchall_28
    move-exception p1

    .line 96
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public checkAndPrefetchDnsIfNeed(Lcom/qiniu/android/common/Zone;Lcom/qiniu/android/storage/UpToken;)Z
    .registers 3

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->getCurrentZoneHosts(Lcom/qiniu/android/common/Zone;Lcom/qiniu/android/storage/UpToken;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->addPreFetchHosts([Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public checkWhetherCachedDnsValid()V
    .registers 3

    .line 139
    invoke-direct {p0}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->prepareToPreFetch()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 144
    :cond_7
    monitor-enter p0

    .line 145
    :try_start_8
    iget-object v0, p0, Lcom/qiniu/android/http/dns/DnsPrefetcher;->prefetchHosts:Ljava/util/HashSet;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 146
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_1e

    .line 147
    invoke-direct {p0, v0}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->preFetchHosts([Ljava/lang/String;)V

    .line 148
    invoke-direct {p0}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->recorderDnsCache()Z

    .line 149
    invoke-direct {p0}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->endPreFetch()V

    return-void

    :catchall_1e
    move-exception v0

    .line 146
    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public getInetAddressByHost(Ljava/lang/String;)Ljava/util/List;
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

    .line 122
    invoke-virtual {p0}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->isDnsOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 126
    :cond_8
    iget-object v0, p0, Lcom/qiniu/android/http/dns/DnsPrefetcher;->addressDictionary:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_26

    .line 127
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_26

    const/4 v0, 0x0

    .line 128
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qiniu/android/http/dns/DnsNetworkAddress;

    .line 129
    invoke-virtual {v0}, Lcom/qiniu/android/http/dns/DnsNetworkAddress;->isValid()Z

    move-result v0

    if-eqz v0, :cond_26

    return-object p1

    :cond_26
    return-object v1
.end method

.method public isDnsOpen()Z
    .registers 2

    .line 343
    invoke-static {}, Lcom/qiniu/android/storage/GlobalConfiguration;->getInstance()Lcom/qiniu/android/storage/GlobalConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/qiniu/android/storage/GlobalConfiguration;->isDnsOpen:Z

    return v0
.end method

.method public declared-synchronized isPrefetching()Z
    .registers 2

    monitor-enter p0

    .line 347
    :try_start_1
    iget-boolean v0, p0, Lcom/qiniu/android/http/dns/DnsPrefetcher;->isPrefetching:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public localFetch()V
    .registers 2

    .line 75
    invoke-direct {p0}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->getLocalPreHost()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->addPreFetchHosts([Ljava/lang/String;)Z

    return-void
.end method

.method public recoverCache()Z
    .registers 5

    const/4 v0, 0x1

    .line 56
    :try_start_1
    new-instance v1, Lcom/qiniu/android/http/dns/DnsCacheFile;

    invoke-static {}, Lcom/qiniu/android/storage/GlobalConfiguration;->getInstance()Lcom/qiniu/android/storage/GlobalConfiguration;

    move-result-object v2

    iget-object v2, v2, Lcom/qiniu/android/storage/GlobalConfiguration;->dnsCacheDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/qiniu/android/http/dns/DnsCacheFile;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_24

    .line 61
    invoke-static {}, Lcom/qiniu/android/utils/AndroidNetwork;->getHostIP()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 62
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_19

    goto :goto_24

    .line 66
    :cond_19
    invoke-virtual {v1, v2}, Lcom/qiniu/android/http/dns/DnsCacheFile;->get(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_20

    return v0

    .line 71
    :cond_20
    invoke-direct {p0, v1}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->recoverDnsCache([B)Z

    move-result v0

    :catch_24
    :cond_24
    :goto_24
    return v0
.end method
