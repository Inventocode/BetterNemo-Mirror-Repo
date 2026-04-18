.class public Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable;
.super Ljava/lang/Object;
.source "StayDurationRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.StayDurationRunnable"


# instance fields
.field private final mExposureView:Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;


# direct methods
.method public constructor <init>(Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;)V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable;->mExposureView:Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;

    return-void
.end method

.method private didExposure(Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;)V
    .registers 5

    .line 115
    :try_start_0
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;->getExposureData()Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->getExposureListener()Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureListener;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 116
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/Dispatcher;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/Dispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/util/Dispatcher;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 117
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/Dispatcher;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/Dispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/util/Dispatcher;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable$2;-><init>(Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable;Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureListener;Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    goto :goto_29

    :catch_25
    move-exception p1

    .line 125
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_29
    :goto_29
    return-void
.end method

.method private shouldExposure(Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;)Z
    .registers 6

    .line 90
    :try_start_0
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;->getExposureData()Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->getExposureListener()Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureListener;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 92
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable;Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureListener;Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 98
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/Dispatcher;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/Dispatcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/util/Dispatcher;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v2, 0xbb8

    .line 99
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, p1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3c

    const-string p1, "SA.StayDurationRunnable"

    const-string v0, "Exposure fail, shouldExposure is false"

    .line 100
    invoke-static {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_38

    const/4 p1, 0x0

    return p1

    :catch_38
    move-exception p1

    .line 105
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_3c
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable;->mExposureView:Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;

    invoke-direct {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable;->shouldExposure(Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 37
    :cond_9
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable;->mExposureView:Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;->getExposureData()Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->getProperties()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 40
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_25

    .line 42
    :cond_1b
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 44
    :goto_25
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable;->mExposureView:Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2e

    return-void

    .line 48
    :cond_2e
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getActivityOfView(Landroid/content/Context;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v2
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_cb

    const-string v3, "SA.StayDurationRunnable"

    if-eqz v2, :cond_56

    :try_start_3a
    const-string v4, "activity is not null."

    .line 50
    invoke-static {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getScreenNameAndTitle(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_4f

    .line 52
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 53
    :cond_4f
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->buildTitleAndScreenName(Landroid/app/Activity;)Lorg/json/JSONObject;

    move-result-object v4

    .line 55
    :cond_53
    invoke-static {v4, v0}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 57
    :cond_56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StayDurationRunnable:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable;->mExposureView:Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->getViewNode(Landroid/view/View;)Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;

    move-result-object v2

    if-eqz v2, :cond_9c

    .line 61
    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_89

    const-string v3, "$element_path"

    .line 62
    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    :cond_89
    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewPosition()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9c

    const-string v3, "$element_position"

    .line 65
    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewPosition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    :cond_9c
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewContent(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ab

    const-string v3, "$element_content"

    .line 70
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_ab
    const-string v2, "$element_type"

    .line 72
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewType(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable;->mExposureView:Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;->getExposureData()Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->getEvent()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 76
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable;->mExposureView:Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;

    invoke-direct {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable;->didExposure(Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;)V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_ca} :catch_cb

    goto :goto_cf

    :catch_cb
    move-exception v0

    .line 78
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 80
    :goto_cf
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable;->mExposureView:Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;->setLastVisible(Z)V

    .line 81
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable;->mExposureView:Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;->setExposed(Z)V

    .line 82
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable;->mExposureView:Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;->setActivityChange(Z)V

    return-void
.end method
