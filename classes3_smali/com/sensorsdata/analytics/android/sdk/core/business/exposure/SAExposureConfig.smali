.class public Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;
.super Ljava/lang/Object;
.source "SAExposureConfig.java"


# instance fields
.field private areaRate:F

.field private delayTime:J

.field private repeated:Z

.field private stayDuration:D


# direct methods
.method public constructor <init>(FDZ)V
    .registers 7

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;->areaRate:F

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;->repeated:Z

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;->stayDuration:D

    const-wide/16 v0, 0x1f4

    .line 7
    iput-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;->delayTime:J

    .line 10
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;->areaRate:F

    .line 11
    iput-wide p2, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;->stayDuration:D

    .line 12
    iput-boolean p4, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;->repeated:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2d

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2d

    .line 56
    :cond_12
    check-cast p1, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;

    .line 57
    iget v2, p1, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;->areaRate:F

    iget v3, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;->areaRate:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2b

    iget-boolean v2, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;->repeated:Z

    iget-boolean v3, p1, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;->repeated:Z

    if-ne v2, v3, :cond_2b

    iget-wide v2, p1, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;->stayDuration:D

    iget-wide v4, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;->stayDuration:D

    cmpl-double p1, v2, v4

    if-nez p1, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    return v0

    :cond_2d
    :goto_2d
    return v1
.end method

.method public getAreaRate()F
    .registers 2

    .line 16
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;->areaRate:F

    return v0
.end method

.method public getDelayTime()J
    .registers 3

    .line 40
    iget-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;->delayTime:J

    return-wide v0
.end method

.method public getStayDuration()D
    .registers 3

    .line 32
    iget-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;->stayDuration:D

    return-wide v0
.end method

.method public isRepeated()Z
    .registers 2

    .line 24
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;->repeated:Z

    return v0
.end method

.method public setAreaRate(F)V
    .registers 2

    .line 20
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;->areaRate:F

    return-void
.end method

.method public setDelayTime(J)V
    .registers 3

    .line 49
    iput-wide p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;->delayTime:J

    return-void
.end method

.method public setRepeated(Z)V
    .registers 2

    .line 28
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;->repeated:Z

    return-void
.end method

.method public setStayDuration(D)V
    .registers 3

    .line 36
    iput-wide p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;->stayDuration:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SAExposureConfig{areaRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;->areaRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", repeated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;->repeated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", stayDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;->stayDuration:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
