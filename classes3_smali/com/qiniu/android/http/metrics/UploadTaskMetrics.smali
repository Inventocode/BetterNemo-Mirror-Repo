.class public Lcom/qiniu/android/http/metrics/UploadTaskMetrics;
.super Lcom/qiniu/android/http/metrics/UploadMetrics;
.source "UploadTaskMetrics.java"


# instance fields
.field private metricsInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;",
            ">;"
        }
    .end annotation
.end field

.field public regions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qiniu/android/http/request/IUploadRegion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/qiniu/android/http/request/IUploadRegion;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lcom/qiniu/android/http/metrics/UploadMetrics;-><init>()V

    .line 18
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/qiniu/android/http/metrics/UploadTaskMetrics;->metricsInfo:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addMetrics(Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;)V
    .registers 4

    if-eqz p1, :cond_32

    .line 57
    iget-object v0, p1, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;->region:Lcom/qiniu/android/http/request/IUploadRegion;

    if-eqz v0, :cond_32

    invoke-interface {v0}, Lcom/qiniu/android/http/request/IUploadRegion;->getZoneInfo()Lcom/qiniu/android/common/ZoneInfo;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v0, p1, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;->region:Lcom/qiniu/android/http/request/IUploadRegion;

    .line 58
    invoke-interface {v0}, Lcom/qiniu/android/http/request/IUploadRegion;->getZoneInfo()Lcom/qiniu/android/common/ZoneInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/qiniu/android/common/ZoneInfo;->regionId:Ljava/lang/String;

    if-nez v0, :cond_17

    goto :goto_32

    .line 61
    :cond_17
    iget-object v0, p1, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;->region:Lcom/qiniu/android/http/request/IUploadRegion;

    invoke-interface {v0}, Lcom/qiniu/android/http/request/IUploadRegion;->getZoneInfo()Lcom/qiniu/android/common/ZoneInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/qiniu/android/common/ZoneInfo;->regionId:Ljava/lang/String;

    .line 62
    iget-object v1, p0, Lcom/qiniu/android/http/metrics/UploadTaskMetrics;->metricsInfo:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    if-eqz v1, :cond_2d

    .line 64
    invoke-virtual {v1, p1}, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;->addMetrics(Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;)V

    goto :goto_32

    .line 66
    :cond_2d
    iget-object v1, p0, Lcom/qiniu/android/http/metrics/UploadTaskMetrics;->metricsInfo:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_32
    :goto_32
    return-void
.end method

.method public bytesSend()Ljava/lang/Long;
    .registers 6

    .line 34
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadTaskMetrics;->metricsInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 35
    iget-object v4, p0, Lcom/qiniu/android/http/metrics/UploadTaskMetrics;->metricsInfo:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    if-eqz v3, :cond_c

    .line 37
    invoke-virtual {v3}, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;->bytesSend()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_c

    .line 40
    :cond_2c
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public regionCount()Ljava/lang/Long;
    .registers 6

    .line 45
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadTaskMetrics;->metricsInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 46
    iget-object v4, p0, Lcom/qiniu/android/http/metrics/UploadTaskMetrics;->metricsInfo:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    if-eqz v3, :cond_c

    .line 47
    iget-object v4, v3, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;->region:Lcom/qiniu/android/http/request/IUploadRegion;

    if-eqz v4, :cond_c

    .line 48
    invoke-interface {v4}, Lcom/qiniu/android/http/request/IUploadRegion;->getZoneInfo()Lcom/qiniu/android/common/ZoneInfo;

    move-result-object v4

    if-eqz v4, :cond_c

    iget-object v3, v3, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;->region:Lcom/qiniu/android/http/request/IUploadRegion;

    .line 49
    invoke-interface {v3}, Lcom/qiniu/android/http/request/IUploadRegion;->getZoneInfo()Lcom/qiniu/android/common/ZoneInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/qiniu/android/common/ZoneInfo;->regionId:Ljava/lang/String;

    const-string v4, "sdkEmptyRegionId"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    goto :goto_c

    .line 53
    :cond_40
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public requestCount()Ljava/lang/Long;
    .registers 6

    .line 23
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadTaskMetrics;->metricsInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 24
    iget-object v4, p0, Lcom/qiniu/android/http/metrics/UploadTaskMetrics;->metricsInfo:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    if-eqz v3, :cond_c

    .line 26
    invoke-virtual {v3}, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;->requestCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_c

    .line 29
    :cond_2d
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
