.class public Lcom/qiniu/android/http/metrics/UploadMetrics;
.super Ljava/lang/Object;
.source "UploadMetrics.java"


# instance fields
.field protected endDate:Ljava/util/Date;

.field protected startDate:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/qiniu/android/http/metrics/UploadMetrics;->startDate:Ljava/util/Date;

    .line 10
    iput-object v0, p0, Lcom/qiniu/android/http/metrics/UploadMetrics;->endDate:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public end()V
    .registers 2

    .line 17
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/http/metrics/UploadMetrics;->endDate:Ljava/util/Date;

    return-void
.end method

.method public getStartDate()Ljava/util/Date;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadMetrics;->startDate:Ljava/util/Date;

    return-object v0
.end method

.method public start()V
    .registers 2

    .line 13
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/http/metrics/UploadMetrics;->startDate:Ljava/util/Date;

    return-void
.end method

.method public totalElapsedTime()J
    .registers 3

    .line 25
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadMetrics;->startDate:Ljava/util/Date;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/qiniu/android/http/metrics/UploadMetrics;->endDate:Ljava/util/Date;

    if-nez v1, :cond_9

    goto :goto_e

    .line 28
    :cond_9
    invoke-static {v0, v1}, Lcom/qiniu/android/utils/Utils;->dateDuration(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0

    :cond_e
    :goto_e
    const-wide/16 v0, 0x0

    return-wide v0
.end method
