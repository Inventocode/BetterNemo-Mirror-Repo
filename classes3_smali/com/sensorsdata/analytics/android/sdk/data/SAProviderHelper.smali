.class public Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;
.super Ljava/lang/Object;
.source "SAProviderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$URI_CODE;,
        Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$QueryEventsListener;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper; = null

.field private static final TAG:Ljava/lang/String; = "SA.ProviderHelper"


# instance fields
.field private contentResolver:Landroid/content/ContentResolver;

.field private isDbWritable:Z

.field private mAppStartTime:J

.field private mContext:Landroid/content/Context;

.field private mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mIsFlushDataState:Z

.field private mSessionTime:I

.field private startActivityCount:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->isDbWritable:Z

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->mIsFlushDataState:Z

    .line 49
    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->startActivityCount:I

    const-wide/16 v0, 0x0

    .line 50
    iput-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->mAppStartTime:J

    const/16 v0, 0x7530

    .line 51
    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->mSessionTime:I

    .line 55
    :try_start_13
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataDBHelper;

    invoke-direct {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->contentResolver:Landroid/content/ContentResolver;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_26} :catch_27

    goto :goto_2b

    :catch_27
    move-exception p1

    .line 59
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_2b
    return-void
.end method

.method static synthetic access$000(Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;)Z
    .registers 1

    .line 41
    iget-boolean p0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->isDbWritable:Z

    return p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;
    .registers 3

    const-class v0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;

    monitor-enter v0

    .line 64
    :try_start_3
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->INSTANCE:Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;

    if-nez v1, :cond_e

    .line 65
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;

    invoke-direct {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->INSTANCE:Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;

    .line 67
    :cond_e
    sget-object p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->INSTANCE:Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .line 395
    :try_start_0
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->isDBExist()Z

    move-result v0

    if-nez v0, :cond_e

    .line 396
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    const/4 v0, 0x1

    .line 397
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->isDbWritable:Z

    .line 399
    :cond_e
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_1d

    :catch_15
    move-exception v0

    .line 401
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    .line 402
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->isDbWritable:Z

    const/4 v0, 0x0

    :goto_1d
    return-object v0
.end method

.method private isDBExist()Z
    .registers 3

    .line 408
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->mContext:Landroid/content/Context;

    const-string v1, "sensorsdata"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public appendUri(Landroid/content/UriMatcher;Ljava/lang/String;)V
    .registers 5

    :try_start_0
    const-string v0, "events"

    const/4 v1, 0x1

    .line 130
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "activity_started_count"

    const/4 v1, 0x2

    .line 131
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "app_start_time"

    const/4 v1, 0x3

    .line 132
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "app_exit_data"

    const/4 v1, 0x4

    .line 133
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "session_interval_time"

    const/4 v1, 0x6

    .line 134
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "events_login_id"

    const/4 v1, 0x7

    .line 135
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "t_channel"

    const/16 v1, 0x8

    .line 136
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "sub_process_flush_data"

    const/16 v1, 0x9

    .line 137
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "first_process_start"

    const/16 v1, 0xa

    .line 138
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "disable_SDK"

    const/16 v1, 0xb

    .line 139
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "sensorsdata_sdk_configuration"

    const/16 v1, 0xc

    .line 140
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "user_ids"

    const/16 v1, 0xd

    .line 141
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "login_id_key"

    const/16 v1, 0xe

    .line 142
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "push_key"

    const/16 v1, 0xf

    .line 143
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5c} :catch_5d

    goto :goto_61

    :catch_5d
    move-exception p1

    .line 145
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_61
    return-void
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 199
    :try_start_2
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_8} :catch_1f
    .catchall {:try_start_2 .. :try_end_8} :catchall_1d

    .line 204
    :try_start_8
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 205
    array-length v2, p2

    :goto_c
    if-ge v0, v2, :cond_16

    .line 207
    aget-object v3, p2, v0

    invoke-virtual {p0, p1, v3}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->insertEvent(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 209
    :cond_16
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1d

    .line 212
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v2

    :catchall_1d
    move-exception p1

    goto :goto_24

    :catch_1f
    move-exception p1

    .line 201
    :try_start_20
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_1d

    return v0

    :goto_24
    if-eqz v1, :cond_29

    .line 212
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 214
    :cond_29
    throw p1
.end method

.method public deleteEvents(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    .line 179
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->isDbWritable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 183
    :cond_6
    :try_start_6
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_19

    const-string v2, "events"

    .line 185
    invoke-virtual {v0, v2, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_12} :catch_13

    return p1

    :catch_13
    move-exception p1

    .line 188
    iput-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->isDbWritable:Z

    .line 189
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_19
    return v1
.end method

.method public insertChannelPersistent(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 7

    .line 227
    :try_start_0
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_1b

    const-string v1, "event_name"

    .line 228
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_1b

    :cond_f
    const-string v1, "t_channel"

    const/4 v2, 0x0

    const/4 v3, 0x5

    .line 231
    invoke-virtual {v0, v1, v2, p2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    .line 232
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    :cond_1b
    :goto_1b
    return-object p1

    :catch_1c
    move-exception p2

    .line 234
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    return-object p1
.end method

.method public insertEvent(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 6

    .line 158
    :try_start_0
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_23

    const-string v1, "data"

    .line 159
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "created_at"

    .line 160
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_23

    :cond_17
    const-string v1, "events"

    const-string v2, "_id"

    .line 163
    invoke-virtual {v0, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 164
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    :cond_23
    :goto_23
    return-object p1

    :catch_24
    move-exception p2

    .line 166
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    return-object p1
.end method

.method public insertPersistent(ILandroid/net/Uri;Landroid/content/ContentValues;)V
    .registers 6

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_c0

    :pswitch_4  #0x5, 0x8, 0xa, 0xb
    goto/16 :goto_be

    .line 280
    :pswitch_6  #0xf
    :try_start_6
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object p1

    const-string p2, "push_key"

    invoke-virtual {p3, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "push_value"

    .line 281
    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 280
    invoke-virtual {p1, p2, p3}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_be

    .line 277
    :pswitch_1b  #0xe
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getLoginIdKeyPst()Lcom/sensorsdata/analytics/android/sdk/data/persistent/LoginIdKeyPersistent;

    move-result-object p1

    const-string p2, "login_id_key"

    invoke-virtual {p3, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->commit(Ljava/lang/Object;)V

    goto/16 :goto_be

    .line 273
    :pswitch_2e  #0xd
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getUserIdsPst()Lcom/sensorsdata/analytics/android/sdk/data/persistent/UserIdentityPersistent;

    move-result-object p1

    const-string v1, "user_ids"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->commit(Ljava/lang/Object;)V

    .line 274
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_be

    .line 270
    :pswitch_46  #0xc
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getRemoteSDKConfig()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentRemoteSDKConfig;

    move-result-object p1

    const-string p2, "sensorsdata_sdk_configuration"

    invoke-virtual {p3, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->commit(Ljava/lang/Object;)V

    goto :goto_be

    :pswitch_58  #0x9
    const-string p1, "sub_process_flush_data"

    .line 267
    invoke-virtual {p3, p1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->mIsFlushDataState:Z

    goto :goto_be

    .line 263
    :pswitch_65  #0x7
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getLoginIdPst()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoginId;

    move-result-object p1

    const-string v1, "events_login_id"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->commit(Ljava/lang/Object;)V

    .line 264
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_be

    :pswitch_7c  #0x6
    const-string p1, "session_interval_time"

    .line 259
    invoke-virtual {p3, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->mSessionTime:I

    .line 260
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_be

    .line 256
    :pswitch_8e  #0x4
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getAppExitDataPst()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentAppExitData;

    move-result-object p1

    const-string p2, "app_exit_data"

    invoke-virtual {p3, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->commit(Ljava/lang/Object;)V

    goto :goto_be

    :pswitch_a0  #0x3
    const-string p1, "app_start_time"

    .line 253
    invoke-virtual {p3, p1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->mAppStartTime:J

    goto :goto_be

    :pswitch_ad  #0x2
    const-string p1, "activity_started_count"

    .line 250
    invoke-virtual {p3, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->startActivityCount:I
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b9} :catch_ba

    goto :goto_be

    :catch_ba
    move-exception p1

    .line 287
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_be
    return-void

    nop

    :pswitch_data_c0
    .packed-switch 0x2
        :pswitch_ad  #00000002
        :pswitch_a0  #00000003
        :pswitch_8e  #00000004
        :pswitch_4  #00000005
        :pswitch_7c  #00000006
        :pswitch_65  #00000007
        :pswitch_4  #00000008
        :pswitch_58  #00000009
        :pswitch_4  #0000000a
        :pswitch_4  #0000000b
        :pswitch_46  #0000000c
        :pswitch_2e  #0000000d
        :pswitch_1b  #0000000e
        :pswitch_6  #0000000f
    .end packed-switch
.end method

.method public migratingDB(Landroid/content/Context;)V
    .registers 5

    .line 77
    :try_start_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->getAppInfoBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.sensorsdata.analytics.android.EnableMigratingDB"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_15

    const-string p1, "SA.ProviderHelper"

    const-string v0, "The migrating DB operation is false"

    .line 79
    invoke-static {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 82
    :cond_15
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 112
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception p1

    .line 114
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_27
    return-void
.end method

.method public queryByTable(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16

    .line 303
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->isDbWritable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 308
    :cond_6
    :try_start_6
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_20

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v9, p5

    .line 310
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_17} :catch_19

    move-object v1, p1

    goto :goto_20

    :catch_19
    move-exception p1

    const/4 p2, 0x0

    .line 313
    iput-boolean p2, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->isDbWritable:Z

    .line 314
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_20
    :goto_20
    return-object v1
.end method

.method public queryPersistent(ILandroid/net/Uri;)Landroid/database/Cursor;
    .registers 8

    const-string v0, "push_key"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_c8

    :pswitch_8  #0x5, 0x8, 0xa, 0xb
    move-object p1, v3

    move-object v0, p1

    goto/16 :goto_b1

    .line 371
    :pswitch_c  #0xf
    :try_start_c
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object p1

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v4, ""

    invoke-virtual {p1, p2, v4}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_b1

    .line 367
    :pswitch_1c  #0xe
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getLoginIdKeyPst()Lcom/sensorsdata/analytics/android/sdk/data/persistent/LoginIdKeyPersistent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->get()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "login_id_key"

    goto/16 :goto_b1

    .line 363
    :pswitch_2c  #0xd
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getUserIdsPst()Lcom/sensorsdata/analytics/android/sdk/data/persistent/UserIdentityPersistent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->get()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "user_ids"

    goto/16 :goto_b1

    .line 360
    :pswitch_3c  #0xc
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getRemoteSDKConfig()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentRemoteSDKConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v0, v3

    goto :goto_b1

    .line 356
    :pswitch_4a  #0x9
    iget-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->mIsFlushDataState:Z

    if-eqz p1, :cond_50

    const/4 p1, 0x1

    goto :goto_51

    :cond_50
    const/4 p1, 0x0

    :goto_51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "sub_process_flush_data"

    goto :goto_b1

    .line 352
    :pswitch_58  #0x7
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getLoginIdPst()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoginId;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->get()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "events_login_id"

    goto :goto_b1

    .line 348
    :pswitch_67  #0x6
    iget p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->mSessionTime:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "session_interval_time"

    goto :goto_b1

    .line 339
    :pswitch_70  #0x4
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getAppExitDataPst()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentAppExitData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 340
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_9d

    .line 341
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getAppEndDataPst()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentAppEndData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 342
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getAppEndDataPst()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentAppEndData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->remove()V

    :cond_9d
    const-string v0, "app_exit_data"

    goto :goto_b1

    .line 335
    :pswitch_a0  #0x3
    iget-wide p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->mAppStartTime:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "app_start_time"

    goto :goto_b1

    .line 331
    :pswitch_a9  #0x2
    iget p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->startActivityCount:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "activity_started_count"

    .line 378
    :goto_b1
    new-instance p2, Landroid/database/MatrixCursor;

    new-array v4, v2, [Ljava/lang/String;

    aput-object v0, v4, v1

    invoke-direct {p2, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    .line 379
    invoke-virtual {p2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c1} :catch_c2

    return-object p2

    :catch_c2
    move-exception p1

    .line 382
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    return-object v3

    nop

    :pswitch_data_c8
    .packed-switch 0x2
        :pswitch_a9  #00000002
        :pswitch_a0  #00000003
        :pswitch_70  #00000004
        :pswitch_8  #00000005
        :pswitch_67  #00000006
        :pswitch_58  #00000007
        :pswitch_8  #00000008
        :pswitch_4a  #00000009
        :pswitch_8  #0000000a
        :pswitch_8  #0000000b
        :pswitch_3c  #0000000c
        :pswitch_2c  #0000000d
        :pswitch_1c  #0000000e
        :pswitch_c  #0000000f
    .end packed-switch
.end method

.method public removeSP(Ljava/lang/String;)I
    .registers 3

    .line 412
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->remove(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
