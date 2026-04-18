.class public Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;
.super Ljava/lang/Object;
.source "VisualPropertiesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$VisualEventType;,
        Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;,
        Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$SingletonHolder;
    }
.end annotation


# static fields
.field private static final PROPERTY_TYPE_NUMBER:Ljava/lang/String; = "NUMBER"

.field private static final TAG:Ljava/lang/String; = "SA.VP.VisualPropertiesManager"


# instance fields
.field private mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

.field private final mConfigCache:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesCache;

.field private final mRequestHelper:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;

.field private mVisualConfig:Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;

.field private final mVisualPropertiesH5Helper:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesCache;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesCache;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mConfigCache:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesCache;

    .line 65
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesCache;->getVisualConfig()Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mVisualConfig:Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;

    .line 66
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mRequestHelper:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;

    .line 67
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mVisualPropertiesH5Helper:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$1;)V
    .registers 2

    .line 53
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;
    .registers 1

    .line 71
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$SingletonHolder;->access$000()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;

    move-result-object v0

    return-object v0
.end method

.method private mergeVisualProperty(Ljava/util/List;Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;Lorg/json/JSONObject;Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;",
            ">;",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;",
            "Lorg/json/JSONObject;",
            "Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 355
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 356
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->clearViewNodeCache()V

    .line 357
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;

    .line 358
    iget-boolean v2, v1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->isH5:Z

    if-eqz v2, :cond_3f

    iget-object v2, v1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->webViewElementPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->webViewElementPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->screenName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 361
    :cond_3f
    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mergeAppVisualProperty(Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;Lorg/json/JSONObject;Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;)V

    goto :goto_10

    .line 365
    :cond_43
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p1

    if-lez p1, :cond_53

    .line 366
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mVisualPropertiesH5Helper:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;

    invoke-virtual {p1, p3, v0, p5}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;->mergeJSVisualProperties(Lorg/json/JSONObject;Ljava/util/HashSet;Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_4f

    goto :goto_53

    :catch_4f
    move-exception p1

    .line 369
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_53
    :goto_53
    return-void
.end method


# virtual methods
.method public checkAppIdAndProject()Z
    .registers 8

    .line 319
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getServerUrl()Ljava/lang/String;

    move-result-object v0

    .line 320
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "SA.VP.VisualPropertiesManager"

    const/4 v3, 0x0

    if-eqz v1, :cond_17

    const-string v0, "serverUrl is empty and return"

    .line 321
    invoke-static {v2, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 325
    :cond_17
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "project"

    .line 326
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getSAContextManager()Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 328
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 329
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_85

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3e

    goto :goto_85

    .line 334
    :cond_3e
    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mVisualConfig:Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;

    if-nez v4, :cond_48

    const-string v0, "VisualConfig is null and return"

    .line 335
    invoke-static {v2, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 339
    :cond_48
    iget-object v4, v4, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;->appId:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez v4, :cond_66

    new-array v0, v5, [Ljava/lang/Object;

    aput-object v1, v0, v3

    .line 340
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mVisualConfig:Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;

    iget-object v1, v1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;->appId:Ljava/lang/String;

    aput-object v1, v0, v6

    const-string v1, "app_id is not equals: current app_id is %s, config app_id is %s "

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 345
    :cond_66
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mVisualConfig:Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;

    iget-object v1, v1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;->project:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_84

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v3

    .line 346
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mVisualConfig:Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;->project:Ljava/lang/String;

    aput-object v0, v1, v6

    const-string v0, "project is not equals: current project is %s, config project is %s "

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_84
    return v6

    :cond_85
    :goto_85
    const-string v0, "project or app_id is empty and return"

    .line 330
    invoke-static {v2, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public getMatchEventConfigList(Ljava/util/List;Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$VisualEventType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;",
            ">;",
            "Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$VisualEventType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;",
            ">;"
        }
    .end annotation

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 278
    :try_start_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;

    .line 280
    iget-object v2, v1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;->eventType:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$VisualEventType;->getVisualEventType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    goto :goto_9

    .line 285
    :cond_22
    iget-object v2, v1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;->event:Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;

    .line 286
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_33

    iget-object v3, v2, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;->screenName:Ljava/lang/String;

    invoke-static {v3, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_33

    goto :goto_9

    .line 290
    :cond_33
    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$VisualEventType;->APP_CLICK:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$VisualEventType;

    if-eq p2, v3, :cond_3b

    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$VisualEventType;->WEB_CLICK:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$VisualEventType;

    if-ne p2, v3, :cond_97

    .line 292
    :cond_3b
    iget-object v3, v2, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;->elementPath:Ljava/lang/String;

    invoke-static {v3, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_41} :catch_9c

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v7, "SA.VP.VisualPropertiesManager"

    if-nez v3, :cond_5a

    :try_start_48
    const-string v1, "event element_path is not match: current element_path is %s, config element_path is %s "

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p4, v3, v5

    .line 293
    iget-object v2, v2, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;->elementPath:Ljava/lang/String;

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 298
    :cond_5a
    iget-boolean v3, v2, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;->limitElementPosition:Z

    if-eqz v3, :cond_78

    iget-object v3, v2, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;->elementPosition:Ljava/lang/String;

    invoke-static {v3, p5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_78

    const-string v1, "event element_position is not match: current element_position is %s, config element_position is %s "

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p5, v3, v5

    .line 299
    iget-object v2, v2, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;->elementPosition:Ljava/lang/String;

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 304
    :cond_78
    iget-boolean v3, v2, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;->limitElementContent:Z

    if-eqz v3, :cond_97

    iget-object v3, v2, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;->elementContent:Ljava/lang/String;

    invoke-static {v3, p6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_97

    const-string v1, "event element_content is not match: current element_content is %s, config element_content is %s "

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p6, v3, v5

    .line 305
    iget-object v2, v2, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;->elementContent:Ljava/lang/String;

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 309
    :cond_97
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_9a} :catch_9c

    goto/16 :goto_9

    :catch_9c
    move-exception p1

    .line 312
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_a0
    return-object v0
.end method

.method public getVisualConfig()Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mVisualConfig:Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;

    return-object v0
.end method

.method public getVisualConfigVersion()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mVisualConfig:Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;

    if-eqz v0, :cond_7

    .line 119
    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;->version:Ljava/lang/String;

    return-object v0

    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisualPropertiesCache()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesCache;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mConfigCache:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesCache;

    return-object v0
.end method

.method public getVisualPropertiesH5Helper()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mVisualPropertiesH5Helper:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;

    return-object v0
.end method

.method public mergeAppVisualProperty(Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;Lorg/json/JSONObject;Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;)V
    .registers 12

    const-string v0, "-"

    .line 376
    :try_start_2
    iget-object v1, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_19c

    const-string v2, "SA.VP.VisualPropertiesManager"

    if-eqz v1, :cond_12

    :try_start_c
    const-string p1, "config visual property name is empty"

    .line 377
    invoke-static {v2, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 382
    :cond_12
    iget-object v1, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->elementPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    const-string p1, "config visual property elementPath is empty"

    .line 383
    invoke-static {v2, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_20
    const/4 v1, 0x0

    if-eqz p4, :cond_77

    .line 389
    invoke-virtual {p4}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewPosition()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_77

    if-eqz p2, :cond_77

    iget-object v3, p2, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;->elementPosition:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_77

    iget-boolean v3, p2, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;->limitElementPosition:Z

    if-nez v3, :cond_77

    iget-object v3, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->elementPosition:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_77

    .line 390
    iget-object v3, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->elementPath:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    iget-object p2, p2, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;->elementPath:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v1

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_77

    .line 391
    invoke-virtual {p4}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewPosition()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->elementPosition:Ljava/lang/String;

    .line 392
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "visualProperty elementPosition replace: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewPosition()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_77} :catch_19c

    :cond_77
    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 398
    :try_start_79
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;

    move-result-object v3

    if-eqz p4, :cond_84

    invoke-virtual {p4}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getView()Ljava/lang/ref/WeakReference;

    move-result-object p4

    goto :goto_85

    :cond_84
    move-object p4, v0

    :goto_85
    iget-object v4, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->elementPath:Ljava/lang/String;

    iget-object v5, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->elementPosition:Ljava/lang/String;

    iget-object v6, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->screenName:Ljava/lang/String;

    invoke-virtual {v3, p4, v4, v5, v6}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->getViewNode(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;

    move-result-object p4

    if-eqz p4, :cond_d5

    .line 399
    iget-object v3, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->elementPath:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d5

    iget-object v3, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->elementPosition:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    iget-object v4, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->elementPosition:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewPosition()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    or-int/2addr v3, v4

    if-eqz v3, :cond_d5

    .line 401
    invoke-virtual {p4}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewContent()Ljava/lang/String;

    move-result-object v3
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_b4} :catch_d7

    .line 403
    :try_start_b4
    invoke-virtual {p4}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getView()Ljava/lang/ref/WeakReference;

    move-result-object v4

    if-eqz v4, :cond_bf

    .line 404
    invoke-virtual {p4}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getView()Ljava/lang/ref/WeakReference;

    move-result-object p4

    goto :goto_c0

    :cond_bf
    move-object p4, v0

    :goto_c0
    if-eqz p4, :cond_dc

    .line 406
    invoke-virtual {p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_dc

    .line 408
    invoke-virtual {p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    invoke-static {p4, p2}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewContent(Landroid/view/View;Z)Ljava/lang/String;

    move-result-object v3
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_d2} :catch_d3

    goto :goto_dc

    :catch_d3
    move-exception p4

    goto :goto_d9

    :cond_d5
    move-object v3, v0

    goto :goto_dc

    :catch_d7
    move-exception p4

    move-object v3, v0

    .line 412
    :goto_d9
    :try_start_d9
    invoke-static {p4}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_dc
    :goto_dc
    if-eqz v3, :cond_18e

    .line 414
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_e6

    goto/16 :goto_18e

    :cond_e6
    const-string p4, "find property target view success, property element_path: %s,element_position: %s,element_content: %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 421
    iget-object v5, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->elementPath:Ljava/lang/String;

    aput-object v5, v4, v1

    iget-object v5, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->elementPosition:Ljava/lang/String;

    aput-object v5, v4, p2

    const/4 v5, 0x2

    aput-object v3, v4, v5

    invoke-static {p4, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object p4, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->regular:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_103} :catch_19c

    if-nez p4, :cond_14e

    .line 427
    :try_start_105
    iget-object p4, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->regular:Ljava/lang/String;

    const/16 v0, 0x28

    invoke-static {p4, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p4

    .line 428
    invoke-virtual {p4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p4

    .line 429
    invoke-virtual {p4}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_129

    .line 430
    invoke-virtual {p4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    const-string p4, "propertyValue is: %s"

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v0, p2, v1

    .line 431
    invoke-static {p4, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14e

    :cond_129
    const-string p2, "matcher not find continue"

    .line 433
    invoke-static {v2, p2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

    if-eqz p2, :cond_13b

    .line 435
    iget-object p3, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->name:Ljava/lang/String;

    iget-object p4, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->type:Ljava/lang/String;

    iget-object v0, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->regular:Ljava/lang/String;

    invoke-interface {p2, p3, p4, v3, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;->onParsePropertyContentFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_13b} :catch_13c

    :cond_13b
    return-void

    :catch_13c
    move-exception p2

    .line 440
    :try_start_13d
    iget-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

    if-eqz p3, :cond_14a

    .line 441
    iget-object p4, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->name:Ljava/lang/String;

    iget-object v0, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->type:Ljava/lang/String;

    iget-object p1, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->regular:Ljava/lang/String;

    invoke-interface {p3, p4, v0, v3, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;->onParsePropertyContentFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    :cond_14a
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    return-void

    .line 449
    :cond_14e
    :goto_14e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1a0

    const-string p2, "NUMBER"

    .line 450
    iget-object p4, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->type:Ljava/lang/String;

    invoke-static {p2, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_15c
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_15c} :catch_19c

    if-eqz p2, :cond_17b

    if-eqz v0, :cond_1a0

    .line 453
    :try_start_160
    iget-object p1, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->name:Ljava/lang/String;

    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_16d
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_16d} :catch_16e

    goto :goto_1a0

    :catch_16e
    move-exception p1

    .line 456
    :try_start_16f
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

    if-eqz p2, :cond_1a0

    .line 457
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;->onOtherError(Ljava/lang/String;)V
    :try_end_17a
    .catch Ljava/lang/Exception; {:try_start_16f .. :try_end_17a} :catch_19c

    goto :goto_1a0

    .line 462
    :cond_17b
    :try_start_17b
    iget-object p1, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->name:Ljava/lang/String;

    invoke-virtual {p3, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_180
    .catch Lorg/json/JSONException; {:try_start_17b .. :try_end_180} :catch_181
    .catch Ljava/lang/Exception; {:try_start_17b .. :try_end_180} :catch_19c

    goto :goto_1a0

    :catch_181
    move-exception p1

    .line 464
    :try_start_182
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

    if-eqz p2, :cond_1a0

    .line 465
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;->onOtherError(Ljava/lang/String;)V

    goto :goto_1a0

    .line 415
    :cond_18e
    :goto_18e
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

    if-eqz p2, :cond_19b

    .line 416
    iget-object p3, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->name:Ljava/lang/String;

    iget-object p4, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->elementPath:Ljava/lang/String;

    iget-object p1, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->elementPosition:Ljava/lang/String;

    invoke-interface {p2, p3, p4, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;->onFindPropertyElementFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19b
    .catch Ljava/lang/Exception; {:try_start_182 .. :try_end_19b} :catch_19c

    :cond_19b
    return-void

    :catch_19c
    move-exception p1

    .line 471
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_1a0
    :goto_1a0
    return-void
.end method

.method public mergeVisualProperties(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$VisualEventType;Lorg/json/JSONObject;Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;)V
    .registers 15

    const-string v0, "propertiesConfigs is empty"

    const-string v1, "activity is null or not in white list and return"

    const-string v2, "SA.VP.VisualPropertiesManager"

    :try_start_6
    const-string v3, "$screen_name"

    .line 175
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 176
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

    if-eqz v3, :cond_17

    .line 177
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$VisualEventType;->access$200(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$VisualEventType;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v7, p3}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;->onStart(Ljava/lang/String;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;)V

    :cond_17
    const-string v3, "mergeVisualProperties eventType: %s, screenName:%s "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 180
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$VisualEventType;->getVisualEventType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_39

    const-string p1, "screenName is empty and return"

    .line 182
    invoke-static {v2, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 187
    :cond_39
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isVisualizedAutoTrackEnabled()Z

    move-result v3

    if-nez v3, :cond_50

    const-string p1, "you should call \'enableVisualizedAutoTrack(true)\' first"

    .line 188
    invoke-static {v2, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

    if-eqz p1, :cond_4f

    .line 190
    invoke-interface {p1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;->onSwitchClose()V

    :cond_4f
    return-void

    :cond_50
    const/4 v3, 0x0

    if-eqz p3, :cond_74

    .line 197
    invoke-virtual {p3}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getView()Ljava/lang/ref/WeakReference;

    move-result-object v4

    if-eqz v4, :cond_74

    .line 198
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_74

    .line 199
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-static {v5, v4}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getActivityOfView(Landroid/content/Context;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v4

    goto :goto_75

    :cond_74
    move-object v4, v3

    :goto_75
    if-nez v4, :cond_7f

    .line 203
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v4

    :cond_7f
    if-eqz v4, :cond_14e

    .line 205
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isVisualizedAutoTrackActivity(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_91

    goto/16 :goto_14e

    .line 214
    :cond_91
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mVisualConfig:Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;

    if-nez v1, :cond_b4

    const-string p1, "visual properties is empty and return"

    .line 215
    invoke-static {v2, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

    if-eqz p1, :cond_b3

    .line 217
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getSAContextManager()Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/sensorsdata/analytics/android/sdk/visual/R$string;->sensors_analytics_visual_cache_no_property_error:I

    invoke-static {p2, p3}, Lcom/sensorsdata/analytics/android/sdk/util/SADisplayUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;->onCheckVisualConfigFailure(Ljava/lang/String;)V

    :cond_b3
    return-void

    .line 222
    :cond_b4
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->checkAppIdAndProject()Z

    move-result v1

    if-nez v1, :cond_d4

    .line 223
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

    if-eqz p1, :cond_d3

    .line 224
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getSAContextManager()Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/sensorsdata/analytics/android/sdk/visual/R$string;->sensors_analytics_visual_appid_error:I

    invoke-static {p2, p3}, Lcom/sensorsdata/analytics/android/sdk/util/SADisplayUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;->onCheckVisualConfigFailure(Ljava/lang/String;)V

    :cond_d3
    return-void

    .line 229
    :cond_d4
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mVisualConfig:Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;

    iget-object v5, v1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;->events:Ljava/util/List;

    if-eqz v5, :cond_143

    .line 230
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_e2

    goto/16 :goto_143

    :cond_e2
    if-eqz p3, :cond_f4

    .line 242
    invoke-virtual {p3}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-virtual {p3}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewPosition()Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-virtual {p3}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewContent()Ljava/lang/String;

    move-result-object v3

    move-object v8, v0

    move-object v9, v1

    move-object v10, v3

    goto :goto_f7

    :cond_f4
    move-object v8, v3

    move-object v9, v8

    move-object v10, v9

    :goto_f7
    move-object v4, p0

    move-object v6, p1

    .line 246
    invoke-virtual/range {v4 .. v10}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getMatchEventConfigList(Ljava/util/List;Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$VisualEventType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 247
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_110

    const-string p1, "event config is empty and return"

    .line 248
    invoke-static {v2, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

    if-eqz p1, :cond_10f

    .line 250
    invoke-interface {p1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;->onCheckEventConfigFailure()V

    :cond_10f
    return-void

    .line 255
    :cond_110
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_114
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;

    .line 257
    iget-object v5, v0, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;->event:Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;

    if-eqz v5, :cond_129

    .line 259
    iget-boolean v1, v5, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;->isH5:Z

    if-eqz v1, :cond_129

    goto :goto_114

    .line 262
    :cond_129
    iget-object v4, v0, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;->properties:Ljava/util/List;

    if-eqz v4, :cond_13d

    .line 263
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_134

    goto :goto_13d

    .line 267
    :cond_134
    iget-object v8, v0, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;->eventName:Ljava/lang/String;

    move-object v3, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mergeVisualProperty(Ljava/util/List;Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;Lorg/json/JSONObject;Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;Ljava/lang/String;)V

    goto :goto_114

    :cond_13d
    :goto_13d
    const-string v0, "properties is empty "

    .line 264
    invoke-static {v2, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_114

    .line 231
    :cond_143
    :goto_143
    invoke-static {v2, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

    if-eqz p1, :cond_14d

    .line 233
    invoke-interface {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;->onOtherError(Ljava/lang/String;)V

    :cond_14d
    return-void

    .line 206
    :cond_14e
    :goto_14e
    invoke-static {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

    if-eqz p1, :cond_158

    .line 208
    invoke-interface {p1, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;->onOtherError(Ljava/lang/String;)V
    :try_end_158
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_158} :catch_159

    :cond_158
    return-void

    :catch_159
    move-exception p1

    .line 270
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_15d
    return-void
.end method

.method public registerCollectLogListener(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;)V
    .registers 2

    .line 141
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

    return-void
.end method

.method public requestVisualConfig(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V
    .registers 5

    const-string v0, "SA.VP.VisualPropertiesManager"

    if-eqz p1, :cond_3c

    .line 80
    :try_start_4
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getSensorsDataAPI()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isNetworkRequestEnable()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isSDKDisabled()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_3c

    .line 85
    :cond_15
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getInternalConfigs()Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    move-result-object v1

    iget-object v1, v1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->saConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isVisualizedPropertiesEnabled()Z

    move-result v1

    if-nez v1, :cond_22

    return-void

    :cond_22
    const-string v1, "requestVisualConfig"

    .line 88
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mRequestHelper:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getVisualConfigVersion()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$1;

    invoke-direct {v2, p0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;->requestVisualConfig(Landroid/content/Context;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$IApiCallback;)V

    goto :goto_45

    :catch_3a
    move-exception p1

    goto :goto_42

    :cond_3c
    :goto_3c
    const-string p1, "Close network request"

    .line 81
    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_41} :catch_3a

    return-void

    .line 96
    :goto_42
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_45
    return-void
.end method

.method public save2Cache(Ljava/lang/String;)V
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mConfigCache:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesCache;

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesCache;->save2Cache(Ljava/lang/String;)V

    .line 114
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mConfigCache:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesCache;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesCache;->getVisualConfig()Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mVisualConfig:Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;

    return-void
.end method

.method public unRegisterCollectLogListener()V
    .registers 2

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

    return-void
.end method
