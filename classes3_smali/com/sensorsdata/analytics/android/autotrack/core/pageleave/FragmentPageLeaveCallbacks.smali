.class public Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/FragmentPageLeaveCallbacks;
.super Ljava/lang/Object;
.source "FragmentPageLeaveCallbacks.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/SAFragmentLifecycleCallbacks;
.implements Lcom/sensorsdata/analytics/android/sdk/exceptions/SensorsDataExceptionHandler$SAExceptionListener;


# static fields
.field private static final START_TIME:Ljava/lang/String; = "sa_start_time"


# instance fields
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

.field private final mResumedFragments:Ljava/util/HashMap;
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

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/FragmentPageLeaveCallbacks;->mResumedFragments:Ljava/util/HashMap;

    if-eqz p1, :cond_18

    .line 57
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 58
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/FragmentPageLeaveCallbacks;->mIgnoreList:Ljava/util/List;

    const/4 p1, 0x0

    .line 59
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/FragmentPageLeaveCallbacks;->mIsEmpty:Z

    goto :goto_1b

    :cond_18
    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/FragmentPageLeaveCallbacks;->mIsEmpty:Z

    :goto_1b
    return-void
.end method

.method static synthetic access$000(Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/FragmentPageLeaveCallbacks;)Ljava/util/HashMap;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/FragmentPageLeaveCallbacks;->mResumedFragments:Ljava/util/HashMap;

    return-object p0
.end method

.method private ignorePage(Ljava/lang/Object;)Z
    .registers 3

    .line 214
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/FragmentPageLeaveCallbacks;->mIsEmpty:Z

    if-nez v0, :cond_f

    .line 215
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/FragmentPageLeaveCallbacks;->mIgnoreList:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method private trackAppPageLeave(Ljava/lang/Object;)V
    .registers 4

    .line 128
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    .line 129
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/FragmentPageLeaveCallbacks;->mResumedFragments:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 130
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/FragmentPageLeaveCallbacks;->mResumedFragments:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 131
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/FragmentPageLeaveCallbacks;->mResumedFragments:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-direct {p0, v0}, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/FragmentPageLeaveCallbacks;->trackPageLeaveEvent(Lorg/json/JSONObject;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    goto :goto_2d

    :catch_29
    move-exception p1

    .line 135
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method private trackFragmentStart(Ljava/lang/Object;)V
    .registers 6

    .line 141
    :try_start_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/core/business/SAPageTools;->getScreenUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    .line 143
    invoke-static {v2, p1}, Lcom/sensorsdata/analytics/android/sdk/util/SAPageInfoUtils;->getFragmentPageInfo(Landroid/app/Activity;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 144
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/Dispatcher;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/Dispatcher;

    move-result-object v2

    new-instance v3, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/FragmentPageLeaveCallbacks$1;

    invoke-direct {v3, p0, v0, p1, v1}, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/FragmentPageLeaveCallbacks$1;-><init>(Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/FragmentPageLeaveCallbacks;Ljava/lang/String;Lorg/json/JSONObject;I)V

    const-wide/16 v0, 0x12c

    invoke-virtual {v2, v3, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/Dispatcher;->postDelayed(Ljava/lang/Runnable;J)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_20

    :catch_1c
    move-exception p1

    .line 170
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_20
    return-void
.end method

.method private trackPageLeaveEvent(Lorg/json/JSONObject;)V
    .registers 8

    const-string v0, "sa_start_time"

    .line 194
    :try_start_2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 195
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 196
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->duration(JJ)Ljava/lang/Float;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3fa999999999999aL  # 0.05

    cmpg-double v5, v1, v3

    if-gez v5, :cond_20

    return-void

    :cond_20
    const-string v1, "event_duration"

    .line 200
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;

    move-result-object v0

    new-instance v1, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/FragmentPageLeaveCallbacks$2;

    invoke-direct {v1, p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/FragmentPageLeaveCallbacks$2;-><init>(Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/FragmentPageLeaveCallbacks;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->trackQueueEvent(Ljava/lang/Runnable;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_31} :catch_32

    goto :goto_36

    :catch_32
    move-exception p1

    .line 209
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_36
    return-void
.end method


# virtual methods
.method public onCreate(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public onHiddenChanged(Ljava/lang/Object;Z)V
    .registers 3

    .line 106
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/FragmentPageLeaveCallbacks;->ignorePage(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_13

    .line 107
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->isFragmentVisible(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 108
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/FragmentPageLeaveCallbacks;->trackFragmentStart(Ljava/lang/Object;)V

    goto :goto_13

    .line 110
    :cond_10
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/FragmentPageLeaveCallbacks;->trackAppPageLeave(Ljava/lang/Object;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public onPause(Ljava/lang/Object;)V
    .registers 4

    .line 90
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 91
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/FragmentPageLeaveCallbacks;->mResumedFragments:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 92
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/FragmentPageLeaveCallbacks;->trackAppPageLeave(Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception p1

    .line 95
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_18
    :goto_18
    return-void
.end method

.method public onResume(Ljava/lang/Object;)V
    .registers 3

    .line 82
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/FragmentPageLeaveCallbacks;->ignorePage(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->isFragmentVisible(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 83
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/FragmentPageLeaveCallbacks;->trackFragmentStart(Ljava/lang/Object;)V

    :cond_f
    return-void
.end method

.method public onStart(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public onStop(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public onViewCreated(Ljava/lang/Object;Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    return-void
.end method

.method public setUserVisibleHint(Ljava/lang/Object;Z)V
    .registers 3

    .line 117
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/FragmentPageLeaveCallbacks;->ignorePage(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_13

    .line 118
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->isFragmentVisible(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 119
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/FragmentPageLeaveCallbacks;->trackFragmentStart(Ljava/lang/Object;)V

    goto :goto_13

    .line 121
    :cond_10
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/FragmentPageLeaveCallbacks;->trackAppPageLeave(Ljava/lang/Object;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4

    .line 177
    :try_start_0
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/FragmentPageLeaveCallbacks;->mResumedFragments:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 178
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_34

    .line 179
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 180
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/FragmentPageLeaveCallbacks;->mResumedFragments:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/json/JSONObject;

    if-nez p2, :cond_29

    goto :goto_a

    .line 184
    :cond_29
    invoke-direct {p0, p2}, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/FragmentPageLeaveCallbacks;->trackPageLeaveEvent(Lorg/json/JSONObject;)V

    .line 185
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_30

    goto :goto_a

    :catch_30
    move-exception p1

    .line 188
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_34
    return-void
.end method
