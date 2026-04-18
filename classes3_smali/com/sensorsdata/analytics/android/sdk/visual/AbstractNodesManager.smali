.class public abstract Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;
.super Ljava/lang/Object;
.source "AbstractNodesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager$NodeRect;
    }
.end annotation


# static fields
.field protected static final CALL_TYPE_PAGE_INFO:Ljava/lang/String; = "page_info"

.field protected static final CALL_TYPE_VISUALIZED_TRACK:Ljava/lang/String; = "visualized_track"

.field protected static final LRU_CACHE_MAX_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "SA.Visual.AbstractNodesManager"

.field protected static sNodesCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/NodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected static sPageInfoCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/NodeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mHasAlertInfo:Z

.field private mHasWebView:Z

.field protected mLastThirdNodeMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->mLastThirdNodeMsg:Ljava/lang/String;

    return-void
.end method

.method private findWebNodes(Lorg/json/JSONArray;Ljava/util/List;Ljava/util/Map;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager$NodeRect;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_e8

    .line 228
    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_e8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 229
    :goto_a
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_e8

    .line 230
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 232
    invoke-virtual {p0, v2}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->parseExtraNodesInfo(Lorg/json/JSONObject;)Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;

    move-result-object v3

    const-string v4, "id"

    .line 233
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->setId(Ljava/lang/String;)V

    const-string v4, "$element_content"

    .line 234
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->set$element_content(Ljava/lang/String;)V

    const-string v4, "top"

    .line 235
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->setTop(F)V

    const-string v4, "left"

    .line 236
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->setLeft(F)V

    const-string v4, "scrollX"

    .line 237
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->setScrollX(F)V

    const-string v4, "scrollY"

    .line 238
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->setScrollY(F)V

    const-string v4, "width"

    .line 239
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->setWidth(F)V

    const-string v4, "height"

    .line 240
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->setHeight(F)V

    const-string v4, "level"

    .line 241
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->setLevel(I)V

    const-string v4, "$element_path"

    .line 242
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->set$element_path(Ljava/lang/String;)V

    const-string v4, "$element_position"

    .line 243
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->set$element_position(Ljava/lang/String;)V

    const-string v4, "enable_click"

    const/4 v5, 0x1

    .line 244
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->setEnable_click(Z)V

    const-string v4, "is_list_view"

    .line 245
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->setIs_list_view(Z)V

    const-string v4, "subelements"

    .line 246
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 247
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_d4

    .line 248
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_d4

    const/4 v5, 0x0

    .line 249
    :goto_a8
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_d4

    .line 250
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    .line 251
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d1

    .line 252
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-interface {p3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d1

    .line 254
    new-instance v7, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager$NodeRect;

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->getTop()F

    move-result v8

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->getLeft()F

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager$NodeRect;-><init>(FF)V

    invoke-interface {p3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d1
    add-int/lit8 v5, v5, 0x1

    goto :goto_a8

    .line 259
    :cond_d4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_dd

    .line 260
    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->setSubelements(Ljava/util/List;)V

    .line 262
    :cond_dd
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e0} :catch_e4

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a

    :catch_e4
    move-exception p1

    .line 266
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_e8
    return-void
.end method

.method private modifyWebNodes(Ljava/util/List;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager$NodeRect;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_8d

    .line 292
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_8d

    .line 295
    :cond_a
    monitor-enter p0

    .line 296
    :try_start_b
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;

    .line 297
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->getLeft()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->setOriginLeft(F)V

    .line 298
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->getTop()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->setOriginTop(F)V

    .line 299
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_67

    const/4 v1, 0x1

    .line 301
    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->setRootView(Z)V

    .line 304
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->getScrollY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_47

    .line 305
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->getScrollY()F

    move-result v1

    goto :goto_48

    :cond_47
    const/4 v1, 0x0

    .line 307
    :goto_48
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->getScrollX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_56

    .line 308
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->getScrollX()F

    move-result v2

    .line 310
    :cond_56
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->getTop()F

    move-result v3

    add-float/2addr v3, v1

    invoke-virtual {v0, v3}, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->setTop(F)V

    .line 311
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->getLeft()F

    move-result v1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->setLeft(F)V

    goto :goto_f

    .line 313
    :cond_67
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager$NodeRect;

    if-eqz v1, :cond_f

    .line 315
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->getTop()F

    move-result v2

    iget v3, v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager$NodeRect;->top:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->setTop(F)V

    .line 316
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->getLeft()F

    move-result v2

    iget v1, v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager$NodeRect;->left:F

    sub-float/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;->setLeft(F)V

    goto :goto_f

    .line 320
    :cond_88
    monitor-exit p0

    return-void

    :catchall_8a
    move-exception p1

    monitor-exit p0
    :try_end_8c
    .catchall {:try_start_b .. :try_end_8c} :catchall_8a

    throw p1

    :cond_8d
    :goto_8d
    return-void
.end method

.method private parseAlertResult(Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/NodeInfo$AlertInfo;",
            ">;"
        }
    .end annotation

    .line 198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 202
    :cond_8
    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    .line 203
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_61

    .line 204
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_61

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_20} :catch_5d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_20} :catch_58

    const/4 v1, 0x0

    .line 206
    :goto_21
    :try_start_21
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_50

    .line 207
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 209
    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/visual/model/NodeInfo$AlertInfo;

    const-string v4, "title"

    .line 210
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "message"

    .line 211
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "link_text"

    .line 212
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "link_url"

    .line 213
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/sensorsdata/analytics/android/sdk/visual/model/NodeInfo$AlertInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4d
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_4d} :catch_55
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_4d} :catch_52

    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_50
    move-object v1, v0

    goto :goto_61

    :catch_52
    move-exception p1

    move-object v1, v0

    goto :goto_59

    :catch_55
    move-exception p1

    move-object v1, v0

    goto :goto_5e

    :catch_58
    move-exception p1

    .line 220
    :goto_59
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_61

    :catch_5d
    move-exception p1

    .line 218
    :goto_5e
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_61
    :goto_61
    return-object v1
