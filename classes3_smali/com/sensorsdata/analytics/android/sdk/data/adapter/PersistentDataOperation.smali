.class Lcom/sensorsdata/analytics/android/sdk/data/adapter/PersistentDataOperation;
.super Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;
.source "PersistentDataOperation.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private handleInsertUri(Landroid/net/Uri;Lorg/json/JSONObject;)I
    .registers 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "push_value"

    const/4 v3, -0x1

    if-nez v0, :cond_a

    return v3

    .line 61
    :cond_a
    :try_start_a
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 62
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 63
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_120

    const/4 v7, 0x1

    .line 64
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 65
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_22} :catch_123

    const-string v9, "sub_process_flush_data"

    const-string v10, "sensorsdata_sdk_configuration"

    const-string v11, "app_exit_data"

    const-string v12, "app_start_time"

    const-string v13, "user_ids"

    const-string v14, "login_id_key"

    const-string v15, "first_process_start"

    const-string v7, "session_interval_time"

    const-string v4, "events_login_id"

    const-string v3, "activity_started_count"

    const-string v0, "push_key"

    sparse-switch v8, :sswitch_data_12c

    goto :goto_97

    :sswitch_3c
    :try_start_3c
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_97

    const/4 v6, 0x5

    goto :goto_98

    :sswitch_44
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_97

    const/16 v6, 0xa

    goto :goto_98

    :sswitch_4d
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_97

    const/4 v6, 0x7

    goto :goto_98

    :sswitch_55
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_97

    const/4 v6, 0x1

    goto :goto_98

    :sswitch_5d
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_97

    const/4 v6, 0x2

    goto :goto_98

    :sswitch_65
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_97

    const/16 v6, 0x8

    goto :goto_98

    :sswitch_6e
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_97

    const/16 v6, 0x9

    goto :goto_98

    :sswitch_77
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_97

    const/4 v6, 0x6

    goto :goto_98

    :sswitch_7f
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_97

    const/4 v6, 0x3

    goto :goto_98

    :sswitch_87
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_97

    const/4 v6, 0x4

    goto :goto_98

    :sswitch_8f
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_93} :catch_123

    if-eqz v6, :cond_97

    const/4 v6, 0x0

    goto :goto_98

    :cond_97
    :goto_97
    const/4 v6, -0x1

    :goto_98
    const-string v8, "value"

    packed-switch v6, :pswitch_data_15a

    move-object/from16 v1, p0

    const/4 v0, -0x1

    return v0

    .line 97
    :pswitch_a1  #0xa
    :try_start_a1
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_107

    .line 94
    :pswitch_b0  #0x9
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_107

    .line 91
    :pswitch_b8  #0x8
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_107

    .line 88
    :pswitch_c0  #0x7
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_107

    .line 85
    :pswitch_c8  #0x6
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_107

    .line 82
    :pswitch_d4  #0x5
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_107

    .line 79
    :pswitch_e0  #0x4
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_107

    .line 76
    :pswitch_e8  #0x3
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_107

    .line 73
    :pswitch_f4  #0x2
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_107

    .line 70
    :pswitch_100  #0x1
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_107
    move-object/from16 v1, p0

    goto :goto_116

    .line 67
    :pswitch_10a  #0x0
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_115} :catch_123

    goto :goto_107

    .line 103
    :goto_116
    :try_start_116
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->contentResolver:Landroid/content/ContentResolver;

    move-object/from16 v2, p1

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_11d} :catch_11e

    goto :goto_129

    :catch_11e
    move-exception v0

    goto :goto_126

    :cond_120
    move-object/from16 v1, p0

    goto :goto_129

    :catch_123
    move-exception v0

    move-object/from16 v1, p0

    .line 106
    :goto_126
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_129
    const/4 v2, 0x0

    return v2

    nop

    :sswitch_data_12c
    .sparse-switch
        -0x55ad715f -> :sswitch_8f
        -0x5598a5e9 -> :sswitch_87
        -0x45f28fe2 -> :sswitch_7f
        -0x422858bd -> :sswitch_77
        -0x1b3a952f -> :sswitch_6e
        -0xfdd2bbc -> :sswitch_65
        0x2f2ea168 -> :sswitch_5d
        0x3703f18d -> :sswitch_55
        0x38750b95 -> :sswitch_4d
        0x69e05fba -> :sswitch_44
        0x751c3c34 -> :sswitch_3c
    .end sparse-switch

    :pswitch_data_15a
    .packed-switch 0x0
        :pswitch_10a  #00000000
        :pswitch_100  #00000001
        :pswitch_f4  #00000002
        :pswitch_e8  #00000003
        :pswitch_e0  #00000004
        :pswitch_d4  #00000005
        :pswitch_c8  #00000006
        :pswitch_c0  #00000007
        :pswitch_b8  #00000008
        :pswitch_b0  #00000009
        :pswitch_a1  #0000000a
    .end packed-switch
.end method

