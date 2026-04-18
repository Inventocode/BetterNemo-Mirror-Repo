.class public Lcom/umeng/analytics/process/UMProcessDBHelper;
.super Ljava/lang/Object;
.source "UMProcessDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/process/UMProcessDBHelper$ProcessToMainCallback;,
        Lcom/umeng/analytics/process/UMProcessDBHelper$a;,
        Lcom/umeng/analytics/process/UMProcessDBHelper$InsertEventCallback;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/umeng/analytics/process/UMProcessDBHelper;


# instance fields
.field private ekvCallBack:Lcom/umeng/analytics/process/UMProcessDBHelper$InsertEventCallback;

.field private mContext:Landroid/content/Context;

.field private mFileLock:Lcom/umeng/commonsdk/utils/FileLockUtil;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/umeng/commonsdk/utils/FileLockUtil;

    invoke-direct {v0}, Lcom/umeng/commonsdk/utils/FileLockUtil;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mFileLock:Lcom/umeng/commonsdk/utils/FileLockUtil;

    .line 73
    new-instance v0, Lcom/umeng/analytics/process/UMProcessDBHelper$InsertEventCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/umeng/analytics/process/UMProcessDBHelper$InsertEventCallback;-><init>(Lcom/umeng/analytics/process/UMProcessDBHelper;Lcom/umeng/analytics/process/UMProcessDBHelper$1;)V

    iput-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->ekvCallBack:Lcom/umeng/analytics/process/UMProcessDBHelper$InsertEventCallback;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/umeng/commonsdk/utils/FileLockUtil;

    invoke-direct {v0}, Lcom/umeng/commonsdk/utils/FileLockUtil;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mFileLock:Lcom/umeng/commonsdk/utils/FileLockUtil;

    .line 73
    new-instance v0, Lcom/umeng/analytics/process/UMProcessDBHelper$InsertEventCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/umeng/analytics/process/UMProcessDBHelper$InsertEventCallback;-><init>(Lcom/umeng/analytics/process/UMProcessDBHelper;Lcom/umeng/analytics/process/UMProcessDBHelper$1;)V

    iput-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->ekvCallBack:Lcom/umeng/analytics/process/UMProcessDBHelper$InsertEventCallback;

    .line 79
    invoke-static {}, Lcom/umeng/common/a;->a()Lcom/umeng/common/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/common/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/umeng/analytics/process/UMProcessDBHelper;Ljava/lang/String;)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Lcom/umeng/analytics/process/UMProcessDBHelper;->processToMain(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/umeng/analytics/process/UMProcessDBHelper;)Landroid/content/Context;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private datasAdapter(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/umeng/analytics/process/UMProcessDBHelper$a;",
            ">;"
        }
    .end annotation

    const-string v0, "__t"

    const-string v1, "__i"

    const-string v2, "ds"

    .line 387
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 389
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    return-object v3

    :cond_12
    const/4 v4, 0x0

    .line 392
    :goto_13
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_76

    .line 394
    :try_start_19
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 395
    new-instance v6, Lcom/umeng/analytics/process/UMProcessDBHelper$a;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/umeng/analytics/process/UMProcessDBHelper$a;-><init>(Lcom/umeng/analytics/process/UMProcessDBHelper;Lcom/umeng/analytics/process/UMProcessDBHelper$1;)V

    const-string v7, "id"

    .line 396
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->c:Ljava/lang/String;

    .line 397
    iget-object v7, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->g:Ljava/lang/String;

    .line 398
    iget-object v7, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->h:Ljava/lang/String;

    .line 399
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->b:Ljava/lang/String;

    .line 400
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->e:I

    .line 401
    iput-object p1, v6, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->f:Ljava/lang/String;

    .line 403
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 404
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 406
    :cond_52
    invoke-direct {p0}, Lcom/umeng/analytics/process/UMProcessDBHelper;->getDataSource()I

    move-result v7

    invoke-virtual {v5, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 408
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 409
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 411
    invoke-static {}, Lcom/umeng/common/a;->a()Lcom/umeng/common/a;

    move-result-object v7

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/umeng/common/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->d:Ljava/lang/String;

    .line 413
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 415
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_73} :catch_73

    :catch_73
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_76
    return-object v3
