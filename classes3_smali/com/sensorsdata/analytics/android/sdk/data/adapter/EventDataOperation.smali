.class Lcom/sensorsdata/analytics/android/sdk/data/adapter/EventDataOperation;
.super Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;
.source "EventDataOperation.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;-><init>(Landroid/content/Context;)V

    const-string p1, "EventDataOperation"

    .line 39
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->TAG:Ljava/lang/String;

    return-void
.end method

.method private handleBigException(Landroid/net/Uri;Z)[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    .line 157
    :try_start_1
    invoke-direct {p0, p1, p2, v0}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/EventDataOperation;->queryDataInner(Landroid/net/Uri;ZI)[Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteBlobTooBigException; {:try_start_1 .. :try_end_5} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_6

    return-object p1

    :catch_6
    move-exception p1

    .line 162
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_1d

    :catch_b
    move-exception v0

    if-eqz p2, :cond_11

    const-string p2, "1"

    goto :goto_13

    :cond_11
    const-string p2, "0"

    .line 159
    :goto_13
    invoke-virtual {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->getFirstRowId(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/EventDataOperation;->deleteData(Landroid/net/Uri;Ljava/lang/String;)V

    .line 160
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method private queryDataInner(Landroid/net/Uri;ZI)[Ljava/lang/String;
    .registers 17

    move-object v1, p0

    const-string v2, "1"

    .line 101
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_b
    const-string v0, "0"

    if-eqz p2, :cond_10

    move-object v0, v2

    .line 107
    :cond_10
    iget-object v7, v1, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->contentResolver:Landroid/content/ContentResolver;

    const/4 v9, 0x0

    const-string v10, "is_instant_event=?"

    new-array v11, v5, [Ljava/lang/String;

    aput-object v0, v11, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "created_at ASC LIMIT "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p3

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v8, p1

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_31
    .catchall {:try_start_b .. :try_end_31} :catchall_b0

    if-eqz v7, :cond_a8

    .line 109
    :try_start_33
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ","

    const-string v9, "["

    .line 112
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :goto_3f
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_92

    .line 115
    invoke-interface {v7}, Landroid/database/Cursor;->isLast()Z

    move-result v9

    if-eqz v9, :cond_4d

    const-string v0, "]"

    :cond_4d
    move-object v9, v0

    const-string v0, "_id"

    .line 118
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_5b
    .catchall {:try_start_33 .. :try_end_5b} :catchall_a5

    :try_start_5b
    const-string v0, "data"

    .line 121
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->parseData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_90

    .line 124
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v5

    invoke-virtual {v8, v0, v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const-string v0, ",\"_flush_time\":"

    .line 125
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "}"

    .line 127
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_8b} :catch_8c
    .catchall {:try_start_5b .. :try_end_8b} :catchall_a5

    goto :goto_90

    :catch_8c
    move-exception v0

    .line 130
    :try_start_8d
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_90
    :goto_90
    move-object v0, v9

    goto :goto_3f

    .line 133
    :cond_92
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_96
    .catchall {:try_start_8d .. :try_end_96} :catchall_a5

    .line 134
    :try_start_96
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_a1

    .line 135
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_a3

    goto :goto_aa

    :cond_a1
    move-object v0, v6

    goto :goto_aa

    :catchall_a3
    move-exception v0

    goto :goto_b3

    :catchall_a5
    move-exception v0

    move-object v8, v6

    goto :goto_b3

    :cond_a8
    move-object v0, v6

    move-object v8, v0

    :goto_aa
    if-eqz v7, :cond_c2

    .line 142
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_c2

    :catchall_b0
    move-exception v0

    move-object v7, v6

    move-object v8, v7

    .line 139
    :goto_b3
    :try_start_b3
    iget-object v3, v1, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bc
    .catchall {:try_start_b3 .. :try_end_bc} :catchall_d0

    if-eqz v7, :cond_c1

    .line 142
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_c1
    move-object v0, v6

    :cond_c2
    :goto_c2
    if-eqz v0, :cond_cf

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v4

    aput-object v8, v3, v5

    const/4 v0, 0x2

    aput-object v2, v3, v0

    return-object v3

    :cond_cf
    return-object v6

    :catchall_d0
    move-exception v0

    if-eqz v7, :cond_d6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_d6
    throw v0
.end method


# virtual methods
.method deleteData(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 3

    .line 94
    invoke-super {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->deleteData(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method insertData(Landroid/net/Uri;Landroid/content/ContentValues;)I
    .registers 4

    .line 64
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->deleteDataLowMemory(Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, -0x2

    return p1

    .line 67
    :cond_8
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception p1

    .line 69
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_12
    const/4 p1, 0x0

    return p1
.end method

.method insertData(Landroid/net/Uri;Lorg/json/JSONObject;)I
    .registers 8

    .line 45
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->deleteDataLowMemory(Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, -0x2

    return p1

    .line 48
    :cond_8
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/core/business/instantevent/InstantEventUtils;->isInstantEvent(Lorg/json/JSONObject;)I

    move-result v0

    .line 49
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 50
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "data"

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "created_at"

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "is_instant_event"

    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 54
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p2, p1, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_4d
    .catchall {:try_start_0 .. :try_end_4d} :catchall_4e

    goto :goto_58

    :catchall_4e
    move-exception p1

    .line 56
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_58
    const/4 p1, 0x0

    return p1
.end method

.method queryData(Landroid/net/Uri;I)[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0, p1, v0, p2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/EventDataOperation;->queryData(Landroid/net/Uri;ZI)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method queryData(Landroid/net/Uri;ZI)[Ljava/lang/String;
    .registers 6

    .line 82
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/EventDataOperation;->queryDataInner(Landroid/net/Uri;ZI)[Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteBlobTooBigException; {:try_start_0 .. :try_end_4} :catch_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception p1

    .line 87
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->TAG:Ljava/lang/String;

    const-string p3, "Could not pull records for SensorsData out of database events. Waiting to send."

    invoke-static {p2, p3, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1

    :catch_f
    move-exception p3

    .line 84
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->TAG:Ljava/lang/String;

    const-string v1, "Could not pull records for SensorsData out of database events. SQLiteBlobTooBigException "

    invoke-static {v0, v1, p3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/EventDataOperation;->handleBigException(Landroid/net/Uri;Z)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