.method private handleQueryUri(Landroid/net/Uri;)[Ljava/lang/String;
    .registers 12

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 113
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    return-object v0

    :cond_f
    const/4 v2, 0x1

    .line 117
    :try_start_10
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 118
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->contentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1f} :catch_e4
    .catchall {:try_start_10 .. :try_end_1f} :catchall_df

    if-eqz p1, :cond_dc

    .line 119
    :try_start_21
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_dc

    .line 120
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v3, -0x1

    .line 121
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    sparse-switch v4, :sswitch_data_f6

    goto/16 :goto_a6

    :sswitch_35
    const-string v4, "sub_process_flush_data"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/4 v3, 0x1

    goto/16 :goto_a6

    :sswitch_40
    const-string v4, "push_key"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/16 v3, 0x8

    goto :goto_a6

    :sswitch_4b
    const-string v4, "sensorsdata_sdk_configuration"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/4 v3, 0x5

    goto :goto_a6

    :sswitch_55
    const-string v4, "app_exit_data"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/4 v3, 0x3

    goto :goto_a6

    :sswitch_5f
    const-string v4, "app_start_time"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/16 v3, 0xa

    goto :goto_a6

    :sswitch_6a
    const-string v4, "user_ids"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/4 v3, 0x6

    goto :goto_a6

    :sswitch_74
    const-string v4, "login_id_key"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/4 v3, 0x7

    goto :goto_a6

    :sswitch_7e
    const-string v4, "first_process_start"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/4 v3, 0x2

    goto :goto_a6

    :sswitch_88
    const-string v4, "session_interval_time"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/16 v3, 0x9

    goto :goto_a6

    :sswitch_93
    const-string v4, "events_login_id"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/4 v3, 0x4

    goto :goto_a6

    :sswitch_9d
    const-string v4, "activity_started_count"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const/4 v3, 0x0

    :cond_a6
    :goto_a6
    packed-switch v3, :pswitch_data_124

    goto :goto_d6

    :pswitch_aa  #0x9, 0xa
    new-array v1, v2, [Ljava/lang/String;

    .line 135
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_b6} :catch_da
    .catchall {:try_start_21 .. :try_end_b6} :catchall_ef

    .line 144
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v1

    :pswitch_ba  #0x3, 0x4, 0x5, 0x6, 0x7, 0x8
    :try_start_ba
    new-array v1, v2, [Ljava/lang/String;

    .line 132
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_c2} :catch_da
    .catchall {:try_start_ba .. :try_end_c2} :catchall_ef

    .line 144
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v1

    :pswitch_c6  #0x0, 0x1, 0x2
    :try_start_c6
    new-array v1, v2, [Ljava/lang/String;

    .line 125
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_d2} :catch_da
    .catchall {:try_start_c6 .. :try_end_d2} :catchall_ef

    .line 144
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v1

    :goto_d6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catch_da
    move-exception v1

    goto :goto_e6

    :cond_dc
    if-eqz p1, :cond_ee

    goto :goto_eb

    :catchall_df
    move-exception p1

    move-object v9, v0

    move-object v0, p1

    move-object p1, v9

    goto :goto_f0

    :catch_e4
    move-exception v1

    move-object p1, v0

    .line 141
    :goto_e6
    :try_start_e6
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_e9
    .catchall {:try_start_e6 .. :try_end_e9} :catchall_ef

    if-eqz p1, :cond_ee

    .line 144
    :goto_eb
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_ee
    return-object v0

    :catchall_ef
    move-exception v0

    :goto_f0
    if-eqz p1, :cond_f5

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 146
    :cond_f5
    throw v0

    :sswitch_data_f6
    .sparse-switch
        -0x55ad715f -> :sswitch_9d
        -0x5598a5e9 -> :sswitch_93
        -0x45f28fe2 -> :sswitch_88
        -0x422858bd -> :sswitch_7e
        -0x1b3a952f -> :sswitch_74
        -0xfdd2bbc -> :sswitch_6a
        0x2f2ea168 -> :sswitch_5f
        0x3703f18d -> :sswitch_55
        0x38750b95 -> :sswitch_4b
        0x69e05fba -> :sswitch_40
        0x751c3c34 -> :sswitch_35
    .end sparse-switch

    :pswitch_data_124
    .packed-switch 0x0
        :pswitch_c6  #00000000
        :pswitch_c6  #00000001
        :pswitch_c6  #00000002
        :pswitch_ba  #00000003
        :pswitch_ba  #00000004
        :pswitch_ba  #00000005
        :pswitch_ba  #00000006
        :pswitch_ba  #00000007
        :pswitch_ba  #00000008
        :pswitch_aa  #00000009
        :pswitch_aa  #0000000a
    .end packed-switch
.end method


# virtual methods
.method deleteData(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 5

    .line 152
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v1, "remove_key"

    invoke-virtual {p1, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method insertData(Landroid/net/Uri;Landroid/content/ContentValues;)I
    .registers 4

    .line 53
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    const/4 p1, 0x0

    return p1
.end method

.method insertData(Landroid/net/Uri;Lorg/json/JSONObject;)I
    .registers 3

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/PersistentDataOperation;->handleInsertUri(Landroid/net/Uri;Lorg/json/JSONObject;)I

    move-result p1

    return p1
.end method

.method queryData(Landroid/net/Uri;I)[Ljava/lang/String;
    .registers 3

    .line 38
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/PersistentDataOperation;->handleQueryUri(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method queryData(Landroid/net/Uri;ZI)[Ljava/lang/String;
    .registers 4

    .line 43
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/PersistentDataOperation;->handleQueryUri(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
