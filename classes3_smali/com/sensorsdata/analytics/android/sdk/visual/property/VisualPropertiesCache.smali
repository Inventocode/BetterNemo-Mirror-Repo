.class public Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesCache;
.super Ljava/lang/Object;
.source "VisualPropertiesCache.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.VP.VisualPropertiesCache"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doOnSaveCache(Ljava/lang/String;)V
    .registers 6

    .line 128
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->getCurrentWebView()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 129
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_11

    goto :goto_2f

    .line 132
    :cond_11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 133
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getVisualPropertiesH5Helper()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;

    move-result-object v2

    const-string v3, "updateH5VisualConfig"

    invoke-virtual {v2, v1, v3, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;->sendToWeb(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_30

    goto :goto_15

    :cond_2f
    :goto_2f
    return-void

    :catch_30
    move-exception p1

    .line 136
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_34
    return-void
.end method


# virtual methods
.method public getH5JsonArrayFromCache(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 13

    .line 141
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getVisualConfigPst()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentVisualConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    return-object v2

    .line 146
    :cond_16
    :try_start_16
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 147
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string v3, "events"

    .line 148
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_90

    .line 149
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_90

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 150
    :goto_30
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_86

    .line 151
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_3d

    goto :goto_83

    .line 155
    :cond_3d
    new-instance v6, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;

    invoke-direct {v6}, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;-><init>()V

    const-string v7, "event_name"

    .line 156
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;->eventName:Ljava/lang/String;

    .line 157
    invoke-static {v7, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_51

    goto :goto_83

    :cond_51
    const-string v6, "properties"

    .line 160
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_83

    .line 161
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_83

    const/4 v6, 0x0

    .line 162
    :goto_60
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_83

    .line 163
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 164
    new-instance v8, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;

    invoke-direct {v8}, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;-><init>()V

    const-string v9, "webview_element_path"

    .line 165
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->webViewElementPath:Ljava/lang/String;

    .line 166
    invoke-static {v9, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_80

    .line 167
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_80
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_80} :catch_8c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_80} :catch_87

    :cond_80
    add-int/lit8 v6, v6, 0x1

    goto :goto_60

    :cond_83
    :goto_83
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    :cond_86
    return-object v0

    :catch_87
    move-exception p1

    .line 177
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_90

    :catch_8c
    move-exception p1

    .line 175
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_90
    :goto_90
    return-object v2
.end method

.method public getVisualCache()Ljava/lang/String;
    .registers 2

    .line 55
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getVisualConfigPst()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentVisualConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getVisualConfig()Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;
    .registers 17

    .line 59
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getVisualConfigPst()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentVisualConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "local visual config is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SA.VP.VisualPropertiesCache"

    invoke-static {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    return-object v2

    .line 65
    :cond_2c
    :try_start_2c
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;

    invoke-direct {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;-><init>()V

    .line 66
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "app_id"

    .line 67
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;->appId:Ljava/lang/String;

    const-string v0, "os"

    .line 68
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;->os:Ljava/lang/String;

    const-string v0, "project"

    .line 69
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;->project:Ljava/lang/String;

    const-string v0, "version"

    .line 70
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;->version:Ljava/lang/String;

    const-string v0, "events"

    .line 71
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_140

    .line 73
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_140

    .line 74
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 75
    :goto_6a
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_13e

    .line 76
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_78

    goto/16 :goto_13a

    .line 80
    :cond_78
    new-instance v7, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;

    invoke-direct {v7}, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;-><init>()V

    const-string v8, "event_name"

    .line 81
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;->eventName:Ljava/lang/String;

    const-string v8, "event_type"

    .line 82
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;->eventType:Ljava/lang/String;

    const-string v8, "event"

    .line 84
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8
    :try_end_93
    .catch Lorg/json/JSONException; {:try_start_2c .. :try_end_93} :catch_141

    const-string v9, "h5"

    const-string v10, "screen_name"

    const-string v11, "element_position"

    const-string v12, "element_path"

    if-eqz v8, :cond_d4

    .line 86
    :try_start_9d
    new-instance v13, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;

    invoke-direct {v13}, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;-><init>()V

    .line 87
    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;->elementPath:Ljava/lang/String;

    .line 88
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;->elementPosition:Ljava/lang/String;

    const-string v14, "element_content"

    .line 89
    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;->elementContent:Ljava/lang/String;

    .line 90
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;->screenName:Ljava/lang/String;

    const-string v14, "limit_element_position"

    .line 91
    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v14

    iput-boolean v14, v13, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;->limitElementPosition:Z

    const-string v14, "limit_element_content"

    .line 92
    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v14

    iput-boolean v14, v13, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;->limitElementContent:Z

    .line 93
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v13, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;->isH5:Z

    .line 94
    iput-object v13, v7, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;->event:Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;

    .line 97
    :cond_d4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-string v13, "properties"

    .line 98
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_137

    .line 99
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-lez v13, :cond_137

    const/4 v13, 0x0

    .line 100
    :goto_e8
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_135

    .line 101
    invoke-virtual {v6, v13}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 102
    new-instance v15, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;

    invoke-direct {v15}, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;-><init>()V

    .line 103
    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v15, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->elementPath:Ljava/lang/String;

    .line 104
    invoke-virtual {v14, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v15, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->elementPosition:Ljava/lang/String;

    .line 105
    invoke-virtual {v14, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v15, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->screenName:Ljava/lang/String;

    const-string v4, "name"

    .line 106
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v15, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->name:Ljava/lang/String;

    const-string v4, "regular"

    .line 107
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v15, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->regular:Ljava/lang/String;

    .line 108
    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v15, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->isH5:Z

    const-string v4, "type"

    .line 109
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v15, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->type:Ljava/lang/String;

    const-string v4, "webview_element_path"

    .line 110
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v15, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->webViewElementPath:Ljava/lang/String;

    .line 111
    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_e8

    .line 113
    :cond_135
    iput-object v8, v7, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;->properties:Ljava/util/List;

    .line 115
    :cond_137
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_13a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6a

    .line 117
    :cond_13e
    iput-object v3, v1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;->events:Ljava/util/List;
    :try_end_140
    .catch Lorg/json/JSONException; {:try_start_9d .. :try_end_140} :catch_141

    :cond_140
    return-object v1

    :catch_141
    move-exception v0

    .line 121
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    return-object v2
.end method

.method public save2Cache(Ljava/lang/String;)V
    .registers 4

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save2Cache config is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SA.VP.VisualPropertiesCache"

    invoke-static {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getVisualConfigPst()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentVisualConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->commit(Ljava/lang/Object;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesCache;->doOnSaveCache(Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/utils/FlutterUtils;->visualizedPropertiesConfigChanged()V

    return-void
.end method
