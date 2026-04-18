.class public Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/ActivityPageLeaveCallbacks;
.super Ljava/lang/Object;
.source "ActivityPageLeaveCallbacks.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/monitor/SensorsDataActivityLifecycleCallbacks$SAActivityLifecycleCallbacks;
.implements Lcom/sensorsdata/analytics/android/sdk/exceptions/SensorsDataExceptionHandler$SAExceptionListener;


# static fields
.field private static final START_TIME:Ljava/lang/String; = "sa_start_time"


# instance fields
.field private final DIALOG_ACTIVITY:Ljava/lang/String;

.field private mIgnoreList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mIsEmpty:Z

.field private final mResumedActivities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/ActivityPageLeaveCallbacks;->mResumedActivities:Ljava/util/HashMap;

    const-string v0, "com.sensorsdata.sf.ui.view.DialogActivity"

    .line 52
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/ActivityPageLeaveCallbacks;->DIALOG_ACTIVITY:Ljava/lang/String;

    if-eqz p1, :cond_1c

    .line 56
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 57
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/ActivityPageLeaveCallbacks;->mIgnoreList:Ljava/util/List;

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/ActivityPageLeaveCallbacks;->mIsEmpty:Z

    goto :goto_1f

    :cond_1c
    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/ActivityPageLeaveCallbacks;->mIsEmpty:Z

    :goto_1f
    return-void
.end method

.method private ignorePage(Ljava/lang/Object;)Z
    .registers 3

    .line 186
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/ActivityPageLeaveCallbacks;->mIsEmpty:Z

    if-nez v0, :cond_f

    .line 187
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/ActivityPageLeaveCallbacks;->mIgnoreList:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method private trackActivityStart(Landroid/app/Activity;)V
    .registers 7

    const-string v0, "$referrer"

    :try_start_2
    const-string v1, "com.sensorsdata.sf.ui.view.DialogActivity"

    .line 144
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    return-void

    .line 147
    :cond_13
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/SAPageInfoUtils;->getActivityPageInfo(Landroid/app/Activity;)Lorg/json/JSONObject;

    move-result-object v1

    .line 148
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/core/business/SAPageTools;->getScreenUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "$url"

    .line 149
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v3

    sget-object v4, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->APP_VIEW_SCREEN:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEventTypeIgnored(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 151
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/autotrack/core/business/SAPageTools;->setCurrentScreenUrl(Ljava/lang/String;)V

    .line 153
    :cond_2f
    invoke-static {}, Lcom/sensorsdata/analytics/android/autotrack/core/business/SAPageTools;->getReferrer()Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_42

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_42

    .line 155
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_42
    const-string v0, "sa_start_time"

    .line 157
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 158
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/ActivityPageLeaveCallbacks;->mResumedActivities:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_58
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_58} :catch_59

    goto :goto_5d

    :catch_59
    move-exception p1

    .line 160
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_5d
    return-void
.end method

.method private trackAppPageLeave(Lorg/json/JSONObject;)V
    .registers 8

    const-string v0, "sa_start_time"

    .line 166
    :try_start_2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 167
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 168
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->duration(JJ)Ljava/lang/Float;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3fa999999999999aL  # 0.05

    cmpg-double v5, v1, v3

    if-gez v5, :cond_20

    return-void

    :cond_20
    const-string v1, "event_duration"

    .line 172
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;

    move-result-object v0

    new-instance v1, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/ActivityPageLeaveCallbacks$1;

    invoke-direct {v1, p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/ActivityPageLeaveCallbacks$1;-><init>(Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/ActivityPageLeaveCallbacks;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->trackQueueEvent(Ljava/lang/Runnable;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_31} :catch_32

    goto :goto_36

    :catch_32
    move-exception p1

    .line 181
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_36
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 9

    .line 84
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 85
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/ActivityPageLeaveCallbacks;->mResumedActivities:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 86
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/ActivityPageLeaveCallbacks;->mResumedActivities:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_58

    const-string v2, "$referrer"

    if-nez v1, :cond_23

    :try_start_20
    const-string v3, ""

    goto :goto_27

    .line 87
    :cond_23
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_27} :catch_58

    :goto_27
    const-string v4, "sa_start_time"

    if-nez v1, :cond_2e

    const-wide/16 v5, 0x0

    goto :goto_32

    .line 88
    :cond_2e
    :try_start_2e
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 89
    :goto_32
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/SAPageInfoUtils;->getActivityPageInfo(Landroid/app/Activity;)Lorg/json/JSONObject;

    move-result-object v1

    .line 90
    invoke-virtual {v1, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 91
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/core/business/SAPageTools;->getScreenUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "$url"

    .line 92
    invoke-virtual {v1, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4b

    .line 94
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    :cond_4b
    invoke-direct {p0, v1}, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/ActivityPageLeaveCallbacks;->trackAppPageLeave(Lorg/json/JSONObject;)V

    .line 97
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/ActivityPageLeaveCallbacks;->mResumedActivities:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_57} :catch_58

    goto :goto_5c

    :catch_58
    move-exception p1

    .line 100
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_5c
    :goto_5c
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 3

    .line 76
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/ActivityPageLeaveCallbacks;->ignorePage(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 77
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/ActivityPageLeaveCallbacks;->trackActivityStart(Landroid/app/Activity;)V

    :cond_9
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 2

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4

    .line 127
    :try_start_0
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/ActivityPageLeaveCallbacks;->mResumedActivities:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 128
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_34

    .line 129
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 130
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/ActivityPageLeaveCallbacks;->mResumedActivities:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/json/JSONObject;

    if-nez p2, :cond_29

    goto :goto_a

    .line 134
    :cond_29
    invoke-direct {p0, p2}, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/ActivityPageLeaveCallbacks;->trackAppPageLeave(Lorg/json/JSONObject;)V

    .line 135
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_30

    goto :goto_a

    :catch_30
    move-exception p1

    .line 138
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_34
    return-void
.end method