.end method

.method private dbIsExists(Ljava/lang/String;)Z
    .registers 4

    .line 521
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/umeng/analytics/process/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_13

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    return p1

    :catchall_13
    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method private getDataSource()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/umeng/analytics/process/UMProcessDBHelper;
    .registers 3

    .line 83
    sget-object v0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mInstance:Lcom/umeng/analytics/process/UMProcessDBHelper;

    if-nez v0, :cond_17

    .line 84
    const-class v0, Lcom/umeng/analytics/process/UMProcessDBHelper;

    monitor-enter v0

    .line 85
    :try_start_7
    sget-object v1, Lcom/umeng/analytics/process/UMProcessDBHelper;->mInstance:Lcom/umeng/analytics/process/UMProcessDBHelper;

    if-nez v1, :cond_12

    .line 86
    new-instance v1, Lcom/umeng/analytics/process/UMProcessDBHelper;

    invoke-direct {v1, p0}, Lcom/umeng/analytics/process/UMProcessDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/umeng/analytics/process/UMProcessDBHelper;->mInstance:Lcom/umeng/analytics/process/UMProcessDBHelper;

    .line 88
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 91
    :cond_17
    :goto_17
    sget-object v0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mInstance:Lcom/umeng/analytics/process/UMProcessDBHelper;

    iput-object p0, v0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private insertEvents_(Ljava/lang/String;Ljava/util/List;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/umeng/analytics/process/UMProcessDBHelper$a;",
            ">;)Z"
        }
    .end annotation

    .line 346
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a4

    if-eqz p2, :cond_a4

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_a4

    :cond_11
    const/4 v0, 0x0

    .line 352
    :try_start_12
    iget-object v2, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/umeng/analytics/process/c;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1c} :catch_94
    .catchall {:try_start_12 .. :try_end_1c} :catchall_84

    .line 354
    :try_start_1c
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 355
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :catch_23
    :goto_23
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/analytics/process/UMProcessDBHelper$a;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2f} :catch_82
    .catchall {:try_start_1c .. :try_end_2f} :catchall_7f

    .line 357
    :try_start_2f
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "__i"

    .line 359
    iget-object v6, v3, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "__e"

    .line 360
    iget-object v6, v3, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->c:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "__t"

    .line 361
    iget v6, v3, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->e:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "__pn"

    .line 362
    iget-object v6, v3, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->f:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "__av"

    .line 363
    iget-object v6, v3, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->g:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "__vc"

    .line 364
    iget-object v6, v3, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->h:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "__s"

    .line 365
    iget-object v3, v3, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->d:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "__et_p"

    .line 366
    invoke-virtual {v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_6e} :catch_23
    .catchall {:try_start_2f .. :try_end_6e} :catchall_7f

    goto :goto_23

    .line 370
    :cond_6f
    :try_start_6f
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_82
    .catchall {:try_start_6f .. :try_end_72} :catchall_7f

    .line 376
    :try_start_72
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_75

    .line 379
    :catchall_75
    iget-object p2, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    return v1

    :catchall_7f
    move-exception p2

    move-object v0, v2

    goto :goto_85

    :catch_82
    move-object v0, v2

    goto :goto_94

    :catchall_84
    move-exception p2

    :goto_85
    if-eqz v0, :cond_8a

    .line 376
    :try_start_87
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_8a

    .line 379
    :catchall_8a
    :cond_8a
    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    throw p2

    :catch_94
    :goto_94
    const/4 p2, 0x0

    if-eqz v0, :cond_9a

    .line 376
    :try_start_97
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_9a

    .line 379
    :catchall_9a
    :cond_9a
    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    return p2

    :cond_a4
    :goto_a4
    return v1
.end method

.method private processIsService(Landroid/content/Context;)Z
    .registers 4

    .line 607
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 609
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    .line 611
    :try_start_10
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_14} :catch_18

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    return p1

    :catch_18
    :cond_18
    return v1
