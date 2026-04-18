.class public Lcom/sensorsdata/analytics/android/sdk/visual/utils/VisualUtil;
.super Ljava/lang/Object;
.source "VisualUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addViewPathProperties(Landroid/app/Activity;Landroid/view/View;Lorg/json/JSONObject;)Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_84

    if-nez p0, :cond_7

    goto/16 :goto_84

    :cond_7
    if-nez p2, :cond_e

    .line 133
    :try_start_9
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 135
    :cond_e
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->getViewNode(Landroid/view/View;)Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;

    move-result-object v1

    .line 136
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isVisualizedAutoTrackEnabled()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isVisualizedAutoTrackActivity(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_46

    .line 137
    :cond_2e
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isHeatMapEnabled()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isHeatMapActivity(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_6a

    .line 138
    :cond_46
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getElementSelector(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    .line 139
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_55

    const-string p1, "$element_selector"

    .line 140
    invoke-virtual {p2, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_55
    if-eqz v1, :cond_6a

    .line 142
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6a

    const-string p0, "$element_path"

    .line 143
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6a
    if-eqz v1, :cond_7f

    .line 147
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewPosition()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_7f

    const-string p0, "$element_position"

    .line 148
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewPosition()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7f
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_7f} :catch_80

    :cond_7f
    return-object v1

    :catch_80
    move-exception p0

    .line 152
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_84
    :goto_84
    return-object v0
.end method

.method public static getScreenNameAndTitle(Landroid/view/View;Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;)Lorg/json/JSONObject;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 103
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getActivityOfView(Landroid/content/Context;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_16

    .line 105
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v1

    :cond_16
    if-eqz v1, :cond_48

    .line 107
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_48

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->isActive()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 108
    invoke-static {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->getFragmentFromView(Landroid/view/View;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3c

    .line 110
    invoke-static {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAPageInfoUtils;->getFragmentPageInfo(Landroid/app/Activity;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p1, :cond_40

    .line 111
    iget-boolean v0, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->hasFragment:Z

    if-nez v0, :cond_40

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->hasFragment:Z

    goto :goto_40

    .line 115
    :cond_3c
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAPageInfoUtils;->getActivityPageInfo(Landroid/app/Activity;)Lorg/json/JSONObject;

    move-result-object p0

    :cond_40
    :goto_40
    move-object v0, p0

    .line 118
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/SAPageInfoUtils;->getRNPageInfo()Lorg/json/JSONObject;

    move-result-object p0

    .line 119
    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->mergeDuplicateProperty(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_48
    return-object v0
.end method

.method public static getVisibility(Landroid/view/View;)I
    .registers 3

    .line 51
    instance-of v0, p0, Landroid/widget/Spinner;

    const/16 v1, 0x8

    if-eqz v0, :cond_7

    return v1

    .line 54
    :cond_7
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->isViewSelfVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_e

    return v1

    .line 57
    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p0

    if-nez p0, :cond_15

    return v1

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public static isForbiddenClick(Landroid/view/View;)Z
    .registers 5

    .line 71
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->instanceOfWebView(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_29

    instance-of v0, p0, Landroid/widget/AdapterView;

    if-eqz v0, :cond_c

    goto :goto_29

    .line 74
    :cond_c
    instance-of v0, p0, Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz v0, :cond_28

    .line 75
    check-cast p0, Landroid/widget/TextView;

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-lt v0, v3, :cond_28

    .line 77
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result p0

    if-nez p0, :cond_26

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    return v1

    :cond_28
    return v2

    :cond_29
    :goto_29
    return v1
.end method

.method public static isSupportClick(Landroid/view/View;)Z
    .registers 4

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 85
    instance-of v1, v0, Landroid/widget/AdapterView;

    const/4 v2, 0x1

    if-nez v1, :cond_1a

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->instanceOfRecyclerView(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_1a

    .line 88
    :cond_10
    instance-of v0, p0, Landroid/widget/RatingBar;

    if-nez v0, :cond_1a

    instance-of p0, p0, Landroid/widget/SeekBar;

    if-eqz p0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    :cond_1a
    :goto_1a
    return v2
.end method

.method public static isSupportElementContent(Landroid/view/View;)Z
    .registers 4

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xe

    if-lt v0, v2, :cond_14

    .line 65
    instance-of v0, p0, Landroid/widget/SeekBar;

    if-nez v0, :cond_14

    instance-of v0, p0, Landroid/widget/RatingBar;

    if-nez v0, :cond_14

    instance-of p0, p0, Landroid/widget/Switch;

    if-nez p0, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1
.end method