.end method

.method private parseResult(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;",
            ">;"
        }
    .end annotation

    .line 159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 161
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 164
    :try_start_12
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    .line 165
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_1d} :catch_48
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1d} :catch_43

    :try_start_1d
    const-string v4, "extra_elements"

    .line 168
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_23} :catch_24

    goto :goto_28

    :catch_24
    move-exception v3

    .line 170
    :try_start_25
    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_28
    if-eqz p1, :cond_2d

    .line 173
    invoke-direct {p0, p1, v0, v2}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->findWebNodes(Lorg/json/JSONArray;Ljava/util/List;Ljava/util/Map;)V

    :cond_2d
    if-eqz v1, :cond_32

    .line 176
    invoke-direct {p0, v1, v0, v2}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->findWebNodes(Lorg/json/JSONArray;Ljava/util/List;Ljava/util/Map;)V

    .line 178
    :cond_32
    invoke-direct {p0, v0, v2}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->modifyWebNodes(Ljava/util/List;Ljava/util/Map;)V
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_35} :catch_48
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_35} :catch_43

    .line 180
    :try_start_35
    new-instance p1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager$1;

    invoke-direct {p1, p0}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3d} :catch_3e

    goto :goto_4c

    :catch_3e
    move-exception p1

    .line 187
    :try_start_3f
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_3f .. :try_end_42} :catch_48
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_4c

    :catch_43
    move-exception p1

    .line 192
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_4c

    :catch_48
    move-exception p1

    .line 190
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_4c
    return-object v0
.end method


# virtual methods
.method clear()V
    .registers 2

    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->mLastThirdNodeMsg:Ljava/lang/String;

    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->mHasAlertInfo:Z

    return-void
.end method

