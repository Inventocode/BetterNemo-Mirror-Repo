.class public Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/FragmentViewScreenCallbacks;
.super Ljava/lang/Object;
.source "FragmentViewScreenCallbacks.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/SAFragmentLifecycleCallbacks;


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.FragmentViewScreenCallbacks"


# instance fields
.field private final mPageFragments:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/FragmentViewScreenCallbacks;->mPageFragments:Ljava/util/Set;

    return-void
.end method

.method private isFragmentValid(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    const-string v1, "SA.FragmentViewScreenCallbacks"

    if-nez p1, :cond_b

    const-string p1, "fragment is null, return"

    .line 179
    invoke-static {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 183
    :cond_b
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v2

    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->APP_VIEW_SCREEN:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    invoke-virtual {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEventTypeIgnored(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string p1, "AutoTrackEventTypeIgnored, return"

    .line 184
    invoke-static {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 188
    :cond_1d
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isTrackFragmentAppViewScreenEnabled()Z

    move-result v2

    if-nez v2, :cond_2d

    const-string p1, "TrackFragmentAppViewScreenEnabled is false, return"

    .line 189
    invoke-static {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 193
    :cond_2d
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->getActivityFromFragment(Ljava/lang/Object;)Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_47

    .line 194
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isActivityAutoTrackAppViewScreenIgnored(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_47

    const-string p1, "isActivityAutoTrackAppViewScreenIgnored is false, return"

    .line 195
    invoke-static {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 199
    :cond_47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.bumptech.glide.manager.SupportRequestManagerFragment"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    const-string p1, "fragment is SupportRequestManagerFragment,return"

    .line 200
    invoke-static {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 204
    :cond_5d
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isFragmentAutoTrackAppViewScreen(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_71

    const-string p1, "fragment class ignored,return"

    .line 206
    invoke-static {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 210
    :cond_71
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/FragmentViewScreenCallbacks;->mPageFragments:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    const-string p1, "pageFragment contains,return"

    .line 211
    invoke-static {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 214
    :cond_7f
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->isFragmentVisible(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8b

    const-string p1, "fragment is not visible,return"

    .line 215
    invoke-static {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_8b
    const/4 p1, 0x1

    return p1
.end method

.method private trackFragmentAppViewScreen(Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    .line 164
    :try_start_1
    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/util/SAPageInfoUtils;->getFragmentPageInfo(Landroid/app/Activity;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 165
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;

    move-result-object v1

    const-string v2, "$screen_name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;->setFragmentScreenName(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    instance-of v1, p1, Lcom/sensorsdata/analytics/android/sdk/ScreenAutoTracker;

    if-eqz v1, :cond_20

    .line 167
    move-object v1, p1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/ScreenAutoTracker;

    .line 168
    invoke-interface {v1}, Lcom/sensorsdata/analytics/android/sdk/ScreenAutoTracker;->getTrackProperties()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 170
    :cond_20
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->appendLibMethodAutoTrack(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 171
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v1

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/core/business/SAPageTools;->getScreenUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackViewScreen(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2f} :catch_30

    goto :goto_34

    :catch_30
    move-exception p1

    .line 173
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_34
    return-void
.end method

.method private static traverseView(Ljava/lang/String;Landroid/view/ViewGroup;)V
    .registers 6

    .line 223
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    if-nez p1, :cond_9

    goto :goto_35

    .line 226
    :cond_9
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_3a

    .line 228
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 229
    sget v3, Lcom/sensorsdata/analytics/android/autotrack/R$id;->sensors_analytics_tag_view_fragment_name:I

    invoke-virtual {v2, v3, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 230
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_32

    instance-of v3, v2, Landroid/widget/ListView;

    if-nez v3, :cond_32

    instance-of v3, v2, Landroid/widget/GridView;

    if-nez v3, :cond_32

    instance-of v3, v2, Landroid/widget/Spinner;

    if-nez v3, :cond_32

    instance-of v3, v2, Landroid/widget/RadioGroup;

    if-nez v3, :cond_32

    .line 234
    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {p0, v2}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/FragmentViewScreenCallbacks;->traverseView(Ljava/lang/String;Landroid/view/ViewGroup;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_36

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_35
    :goto_35
    return-void

    :catch_36
    move-exception p0

    .line 238
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_3a
    return-void
.end method


# virtual methods
.method public onCreate(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public onHiddenChanged(Ljava/lang/Object;Z)V
    .registers 4

    const-string v0, "SA.FragmentViewScreenCallbacks"

    if-nez p1, :cond_a

    :try_start_4
    const-string p1, "fragment is null,return"

    .line 124
    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    if-eqz p2, :cond_17

    .line 128
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/FragmentViewScreenCallbacks;->mPageFragments:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string p1, "fragment hidden is true,return"

    .line 129
    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 132
    :cond_17
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/FragmentViewScreenCallbacks;->isFragmentValid(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 133
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/FragmentViewScreenCallbacks;->trackFragmentAppViewScreen(Ljava/lang/Object;)V

    .line 134
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/FragmentViewScreenCallbacks;->mPageFragments:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_25} :catch_26

    goto :goto_2a

    :catch_26
    move-exception p1

    .line 137
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public onPause(Ljava/lang/Object;)V
    .registers 3

    if-eqz p1, :cond_7

    .line 111
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/FragmentViewScreenCallbacks;->mPageFragments:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public onResume(Ljava/lang/Object;)V
    .registers 3

    .line 99
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/FragmentViewScreenCallbacks;->isFragmentValid(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 100
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/FragmentViewScreenCallbacks;->trackFragmentAppViewScreen(Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/FragmentViewScreenCallbacks;->mPageFragments:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception p1

    .line 104
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_13
    :goto_13
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
    .registers 6

    .line 67
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    .line 68
    sget v0, Lcom/sensorsdata/analytics/android/autotrack/R$id;->sensors_analytics_tag_view_fragment_name:I

    invoke-virtual {p2, v0, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 70
    instance-of v1, p2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_17

    .line 71
    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {p3, v1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/FragmentViewScreenCallbacks;->traverseView(Ljava/lang/String;Landroid/view/ViewGroup;)V

    .line 75
    :cond_17
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 77
    invoke-static {v1, p2}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getActivityOfView(Landroid/content/Context;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_34

    .line 79
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_34

    .line 81
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p2

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 85
    :cond_34
    invoke-static {p3, p1}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->setFragmentToCache(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_38

    goto :goto_3c

    :catch_38
    move-exception p1

    .line 87
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_3c
    return-void
.end method

.method public setUserVisibleHint(Ljava/lang/Object;Z)V
    .registers 4

    const-string v0, "SA.FragmentViewScreenCallbacks"

    if-nez p1, :cond_a

    :try_start_4
    const-string p1, "object is null"

    .line 145
    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    if-nez p2, :cond_17

    .line 149
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/FragmentViewScreenCallbacks;->mPageFragments:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string p1, "fragment isVisibleToUser is false,return"

    .line 150
    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 153
    :cond_17
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/FragmentViewScreenCallbacks;->isFragmentValid(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 154
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/FragmentViewScreenCallbacks;->trackFragmentAppViewScreen(Ljava/lang/Object;)V

    .line 155
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/FragmentViewScreenCallbacks;->mPageFragments:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_25} :catch_26

    goto :goto_2a

    :catch_26
    move-exception p1

    .line 158
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_2a
    :goto_2a
    return-void
.end method
