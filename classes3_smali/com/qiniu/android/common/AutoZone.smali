.class public final Lcom/qiniu/android/common/AutoZone;
.super Lcom/qiniu/android/common/Zone;
.source "AutoZone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/common/AutoZone$GlobalCache;,
        Lcom/qiniu/android/common/AutoZone$SingleFlightValue;
    }
.end annotation


# static fields
.field private static final SingleFlight:Lcom/qiniu/android/utils/SingleFlight;


# instance fields
.field private transactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qiniu/android/http/request/RequestTransaction;",
            ">;"
        }
    .end annotation
.end field

.field private ucServer:Ljava/lang/String;

.field private zonesInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qiniu/android/common/ZonesInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Lcom/qiniu/android/utils/SingleFlight;

    invoke-direct {v0}, Lcom/qiniu/android/utils/SingleFlight;-><init>()V

    sput-object v0, Lcom/qiniu/android/common/AutoZone;->SingleFlight:Lcom/qiniu/android/utils/SingleFlight;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Lcom/qiniu/android/common/Zone;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/common/AutoZone;->zonesInfoMap:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/common/AutoZone;->transactions:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$200(Lcom/qiniu/android/common/AutoZone;Lcom/qiniu/android/storage/UpToken;)Lcom/qiniu/android/http/request/RequestTransaction;
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Lcom/qiniu/android/common/AutoZone;->createUploadRequestTransaction(Lcom/qiniu/android/storage/UpToken;)Lcom/qiniu/android/http/request/RequestTransaction;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/qiniu/android/common/AutoZone;Lcom/qiniu/android/http/request/RequestTransaction;)V
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Lcom/qiniu/android/common/AutoZone;->destroyUploadRequestTransaction(Lcom/qiniu/android/http/request/RequestTransaction;)V

    return-void
.end method

.method static synthetic access$800(Lcom/qiniu/android/common/AutoZone;)Ljava/util/Map;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/qiniu/android/common/AutoZone;->zonesInfoMap:Ljava/util/Map;

    return-object p0
.end method