.method getLastThirdMsg()Ljava/lang/String;
    .registers 2

    .line 272
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->mLastThirdNodeMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getNodes(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/visual/model/NodeInfo;
    .registers 4

    .line 130
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->isServiceRunning()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->isServiceRunning()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 p1, 0x0

    return-object p1

    .line 133
    :cond_16
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->sNodesCache:Landroid/util/LruCache;

    if-nez v0, :cond_23

    .line 134
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->sNodesCache:Landroid/util/LruCache;

    .line 136
    :cond_23
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->sNodesCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/NodeInfo;

    return-object p1
.end method

.method public getPageInfo(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/visual/model/NodeInfo;
    .registers 4

    .line 140
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->isServiceRunning()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->isServiceRunning()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 p1, 0x0

    return-object p1

    .line 143
    :cond_16
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->sPageInfoCache:Landroid/util/LruCache;

    if-nez v0, :cond_23

    .line 144
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->sPageInfoCache:Landroid/util/LruCache;

    .line 146
    :cond_23
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->sPageInfoCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/NodeInfo;

    return-object p1
.end method

.method public handlerFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 106
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/Dispatcher;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/util/Dispatcher;->removeCallbacksAndMessages()V

    .line 107
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->isServiceRunning()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->isServiceRunning()Z

    move-result v0

    if-nez v0, :cond_1c

    return-void

    .line 110
    :cond_1c
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    return-void

    :cond_23
    const-string v0, "SA.Visual.AbstractNodesManager"

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlerFailure url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->mHasAlertInfo:Z

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->mLastThirdNodeMsg:Ljava/lang/String;

    .line 116
    invoke-direct {p0, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->parseAlertResult(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_6f

    .line 117
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6f

    .line 118
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->sNodesCache:Landroid/util/LruCache;

    if-nez v0, :cond_67

    .line 119
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->sNodesCache:Landroid/util/LruCache;

    .line 121
    :cond_67
    invoke-virtual {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->handlerVisualizedFailure(Ljava/lang/String;Ljava/util/List;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6a} :catch_6b

    goto :goto_6f

    :catch_6b
    move-exception p1

    .line 125
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_6f
    :goto_6f
    return-void
.end method

.method public handlerMessage(Ljava/lang/String;)V
    .registers 8

    .line 69
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/Dispatcher;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/util/Dispatcher;->removeCallbacksAndMessages()V

    .line 70
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->isServiceRunning()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->isServiceRunning()Z

    move-result v0

    if-nez v0, :cond_1c

    return-void

    .line 73
    :cond_1c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    return-void

    .line 76
    :cond_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->mLastThirdNodeMsg:Ljava/lang/String;

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->mHasAlertInfo:Z

    .line 79
    :try_start_30
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "callType"

    .line 80
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    .line 81
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x30bff11c

    const/4 v5, 0x1

    if-eq v3, v4, :cond_56

    const v0, 0x34a9fc5e

    if-eq v3, v0, :cond_4c

    goto :goto_5f

    :cond_4c
    const-string v0, "page_info"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const/4 v0, 0x1

    goto :goto_60

    :cond_56
    const-string v3, "visualized_track"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    goto :goto_60

    :cond_5f
    :goto_5f
    const/4 v0, -0x1

    :goto_60
    if-eqz v0, :cond_69

    if-eq v0, v5, :cond_65

    goto :goto_8f

    .line 92
    :cond_65
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->handlerVisualizedPageInfo(Ljava/lang/String;)V

    goto :goto_8f

    .line 83
    :cond_69
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->parseResult(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8f

    .line 84
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8f

    .line 85
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->sNodesCache:Landroid/util/LruCache;

    if-nez v0, :cond_82

    .line 86
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->sNodesCache:Landroid/util/LruCache;

    .line 88
    :cond_82
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->handlerVisualizedTrack(Ljava/util/List;)V
    :try_end_85
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_85} :catch_8b
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_85} :catch_86

    goto :goto_8f

    :catch_86
    move-exception p1

    .line 100
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_8f

    :catch_8b
    move-exception p1

    .line 98
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_8f
    :goto_8f
    return-void
.end method

.method protected abstract handlerVisualizedFailure(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/NodeInfo$AlertInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract handlerVisualizedPageInfo(Ljava/lang/String;)V
.end method

.method protected abstract handlerVisualizedTrack(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;",
            ">;)V"
        }
    .end annotation
.end method

.method hasAlertInfo()Z
    .registers 2

    .line 155
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->mHasAlertInfo:Z

    return v0
.end method

.method hasThirdView()Z
    .registers 2

    .line 281
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->mHasWebView:Z

    return v0
.end method

.method protected abstract parseExtraNodesInfo(Lorg/json/JSONObject;)Lcom/sensorsdata/analytics/android/sdk/visual/model/CommonNode;
.end method

.method setHasThirdView(Z)V
    .registers 2

    .line 277
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->mHasWebView:Z

    return-void
.end method
