.class public Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;
.super Ljava/lang/Object;
.source "AppClickTrackImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppClickTrackImpl"

.field private static final eventTimestamp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->eventTimestamp:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildPageProperty(Landroid/app/Activity;Ljava/lang/Object;)Lorg/json/JSONObject;
    .registers 3

    .line 810
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_f

    .line 813
    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/util/SAPageInfoUtils;->getFragmentPageInfo(Landroid/app/Activity;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_18

    :cond_f
    if-eqz p0, :cond_18

    .line 815
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAPageInfoUtils;->getActivityPageInfo(Landroid/app/Activity;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_18
    :goto_18
    return-object v0
.end method

.method private static getAppClickViewContext(Landroid/view/View;Ljava/lang/Class;)Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 755
    invoke-static {v0, p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->getAppClickViewContext(Ljava/lang/Object;Landroid/view/View;Ljava/lang/Class;)Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;

    move-result-object p0

    return-object p0
.end method

.method private static getAppClickViewContext(Ljava/lang/Object;Landroid/view/View;Ljava/lang/Class;)Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;"
        }
    .end annotation

    .line 760
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->isViewIgnored(Ljava/lang/Class;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    return-object v0

    .line 765
    :cond_8
    instance-of p2, p0, Landroid/content/Context;

    if-eqz p2, :cond_f

    check-cast p0, Landroid/content/Context;

    goto :goto_10

    :cond_f
    move-object p0, v0

    :goto_10
    if-eqz p1, :cond_22

    .line 768
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->isViewIgnored(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_19

    return-object v0

    :cond_19
    if-nez p0, :cond_22

    .line 772
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_22

    return-object v0

    .line 780
    :cond_22
    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getActivityOfView(Landroid/content/Context;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_37

    .line 781
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isActivityAutoTrackAppClickIgnored(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_37

    return-object v0

    .line 786
    :cond_37
    invoke-static {p1, p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->getFragmentFromView(Landroid/view/View;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4c

    .line 788
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isActivityAutoTrackAppClickIgnored(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4c

    return-object v0

    .line 791
    :cond_4c
    new-instance v0, Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;

    invoke-direct {v0, p0, p2, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;-><init>(Landroid/app/Activity;Ljava/lang/Object;Landroid/view/View;)V

    return-object v0
.end method

.method private static getExpandListViewExtendProperty(Landroid/widget/ExpandableListView;II)Lorg/json/JSONObject;
    .registers 4

    .line 797
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object p0

    .line 798
    instance-of v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsExpandableListViewItemTrackProperties;

    if-eqz v0, :cond_1b

    .line 799
    check-cast p0, Lcom/sensorsdata/analytics/android/sdk/SensorsExpandableListViewItemTrackProperties;

    const/4 v0, -0x1

    if-ne p2, v0, :cond_12

    .line 800
    invoke-interface {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsExpandableListViewItemTrackProperties;->getSensorsGroupItemTrackProperties(I)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_16

    .line 801
    :cond_12
    invoke-interface {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SensorsExpandableListViewItemTrackProperties;->getSensorsChildItemTrackProperties(II)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    :goto_16
    return-object p0

    :catch_17
    move-exception p0

    .line 804
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static isAppClickIgnore(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)Z
    .registers 2

    .line 748
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->APP_CLICK:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEventTypeIgnored(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method private static isDeBounceTrack(Ljava/lang/Object;)Z
    .registers 9

    .line 825
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 826
    sget-object v2, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->eventTimestamp:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 828
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v0, v3

    const-wide/16 v5, 0x1f4

    cmp-long v7, v3, v5

    if-gez v7, :cond_24

    const/4 p0, 0x1

    return p0

    .line 834
    :cond_24
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return p0
.end method

.method public static track(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 708
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 712
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_26

    if-nez v1, :cond_19

    .line 714
    :try_start_e
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_15

    move-object v0, v1

    goto :goto_19

    :catch_15
    move-exception p2

    .line 716
    :try_start_16
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 720
    :cond_19
    :goto_19
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;

    move-result-object p2

    new-instance v1, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {p2, v1}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->trackQueueEvent(Ljava/lang/Runnable;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_25} :catch_26

    goto :goto_2a

    :catch_26
    move-exception p0

    .line 728
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_2a
    return-void
.end method

.method private static trackAutoEvent(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Lorg/json/JSONObject;Landroid/view/View;)V
    .registers 6

    .line 734
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->appendLibMethodAutoTrack(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 735
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 736
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;

    move-result-object p2

    new-instance v2, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl$2;

    invoke-direct {v2, p1, v1, p0, v0}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl$2;-><init>(Lorg/json/JSONObject;Ljava/lang/ref/WeakReference;Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Lorg/json/JSONObject;)V

    invoke-virtual {p2, v2}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->trackQueueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static trackDialog(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Landroid/content/DialogInterface;I)V
    .registers 12

    const-string v0, "androidx.appcompat.app.AlertDialog"

    .line 430
    :try_start_2
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->isAppClickIgnore(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)Z

    move-result v1

    if-nez v1, :cond_13f

    const-class v1, Landroid/app/Dialog;

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->isViewIgnored(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto/16 :goto_13f

    .line 433
    :cond_12
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 437
    instance-of v2, p1, Landroid/app/Dialog;

    const/4 v3, 0x0

    if-eqz v2, :cond_1f

    .line 438
    check-cast p1, Landroid/app/Dialog;

    goto :goto_20

    :cond_1f
    move-object p1, v3

    :goto_20
    if-eqz p1, :cond_13f

    .line 441
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->isDeBounceTrack(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    goto/16 :goto_13f

    .line 445
    :cond_2a
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 448
    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getActivityOfView(Landroid/content/Context;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_38

    .line 451
    invoke-virtual {p1}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v2

    :cond_38
    if-eqz v2, :cond_13f

    .line 455
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isActivityAutoTrackAppClickIgnored(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_46

    goto/16 :goto_13f

    .line 460
    :cond_46
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/SAPageInfoUtils;->getActivityPageInfo(Landroid/app/Activity;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4d} :catch_140

    .line 462
    :try_start_4d
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_79

    .line 463
    invoke-virtual {v2}, Landroid/view/Window;->isActive()Z

    move-result v2

    if-eqz v2, :cond_79

    .line 464
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    sget v4, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_id:I

    invoke-virtual {v2, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 465
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_79

    const-string v4, "$element_id"

    .line 466
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_74} :catch_75

    goto :goto_79

    :catch_75
    move-exception v2

    .line 470
    :try_start_76
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 474
    :cond_79
    :goto_79
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/SAPageInfoUtils;->getRNPageInfo()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->mergeDuplicateProperty(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    const-string v2, "$element_type"

    const-string v4, "Dialog"

    .line 476
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_87} :catch_140

    .line 480
    :try_start_87
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8b} :catch_8c

    goto :goto_92

    .line 483
    :catch_8c
    :try_start_8c
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_90} :catch_91

    goto :goto_92

    :catch_91
    move-object v0, v3

    :goto_92
    if-nez v0, :cond_95

    return-void

    .line 494
    :cond_95
    :try_start_95
    instance-of v2, p1, Landroid/app/AlertDialog;
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_97} :catch_140

    const-string v4, "$element_content"

    if-eqz v2, :cond_d3

    .line 495
    :try_start_9b
    check-cast p1, Landroid/app/AlertDialog;

    .line 496
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_b7

    .line 498
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b4

    .line 499
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b4
    move-object v3, v0

    goto/16 :goto_13b

    .line 503
    :cond_b7
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    if-eqz p1, :cond_13b

    .line 505
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 506
    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_ce

    .line 508
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_ce

    .line 509
    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 512
    :cond_ce
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_13b

    .line 515
    :cond_d3
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_d7} :catch_140

    if-eqz v0, :cond_13b

    const/4 v0, 0x0

    .line 518
    :try_start_da
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v5, "getButton"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v0

    invoke-virtual {v2, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v5, v6, [Ljava/lang/Object;

    .line 519
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v2, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_f9} :catch_fa

    goto :goto_fb

    :catch_fa
    move-object v2, v3

    :goto_fb
    if-eqz v2, :cond_110

    .line 525
    :try_start_fd
    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_10e

    .line 526
    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_10e} :catch_140

    :cond_10e
    move-object v3, v2

    goto :goto_13b

    .line 531
    :cond_110
    :try_start_110
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v5, "getListView"

    new-array v6, v0, [Ljava/lang/Class;

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    .line 532
    invoke-virtual {v2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    if-eqz p1, :cond_13b

    .line 534
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 535
    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_137

    .line 537
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_137

    .line 538
    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 541
    :cond_137
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_13b} :catch_13b

    .line 549
    :catch_13b
    :cond_13b
    :goto_13b
    :try_start_13b
    invoke-static {p0, v1, v3}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->trackAutoEvent(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Lorg/json/JSONObject;Landroid/view/View;)V
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_13e} :catch_140

    goto :goto_144

    :cond_13f
    :goto_13f
    return-void

    :catch_140
    move-exception p0

    .line 551
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_144
    return-void
.end method

.method public static trackDrawerClosed(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Landroid/view/View;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 661
    :cond_3
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "$element_content"

    const-string v2, "Close"

    .line 662
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 663
    invoke-virtual {p0, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->setViewProperties(Landroid/view/View;Lorg/json/JSONObject;)V

    .line 664
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->trackViewOnClick(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Landroid/view/View;Z)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception p0

    .line 666
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_1e
    return-void
.end method

.method public static trackDrawerOpened(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Landroid/view/View;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 641
    :cond_3
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "$element_content"

    const-string v2, "Open"

    .line 642
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 643
    invoke-virtual {p0, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->setViewProperties(Landroid/view/View;Lorg/json/JSONObject;)V

    .line 644
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->trackViewOnClick(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Landroid/view/View;Z)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception p0

    .line 646
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_1e
    return-void
.end method

.method public static trackExpandableListViewOnChildClick(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Landroid/widget/ExpandableListView;Landroid/view/View;II)V
    .registers 9

    if-eqz p1, :cond_8a

    if-eqz p2, :cond_8a

    .line 148
    :try_start_4
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->isViewIgnored(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_8a

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->isAppClickIgnore(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_8a

    .line 151
    :cond_12
    const-class v0, Landroid/widget/ExpandableListView;

    invoke-static {p1, v0}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->getAppClickViewContext(Landroid/view/View;Ljava/lang/Class;)Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;

    move-result-object v0

    if-nez v0, :cond_1b

    return-void

    .line 156
    :cond_1b
    iget-object v1, v0, Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;->activity:Landroid/app/Activity;

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;->fragment:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->buildPageProperty(Landroid/app/Activity;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 158
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewId(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, "$element_id"

    .line 160
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_32
    const-string v1, "$element_type"

    const-string v2, "ExpandableListView"

    .line 162
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x0

    .line 165
    instance-of v2, p2, Landroid/view/ViewGroup;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3c} :catch_86

    if-eqz v2, :cond_61

    .line 167
    :try_start_3e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    move-object v3, p2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->traverseView(Ljava/lang/StringBuilder;Landroid/view/ViewGroup;)Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_65

    const/4 v2, 0x0

    .line 170
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_5b} :catch_5c

    goto :goto_65

    :catch_5c
    move-exception v2

    .line 173
    :try_start_5d
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_65

    .line 176
    :cond_61
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewContent(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 179
    :cond_65
    :goto_65
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_70

    const-string v2, "$element_content"

    .line 180
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    :cond_70
    invoke-static {p1, p3, p4}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->getExpandListViewExtendProperty(Landroid/widget/ExpandableListView;II)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 185
    sget p1, Lcom/sensorsdata/analytics/android/autotrack/R$id;->sensors_analytics_tag_view_properties:I

    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 186
    invoke-static {p0, v0, p2}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->trackAutoEvent(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Lorg/json/JSONObject;Landroid/view/View;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_85} :catch_86

    goto :goto_8a

    :catch_86
    move-exception p0

    .line 188
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_8a
    :goto_8a
    return-void
.end method

.method public static trackExpandableListViewOnGroupClick(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Landroid/widget/ExpandableListView;Landroid/view/View;I)V
    .registers 8

    if-eqz p1, :cond_85

    if-eqz p2, :cond_85

    .line 90
    :try_start_4
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->isAppClickIgnore(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_85

    .line 94
    :cond_c
    const-class v0, Landroid/widget/ExpandableListView;

    invoke-static {p1, v0}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->getAppClickViewContext(Landroid/view/View;Ljava/lang/Class;)Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;

    move-result-object v0

    if-nez v0, :cond_15

    return-void

    .line 99
    :cond_15
    iget-object v1, v0, Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;->activity:Landroid/app/Activity;

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;->fragment:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->buildPageProperty(Landroid/app/Activity;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 101
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewId(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "$element_id"

    .line 103
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2c
    const-string v1, "$element_type"

    const-string v2, "ExpandableListView"

    .line 105
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x0

    .line 108
    instance-of v2, p2, Landroid/view/ViewGroup;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_36} :catch_81

    if-eqz v2, :cond_5b

    .line 110
    :try_start_38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    move-object v3, p2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->traverseView(Ljava/lang/StringBuilder;Landroid/view/ViewGroup;)Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5f

    const/4 v2, 0x0

    .line 113
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_55} :catch_56

    goto :goto_5f

    :catch_56
    move-exception v2

    .line 116
    :try_start_57
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_5f

    .line 119
    :cond_5b
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewContent(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 122
    :cond_5f
    :goto_5f
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6a

    const-string v2, "$element_content"

    .line 123
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6a
    const/4 v1, -0x1

    .line 127
    invoke-static {p1, p3, v1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->getExpandListViewExtendProperty(Landroid/widget/ExpandableListView;II)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 129
    sget p1, Lcom/sensorsdata/analytics/android/autotrack/R$id;->sensors_analytics_tag_view_properties:I

    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 130
    invoke-static {p0, v0, p2}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->trackAutoEvent(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Lorg/json/JSONObject;Landroid/view/View;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_80} :catch_81

    goto :goto_85

    :catch_81
    move-exception p0

    .line 132
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_85
    :goto_85
    return-void
.end method

.method public static trackListView(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Landroid/widget/AdapterView;Landroid/view/View;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    if-eqz p2, :cond_9e

    .line 566
    :try_start_2
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->isAppClickIgnore(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)Z

    move-result v0

    if-nez v0, :cond_9e

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->isViewIgnored(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_9e

    invoke-static {p2}, Lcom/sensorsdata/analytics/android/autotrack/utils/KeyboardViewUtil;->isKeyboardView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_9e

    :cond_16
    const/4 v0, 0x0

    const-string v1, ""

    .line 572
    instance-of v2, p1, Landroid/widget/ListView;

    if-eqz v2, :cond_22

    .line 573
    const-class v0, Landroid/widget/ListView;

    const-string v1, "ListView"

    goto :goto_33

    .line 575
    :cond_22
    instance-of v2, p1, Landroid/widget/GridView;

    if-eqz v2, :cond_2b

    .line 576
    const-class v0, Landroid/widget/GridView;

    const-string v1, "GridView"

    goto :goto_33

    .line 578
    :cond_2b
    instance-of v2, p1, Landroid/widget/Spinner;

    if-eqz v2, :cond_33

    .line 579
    const-class v0, Landroid/widget/Spinner;

    const-string v1, "Spinner"

    .line 582
    :cond_33
    :goto_33
    invoke-static {p1, p2, v0}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->getAppClickViewContext(Ljava/lang/Object;Landroid/view/View;Ljava/lang/Class;)Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;

    move-result-object v0

    if-nez v0, :cond_3a

    return-void

    .line 587
    :cond_3a
    iget-object v2, v0, Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;->activity:Landroid/app/Activity;

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;->fragment:Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->buildPageProperty(Landroid/app/Activity;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 588
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4d

    const-string v2, "$element_type"

    .line 589
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 593
    :cond_4d
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewId(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 594
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5c

    const-string v2, "$element_id"

    .line 595
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 599
    :cond_5c
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    .line 600
    instance-of v1, p1, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_6a

    .line 601
    check-cast p1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {p1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    .line 604
    :cond_6a
    instance-of v1, p1, Lcom/sensorsdata/analytics/android/sdk/SensorsAdapterViewItemTrackProperties;
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6c} :catch_9a

    if-eqz v1, :cond_7c

    .line 606
    :try_start_6e
    check-cast p1, Lcom/sensorsdata/analytics/android/sdk/SensorsAdapterViewItemTrackProperties;

    .line 607
    invoke-interface {p1, p3}, Lcom/sensorsdata/analytics/android/sdk/SensorsAdapterViewItemTrackProperties;->getSensorsItemTrackProperties(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 608
    invoke-static {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_77
    .catch Lorg/json/JSONException; {:try_start_6e .. :try_end_77} :catch_78
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_77} :catch_9a

    goto :goto_7c

    :catch_78
    move-exception p1

    .line 610
    :try_start_79
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 615
    :cond_7c
    :goto_7c
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewContent(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    .line 616
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_8b

    const-string p3, "$element_content"

    .line 617
    invoke-virtual {v0, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 621
    :cond_8b
    sget p1, Lcom/sensorsdata/analytics/android/autotrack/R$id;->sensors_analytics_tag_view_properties:I

    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 622
    invoke-static {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 624
    invoke-static {p0, v0, p2}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->trackAutoEvent(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Lorg/json/JSONObject;Landroid/view/View;)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_99} :catch_9a

    goto :goto_9e

    :catch_9a
    move-exception p0

    .line 626
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_9e
    :goto_9e
    return-void
.end method

.method public static trackMenuItem(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Ljava/lang/Object;Landroid/view/MenuItem;)V
    .registers 6

    if-eqz p2, :cond_78

    .line 326
    :try_start_2
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->isDeBounceTrack(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->isAppClickIgnore(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_78

    .line 330
    :cond_f
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getClickView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    const-class v1, Landroid/view/MenuItem;

    invoke-static {p1, v0, v1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->getAppClickViewContext(Ljava/lang/Object;Landroid/view/View;Ljava/lang/Class;)Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;

    move-result-object p1

    if-nez p1, :cond_1c

    return-void

    .line 335
    :cond_1c
    iget-object v0, p1, Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;->activity:Landroid/app/Activity;

    iget-object v1, p1, Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;->fragment:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->buildPageProperty(Landroid/app/Activity;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_24} :catch_74

    .line 339
    :try_start_24
    iget-object v1, p1, Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_44

    .line 340
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    .line 341
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_44

    const-string v2, "$element_id"

    .line 342
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3f} :catch_40

    goto :goto_44

    :catch_40
    move-exception v1

    .line 346
    :try_start_41
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 350
    :cond_44
    :goto_44
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_67

    .line 351
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 352
    iget-object v1, p1, Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;->view:Landroid/view/View;

    if-eqz v1, :cond_62

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 353
    iget-object p2, p1, Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;->view:Landroid/view/View;

    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewContent(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    :cond_62
    const-string v1, "$element_content"

    .line 355
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_67
    const-string p2, "$element_type"

    const-string v1, "MenuItem"

    .line 357
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 359
    iget-object p1, p1, Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;->view:Landroid/view/View;

    invoke-static {p0, v0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->trackAutoEvent(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Lorg/json/JSONObject;Landroid/view/View;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_73} :catch_74

    goto :goto_78

    :catch_74
    move-exception p0

    .line 361
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_78
    :goto_78
    return-void
.end method

.method public static trackRadioGroup(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Landroid/widget/RadioGroup;I)V
    .registers 8

    if-eqz p1, :cond_88

    .line 374
    :try_start_2
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->isAppClickIgnore(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_88

    .line 378
    :cond_a
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_83

    .line 379
    invoke-virtual {p2}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_83

    .line 383
    :cond_18
    const-class v0, Landroid/widget/RadioGroup;

    invoke-static {p1, v0}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->getAppClickViewContext(Landroid/view/View;Ljava/lang/Class;)Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;

    move-result-object v0

    if-nez v0, :cond_21

    return-void

    .line 388
    :cond_21
    iget-object v1, v0, Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;->activity:Landroid/app/Activity;

    iget-object v2, v0, Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;->fragment:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->buildPageProperty(Landroid/app/Activity;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 391
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewId(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    .line 392
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_38

    const-string v3, "$element_id"

    .line 393
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_38
    const-string v2, "$element_type"

    .line 396
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewType(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_41} :catch_84

    const/4 p2, 0x0

    .line 401
    :try_start_42
    iget-object v0, v0, Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_74

    .line 402
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_50} :catch_6c

    if-eqz v0, :cond_73

    .line 403
    :try_start_52
    invoke-virtual {v0}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_73

    const-string p2, "$element_content"

    .line 404
    invoke-virtual {v0}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_69} :catch_6a

    goto :goto_73

    :catch_6a
    move-exception p2

    goto :goto_70

    :catch_6c
    move-exception v0

    move-object v4, v0

    move-object v0, p2

    move-object p2, v4

    .line 408
    :goto_70
    :try_start_70
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_73
    :goto_73
    move-object p2, v0

    .line 412
    :cond_74
    sget v0, Lcom/sensorsdata/analytics/android/autotrack/R$id;->sensors_analytics_tag_view_properties:I

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 413
    invoke-static {p1, v1}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 415
    invoke-static {p0, v1, p2}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->trackAutoEvent(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Lorg/json/JSONObject;Landroid/view/View;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_82} :catch_84

    goto :goto_88

    :cond_83
    :goto_83
    return-void

    :catch_84
    move-exception p0

    .line 417
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_88
    :goto_88
    return-void
.end method

.method public static trackTabHost(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Ljava/lang/String;)V
    .registers 6

    .line 200
    :try_start_0
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->isAppClickIgnore(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 204
    :cond_7
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/utils/AutoTrackViewUtils;->getTabView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-class v1, Landroid/widget/TabHost;

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->getAppClickViewContext(Landroid/view/View;Ljava/lang/Class;)Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_49

    if-nez v0, :cond_14

    return-void

    :cond_14
    const/4 v1, 0x0

    .line 211
    :try_start_15
    iget-object v2, v0, Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;->activity:Landroid/app/Activity;

    iget-object v3, v0, Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;->fragment:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->buildPageProperty(Landroid/app/Activity;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 212
    iget-object v2, v0, Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;->view:Landroid/view/View;

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewContent(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    .line 213
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move-object p1, v2

    :goto_2b
    const-string v2, "$element_content"

    .line 216
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    move-exception p1

    .line 218
    :try_start_32
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_35
    if-nez v1, :cond_3c

    .line 222
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :cond_3c
    const-string p1, "$element_type"

    const-string v2, "TabHost"

    .line 224
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    iget-object p1, v0, Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;->view:Landroid/view/View;

    invoke-static {p0, v1, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->trackAutoEvent(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Lorg/json/JSONObject;Landroid/view/View;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_48} :catch_49

    goto :goto_4d

    :catch_49
    move-exception p0

    .line 227
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_4d
    return-void
.end method

.method public static trackTabLayoutSelected(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    .line 240
    const-class v0, Lcom/google/android/material/tabs/TabLayout$Tab;

    if-eqz p2, :cond_dd

    :try_start_4
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->isDeBounceTrack(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_dd

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->isAppClickIgnore(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto/16 :goto_dd

    .line 244
    :cond_12
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/autotrack/utils/AutoTrackViewUtils;->getTabLayout(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_19

    return-void

    .line 248
    :cond_19
    invoke-static {p1, v1}, Lcom/sensorsdata/analytics/android/autotrack/utils/AutoTrackViewUtils;->getTabLayoutContext(Ljava/lang/Object;Landroid/view/View;)Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;

    move-result-object p1

    if-nez p1, :cond_20

    return-void

    .line 252
    :cond_20
    iget-object v2, p1, Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;->activity:Landroid/app/Activity;

    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isActivityAutoTrackAppClickIgnored(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2f

    return-void

    .line 255
    :cond_2f
    iget-object v2, p1, Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;->fragment:Ljava/lang/Object;

    if-eqz v2, :cond_3e

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isActivityAutoTrackAppClickIgnored(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3e

    return-void

    .line 259
    :cond_3e
    iget-object v2, p1, Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;->activity:Landroid/app/Activity;

    iget-object v3, p1, Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;->fragment:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->buildPageProperty(Landroid/app/Activity;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "$element_type"

    const-string v4, "TabLayout"

    .line 261
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mCustomView"

    const-string v4, "customView"

    .line 276
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p2, v3}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->findField(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 278
    invoke-static {v3, p2}, Lcom/sensorsdata/analytics/android/autotrack/utils/AutoTrackViewUtils;->getTabLayoutText(Landroid/view/View;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_66

    const-string v5, "$element_content"

    .line 280
    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_66
    const/4 v4, -0x1

    if-eqz v3, :cond_6f

    .line 283
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v5, v4, :cond_70

    :cond_6f
    move-object v3, v1

    .line 288
    :cond_70
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    if-eq v5, v4, :cond_91

    iget-object p1, p1, Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;->activity:Landroid/app/Activity;

    if-eqz p1, :cond_91

    .line 289
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p1

    .line 290
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_91

    const-string v4, "$element_id"

    .line 291
    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 295
    :cond_91
    sget p1, Lcom/sensorsdata/analytics/android/autotrack/R$id;->sensors_analytics_tag_view_properties:I

    invoke-virtual {v3, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 296
    invoke-static {p1, v2}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    const-string p1, "view"

    .line 299
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p2, p1}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->findField(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-nez p1, :cond_b6

    const-string p1, "mView"

    .line 301
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p2, p1}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->findField(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    :cond_b6
    if-eqz p1, :cond_d5

    .line 305
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/autotrack/utils/AutoTrackViewUtils;->isBindViewPager(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_c4

    .line 306
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_cc

    :cond_c4
    if-nez p2, :cond_d5

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result p2

    if-eqz p2, :cond_d5

    :cond_cc
    const-string p2, "$referrer_title"

    .line 307
    invoke-static {}, Lcom/sensorsdata/analytics/android/autotrack/core/business/SAPageTools;->getCurrentTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    :cond_d5
    invoke-static {p0, v2, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->trackAutoEvent(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Lorg/json/JSONObject;Landroid/view/View;)V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d8} :catch_d9

    goto :goto_dd

    :catch_d9
    move-exception p0

    .line 313
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_dd
    :goto_dd
    return-void
.end method

.method public static trackViewOnClick(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Landroid/view/View;Z)V
    .registers 5

    if-eqz p1, :cond_33

    .line 679
    :try_start_2
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->isAppClickIgnore(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)Z

    move-result v0

    if-nez v0, :cond_33

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->isDeBounceTrack(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 680
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/utils/KeyboardViewUtil;->isKeyboardView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_33

    .line 684
    :cond_15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->getAppClickViewContext(Landroid/view/View;Ljava/lang/Class;)Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;

    move-result-object v0

    if-nez v0, :cond_20

    return-void

    .line 689
    :cond_20
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 690
    invoke-static {v0, v1, p2}, Lcom/sensorsdata/analytics/android/autotrack/utils/AopUtil;->injectClickInfo(Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_33

    .line 692
    invoke-static {p0, p2, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/AppClickTrackImpl;->trackAutoEvent(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Lorg/json/JSONObject;Landroid/view/View;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2e} :catch_2f

    goto :goto_33

    :catch_2f
    move-exception p0

    .line 695
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_33
    :goto_33
    return-void
.end method
