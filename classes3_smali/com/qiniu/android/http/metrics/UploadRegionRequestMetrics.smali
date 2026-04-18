.class public Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;
.super Lcom/qiniu/android/http/metrics/UploadMetrics;
.source "UploadRegionRequestMetrics.java"


# instance fields
.field private metricsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;",
            ">;"
        }
    .end annotation
.end field

.field public final region:Lcom/qiniu/android/http/request/IUploadRegion;


# direct methods
.method public constructor <init>(Lcom/qiniu/android/http/request/IUploadRegion;)V
    .registers 3

    .line 16
    invoke-direct {p0}, Lcom/qiniu/android/http/metrics/UploadMetrics;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;->metricsList:Ljava/util/List;

    .line 17
    iput-object p1, p0, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;->region:Lcom/qiniu/android/http/request/IUploadRegion;

    return-void
.end method


# virtual methods
.method public addMetrics(Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;)V
    .registers 7

    if-eqz p1, :cond_88

    .line 49
    iget-object v0, p1, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;->region:Lcom/qiniu/android/http/request/IUploadRegion;

    if-eqz v0, :cond_88

    invoke-interface {v0}, Lcom/qiniu/android/http/request/IUploadRegion;->getZoneInfo()Lcom/qiniu/android/common/ZoneInfo;

    move-result-object v0

    if-eqz v0, :cond_88

    iget-object v0, p1, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;->region:Lcom/qiniu/android/http/request/IUploadRegion;

    .line 50
    invoke-interface {v0}, Lcom/qiniu/android/http/request/IUploadRegion;->getZoneInfo()Lcom/qiniu/android/common/ZoneInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/qiniu/android/common/ZoneInfo;->regionId:Ljava/lang/String;

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;->region:Lcom/qiniu/android/http/request/IUploadRegion;

    if-eqz v0, :cond_88

    .line 51
    invoke-interface {v0}, Lcom/qiniu/android/http/request/IUploadRegion;->getZoneInfo()Lcom/qiniu/android/common/ZoneInfo;

    move-result-object v0

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;->region:Lcom/qiniu/android/http/request/IUploadRegion;

    invoke-interface {v0}, Lcom/qiniu/android/http/request/IUploadRegion;->getZoneInfo()Lcom/qiniu/android/common/ZoneInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/qiniu/android/common/ZoneInfo;->regionId:Ljava/lang/String;

    if-eqz v0, :cond_88

    iget-object v0, p1, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;->metricsList:Ljava/util/List;

    if-eqz v0, :cond_88

    .line 52
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_35

    goto :goto_88

    .line 56
    :cond_35
    iget-object v0, p1, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;->region:Lcom/qiniu/android/http/request/IUploadRegion;

    invoke-interface {v0}, Lcom/qiniu/android/http/request/IUploadRegion;->getZoneInfo()Lcom/qiniu/android/common/ZoneInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qiniu/android/common/ZoneInfo;->getRegionId()Ljava/lang/String;

    move-result-object v0

    .line 57
    iget-object v1, p1, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;->region:Lcom/qiniu/android/http/request/IUploadRegion;

    invoke-interface {v1}, Lcom/qiniu/android/http/request/IUploadRegion;->getZoneInfo()Lcom/qiniu/android/common/ZoneInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qiniu/android/common/ZoneInfo;->getRegionId()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 60
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadMetrics;->startDate:Ljava/util/Date;

    if-eqz v0, :cond_69

    iget-object v1, p1, Lcom/qiniu/android/http/metrics/UploadMetrics;->startDate:Ljava/util/Date;

    if-eqz v1, :cond_69

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p1, Lcom/qiniu/android/http/metrics/UploadMetrics;->startDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_69

    .line 61
    iget-object v0, p1, Lcom/qiniu/android/http/metrics/UploadMetrics;->startDate:Ljava/util/Date;

    iput-object v0, p0, Lcom/qiniu/android/http/metrics/UploadMetrics;->startDate:Ljava/util/Date;

    .line 63
    :cond_69
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadMetrics;->endDate:Ljava/util/Date;

    if-eqz v0, :cond_83

    iget-object v1, p1, Lcom/qiniu/android/http/metrics/UploadMetrics;->endDate:Ljava/util/Date;

    if-eqz v1, :cond_83

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p1, Lcom/qiniu/android/http/metrics/UploadMetrics;->endDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_83

    .line 64
    iget-object v0, p1, Lcom/qiniu/android/http/metrics/UploadMetrics;->endDate:Ljava/util/Date;

    iput-object v0, p0, Lcom/qiniu/android/http/metrics/UploadMetrics;->endDate:Ljava/util/Date;

    .line 67
    :cond_83
    iget-object p1, p1, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;->metricsList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;->addMetricsList(Ljava/util/List;)V

    :cond_88
    :goto_88
    return-void
.end method

.method public addMetricsList(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_21

    .line 38
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_21

    .line 41
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    if-eqz v0, :cond_d

    .line 43
    iget-object v1, p0, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;->metricsList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_21
    :goto_21
    return-void
.end method

.method public bytesSend()Ljava/lang/Long;
    .registers 6

    .line 25
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;->metricsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_f

    .line 26
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 29
    :cond_f
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;->metricsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    if-eqz v3, :cond_15

    .line 31
    invoke-virtual {v3}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->bytesSend()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_15

    .line 34
    :cond_2d
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public requestCount()Ljava/lang/Integer;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;->metricsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
