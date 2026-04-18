.class public Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;
.super Ljava/lang/Object;
.source "AutoTrackContextHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AutoTrackContextHelper"


# instance fields
.field private mActivityLifecycleCallbacks:Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;

.field private final mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

.field private final mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

.field private final mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;


# direct methods
.method public constructor <init>(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V
    .registers 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    .line 52
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getInternalConfigs()Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    .line 53
    new-instance v0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    invoke-direct {v0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;-><init>(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    .line 54
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->registerListener()V

    .line 55
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getPluginManager()Lcom/sensorsdata/analytics/android/sdk/plugin/property/PropertyPluginManager;

    move-result-object v0

    new-instance v1, Lcom/sensorsdata/analytics/android/autotrack/core/plugins/AutoTrackEventPlugin;

    invoke-direct {v1}, Lcom/sensorsdata/analytics/android/autotrack/core/plugins/AutoTrackEventPlugin;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/PropertyPluginManager;->registerPropertyPlugin(Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;)V

    .line 57
    :try_start_21
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getInternalConfigs()Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_3b

    .line 58
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getInternalConfigs()Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    move-result-object p1

    iget-object p1, p1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->delayExecution(Landroid/app/Activity;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_36} :catch_37

    goto :goto_3b

    :catch_37
    move-exception p1

    .line 61
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_3b
    :goto_3b
    return-void
.end method


# virtual methods
.method protected delayExecution(Landroid/app/Activity;)V
    .registers 4

    .line 90
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mActivityLifecycleCallbacks:Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    .line 91
    invoke-virtual {v0, p1, v1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 92
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mActivityLifecycleCallbacks:Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->onDelayInitStarted(Landroid/app/Activity;)V

    .line 94
    :cond_d
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SALog;->isLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SDK init success by："

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AutoTrackContextHelper"

    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    return-void
.end method

.method public varargs invokeModuleFunction(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_3ca

    goto/16 :goto_1c4

    :sswitch_f
    const-string v0, "clearLastScreenUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    goto/16 :goto_1c4

    :cond_19
    const/16 v3, 0x20

    goto/16 :goto_1c4

    :sswitch_1d
    const-string v0, "clearReferrerWhenAppEnd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    goto/16 :goto_1c4

    :cond_27
    const/16 v3, 0x1f

    goto/16 :goto_1c4

    :sswitch_2b
    const-string v0, "resumeIgnoredAutoTrackFragments"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_35

    goto/16 :goto_1c4

    :cond_35
    const/16 v3, 0x1e

    goto/16 :goto_1c4

    :sswitch_39
    const-string v0, "enableAutoTrackFragments"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_43

    goto/16 :goto_1c4

    :cond_43
    const/16 v3, 0x1d

    goto/16 :goto_1c4

    :sswitch_47
    const-string v0, "resumeIgnoredAutoTrackFragment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_51

    goto/16 :goto_1c4

    :cond_51
    const/16 v3, 0x1c

    goto/16 :goto_1c4

    :sswitch_55
    const-string v0, "getIgnoredViewTypeList"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5f

    goto/16 :goto_1c4

    :cond_5f
    const/16 v3, 0x1b

    goto/16 :goto_1c4

    :sswitch_63
    const-string v0, "isTrackFragmentAppViewScreenEnabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6d

    goto/16 :goto_1c4

    :cond_6d
    const/16 v3, 0x1a

    goto/16 :goto_1c4

    :sswitch_71
    const-string v0, "getLastScreenUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7b

    goto/16 :goto_1c4

    :cond_7b
    const/16 v3, 0x19

    goto/16 :goto_1c4

    :sswitch_7f
    const-string v0, "trackViewAppClick"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_89

    goto/16 :goto_1c4

    :cond_89
    const/16 v3, 0x18

    goto/16 :goto_1c4

    :sswitch_8d
    const-string v0, "enableAutoTrackFragment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_97

    goto/16 :goto_1c4

    :cond_97
    const/16 v3, 0x17

    goto/16 :goto_1c4

    :sswitch_9b
    const-string v0, "isAutoTrackEventTypeIgnored"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a5

    goto/16 :goto_1c4

    :cond_a5
    const/16 v3, 0x16

    goto/16 :goto_1c4

    :sswitch_a9
    const-string v0, "ignoreView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b3

    goto/16 :goto_1c4

    :cond_b3
    const/16 v3, 0x15

    goto/16 :goto_1c4

    :sswitch_b7
    const-string v0, "ignoreAutoTrackFragments"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c1

    goto/16 :goto_1c4

    :cond_c1
    const/16 v3, 0x14

    goto/16 :goto_1c4

    :sswitch_c5
    const-string v0, "isFragmentAutoTrackAppViewScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_cf

    goto/16 :goto_1c4

    :cond_cf
    const/16 v3, 0x13

    goto/16 :goto_1c4

    :sswitch_d3
    const-string v0, "resumeAutoTrackActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_dd

    goto/16 :goto_1c4

    :cond_dd
    const/16 v3, 0x12

    goto/16 :goto_1c4

    :sswitch_e1
    const-string v0, "setViewID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_eb

    goto/16 :goto_1c4

    :cond_eb
    const/16 v3, 0x11

    goto/16 :goto_1c4

    :sswitch_ef
    const-string v0, "setViewProperties"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f9

    goto/16 :goto_1c4

    :cond_f9
    const/16 v3, 0x10

    goto/16 :goto_1c4

    :sswitch_fd
    const-string v0, "setViewActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_107

    goto/16 :goto_1c4

    :cond_107
    const/16 v3, 0xf

    goto/16 :goto_1c4

    :sswitch_10b
    const-string v0, "isAutoTrackEnabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_115

    goto/16 :goto_1c4

    :cond_115
    const/16 v3, 0xe

    goto/16 :goto_1c4

    :sswitch_119
    const-string v0, "getReferrerScreenTitle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_123

    goto/16 :goto_1c4

    :cond_123
    const/16 v3, 0xd

    goto/16 :goto_1c4

    :sswitch_127
    const-string v0, "trackFragmentAppViewScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_131

    goto/16 :goto_1c4

    :cond_131
    const/16 v3, 0xc

    goto/16 :goto_1c4

    :sswitch_135
    const-string v0, "ignoreViewType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13f

    goto/16 :goto_1c4

    :cond_13f
    const/16 v3, 0xb

    goto/16 :goto_1c4

    :sswitch_143
    const-string v0, "ignoreAutoTrackFragment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14d

    goto/16 :goto_1c4

    :cond_14d
    const/16 v3, 0xa

    goto/16 :goto_1c4

    :sswitch_151
    const-string v0, "ignoreAutoTrackActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15b

    goto/16 :goto_1c4

    :cond_15b
    const/16 v3, 0x9

    goto/16 :goto_1c4

    :sswitch_15f
    const-string v0, "trackViewScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_169

    goto/16 :goto_1c4

    :cond_169
    const/16 v3, 0x8

    goto/16 :goto_1c4

    :sswitch_16d
    const-string v0, "enableAutoTrack"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_176

    goto :goto_1c4

    :cond_176
    const/4 v3, 0x7

    goto :goto_1c4

    :sswitch_178
    const-string v0, "resumeAutoTrackActivities"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_181

    goto :goto_1c4

    :cond_181
    const/4 v3, 0x6

    goto :goto_1c4

    :sswitch_183
    const-string v0, "ignoreAutoTrackActivities"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18c

    goto :goto_1c4

    :cond_18c
    const/4 v3, 0x5

    goto :goto_1c4

    :sswitch_18e
    const-string v0, "getLastScreenTrackProperties"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_197

    goto :goto_1c4

    :cond_197
    const/4 v3, 0x4

    goto :goto_1c4

    :sswitch_199
    const-string v0, "disableAutoTrack"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a2

    goto :goto_1c4

    :cond_1a2
    const/4 v3, 0x3

    goto :goto_1c4

    :sswitch_1a4
    const-string v0, "isActivityAutoTrackAppClickIgnored"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1ad

    goto :goto_1c4

    :cond_1ad
    const/4 v3, 0x2

    goto :goto_1c4

    :sswitch_1af
    const-string v0, "setViewFragmentName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b8

    goto :goto_1c4

    :cond_1b8
    const/4 v3, 0x1

    goto :goto_1c4

    :sswitch_1ba
    const-string v0, "isActivityAutoTrackAppViewScreenIgnored"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c3

    goto :goto_1c4

    :cond_1c3
    const/4 v3, 0x0

    :goto_1c4
    packed-switch v3, :pswitch_data_450

    goto/16 :goto_3b9

    .line 198
    :pswitch_1c9  #0x20
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->clearLastScreenUrl()V

    goto/16 :goto_3b9

    .line 193
    :pswitch_1d0  #0x1f
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->clearReferrerWhenAppEnd()V

    goto/16 :goto_3b9

    .line 132
    :pswitch_1d7  #0x1e
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    aget-object p2, p2, v2

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->resumeIgnoredAutoTrackFragments(Ljava/util/List;)V

    goto/16 :goto_3b9

    .line 173
    :pswitch_1e2  #0x1d
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    aget-object p2, p2, v2

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->enableAutoTrackFragments(Ljava/util/List;)V

    goto/16 :goto_3b9

    .line 135
    :pswitch_1ed  #0x1c
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->resumeIgnoredAutoTrackFragment(Ljava/lang/Class;)V

    goto/16 :goto_3b9

    .line 186
    :pswitch_1f8  #0x1b
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->getIgnoredViewTypeList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 142
    :pswitch_1ff  #0x1a
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->isTrackFragmentAppViewScreenEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 191
    :pswitch_20a  #0x19
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->getLastScreenUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 212
    :pswitch_211  #0x18
    array-length p1, p2

    if-ne p1, v1, :cond_21f

    .line 213
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    aget-object p2, p2, v2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->trackViewAppClick(Landroid/view/View;)V

    goto/16 :goto_3b9

    .line 215
    :cond_21f
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    aget-object v0, p2, v2

    check-cast v0, Landroid/view/View;

    aget-object p2, p2, v1

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p1, v0, p2}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->trackViewAppClick(Landroid/view/View;Lorg/json/JSONObject;)V

    goto/16 :goto_3b9

    .line 170
    :pswitch_22e  #0x17
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->enableAutoTrackFragment(Ljava/lang/Class;)V

    goto/16 :goto_3b9

    .line 146
    :pswitch_239  #0x16
    aget-object p1, p2, v2

    instance-of p1, p1, Ljava/lang/Integer;

    if-eqz p1, :cond_252

    .line 147
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->isAutoTrackEventTypeIgnored(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 149
    :cond_252
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    aget-object p2, p2, v2

    check-cast p2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    invoke-virtual {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->isAutoTrackEventTypeIgnored(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 176
    :pswitch_261  #0x15
    array-length p1, p2

    if-ne p1, v1, :cond_26f

    .line 177
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    aget-object p2, p2, v2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->ignoreView(Landroid/view/View;)V

    goto/16 :goto_3b9

    .line 179
    :cond_26f
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    aget-object v0, p2, v2

    check-cast v0, Landroid/view/View;

    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->ignoreView(Landroid/view/View;Z)V

    goto/16 :goto_3b9

    .line 126
    :pswitch_282  #0x14
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    aget-object p2, p2, v2

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->ignoreAutoTrackFragments(Ljava/util/List;)V

    goto/16 :goto_3b9

    .line 144
    :pswitch_28d  #0x13
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->isFragmentAutoTrackAppViewScreen(Ljava/lang/Class;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 123
    :pswitch_29c  #0x12
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->resumeAutoTrackActivity(Ljava/lang/Class;)V

    goto/16 :goto_3b9

    .line 152
    :pswitch_2a7  #0x11
    aget-object p1, p2, v2

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_2bc

    .line 153
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    aget-object v0, p2, v2

    check-cast v0, Landroid/view/View;

    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->setViewID(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_3b9

    .line 154
    :cond_2bc
    aget-object p1, p2, v2

    instance-of p1, p1, Landroid/app/Dialog;

    if-eqz p1, :cond_2d1

    .line 155
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    aget-object v0, p2, v2

    check-cast v0, Landroid/app/Dialog;

    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->setViewID(Landroid/app/Dialog;Ljava/lang/String;)V

    goto/16 :goto_3b9

    .line 157
    :cond_2d1
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    aget-object v0, p2, v2

    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->setViewID(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3b9

    .line 183
    :pswitch_2de  #0x10
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    aget-object v0, p2, v2

    check-cast v0, Landroid/view/View;

    aget-object p2, p2, v1

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p1, v0, p2}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->setViewProperties(Landroid/view/View;Lorg/json/JSONObject;)V

    goto/16 :goto_3b9

    .line 161
    :pswitch_2ed  #0xf
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    aget-object v0, p2, v2

    check-cast v0, Landroid/view/View;

    aget-object p2, p2, v1

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p1, v0, p2}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->setViewActivity(Landroid/view/View;Landroid/app/Activity;)V

    goto/16 :goto_3b9

    .line 112
    :pswitch_2fc  #0xe
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->isAutoTrackEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 219
    :pswitch_307  #0xd
    invoke-static {}, Lcom/sensorsdata/analytics/android/autotrack/core/business/SAPageTools;->getReferrerTitle()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 167
    :pswitch_30c  #0xc
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->trackFragmentAppViewScreen()V

    goto/16 :goto_3b9

    .line 188
    :pswitch_313  #0xb
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->ignoreViewType(Ljava/lang/Class;)V

    goto/16 :goto_3b9

    .line 129
    :pswitch_31e  #0xa
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->ignoreAutoTrackFragment(Ljava/lang/Class;)V

    goto/16 :goto_3b9

    .line 120
    :pswitch_329  #0x9
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->ignoreAutoTrackActivity(Ljava/lang/Class;)V

    goto/16 :goto_3b9

    .line 201
    :pswitch_334  #0x8
    array-length p1, p2

    if-ne p1, v1, :cond_350

    .line 202
    aget-object p1, p2, v2

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_348

    .line 203
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    aget-object p2, p2, v2

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->trackViewScreen(Landroid/app/Activity;)V

    goto/16 :goto_3b9

    .line 205
    :cond_348
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    aget-object p2, p2, v2

    invoke-virtual {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->trackViewScreen(Ljava/lang/Object;)V

    goto :goto_3b9

    .line 208
    :cond_350
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/String;

    aget-object p2, p2, v1

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p1, v0, p2}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->trackViewScreen(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_3b9

    .line 102
    :pswitch_35e  #0x7
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    aget-object p2, p2, v2

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->enableAutoTrack(Ljava/util/List;)V

    goto :goto_3b9

    .line 117
    :pswitch_368  #0x6
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    aget-object p2, p2, v2

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->resumeAutoTrackActivities(Ljava/util/List;)V

    goto :goto_3b9

    .line 114
    :pswitch_372  #0x5
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    aget-object p2, p2, v2

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->ignoreAutoTrackActivities(Ljava/util/List;)V

    goto :goto_3b9

    .line 196
    :pswitch_37c  #0x4
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->getLastScreenTrackProperties()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 105
    :pswitch_383  #0x3
    aget-object p1, p2, v2

    instance-of p1, p1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    if-eqz p1, :cond_393

    .line 106
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    aget-object p2, p2, v2

    check-cast p2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    invoke-virtual {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->disableAutoTrack(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;)V

    goto :goto_3b9

    .line 108
    :cond_393
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    aget-object p2, p2, v2

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->disableAutoTrack(Ljava/util/List;)V

    goto :goto_3b9

    .line 140
    :pswitch_39d  #0x2
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->isActivityAutoTrackAppClickIgnored(Ljava/lang/Class;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 164
    :pswitch_3ac  #0x1
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    aget-object v0, p2, v2

    check-cast v0, Landroid/view/View;

    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->setViewFragmentName(Landroid/view/View;Ljava/lang/String;)V

    :goto_3b9
    const/4 p1, 0x0

    return-object p1

    .line 138
    :pswitch_3bb  #0x0
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mProtocolImp:Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;

    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->isActivityAutoTrackAppViewScreenIgnored(Ljava/lang/Class;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :sswitch_data_3ca
    .sparse-switch
        -0x79a9e0dd -> :sswitch_1ba
        -0x68ce1b3e -> :sswitch_1af
        -0x3d900618 -> :sswitch_1a4
        -0x346de52c -> :sswitch_199
        -0x330400da -> :sswitch_18e
        -0x2e876d49 -> :sswitch_183
        -0x25ba4384 -> :sswitch_178
        -0x222b2967 -> :sswitch_16d
        -0x17fc7ce4 -> :sswitch_15f
        -0xf3b8ba7 -> :sswitch_151
        -0xee49c66 -> :sswitch_143
        0xb03d371 -> :sswitch_135
        0x1b62b377 -> :sswitch_127
        0x1d576477 -> :sswitch_119
        0x1f97180f -> :sswitch_10b
        0x22daaa56 -> :sswitch_fd
        0x258b8eba -> :sswitch_ef
        0x279f8582 -> :sswitch_e1
        0x27eb4b5e -> :sswitch_d3
        0x2b0b3b30 -> :sswitch_c5
        0x32511019 -> :sswitch_b7
        0x347d7397 -> :sswitch_a9
        0x3b7f7c30 -> :sswitch_9b
        0x3d027409 -> :sswitch_8d
        0x51c55e97 -> :sswitch_7f
        0x59e077b7 -> :sswitch_71
        0x5ae62bc0 -> :sswitch_63
        0x5c2ff379 -> :sswitch_55
        0x5e0af9e7 -> :sswitch_47
        0x634c0d8a -> :sswitch_39
        0x6354436c -> :sswitch_2b
        0x706c7180 -> :sswitch_1d
        0x77a79a20 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_450
    .packed-switch 0x0
        :pswitch_3bb  #00000000
        :pswitch_3ac  #00000001
        :pswitch_39d  #00000002
        :pswitch_383  #00000003
        :pswitch_37c  #00000004
        :pswitch_372  #00000005
        :pswitch_368  #00000006
        :pswitch_35e  #00000007
        :pswitch_334  #00000008
        :pswitch_329  #00000009
        :pswitch_31e  #0000000a
        :pswitch_313  #0000000b
        :pswitch_30c  #0000000c
        :pswitch_307  #0000000d
        :pswitch_2fc  #0000000e
        :pswitch_2ed  #0000000f
        :pswitch_2de  #00000010
        :pswitch_2a7  #00000011
        :pswitch_29c  #00000012
        :pswitch_28d  #00000013
        :pswitch_282  #00000014
        :pswitch_261  #00000015
        :pswitch_239  #00000016
        :pswitch_22e  #00000017
        :pswitch_211  #00000018
        :pswitch_20a  #00000019
        :pswitch_1ff  #0000001a
        :pswitch_1f8  #0000001b
        :pswitch_1ed  #0000001c
        :pswitch_1e2  #0000001d
        :pswitch_1d7  #0000001e
        :pswitch_1d0  #0000001f
        :pswitch_1c9  #00000020
    .end packed-switch
.end method

.method public registerListener()V
    .registers 3

    .line 66
    new-instance v0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-direct {v0, v1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;-><init>(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mActivityLifecycleCallbacks:Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;

    .line 67
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/monitor/SensorsDataLifecycleMonitorManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/monitor/SensorsDataLifecycleMonitorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mActivityLifecycleCallbacks:Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/monitor/SensorsDataLifecycleMonitorManager;->addActivityLifeCallback(Lcom/sensorsdata/analytics/android/sdk/monitor/SensorsDataActivityLifecycleCallbacks$SAActivityLifecycleCallbacks;)V

    .line 68
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mActivityLifecycleCallbacks:Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/exceptions/SensorsDataExceptionHandler;->addExceptionListener(Lcom/sensorsdata/analytics/android/sdk/exceptions/SensorsDataExceptionHandler$SAExceptionListener;)V

    .line 69
    new-instance v0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/FragmentViewScreenCallbacks;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/FragmentViewScreenCallbacks;-><init>()V

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->addFragmentCallbacks(Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/SAFragmentLifecycleCallbacks;)V

    .line 71
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->saConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isTrackPageLeave()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 72
    new-instance v0, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/ActivityPageLeaveCallbacks;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    iget-object v1, v1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->saConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getIgnorePageLeave()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/ActivityPageLeaveCallbacks;-><init>(Ljava/util/List;)V

    .line 73
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/monitor/SensorsDataLifecycleMonitorManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/monitor/SensorsDataLifecycleMonitorManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/monitor/SensorsDataLifecycleMonitorManager;->addActivityLifeCallback(Lcom/sensorsdata/analytics/android/sdk/monitor/SensorsDataActivityLifecycleCallbacks$SAActivityLifecycleCallbacks;)V

    .line 74
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/exceptions/SensorsDataExceptionHandler;->addExceptionListener(Lcom/sensorsdata/analytics/android/sdk/exceptions/SensorsDataExceptionHandler$SAExceptionListener;)V

    .line 75
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->saConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isTrackFragmentPageLeave()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 76
    new-instance v0, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/FragmentPageLeaveCallbacks;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    iget-object v1, v1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->saConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getIgnorePageLeave()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sensorsdata/analytics/android/autotrack/core/pageleave/FragmentPageLeaveCallbacks;-><init>(Ljava/util/List;)V

    .line 77
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/autotrack/aop/FragmentTrackHelper;->addFragmentCallbacks(Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/SAFragmentLifecycleCallbacks;)V

    .line 78
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/exceptions/SensorsDataExceptionHandler;->addExceptionListener(Lcom/sensorsdata/analytics/android/sdk/exceptions/SensorsDataExceptionHandler$SAExceptionListener;)V

    :cond_5d
    return-void
.end method
