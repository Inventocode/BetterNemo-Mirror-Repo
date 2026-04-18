.class public Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;
.super Ljava/lang/Object;
.source "DbAdapter.java"


# static fields
.field private static instance:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;


# instance fields
.field private final mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

.field private mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

.field private mTrackEventOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;


# direct methods
.method private constructor <init>(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V
    .registers 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getInstance(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    .line 41
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getInternalConfigs()Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->saConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 42
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isEnableEncrypt()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 43
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/EncryptDataOperation;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/EncryptDataOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mTrackEventOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    goto :goto_52

    .line 44
    :cond_2d
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isTransportEncrypt()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 45
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/TransportEncryption;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/TransportEncryption;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mTrackEventOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    goto :goto_52

    .line 47
    :cond_43
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/EventDataOperation;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/EventDataOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mTrackEventOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    .line 49
    :goto_52
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/PersistentDataOperation;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/PersistentDataOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    return-void
.end method

.method public static decodeIdentities(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, ":"

    .line 336
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;
    .registers 2

    .line 60
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->instance:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    if-eqz v0, :cond_5

    return-object v0

    .line 61
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The static method getInstance(SAContextManager saContextManager) should be called before calling getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;
    .registers 2

    .line 53
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->instance:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    if-nez v0, :cond_b

    .line 54
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;-><init>(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->instance:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    .line 56
    :cond_b
    sget-object p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->instance:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    return-object p0
.end method


# virtual methods
.method public addChannelEvent(Ljava/lang/String;)V
    .registers 4

    .line 263
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "event_name"

    .line 264
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mTrackEventOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getChannelPersistentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->insertData(Landroid/net/Uri;Landroid/content/ContentValues;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_1a

    :catch_16
    move-exception p1

    .line 267
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_1a
    return-void
.end method

.method public addJSON(Lorg/json/JSONObject;)I
    .registers 4

    .line 75
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mTrackEventOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getEventUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->insertData(Landroid/net/Uri;Lorg/json/JSONObject;)I

    move-result p1

    if-nez p1, :cond_1b

    .line 77
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mTrackEventOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getEventUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->queryDataCount(Landroid/net/Uri;I)I

    move-result p1

    :cond_1b
    return p1
.end method

.method public cleanupEvents(Lorg/json/JSONArray;Z)I
    .registers 5

    .line 90
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mTrackEventOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getEventUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->deleteData(Landroid/net/Uri;Lorg/json/JSONArray;)V

    .line 91
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mTrackEventOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getEventUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->queryDataCount(Landroid/net/Uri;I)I

    move-result p1

    return p1
.end method

.method public commitActivityCount(I)V
    .registers 6

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getActivityStartCountUri()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "value"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->insertData(Landroid/net/Uri;Lorg/json/JSONObject;)I
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception p1

    .line 103
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_1b
    return-void
.end method

.method public commitAppExitData(Ljava/lang/String;)V
    .registers 6

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getAppExitDataUri()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "value"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->insertData(Landroid/net/Uri;Lorg/json/JSONObject;)I
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception p1

    .line 159
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_1b
    return-void
.end method

.method public commitAppStartTime(J)V
    .registers 7

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getAppStartTimeUri()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "value"

    invoke-virtual {v2, v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->insertData(Landroid/net/Uri;Lorg/json/JSONObject;)I
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception p1

    .line 129
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_1b
    return-void
.end method

.method public commitIdentities(Ljava/lang/String;)V
    .registers 6

    .line 308
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Base64:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 309
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getUserIdentities()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "value"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->insertData(Landroid/net/Uri;Lorg/json/JSONObject;)I
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_30

    :catch_2c
    move-exception p1

    .line 311
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_30
    return-void
.end method

.method public commitLoginId(Ljava/lang/String;)V
    .registers 6

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getLoginIdUri()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "value"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->insertData(Landroid/net/Uri;Lorg/json/JSONObject;)I
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception p1

    .line 189
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_1b
    return-void
.end method

.method public commitLoginIdKey(Ljava/lang/String;)V
    .registers 6

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getLoginIdKeyUri()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "value"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->insertData(Landroid/net/Uri;Lorg/json/JSONObject;)I
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception p1

    .line 348
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_1b
    return-void
.end method

.method public commitPushID(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 416
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "push_key"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "push_value"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 417
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getPushIdUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->insertData(Landroid/net/Uri;Lorg/json/JSONObject;)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception p1

    .line 419
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_21
    return-void
.end method

.method public commitRemoteConfig(Ljava/lang/String;)V
    .registers 6

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getRemoteConfigUri()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "value"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->insertData(Landroid/net/Uri;Lorg/json/JSONObject;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception p1

    .line 378
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_1b
    return-void
.end method

.method public commitSessionIntervalTime(I)V
    .registers 6

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getSessionTimeUri()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "value"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->insertData(Landroid/net/Uri;Lorg/json/JSONObject;)I
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception p1

    .line 219
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_1b
    return-void
.end method

.method public commitSubProcessFlushState(Z)V
    .registers 6

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getSubProcessUri()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "value"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->insertData(Landroid/net/Uri;Lorg/json/JSONObject;)I
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception p1

    .line 280
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_1b
    return-void
.end method

.method public deleteAllEvents()V
    .registers 4

    .line 86
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mTrackEventOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getEventUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "DB_DELETE_ALL"

    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->deleteData(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public generateDataString(Ljava/lang/String;IZ)[Ljava/lang/String;
    .registers 5

    .line 450
    :try_start_0
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mTrackEventOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getEventUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, p3, p2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->queryData(Landroid/net/Uri;ZI)[Ljava/lang/String;

    move-result-object p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 452
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getActivityCount()I
    .registers 4

    .line 113
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getActivityStartCountUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->queryData(Landroid/net/Uri;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 114
    array-length v2, v0

    if-lez v2, :cond_1a

    .line 115
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_1a
    return v1
.end method

.method public getAppExitData()Ljava/lang/String;
    .registers 4

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getAppExitDataUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->queryData(Landroid/net/Uri;I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 171
    array-length v1, v0

    if-lez v1, :cond_1a

    const/4 v1, 0x0

    .line 172
    aget-object v0, v0, v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    move-exception v0

    .line 175
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_1a
    const-string v0, ""

    return-object v0
.end method

.method public getAppStartTime()J
    .registers 4

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getAppStartTimeUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->queryData(Landroid/net/Uri;I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 141
    array-length v1, v0

    if-lez v1, :cond_1e

    const/4 v1, 0x0

    .line 142
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    return-wide v0

    :catch_1a
    move-exception v0

    .line 145
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_1e
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getIdentities()Ljava/lang/String;
    .registers 4

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getUserIdentities()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->queryData(Landroid/net/Uri;I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 323
    array-length v1, v0

    if-lez v1, :cond_1e

    const/4 v1, 0x0

    .line 324
    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->decodeIdentities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    return-object v0

    :catch_1a
    move-exception v0

    .line 327
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLoginId()Ljava/lang/String;
    .registers 4

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getLoginIdUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->queryData(Landroid/net/Uri;I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 201
    array-length v1, v0

    if-lez v1, :cond_1a

    const/4 v1, 0x0

    .line 202
    aget-object v0, v0, v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    move-exception v0

    .line 205
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_1a
    const-string v0, ""

    return-object v0
.end method

.method public getLoginIdKey()Ljava/lang/String;
    .registers 4

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getLoginIdKeyUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->queryData(Landroid/net/Uri;I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 360
    array-length v1, v0

    if-lez v1, :cond_1a

    const/4 v1, 0x0

    .line 361
    aget-object v0, v0, v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    move-exception v0

    .line 364
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_1a
    const-string v0, ""

    return-object v0
.end method

.method public getPushId(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 426
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getPushIdUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "push_key"

    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->queryData(Landroid/net/Uri;I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 427
    array-length v0, p1

    if-lez v0, :cond_28

    const/4 v0, 0x0

    .line 428
    aget-object p1, p1, v0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    return-object p1

    :catch_24
    move-exception p1

    .line 431
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_28
    const-string p1, ""

    return-object p1
.end method

.method public getRemoteConfig()Ljava/lang/String;
    .registers 4

    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getRemoteConfigUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->queryData(Landroid/net/Uri;I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 390
    array-length v1, v0

    if-lez v1, :cond_1a

    const/4 v1, 0x0

    .line 391
    aget-object v0, v0, v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    move-exception v0

    .line 394
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_1a
    const-string v0, ""

    return-object v0
.end method

.method public getRemoteConfigFromLocal()Ljava/lang/String;
    .registers 3

    const-string v0, ""

    .line 406
    :try_start_2
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getRemoteSDKConfig()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentRemoteSDKConfig;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_14

    .line 407
    :cond_d
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_15

    move-object v0, v1

    :goto_14
    return-object v0

    :catch_15
    move-exception v1

    .line 409
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public getSessionIntervalTime()I
    .registers 5

    const/4 v0, 0x0

    .line 230
    :try_start_1
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getSessionTimeUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->queryData(Landroid/net/Uri;I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 231
    array-length v2, v1

    if-lez v2, :cond_1e

    .line 232
    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1a

    return v0

    :catch_1a
    move-exception v1

    .line 235
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_1e
    return v0
.end method

.method public isFirstChannelEvent([Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    .line 248
    :try_start_1
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mTrackEventOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getChannelPersistentUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "event_name = ? or event_name = ? "

    const/4 v6, 0x0

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->queryDataCount(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_16

    if-gtz p1, :cond_15

    const/4 v0, 0x1

    :cond_15
    return v0

    :catch_16
    move-exception p1

    .line 251
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    return v0
.end method

.method public isSubProcessFlushing()Z
    .registers 4

    const/4 v0, 0x1

    .line 291
    :try_start_1
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getSubProcessUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->queryData(Landroid/net/Uri;I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 292
    array-length v2, v1

    if-lez v2, :cond_22

    const/4 v2, 0x0

    .line 293
    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1e

    if-ne v1, v0, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0

    :catch_1e
    move-exception v1

    .line 296
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_22
    return v0
.end method

.method public removePushId(Ljava/lang/String;)V
    .registers 4

    .line 437
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getPushIdUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->deleteData(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method
