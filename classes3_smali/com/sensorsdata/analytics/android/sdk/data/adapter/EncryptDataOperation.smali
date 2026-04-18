.class Lcom/sensorsdata/analytics/android/sdk/data/adapter/EncryptDataOperation;
.super Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;
.source "EncryptDataOperation.java"


# instance fields
.field protected mDbEncrypt:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/EncryptDataOperation;->mDbEncrypt:Z

    return-void
.end method

.method private decryptValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 193
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "sensors_analytics_module_encrypt"

    const-string v3, "loadEvent"

    invoke-virtual {v0, v2, v3, v1}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->invokeModuleFunction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 194
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_1c

    :cond_1b
    move-object p1, v0

    :goto_1c
    return-object p1
.end method


# virtual methods
.method deleteData(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 3

    .line 188
    invoke-super {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->deleteData(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method insertData(Landroid/net/Uri;Landroid/content/ContentValues;)I
    .registers 4

    .line 71
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->deleteDataLowMemory(Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, -0x2

    return p1

    .line 74
    :cond_8
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception p1

    .line 76
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_12
    const/4 p1, 0x0

    return p1
.end method

.method insertData(Landroid/net/Uri;Lorg/json/JSONObject;)I
    .registers 9

    const/4 v0, 0x0

    .line 49
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->deleteDataLowMemory(Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_9

    const/4 p1, -0x2

    return p1

    .line 52
    :cond_9
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/core/business/instantevent/InstantEventUtils;->isInstantEvent(Lorg/json/JSONObject;)I

    move-result v1

    .line 53
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;

    move-result-object v2

    const-string v3, "sensors_analytics_module_encrypt"

    const-string v4, "encryptEventData"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->invokeModuleFunction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    if-eqz v2, :cond_23

    move-object p2, v2

    .line 57
    :cond_23
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "data"

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "created_at"

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "is_instant_event"

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 61
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p2, p1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_68
    .catchall {:try_start_1 .. :try_end_68} :catchall_69

    goto :goto_73

    :catchall_69
    move-exception p1

    .line 63
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_73
    return v0
.end method

.method queryData(Landroid/net/Uri;I)[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, p1, v0, p2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/EncryptDataOperation;->queryData(Landroid/net/Uri;ZI)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method queryData(Landroid/net/Uri;ZI)[Ljava/lang/String;
    .registers 25

    move-object/from16 v1, p0

    .line 91
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 92
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const-string v4, "9"

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 95
    :try_start_10
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 96
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    const-string v0, "0"
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1c} :catch_1cc
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1c9

    const-string v10, "1"

    if-eqz p2, :cond_21

    move-object v0, v10

    .line 102
    :cond_21
    :try_start_21
    iget-object v11, v1, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->contentResolver:Landroid/content/ContentResolver;

    const/4 v13, 0x0

    const-string v14, "is_instant_event=?"

    new-array v15, v5, [Ljava/lang/String;

    aput-object v0, v15, v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "created_at ASC LIMIT "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v12, p1

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_43} :catch_1cc
    .catchall {:try_start_21 .. :try_end_43} :catchall_1c9

    if-eqz v11, :cond_1bd

    .line 109
    :goto_45
    :try_start_45
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_49} :catch_1b8
    .catchall {:try_start_45 .. :try_end_49} :catchall_1ed

    const-string v12, "pkv"

    const-string v13, "$"

    const-string v14, "ekey"

    const-string v15, "payloads"

    if-eqz v0, :cond_13f

    :try_start_53
    const-string v0, "_id"

    .line 111
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, "data"

    .line 112
    invoke-interface {v11, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 113
    invoke-virtual {v1, v7}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->parseData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 114
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_72

    goto :goto_45

    .line 118
    :cond_72
    invoke-static {v7}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->isJson(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_8f

    .line 119
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error is not json data, v = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45

    .line 123
    :cond_8f
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    .line 125
    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_ae

    if-nez v7, :cond_ae

    .line 126
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/EncryptDataOperation;->decryptValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v6, v5

    :cond_ae
    if-nez v7, :cond_d0

    .line 129
    iget-boolean v5, v1, Lcom/sensorsdata/analytics/android/sdk/data/adapter/EncryptDataOperation;->mDbEncrypt:Z

    if-eqz v5, :cond_d0

    .line 130
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;

    move-result-object v5

    const-string v7, "sensors_analytics_module_encrypt"

    const-string v1, "encryptEventData"
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_bc} :catch_12d
    .catchall {:try_start_53 .. :try_end_bc} :catchall_1ed

    move-object/from16 v19, v4

    move-object/from16 v20, v10

    const/4 v4, 0x1

    :try_start_c1
    new-array v10, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v6, v10, v4

    invoke-virtual {v5, v7, v1, v10}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->invokeModuleFunction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    if-eqz v1, :cond_d4

    move-object v6, v1

    goto :goto_d4

    :cond_d0
    move-object/from16 v19, v4

    move-object/from16 v20, v10

    .line 136
    :cond_d4
    :goto_d4
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11b

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-interface {v8, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_108

    .line 139
    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_117

    .line 141
    :cond_108
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 142
    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 143
    invoke-interface {v8, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :goto_117
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_135

    :cond_11b
    const-string v1, "_flush_time"

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v6, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 148
    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 149
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_12a} :catch_12b
    .catchall {:try_start_c1 .. :try_end_12a} :catchall_1ed

    goto :goto_135

    :catch_12b
    move-exception v0

    goto :goto_132

    :catch_12d
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v20, v10

    .line 152
    :goto_132
    :try_start_132
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_135
    move-object/from16 v1, p0

    move-object/from16 v4, v19

    move-object/from16 v10, v20

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_45

    :cond_13f
    move-object/from16 v19, v4

    move-object/from16 v20, v10

    .line 155
    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1a3

    .line 156
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 157
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_156
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_198

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 158
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 159
    invoke-virtual {v3, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v14, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    invoke-virtual {v3, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v12, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v15, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "flush_time"

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 163
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_156

    .line 165
    :cond_198
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_19c
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_19c} :catch_1b6
    .catchall {:try_start_132 .. :try_end_19c} :catchall_1ed

    .line 166
    :try_start_19c
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1a0
    .catch Ljava/lang/Exception; {:try_start_19c .. :try_end_1a0} :catch_1b4
    .catchall {:try_start_19c .. :try_end_1a0} :catchall_1ed

    move-object/from16 v4, v19

    goto :goto_1c3

    .line 167
    :cond_1a3
    :try_start_1a3
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1bf

    .line 168
    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1ad
    .catch Ljava/lang/Exception; {:try_start_1a3 .. :try_end_1ad} :catch_1b6
    .catchall {:try_start_1a3 .. :try_end_1ad} :catchall_1ed

    .line 169
    :try_start_1ad
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1b1
    .catch Ljava/lang/Exception; {:try_start_1ad .. :try_end_1b1} :catch_1b4
    .catchall {:try_start_1ad .. :try_end_1b1} :catchall_1ed

    move-object/from16 v4, v20

    goto :goto_1c3

    :catch_1b4
    move-exception v0

    goto :goto_1d1

    :catch_1b6
    move-exception v0

    goto :goto_1bb

    :catch_1b8
    move-exception v0

    move-object/from16 v19, v4

    :goto_1bb
    const/4 v1, 0x0

    goto :goto_1d1

    :cond_1bd
    move-object/from16 v19, v4

    :cond_1bf
    move-object/from16 v4, v19

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1c3
    if-eqz v11, :cond_1dc

    .line 177
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1dc

    :catchall_1c9
    move-exception v0

    const/4 v7, 0x0

    goto :goto_1ef

    :catch_1cc
    move-exception v0

    move-object/from16 v19, v4

    const/4 v1, 0x0

    const/4 v11, 0x0

    .line 174
    :goto_1d1
    :try_start_1d1
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_1d4
    .catchall {:try_start_1d1 .. :try_end_1d4} :catchall_1ed

    if-eqz v11, :cond_1d9

    .line 177
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_1d9
    move-object/from16 v4, v19

    const/4 v0, 0x0

    :cond_1dc
    :goto_1dc
    if-eqz v0, :cond_1eb

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v0, 0x2

    aput-object v4, v2, v0

    return-object v2

    :cond_1eb
    const/4 v1, 0x0

    return-object v1

    :catchall_1ed
    move-exception v0

    move-object v7, v11

    :goto_1ef
    if-eqz v7, :cond_1f4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 179
    :cond_1f4
    throw v0
.end method
