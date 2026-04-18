.class public Lcom/umeng/analytics/pro/am;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CacheDBHelper.java"


# static fields
.field private static final b:Ljava/lang/Object;

.field private static c:Lcom/umeng/analytics/pro/am; = null

.field private static final d:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS stf(_id INTEGER PRIMARY KEY AUTOINCREMENT, _tp TEXT, _hd TEXT, _bd TEXT, _ts TEXT, _uuid TEXT, _re1 TEXT, _re2 TEXT)"

.field private static final e:Ljava/lang/String; = "DROP TABLE IF EXISTS stf"

.field private static final f:Ljava/lang/String; = "DELETE FROM stf WHERE _id IN( SELECT _id FROM stf ORDER BY _id LIMIT 1)"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/analytics/pro/am;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 5

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 61
    iput-object p1, p0, Lcom/umeng/analytics/pro/am;->a:Landroid/content/Context;

    return-void
.end method

.method public static final a()I
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/pro/am;
    .registers 6

    .line 51
    sget-object v0, Lcom/umeng/analytics/pro/am;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 52
    :try_start_3
    sget-object v1, Lcom/umeng/analytics/pro/am;->c:Lcom/umeng/analytics/pro/am;

    if-nez v1, :cond_12

    .line 53
    new-instance v1, Lcom/umeng/analytics/pro/am;

    const-string v2, "umeng_zero_cache.db"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/umeng/analytics/pro/am;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v1, Lcom/umeng/analytics/pro/am;->c:Lcom/umeng/analytics/pro/am;

    .line 55
    :cond_12
    sget-object p0, Lcom/umeng/analytics/pro/am;->c:Lcom/umeng/analytics/pro/am;

    monitor-exit v0

    return-object p0

    :catchall_16
    move-exception p0

    .line 56
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    :try_start_0
    const-string v0, "DROP TABLE IF EXISTS stf"

    .line 74
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS stf(_id INTEGER PRIMARY KEY AUTOINCREMENT, _tp TEXT, _hd TEXT, _bd TEXT, _ts TEXT, _uuid TEXT, _re1 TEXT, _re2 TEXT)"

    .line 75
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS stf(_id INTEGER PRIMARY KEY AUTOINCREMENT, _tp TEXT, _hd TEXT, _bd TEXT, _ts TEXT, _uuid TEXT, _re1 TEXT, _re2 TEXT)"

    .line 83
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_5} :catch_22
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    goto :goto_25

    :catchall_6
    move-exception p1

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--->>> [有状态]创建二级缓存数据库失败: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MobclickRT"

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    .line 86
    :catch_22
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/am;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_25
    return-void
.end method

.method private d()V
    .registers 3

    .line 175
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 176
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_14

    if-eqz v1, :cond_14

    :try_start_c
    const-string v1, "DELETE FROM stf WHERE _id IN( SELECT _id FROM stf ORDER BY _id LIMIT 1)"

    .line 178
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_11

    .line 183
    :catchall_11
    :try_start_11
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_14

    :catchall_14
    :cond_14
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 19

    const/4 v0, 0x0

    .line 240
    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 241
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1c

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 242
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1c

    :catchall_1c
    :cond_1c
    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/analytics/pro/an;
    .registers 12

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "_uuid"

    const-string v2, "_tp"

    const-string v3, "_hd"

    const-string v4, "_bd"

    const-string v5, "_re1"

    const-string v6, "_re2"

    .line 195
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1"

    move-object v1, p0

    move-object v2, p1

    .line 197
    invoke-virtual/range {v1 .. v9}, Lcom/umeng/analytics/pro/am;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_73

    if-eqz v1, :cond_6d

    .line 198
    :try_start_20
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 199
    new-instance v2, Lcom/umeng/analytics/pro/an;

    invoke-direct {v2}, Lcom/umeng/analytics/pro/an;-><init>()V
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_74

    const/4 v0, 0x0

    .line 201
    :try_start_2c
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/umeng/analytics/pro/an;->a:Ljava/lang/String;

    const/4 v0, 0x1

    .line 202
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/umeng/analytics/pro/an;->b:Ljava/lang/String;

    const/4 v0, 0x2

    .line 203
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    .line 204
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 205
    iget-object v4, p0, Lcom/umeng/analytics/pro/am;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/umeng/analytics/pro/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/umeng/analytics/pro/an;->c:Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lcom/umeng/analytics/pro/am;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/umeng/analytics/pro/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/umeng/analytics/pro/an;->d:Ljava/lang/String;

    const/4 v0, 0x4

    .line 207
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/umeng/analytics/pro/an;->e:Ljava/lang/String;

    const/4 v0, 0x5

    .line 208
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/umeng/analytics/pro/an;->f:Ljava/lang/String;
    :try_end_69
    .catchall {:try_start_2c .. :try_end_69} :catchall_6b

    move-object v0, v2

    goto :goto_6d

    :catchall_6b
    move-object v0, v2

    goto :goto_74

    :cond_6d
    :goto_6d
    if-eqz v1, :cond_7a

    .line 214
    :goto_6f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_7a

    :catchall_73
    move-object v1, v0

    .line 211
    :catchall_74
    :goto_74
    :try_start_74
    invoke-direct {p0}, Lcom/umeng/analytics/pro/am;->d()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_7b

    if-eqz v1, :cond_7a

    goto :goto_6f

    :cond_7a
    :goto_7a
    return-object v0

    :catchall_7b
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_82

    .line 214
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 215
    :cond_82
    throw v2
.end method

.method public a(Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 5

    .line 124
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 125
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_23

    if-eqz v1, :cond_23

    .line 127
    :try_start_c
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v1, 0x0

    .line 128
    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 129
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    const-string p1, "MobclickRT"

    const-string p2, "--->>> [有状态]插入二级缓存数据记录 成功。"

    .line 130
    invoke-static {p1, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_1d

    .line 135
    :catchall_1d
    :try_start_1d
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 136
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_23

    :catchall_23
    :cond_23
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "_uuid=?"

    .line 228
    invoke-virtual {p0, p1, p2, v0}, Lcom/umeng/analytics/pro/am;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6

    .line 153
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 154
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_1b

    if-eqz v1, :cond_1b

    .line 156
    :try_start_c
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 157
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 158
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_15

    .line 163
    :catchall_15
    :try_start_15
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 164
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_1b

    :catchall_1b
    :cond_1b
    return-void
.end method

.method public b()V
    .registers 3

    .line 108
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 109
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 110
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_f

    :catchall_f
    :cond_f
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .registers 13

    const/4 v0, 0x0

    .line 260
    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_38

    if-eqz v10, :cond_1e

    .line 261
    :try_start_7
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v10

    move-object v2, p1

    .line 262
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    move-object v0, p1

    goto :goto_1e

    :catchall_1c
    nop

    goto :goto_39

    :cond_1e
    :goto_1e
    if-eqz v0, :cond_30

    .line 264
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_1c

    if-lez p1, :cond_30

    const/4 p1, 0x1

    .line 271
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    if-eqz v10, :cond_2f

    .line 274
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2f
    return p1

    :cond_30
    if-eqz v0, :cond_35

    .line 271
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_35
    if-eqz v10, :cond_43

    goto :goto_40

    :catchall_38
    move-object v10, v0

    :goto_39
    if-eqz v0, :cond_3e

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3e
    if-eqz v10, :cond_43

    .line 274
    :goto_40
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_43
    const/4 p1, 0x0

    return p1
.end method

.method public c()Z
    .registers 2

    const-string v0, "stf"

    .line 285
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/am;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 94
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/am;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    return-void
.end method
