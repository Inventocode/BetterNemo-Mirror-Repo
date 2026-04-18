.class public Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;
.super Ljava/lang/Object;
.source "AutoTrackProtocolIml.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/core/mediator/autotrack/AutoTrackProtocol;


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.AutoTrackProtocolIml"


# instance fields
.field protected mAutoTrack:Z

.field protected mAutoTrackIgnoredActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mClearReferrerWhenAppEnd:Z

.field private final mContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

.field protected mFragmentAPI:Lcom/sensorsdata/analytics/android/sdk/core/mediator/autotrack/IFragmentAPI;

.field protected mIgnoredViewTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;


# direct methods
.method public constructor <init>(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V
    .registers 5

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mIgnoredViewTypeList:Ljava/util/List;

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mClearReferrerWhenAppEnd:Z

    .line 74
    new-instance v1, Lcom/sensorsdata/analytics/android/autotrack/core/impl/FragmentAPI;

    invoke-direct {v1}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/FragmentAPI;-><init>()V

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mFragmentAPI:Lcom/sensorsdata/analytics/android/sdk/core/mediator/autotrack/IFragmentAPI;

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mAutoTrackIgnoredActivities:Ljava/util/List;

    .line 76
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    .line 77
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getInternalConfigs()Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    move-result-object v1

    iget-object v1, v1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->saConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 78
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->getAppInfoBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "com.sensorsdata.analytics.android.AutoTrack"

    .line 79
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mAutoTrack:Z

    .line 81
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getAutoTrackEventType()I

    move-result p1

    if-eqz p1, :cond_45

    .line 82
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getAutoTrackEventType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->enableAutoTrack(I)V

    const/4 p1, 0x1

    .line 83
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mAutoTrack:Z

    :cond_45
    return-void
.end method

.method private enableAutoTrack(I)V
    .registers 4

    if-lez p1, :cond_19

    const/16 v0, 0xf

    if-le p1, v0, :cond_7

    goto :goto_19

    :cond_7
    const/4 v0, 0x1

    .line 709
    :try_start_8
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mAutoTrack:Z

    .line 710
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getAutoTrackEventType()I

    move-result v1

    or-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->setAutoTrackEventType(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    move-exception p1

    .line 712
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_19
    :goto_19
    return-void
.end method


# virtual methods
.method public clearLastScreenUrl()V
    .registers 2

    .line 463
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mClearReferrerWhenAppEnd:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 464
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/autotrack/core/business/SAPageTools;->setLastScreenUrl(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public clearReferrerWhenAppEnd()V
    .registers 2

    const/4 v0, 0x1

    .line 458
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mClearReferrerWhenAppEnd:Z

    return-void
.end method

.method public disableAutoTrack(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 134
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getAutoTrackEventType()I

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 138
    :cond_c
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getAutoTrackEventType()I

    move-result v0

    iget p1, p1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->eventValue:I

    or-int/2addr v0, p1

    const/4 v1, 0x0

    if-ne v0, p1, :cond_1e

    .line 140
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {p1, v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->setAutoTrackEventType(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    goto :goto_24

    .line 142
    :cond_1e
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    xor-int/2addr p1, v0

    invoke-virtual {v2, p1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->setAutoTrackEventType(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 145
    :goto_24
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getAutoTrackEventType()I

    move-result p1

    if-nez p1, :cond_33

    .line 146
    iput-boolean v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mAutoTrack:Z
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2e} :catch_2f

    goto :goto_33

    :catch_2f
    move-exception p1

    .line 149
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_33
    :goto_33
    return-void
.end method

.method public disableAutoTrack(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 109
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getAutoTrackEventType()I

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 113
    :cond_c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    .line 114
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getAutoTrackEventType()I

    move-result v1

    iget v2, v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->eventValue:I

    or-int/2addr v1, v2

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getAutoTrackEventType()I

    move-result v2

    if-ne v1, v2, :cond_10

    .line 115
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getAutoTrackEventType()I

    move-result v2

    iget v0, v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->eventValue:I

    xor-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->setAutoTrackEventType(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    goto :goto_10

    .line 119
    :cond_3a
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getAutoTrackEventType()I

    move-result p1

    if-nez p1, :cond_4a

    const/4 p1, 0x0

    .line 120
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mAutoTrack:Z
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_45} :catch_46

    goto :goto_4a

    :catch_46
    move-exception p1

    .line 123
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_4a
    :goto_4a
    return-void
.end method

.method public enableAutoTrack(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2d

    .line 90
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2d

    :cond_9
    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mAutoTrack:Z

    .line 94
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    .line 95
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getAutoTrackEventType()I

    move-result v2

    iget v0, v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->eventValue:I

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->setAutoTrackEventType(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_28} :catch_29

    goto :goto_10

    :catch_29
    move-exception p1

    .line 98
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method public enableAutoTrackFragment(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 671
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mFragmentAPI:Lcom/sensorsdata/analytics/android/sdk/core/mediator/autotrack/IFragmentAPI;

    invoke-interface {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/autotrack/IFragmentAPI;->enableAutoTrackFragment(Ljava/lang/Class;)V

    return-void
.end method

.method public enableAutoTrackFragments(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 676
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mFragmentAPI:Lcom/sensorsdata/analytics/android/sdk/core/mediator/autotrack/IFragmentAPI;

    invoke-interface {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/autotrack/IFragmentAPI;->enableAutoTrackFragments(Ljava/util/List;)V

    return-void
.end method

.method public getIgnoredViewTypeList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mIgnoredViewTypeList:Ljava/util/List;

    if-nez v0, :cond_b

    .line 430
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mIgnoredViewTypeList:Ljava/util/List;

    .line 433
    :cond_b
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mIgnoredViewTypeList:Ljava/util/List;

    return-object v0
.end method

.method public getLastScreenTrackProperties()Lorg/json/JSONObject;
    .registers 3

    .line 471
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/autotrack/core/business/SAPageTools;->getLastTrackProperties()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->cloneJsonObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v1, "$lib_method"

    .line 473
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    :cond_f
    return-object v0

    :catch_10
    move-exception v0

    .line 477
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 479
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public getLastScreenUrl()Ljava/lang/String;
    .registers 2

    .line 453
    invoke-static {}, Lcom/sensorsdata/analytics/android/autotrack/core/business/SAPageTools;->getLastScreenUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ignoreAutoTrackActivities(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_40

    .line 166
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_40

    .line 170
    :cond_9
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mAutoTrackIgnoredActivities:Ljava/util/List;

    if-nez v0, :cond_14

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mAutoTrackIgnoredActivities:Ljava/util/List;

    .line 175
    :cond_14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_18

    .line 177
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 178
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mAutoTrackIgnoredActivities:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 179
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mAutoTrackIgnoredActivities:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_40
    :goto_40
    return-void
.end method

.method public ignoreAutoTrackActivity(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mAutoTrackIgnoredActivities:Ljava/util/List;

    if-nez v0, :cond_e

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mAutoTrackIgnoredActivities:Ljava/util/List;

    .line 221
    :cond_e
    :try_start_e
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    .line 222
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mAutoTrackIgnoredActivities:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 223
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mAutoTrackIgnoredActivities:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_27} :catch_28

    goto :goto_2c

    :catch_28
    move-exception p1

    .line 226
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public ignoreAutoTrackFragment(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 691
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mFragmentAPI:Lcom/sensorsdata/analytics/android/sdk/core/mediator/autotrack/IFragmentAPI;

    invoke-interface {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/autotrack/IFragmentAPI;->ignoreAutoTrackFragment(Ljava/lang/Class;)V

    return-void
.end method

.method public ignoreAutoTrackFragments(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 686
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mFragmentAPI:Lcom/sensorsdata/analytics/android/sdk/core/mediator/autotrack/IFragmentAPI;

    invoke-interface {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/autotrack/IFragmentAPI;->ignoreAutoTrackFragments(Ljava/util/List;)V

    return-void
.end method

.method public ignoreView(Landroid/view/View;)V
    .registers 4

    if-eqz p1, :cond_9

    .line 407
    sget v0, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_ignored:I

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public ignoreView(Landroid/view/View;Z)V
    .registers 4

    if-eqz p1, :cond_e

    .line 414
    sget v0, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_ignored:I

    if-eqz p2, :cond_9

    const-string p2, "1"

    goto :goto_b

    :cond_9
    const-string p2, "0"

    :goto_b
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_e
    return-void
.end method

.method public ignoreViewType(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 442
    :cond_3
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mIgnoredViewTypeList:Ljava/util/List;

    if-nez v0, :cond_e

    .line 443
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mIgnoredViewTypeList:Ljava/util/List;

    .line 446
    :cond_e
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mIgnoredViewTypeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 447
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mIgnoredViewTypeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    return-void
.end method

.method public isActivityAutoTrackAppClickIgnored(Ljava/lang/Class;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 272
    :cond_4
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mAutoTrackIgnoredActivities:Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    .line 273
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    return v2

    .line 277
    :cond_18
    const-class v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataIgnoreTrackAppViewScreenAndAppClick;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-eqz v1, :cond_21

    return v2

    .line 281
    :cond_21
    const-class v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataIgnoreTrackAppClick;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    if-eqz p1, :cond_2a

    const/4 v0, 0x1

    :cond_2a
    return v0
.end method

.method public isActivityAutoTrackAppViewScreenIgnored(Ljava/lang/Class;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 255
    :cond_4
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mAutoTrackIgnoredActivities:Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    .line 256
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    return v2

    .line 260
    :cond_18
    const-class v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataIgnoreTrackAppViewScreenAndAppClick;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-eqz v1, :cond_21

    return v2

    .line 264
    :cond_21
    const-class v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataIgnoreTrackAppViewScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    if-eqz p1, :cond_2a

    const/4 v0, 0x1

    :cond_2a
    return v0
.end method

.method public isAutoTrackEnabled()Z
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getRemoteManager()Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 156
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getRemoteManager()Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;->isAutoTrackEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 158
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 161
    :cond_19
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mAutoTrack:Z

    return v0
.end method

.method public isAutoTrackEventTypeIgnored(I)Z
    .registers 5

    .line 294
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getRemoteManager()Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 295
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getRemoteManager()Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;->isAutoTrackEventTypeIgnored(I)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 297
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remote config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->autoTrackEventName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is ignored by remote config"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SA.AutoTrackProtocolIml"

    invoke-static {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_39
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 304
    :cond_3e
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getAutoTrackEventType()I

    move-result v0

    or-int/2addr p1, v0

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getAutoTrackEventType()I

    move-result v0

    if-eq p1, v0, :cond_4f

    const/4 p1, 0x1

    goto :goto_50

    :cond_4f
    const/4 p1, 0x0

    :goto_50
    return p1
.end method

.method public isAutoTrackEventTypeIgnored(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 289
    :cond_4
    iget p1, p1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->eventValue:I

    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->isAutoTrackEventTypeIgnored(I)Z

    move-result p1

    return p1
.end method

.method public isFragmentAutoTrackAppViewScreen(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 681
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mFragmentAPI:Lcom/sensorsdata/analytics/android/sdk/core/mediator/autotrack/IFragmentAPI;

    invoke-interface {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/autotrack/IFragmentAPI;->isFragmentAutoTrackAppViewScreen(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public isTrackFragmentAppViewScreenEnabled()Z
    .registers 2

    .line 666
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mFragmentAPI:Lcom/sensorsdata/analytics/android/sdk/core/mediator/autotrack/IFragmentAPI;

    invoke-interface {v0}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/autotrack/IFragmentAPI;->isTrackFragmentAppViewScreenEnabled()Z

    move-result v0

    return v0
.end method

.method public resumeAutoTrackActivities(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_44

    .line 187
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_44

    .line 191
    :cond_9
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mAutoTrackIgnoredActivities:Ljava/util/List;

    if-nez v0, :cond_14

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mAutoTrackIgnoredActivities:Ljava/util/List;

    .line 197
    :cond_14
    :try_start_14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_18

    .line 199
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 200
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mAutoTrackIgnoredActivities:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 201
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mAutoTrackIgnoredActivities:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3f} :catch_40

    goto :goto_18

    :catch_40
    move-exception p1

    .line 206
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_44
    :goto_44
    return-void
.end method

.method public resumeAutoTrackActivity(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 236
    :cond_3
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mAutoTrackIgnoredActivities:Ljava/util/List;

    if-nez v0, :cond_e

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mAutoTrackIgnoredActivities:Ljava/util/List;

    .line 241
    :cond_e
    :try_start_e
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    .line 242
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mAutoTrackIgnoredActivities:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 243
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mAutoTrackIgnoredActivities:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_27} :catch_28

    goto :goto_2c

    :catch_28
    move-exception p1

    .line 246
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public resumeIgnoredAutoTrackFragment(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 701
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mFragmentAPI:Lcom/sensorsdata/analytics/android/sdk/core/mediator/autotrack/IFragmentAPI;

    invoke-interface {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/autotrack/IFragmentAPI;->resumeIgnoredAutoTrackFragment(Ljava/lang/Class;)V

    return-void
.end method

.method public resumeIgnoredAutoTrackFragments(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 696
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mFragmentAPI:Lcom/sensorsdata/analytics/android/sdk/core/mediator/autotrack/IFragmentAPI;

    invoke-interface {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/autotrack/IFragmentAPI;->resumeIgnoredAutoTrackFragments(Ljava/util/List;)V

    return-void
.end method

.method public setViewActivity(Landroid/view/View;Landroid/app/Activity;)V
    .registers 4

    if-eqz p1, :cond_f

    if-nez p2, :cond_5

    goto :goto_f

    .line 386
    :cond_5
    :try_start_5
    sget v0, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_activity:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception p1

    .line 388
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_f
    :goto_f
    return-void
.end method

.method public setViewFragmentName(Landroid/view/View;Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_13

    .line 395
    :try_start_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_13

    .line 398
    :cond_9
    sget v0, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_fragment_name2:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception p1

    .line 400
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public setViewID(Landroid/app/Dialog;Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_20

    .line 317
    :try_start_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 318
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 319
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_id:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_1c

    goto :goto_20

    :catch_1c
    move-exception p1

    .line 323
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_20
    :goto_20
    return-void
.end method

.method public setViewID(Landroid/view/View;Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_d

    .line 309
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 310
    sget v0, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_id:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public setViewID(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 7

    const-string v0, "androidx.appcompat.app.AlertDialog"

    if-nez p1, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    .line 339
    :try_start_6
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a} :catch_b

    goto :goto_c

    :catch_b
    move-object v2, v1

    .line 345
    :goto_c
    :try_start_c
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_10} :catch_11

    goto :goto_12

    :catch_11
    nop

    :goto_12
    if-eqz v2, :cond_15

    goto :goto_16

    :cond_15
    move-object v2, v1

    :goto_16
    if-nez v2, :cond_19

    return-void

    .line 360
    :cond_19
    :try_start_19
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    return-void

    .line 364
    :cond_20
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 365
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getWindow"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_36

    return-void

    :cond_36
    new-array v1, v2, [Ljava/lang/Object;

    .line 370
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Window;

    if-eqz p1, :cond_4e

    .line 372
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_id:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_49} :catch_4a

    goto :goto_4e

    :catch_4a
    move-exception p1

    .line 376
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_4e
    :goto_4e
    return-void
.end method

.method public setViewProperties(Landroid/view/View;Lorg/json/JSONObject;)V
    .registers 4

    if-eqz p1, :cond_a

    if-nez p2, :cond_5

    goto :goto_a

    .line 424
    :cond_5
    sget v0, Lcom/sensorsdata/analytics/android/autotrack/R$id;->sensors_analytics_tag_view_properties:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_a
    :goto_a
    return-void
.end method

.method public trackFragmentAppViewScreen()V
    .registers 2

    .line 661
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->mFragmentAPI:Lcom/sensorsdata/analytics/android/sdk/core/mediator/autotrack/IFragmentAPI;

    invoke-interface {v0}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/autotrack/IFragmentAPI;->trackFragmentAppViewScreen()V

    return-void
.end method

.method public trackViewAppClick(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    .line 628
    invoke-virtual {p0, p1, v0}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->trackViewAppClick(Landroid/view/View;Lorg/json/JSONObject;)V

    return-void
.end method

.method public trackViewAppClick(Landroid/view/View;Lorg/json/JSONObject;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-eqz p2, :cond_a

    .line 638
    :try_start_5
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->cloneJsonObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    goto :goto_f

    :cond_a
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 639
    :goto_f
    new-instance v0, Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;

    invoke-direct {v0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;-><init>(Landroid/view/View;)V

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lcom/sensorsdata/analytics/android/autotrack/utils/AopUtil;->injectClickInfo(Lcom/sensorsdata/analytics/android/autotrack/core/beans/ViewContext;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_31

    .line 641
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 642
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;

    move-result-object p1

    new-instance v1, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml$2;

    invoke-direct {v1, p0, p2, v0}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml$2;-><init>(Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;Lorg/json/JSONObject;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {p1, v1}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->trackQueueEvent(Ljava/lang/Runnable;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2c} :catch_2d

    goto :goto_31

    :catch_2d
    move-exception p1

    .line 655
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_31
    :goto_31
    return-void
.end method

.method public trackViewScreen(Landroid/app/Activity;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 533
    :cond_3
    :try_start_3
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/SAPageInfoUtils;->getActivityPageInfo(Landroid/app/Activity;)Lorg/json/JSONObject;

    move-result-object v0

    .line 534
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/core/business/SAPageTools;->getScreenUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->trackViewScreen(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception p1

    .line 536
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_13
    return-void
.end method

.method public trackViewScreen(Ljava/lang/Object;)V
    .registers 10

    const-string v0, "androidx.fragment.app.Fragment"

    if-nez p1, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    .line 552
    :try_start_6
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a} :catch_b

    goto :goto_c

    :catch_b
    move-object v2, v1

    :goto_c
    :try_start_c
    const-string v3, "android.app.Fragment"

    .line 558
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-object v3, v1

    .line 564
    :goto_14
    :try_start_14
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_18} :catch_19

    goto :goto_1a

    :catch_19
    move-object v0, v1

    :goto_1a
    if-eqz v2, :cond_22

    .line 572
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    :cond_22
    if-eqz v3, :cond_2a

    .line 573
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    :cond_2a
    if-eqz v0, :cond_d1

    .line 574
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto/16 :goto_d1

    .line 579
    :cond_34
    :try_start_34
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 580
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 584
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/sensorsdata/analytics/android/sdk/SensorsDataFragmentTitle;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 585
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/sensorsdata/analytics/android/sdk/SensorsDataFragmentTitle;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/sensorsdata/analytics/android/sdk/SensorsDataFragmentTitle;

    if-eqz v3, :cond_60

    .line 587
    invoke-interface {v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataFragmentTitle;->title()Ljava/lang/String;

    move-result-object v3

    goto :goto_61

    :cond_60
    move-object v3, v1

    .line 591
    :goto_61
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_63} :catch_cd

    const/16 v5, 0xb

    if-lt v4, v5, :cond_a5

    const/4 v4, 0x0

    .line 594
    :try_start_68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getActivity"

    new-array v7, v4, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_81

    new-array v6, v4, [Ljava/lang/Object;

    .line 596
    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_7e} :catch_80

    move-object v1, v5

    goto :goto_81

    :catch_80
    nop

    :cond_81
    :goto_81
    if-eqz v1, :cond_a5

    .line 602
    :try_start_83
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 603
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->getActivityTitle(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    .line 605
    :cond_8d
    sget-object v5, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->SDK_LOCALE:Ljava/util/Locale;

    const-string v6, "%s|%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v4

    const/4 v1, 0x1

    aput-object v2, v7, v1

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 609
    :cond_a5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b0

    const-string v1, "$title"

    .line 610
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b0
    const-string v1, "$screen_name"

    .line 612
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 613
    instance-of v1, p1, Lcom/sensorsdata/analytics/android/sdk/ScreenAutoTracker;

    if-eqz v1, :cond_c5

    .line 614
    move-object v1, p1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/ScreenAutoTracker;

    .line 615
    invoke-interface {v1}, Lcom/sensorsdata/analytics/android/sdk/ScreenAutoTracker;->getTrackProperties()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_c5

    .line 617
    invoke-static {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 620
    :cond_c5
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/core/business/SAPageTools;->getScreenUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;->trackViewScreen(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_cc} :catch_cd

    goto :goto_d1

    :catch_cd
    move-exception p1

    .line 622
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_d1
    :goto_d1
    return-void
.end method

.method public trackViewScreen(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    .line 485
    :try_start_0
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->cloneJsonObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    .line 486
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;

    move-result-object v0

    new-instance v1, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml$1;-><init>(Lcom/sensorsdata/analytics/android/autotrack/core/impl/AutoTrackProtocolIml;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->trackQueueEvent(Ljava/lang/Runnable;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_15

    :catch_11
    move-exception p1

    .line 523
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_15
    return-void
.end method
