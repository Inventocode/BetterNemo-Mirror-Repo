.class public Lcom/sensorsdata/analytics/android/autotrack/utils/AopUtil;
.super Ljava/lang/Object;
.source "AopUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.AopUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildTitleNoAutoTrackerProperties(Landroid/app/Activity;)Lorg/json/JSONObject;
    .registers 5

    const-string v0, "$title"

    const-string v1, "$screen_name"

    .line 55
    :try_start_4
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->buildTitleAndScreenName(Landroid/app/Activity;)Lorg/json/JSONObject;

    move-result-object v2

    .line 56
    instance-of v3, p0, Lcom/sensorsdata/analytics/android/sdk/ScreenAutoTracker;

    if-eqz v3, :cond_2e

    .line 57
    check-cast p0, Lcom/sensorsdata/analytics/android/sdk/ScreenAutoTracker;

    .line 58
    invoke-interface {p0}, Lcom/sensorsdata/analytics/android/sdk/ScreenAutoTracker;->getTrackProperties()Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2e

    .line 60
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 61
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    :cond_21
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 64
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2e} :catch_2f

    :cond_2e
    return-object v2

    :catch_2f
    move-exception p0

    .line 69
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 70
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0
.end method

.method public static injectClickInfo(Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    .registers 6

    .line 85
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;->view:Landroid/view/View;

    if-nez v0, :cond_5

    return-object p1

    .line 89
    :cond_5
    :try_start_5
    invoke-static {v0, p2}, Lcom/sensorsdata/analytics/android/autotrack/utils/AopUtil;->isTrackEvent(Landroid/view/View;Z)Z

    move-result p2

    if-nez p2, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 92
    :cond_d
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;->view:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 93
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 95
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;->view:Landroid/view/View;

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewId(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "$element_id"

    .line 98
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    :cond_29
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;->view:Landroid/view/View;

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewContent(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "$element_content"

    .line 104
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3a
    const-string v1, "$element_type"

    .line 107
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;->view:Landroid/view/View;

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewType(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_4a

    goto :goto_50

    :cond_4a
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;->view:Landroid/view/View;

    invoke-static {p2, v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getActivityOfView(Landroid/content/Context;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    :goto_50
    if-eqz v1, :cond_59

    .line 112
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAPageInfoUtils;->getActivityPageInfo(Landroid/app/Activity;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 116
    :cond_59
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;->fragment:Ljava/lang/Object;

    if-eqz p2, :cond_5e

    goto :goto_64

    :cond_5e
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;->view:Landroid/view/View;

    invoke-static {p2, v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->getFragmentFromView(Landroid/view/View;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object p2

    :goto_64
    if-eqz p2, :cond_6d

    .line 118
    invoke-static {v1, p2}, Lcom/sensorsdata/analytics/android/sdk/util/SAPageInfoUtils;->getFragmentPageInfo(Landroid/app/Activity;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 121
    :cond_6d
    iget-object p0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;->view:Landroid/view/View;

    sget p2, Lcom/sensorsdata/analytics/android/autotrack/R$id;->sensors_analytics_tag_view_properties:I

    invoke-virtual {p0, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    if-eqz p0, :cond_7c

    .line 123
    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 126
    :cond_7c
    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->mergeDistinctProperty(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_7f
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_7f} :catch_80

    return-object p1

    :catch_80
    move-exception p0

    .line 129
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    return-object p1
.end method

.method static isTrackEvent(Landroid/view/View;Z)Z
    .registers 4

    .line 135
    instance-of v0, p0, Landroid/widget/CheckBox;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    if-nez p1, :cond_1d

    return v1

    .line 139
    :cond_8
    instance-of v0, p0, Landroid/widget/RadioButton;

    if-eqz v0, :cond_f

    if-nez p1, :cond_1d

    return v1

    .line 143
    :cond_f
    instance-of v0, p0, Landroid/widget/ToggleButton;

    if-eqz v0, :cond_16

    if-nez p1, :cond_1d

    return v1

    .line 147
    :cond_16
    instance-of v0, p0, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1d

    if-nez p1, :cond_1d

    return v1

    .line 152
    :cond_1d
    instance-of p0, p0, Landroid/widget/RatingBar;

    if-eqz p0, :cond_22

    return p1

    :cond_22
    const/4 p0, 0x1

    return p0
.end method