.end method

.method private processToMain(Ljava/lang/String;)V
    .registers 4

    .line 151
    invoke-direct {p0, p1}, Lcom/umeng/analytics/process/UMProcessDBHelper;->dbIsExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 156
    :cond_7
    invoke-direct {p0, p1}, Lcom/umeng/analytics/process/UMProcessDBHelper;->readEventByProcess(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 158
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    :cond_12
    const-string v1, "_main_"

    .line 162
    invoke-direct {p0, v1, v0}, Lcom/umeng/analytics/process/UMProcessDBHelper;->insertEvents_(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x0

    .line 165
    invoke-virtual {p0, p1, v1, v0}, Lcom/umeng/analytics/process/UMProcessDBHelper;->deleteEventDatas(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_1e
    return-void
.end method

.method private readEventByProcess(Ljava/lang/String;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/umeng/analytics/process/UMProcessDBHelper$a;",
            ">;"
        }
    .end annotation

    .line 478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 481
    :try_start_6
    iget-object v2, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/umeng/analytics/process/c;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_9e
    .catchall {:try_start_6 .. :try_end_10} :catchall_9b

    .line 483
    :try_start_10
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v4, "__et_p"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v2

    .line 485
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_20} :catch_96
    .catchall {:try_start_10 .. :try_end_20} :catchall_94

    if-eqz v3, :cond_8e

    .line 488
    :goto_22
    :try_start_22
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 489
    new-instance v4, Lcom/umeng/analytics/process/UMProcessDBHelper$a;

    invoke-direct {v4, p0, v1}, Lcom/umeng/analytics/process/UMProcessDBHelper$a;-><init>(Lcom/umeng/analytics/process/UMProcessDBHelper;Lcom/umeng/analytics/process/UMProcessDBHelper$1;)V

    const/4 v5, 0x0

    .line 490
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->a:I

    const-string v5, "__i"

    .line 491
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->b:Ljava/lang/String;

    const-string v5, "__e"

    .line 492
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->c:Ljava/lang/String;

    const-string v5, "__s"

    .line 493
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->d:Ljava/lang/String;

    const-string v5, "__t"

    .line 494
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->e:I

    const-string v5, "__pn"

    .line 495
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->f:Ljava/lang/String;

    const-string v5, "__av"

    .line 496
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->g:Ljava/lang/String;

    const-string v5, "__vc"

    .line 497
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->h:Ljava/lang/String;

    .line 498
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_8b} :catch_8c
    .catchall {:try_start_22 .. :try_end_8b} :catchall_b9

    goto :goto_22

    :catch_8c
    move-exception v1

    goto :goto_a2

    :cond_8e
    if-eqz v3, :cond_ac

    .line 507
    :try_start_90
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_93} :catch_af

    goto :goto_ac

    :catchall_94
    move-exception v0

    goto :goto_bb

    :catch_96
    move-exception v3

    move-object v11, v3

    move-object v3, v1

    move-object v1, v11

    goto :goto_a2

    :catchall_9b
    move-exception v0

    move-object v2, v1

    goto :goto_bb

    :catch_9e
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    move-object v2, v3

    .line 502
    :goto_a2
    :try_start_a2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_b9

    if-eqz v3, :cond_aa

    .line 507
    :try_start_a7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_aa
    if-eqz v2, :cond_af

    .line 510
    :cond_ac
    :goto_ac
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_af} :catch_af

    .line 513
    :catch_af
    :cond_af
    iget-object v1, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    return-object v0

    :catchall_b9
    move-exception v0

    move-object v1, v3

    :goto_bb
    if-eqz v1, :cond_c0

    .line 507
    :try_start_bd
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_c0
    if-eqz v2, :cond_c5

    .line 510
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_c5} :catch_c5

    .line 513
    :catch_c5
    :cond_c5
    iget-object v1, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createDBByProcess(Ljava/lang/String;)V
    .registers 3

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/process/c;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    .line 103
    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_17
    return-void
.end method