.method private createUploadRequestTransaction(Lcom/qiniu/android/storage/UpToken;)Lcom/qiniu/android/http/request/RequestTransaction;
    .registers 5

    .line 141
    invoke-virtual {p0}, Lcom/qiniu/android/common/AutoZone;->getUcServerList()Ljava/util/List;

    move-result-object v0

    .line 143
    new-instance v1, Lcom/qiniu/android/http/request/RequestTransaction;

    const-string v2, "sdkEmptyRegionId"

    invoke-direct {v1, v0, v2, p1}, Lcom/qiniu/android/http/request/RequestTransaction;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;)V

    .line 144
    iget-object p1, p0, Lcom/qiniu/android/common/AutoZone;->transactions:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method private destroyUploadRequestTransaction(Lcom/qiniu/android/http/request/RequestTransaction;)V
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/qiniu/android/common/AutoZone;->transactions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private getUcServerArray()[Ljava/lang/String;
    .registers 5

    .line 49
    iget-object v0, p0, Lcom/qiniu/android/common/AutoZone;->ucServer:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v2

    return-object v1

    :cond_b
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 52
    sget-object v3, Lcom/qiniu/android/common/Config;->preQueryHost00:Ljava/lang/String;

    aput-object v3, v0, v2

    sget-object v2, Lcom/qiniu/android/common/Config;->preQueryHost01:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public getUcServerList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/qiniu/android/common/AutoZone;->ucServer:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    iget-object v1, p0, Lcom/qiniu/android/common/AutoZone;->ucServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 41
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    sget-object v1, Lcom/qiniu/android/common/Config;->preQueryHost00:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v1, Lcom/qiniu/android/common/Config;->preQueryHost01:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getZonesInfo(Lcom/qiniu/android/storage/UpToken;)Lcom/qiniu/android/common/ZonesInfo;
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 61
    :cond_4
    iget-object v0, p0, Lcom/qiniu/android/common/AutoZone;->zonesInfoMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/qiniu/android/storage/UpToken;->index()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qiniu/android/common/ZonesInfo;

    return-object p1
.end method

.method public preQuery(Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/common/Zone$QueryHandler;)V
    .registers 9

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_5f

    .line 67
    invoke-virtual {p1}, Lcom/qiniu/android/storage/UpToken;->isValid()Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_5f

    .line 72
    :cond_b
    invoke-virtual {p1}, Lcom/qiniu/android/storage/UpToken;->index()Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-virtual {p0, p1}, Lcom/qiniu/android/common/AutoZone;->getZonesInfo(Lcom/qiniu/android/storage/UpToken;)Lcom/qiniu/android/common/ZonesInfo;

    move-result-object v3

    if-nez v3, :cond_2a

    .line 76
    invoke-static {}, Lcom/qiniu/android/common/AutoZone$GlobalCache;->access$000()Lcom/qiniu/android/common/AutoZone$GlobalCache;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/qiniu/android/common/AutoZone$GlobalCache;->access$100(Lcom/qiniu/android/common/AutoZone$GlobalCache;Ljava/lang/String;)Lcom/qiniu/android/common/ZonesInfo;

    move-result-object v3

    if-eqz v3, :cond_2a

    .line 77
    invoke-virtual {v3}, Lcom/qiniu/android/common/ZonesInfo;->isValid()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 78
    iget-object v4, p0, Lcom/qiniu/android/common/AutoZone;->zonesInfoMap:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    if-eqz v3, :cond_3b

    .line 82
    invoke-virtual {v3}, Lcom/qiniu/android/common/ZonesInfo;->isValid()Z

    move-result v3

    if-eqz v3, :cond_3b

    const/4 p1, 0x0

    .line 83
    invoke-static {}, Lcom/qiniu/android/http/ResponseInfo;->successResponse()Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v0

    invoke-interface {p2, p1, v0, v1}, Lcom/qiniu/android/common/Zone$QueryHandler;->complete(ILcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;)V

    return-void

    .line 87
    :cond_3b
    invoke-direct {p0}, Lcom/qiniu/android/common/AutoZone;->getUcServerArray()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction;->addDnsCheckAndPrefetchTransaction([Ljava/lang/String;)Z

    .line 90
    :try_start_42
    sget-object v3, Lcom/qiniu/android/common/AutoZone;->SingleFlight:Lcom/qiniu/android/utils/SingleFlight;

    new-instance v4, Lcom/qiniu/android/common/AutoZone$1;

    invoke-direct {v4, p0, p1}, Lcom/qiniu/android/common/AutoZone$1;-><init>(Lcom/qiniu/android/common/AutoZone;Lcom/qiniu/android/storage/UpToken;)V

    new-instance v5, Lcom/qiniu/android/common/AutoZone$2;

    invoke-direct {v5, p0, v2, p2, p1}, Lcom/qiniu/android/common/AutoZone$2;-><init>(Lcom/qiniu/android/common/AutoZone;Ljava/lang/String;Lcom/qiniu/android/common/Zone$QueryHandler;Lcom/qiniu/android/storage/UpToken;)V

    invoke-virtual {v3, v2, v4, v5}, Lcom/qiniu/android/utils/SingleFlight;->perform(Ljava/lang/String;Lcom/qiniu/android/utils/SingleFlight$ActionHandler;Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_51} :catch_52

    goto :goto_5e

    :catch_52
    move-exception p1

    .line 136
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qiniu/android/http/ResponseInfo;->localIOError(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p1

    invoke-interface {p2, v0, p1, v1}, Lcom/qiniu/android/common/Zone$QueryHandler;->complete(ILcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;)V

    :goto_5e
    return-void

    :cond_5f
    :goto_5f
    const-string p1, "invalid token"

    .line 68
    invoke-static {p1}, Lcom/qiniu/android/http/ResponseInfo;->invalidToken(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p1

    invoke-interface {p2, v0, p1, v1}, Lcom/qiniu/android/common/Zone$QueryHandler;->complete(ILcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;)V

    return-void
.end method
