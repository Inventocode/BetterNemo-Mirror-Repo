.class public Lcom/sensorsdata/analytics/android/sdk/advert/utils/SAAdvertMarketHelper;
.super Ljava/lang/Object;
.source "SAAdvertMarketHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleAdMarket(Landroid/app/Activity;Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;)V
    .registers 4

    if-eqz p1, :cond_1f

    .line 50
    :try_start_2
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;->isEnableRemarketing()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/SAAdvertMarketHelper;->isDailyFirst()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 51
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;

    move-result-object v0

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/advert/utils/SAAdvertMarketHelper$1;

    invoke-direct {v1, p1, p0}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/SAAdvertMarketHelper$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->trackQueueEvent(Ljava/lang/Runnable;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception p0

    .line 78
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public static isDailyFirst()Z
    .registers 4

    .line 83
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getDayDatePst()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDailyDate;

    move-result-object v0

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "yyyy-MM-dd"

    invoke-static {v1, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->formatTime(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 86
    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->commit(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0

    :cond_21
    const/4 v0, 0x0

    return v0
.end method