.method public deleteEventDatas(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/umeng/analytics/process/UMProcessDBHelper$a;",
            ">;)V"
        }
    .end annotation

    .line 313
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    return-void

    :cond_7
    const/4 p2, 0x0

    .line 319
    :try_start_8
    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/process/c;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_5f
    .catchall {:try_start_8 .. :try_end_12} :catchall_4d

    .line 321
    :try_start_12
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 322
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3d

    const/4 p2, 0x0

    :goto_1c
    if-ge p2, v1, :cond_42

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete from __et_p where rowid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/analytics/process/UMProcessDBHelper$a;

    iget v3, v3, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 326
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1c

    :cond_3d
    const-string p3, "__et_p"

    .line 329
    invoke-virtual {v0, p3, p2, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 332
    :cond_42
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_45} :catch_4b
    .catchall {:try_start_12 .. :try_end_45} :catchall_49

    .line 337
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_65

    :catchall_49
    move-exception p2

    goto :goto_50

    :catch_4b
    move-object p2, v0

    goto :goto_60

    :catchall_4d
    move-exception p3

    move-object v0, p2

    move-object p2, p3

    :goto_50
    if-eqz v0, :cond_55

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 339
    :cond_55
    iget-object p3, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    throw p2

    :catch_5f
    nop

    :goto_60
    if-eqz p2, :cond_65

    .line 337
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 339
    :cond_65
    :goto_65
    iget-object p2, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public deleteMainProcessEventDatasByIds(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "_main_"

    const/4 v1, 0x0

    .line 295
    :try_start_3
    iget-object v2, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/umeng/analytics/process/c;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 297
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 298
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string v3, "__et_p"

    const-string v4, "id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 299
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_14

    .line 301
    :cond_32
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_35} :catch_46
    .catchall {:try_start_3 .. :try_end_35} :catchall_36

    goto :goto_49

    :catchall_36
    move-exception p1

    if-eqz v1, :cond_3c

    .line 305
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 307
    :cond_3c
    iget-object v1, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    throw p1

    :catch_46
    nop

    if-eqz v1, :cond_4c

    .line 305
    :goto_49
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 307
    :cond_4c
    iget-object p1, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public insertEvents(Ljava/lang/String;Lorg/json/JSONArray;)V
    .registers 4

    .line 135
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->SUB_PROCESS_EVENT:Z

    if-nez v0, :cond_5

    return-void

    .line 139
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 143
    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/umeng/analytics/process/UMProcessDBHelper;->datasAdapter(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/umeng/analytics/process/UMProcessDBHelper;->insertEvents_(Ljava/lang/String;Ljava/util/List;)Z

    return-void
.end method

.method public insertEventsInSubProcess(Ljava/lang/String;Lorg/json/JSONArray;)V
    .registers 5

    .line 110
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->SUB_PROCESS_EVENT:Z

    if-nez v0, :cond_5

    return-void

    .line 114
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 118
    :cond_c
    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/umeng/analytics/process/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 122
    iget-object p1, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mFileLock:Lcom/umeng/commonsdk/utils/FileLockUtil;

    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->ekvCallBack:Lcom/umeng/analytics/process/UMProcessDBHelper$InsertEventCallback;

    invoke-virtual {p1, v1, v0, p2}, Lcom/umeng/commonsdk/utils/FileLockUtil;->doFileOperateion(Ljava/io/File;Lcom/umeng/commonsdk/utils/FileLockCallback;Ljava/lang/Object;)V

    goto :goto_28

    .line 125
    :cond_25
    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/process/UMProcessDBHelper;->insertEvents(Ljava/lang/String;Lorg/json/JSONArray;)V

    :goto_28
    return-void
.end method

.method public processDBToMain()V
    .registers 4

    .line 576
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/process/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/umeng/analytics/process/UMProcessDBHelper$ProcessToMainCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/umeng/analytics/process/UMProcessDBHelper$ProcessToMainCallback;-><init>(Lcom/umeng/analytics/process/UMProcessDBHelper;Lcom/umeng/analytics/process/UMProcessDBHelper$1;)V

    new-instance v2, Lcom/umeng/analytics/process/UMProcessDBHelper$1;

    invoke-direct {v2, p0}, Lcom/umeng/analytics/process/UMProcessDBHelper$1;-><init>(Lcom/umeng/analytics/process/UMProcessDBHelper;)V

    invoke-static {v0, v1, v2}, Lcom/umeng/analytics/process/DBFileTraversalUtil;->traverseDBFiles(Ljava/lang/String;Lcom/umeng/commonsdk/utils/FileLockCallback;Lcom/umeng/analytics/process/DBFileTraversalUtil$a;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_14

    :catch_14
    return-void
.end method

.method public readMainEvents(JLjava/util/List;)Lorg/json/JSONObject;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "pn"

    const-string v2, "_main_"

    .line 175
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x0

    .line 180
    :try_start_c
    iget-object v5, v1, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/umeng/analytics/process/c;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_16} :catch_158
    .catchall {:try_start_c .. :try_end_16} :catchall_155

    .line 182
    :try_start_16
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v7, "__et_p"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, v5

    .line 186
    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_141

    .line 194
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2d} :catch_14f
    .catchall {:try_start_16 .. :try_end_2d} :catchall_14d

    const-string v7, ""

    .line 196
    :goto_2f
    :try_start_2f
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_100

    const-string v8, "id"

    .line 197
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v9, "__t"

    .line 198
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v10, "__i"

    .line 199
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "__s"

    .line 200
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "__pn"

    .line 201
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "__av"

    .line 202
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 203
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_78

    goto :goto_2f

    .line 207
    :cond_78
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_7f

    move-object v7, v13

    .line 213
    :cond_7f
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_fc

    const/16 v14, 0x801

    if-ne v9, v14, :cond_fc

    .line 214
    new-instance v9, Lorg/json/JSONObject;

    invoke-static {}, Lcom/umeng/common/a;->a()Lcom/umeng/common/a;

    move-result-object v14

    invoke-virtual {v14, v11}, Lcom/umeng/common/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 216
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_a8

    const-string v14, "unknown"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c5

    .line 217
    :cond_a8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ":"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 218
    invoke-virtual {v9, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    :cond_c5
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d0

    .line 221
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    goto :goto_d5

    .line 223
    :cond_d0
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 225
    :goto_d5
    invoke-static {v11}, Lcom/umeng/analytics/pro/q;->a(Lorg/json/JSONArray;)J

    move-result-wide v14

    .line 226
    invoke-static {v9}, Lcom/umeng/analytics/pro/q;->a(Lorg/json/JSONObject;)J

    move-result-wide v16

    add-long v16, v16, v14

    cmp-long v12, v16, p1

    if-lez v12, :cond_e4

    goto :goto_100

    .line 233
    :cond_e4
    invoke-virtual {v7, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_eb

    goto :goto_100

    .line 236
    :cond_eb
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v12, p3

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-virtual {v11, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 239
    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2f

    :cond_fc
    move-object/from16 v12, p3

    goto/16 :goto_2f

    .line 243
    :cond_100
    :goto_100
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_141

    .line 244
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 245
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 247
    :cond_10f
    :goto_10f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_136

    .line 248
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 249
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 250
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 251
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11, v10}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    invoke-virtual {v8}, Lorg/json/JSONObject;->length()I

    move-result v9

    if-lez v9, :cond_10f

    .line 253
    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_10f

    .line 256
    :cond_136
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_141

    const-string v6, "ekv"

    .line 257
    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    :cond_141
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_144} :catch_14f
    .catchall {:try_start_2f .. :try_end_144} :catchall_14d

    if-eqz v4, :cond_149

    .line 274
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 278
    :cond_149
    :try_start_149
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_14c
    .catchall {:try_start_149 .. :try_end_14c} :catchall_170

    goto :goto_170

    :catchall_14d
    move-exception v0

    goto :goto_180

    :catch_14f
    move-object/from16 v18, v5

    move-object v5, v4

    move-object/from16 v4, v18

    goto :goto_159

    :catchall_155
    move-exception v0

    move-object v5, v4

    goto :goto_180

    :catch_158
    move-object v5, v4

    :goto_159
    :try_start_159
    const-string v0, "MobclickRT"

    const-string v6, "--->>> 构建子进程事件数据异常，清除数据库数据。"

    .line 268
    invoke-static {v0, v6}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "delete from __et_p"

    .line 270
    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_168
    .catchall {:try_start_159 .. :try_end_168} :catchall_17a

    if-eqz v5, :cond_16d

    .line 274
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 278
    :cond_16d
    :try_start_16d
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_170
    .catchall {:try_start_16d .. :try_end_170} :catchall_170

    .line 281
    :catchall_170
    :goto_170
    iget-object v0, v1, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    return-object v3

    :catchall_17a
    move-exception v0

    move-object/from16 v18, v5

    move-object v5, v4

    move-object/from16 v4, v18

    :goto_180
    if-eqz v4, :cond_185

    .line 274
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_185
    if-eqz v5, :cond_18a

    .line 278
    :try_start_187
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_18a
    .catchall {:try_start_187 .. :try_end_18a} :catchall_18a

    .line 281
    :catchall_18a
    :cond_18a
    iget-object v3, v1, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    throw v0
.end method

.method public readVersionInfoFromColumId(Ljava/lang/Integer;)Lorg/json/JSONObject;
    .registers 15

    const-string v0, "__vc"

    const-string v1, "__av"

    const-string v2, "_main_"

    const/4 v3, 0x0

    .line 432
    :try_start_7
    iget-object v4, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/umeng/analytics/process/c;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_7d
    .catchall {:try_start_7 .. :try_end_11} :catchall_7a

    .line 434
    :try_start_11
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 436
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v6, "__et_p"

    const/4 v7, 0x0

    const-string v8, "rowid=?"

    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v9, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v4

    .line 437
    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2b} :catch_77
    .catchall {:try_start_11 .. :try_end_2b} :catchall_98

    if-eqz p1, :cond_65

    .line 440
    :try_start_2d
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_65

    .line 441
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_38} :catch_61
    .catchall {:try_start_2d .. :try_end_38} :catchall_5e

    .line 442
    :try_start_38
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 443
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 444
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_51

    .line 445
    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 447
    :cond_51
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5a

    .line 448
    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_5a} :catch_5c
    .catchall {:try_start_38 .. :try_end_5a} :catchall_5e

    :cond_5a
    move-object v3, v5

    goto :goto_65

    :catch_5c
    move-exception v0

    goto :goto_63

    :catchall_5e
    move-exception v0

    move-object v3, p1

    goto :goto_99

    :catch_61
    move-exception v0

    move-object v5, v3

    :goto_63
    move-object v3, p1

    goto :goto_80

    :cond_65
    :goto_65
    if-eqz p1, :cond_6a

    .line 460
    :try_start_67
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 463
    :cond_6a
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6d} :catch_6d

    .line 466
    :catch_6d
    iget-object p1, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    goto :goto_97

    :catch_77
    move-exception v0

    move-object v5, v3

    goto :goto_80

    :catchall_7a
    move-exception v0

    move-object v4, v3

    goto :goto_99

    :catch_7d
    move-exception v0

    move-object v4, v3

    move-object v5, v4

    .line 455
    :goto_80
    :try_start_80
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_98

    if-eqz v3, :cond_88

    .line 460
    :try_start_85
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_88
    if-eqz v4, :cond_8d

    .line 463
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_8d} :catch_8d

    .line 466
    :catch_8d
    :cond_8d
    iget-object p1, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    move-object v3, v5

    :goto_97
    return-object v3

    :catchall_98
    move-exception v0

    :goto_99
    if-eqz v3, :cond_9e

    .line 460
    :try_start_9b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_9e
    if-eqz v4, :cond_a3

    .line 463
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_a3} :catch_a3

    .line 466
    :catch_a3
    :cond_a3
    iget-object p1, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    throw v0
.end method
