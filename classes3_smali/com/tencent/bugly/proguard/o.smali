.class public final Lcom/tencent/bugly/proguard/o;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/o$a;
    }
.end annotation


# static fields
.field private static a:Lcom/tencent/bugly/proguard/o; = null

.field private static b:Lcom/tencent/bugly/proguard/p; = null

.field private static c:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/a;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/tencent/bugly/proguard/p;

    invoke-direct {v0, p1, p2}, Lcom/tencent/bugly/proguard/p;-><init>(Landroid/content/Context;Ljava/util/List;)V

    sput-object v0, Lcom/tencent/bugly/proguard/o;->b:Lcom/tencent/bugly/proguard/p;

    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/o;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/n;)I
    .registers 5

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/bugly/proguard/o;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/n;)I

    move-result p0

    return p0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/n;)I
    .registers 7

    monitor-enter p0

    const/4 v0, 0x0

    .line 215
    :try_start_2
    sget-object v1, Lcom/tencent/bugly/proguard/o;->b:Lcom/tencent/bugly/proguard/p;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/p;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 217
    invoke-virtual {v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_f

    goto :goto_19

    :catchall_f
    move-exception p1

    .line 220
    :try_start_10
    invoke-static {p1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_19

    .line 221
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1b

    .line 231
    :cond_19
    :goto_19
    monitor-exit p0

    return v0

    :catchall_1b
    move-exception p1

    .line 227
    :try_start_1c
    throw p1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1d

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/o;Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/n;)J
    .registers 4

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/o;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/n;)J

    move-result-wide p0

    return-wide p0
.end method

.method private declared-synchronized a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/n;)J
    .registers 12

    monitor-enter p0

    const-wide/16 v0, -0x1

    .line 160
    :try_start_3
    sget-object v2, Lcom/tencent/bugly/proguard/o;->b:Lcom/tencent/bugly/proguard/p;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/p;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_3a

    if-eqz p2, :cond_3a

    const-string v3, "_id"

    .line 162
    invoke-virtual {v2, p1, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 p2, 0x0

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    if-ltz v7, :cond_25

    const-string v4, "[Database] insert %s success."

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, p2

    .line 164
    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_25
    const-string v4, "[Database] replace %s error."

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, p2

    .line 166
    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_30

    :goto_2e
    move-wide v0, v2

    goto :goto_3a

    :catchall_30
    move-exception p1

    .line 171
    :try_start_31
    invoke-static {p1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_3a

    .line 172
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_3c

    .line 182
    :cond_3a
    :goto_3a
    monitor-exit p0

    return-wide v0

    :catchall_3c
    move-exception p1

    .line 178
    :try_start_3d
    throw p1
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/o;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/n;)Landroid/database/Cursor;
    .registers 11

    .line 28
    invoke-direct/range {p0 .. p10}, Lcom/tencent/bugly/proguard/o;->a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/n;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/n;)Landroid/database/Cursor;
    .registers 23

    monitor-enter p0

    const/4 v1, 0x0

    .line 191
    :try_start_2
    sget-object v0, Lcom/tencent/bugly/proguard/o;->b:Lcom/tencent/bugly/proguard/p;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/p;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_28

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    .line 194
    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_1e

    goto :goto_28

    :catchall_1e
    move-exception v0

    .line 198
    :try_start_1f
    invoke-static {v0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 199
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_2a

    .line 206
    :cond_28
    :goto_28
    monitor-exit p0

    return-object v1

    :catchall_2a
    move-exception v0

    .line 203
    :try_start_2b
    throw v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception v0

    move-object v1, v0

    monitor-exit p0

    throw v1
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/proguard/o;
    .registers 2

    const-class v0, Lcom/tencent/bugly/proguard/o;

    monitor-enter v0

    .line 54
    :try_start_3
    sget-object v1, Lcom/tencent/bugly/proguard/o;->a:Lcom/tencent/bugly/proguard/o;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/util/List;)Lcom/tencent/bugly/proguard/o;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/a;",
            ">;)",
            "Lcom/tencent/bugly/proguard/o;"
        }
    .end annotation

    const-class v0, Lcom/tencent/bugly/proguard/o;

    monitor-enter v0

    .line 47
    :try_start_3
    sget-object v1, Lcom/tencent/bugly/proguard/o;->a:Lcom/tencent/bugly/proguard/o;

    if-nez v1, :cond_e

    .line 48
    new-instance v1, Lcom/tencent/bugly/proguard/o;

    invoke-direct {v1, p0, p1}, Lcom/tencent/bugly/proguard/o;-><init>(Landroid/content/Context;Ljava/util/List;)V

    sput-object v1, Lcom/tencent/bugly/proguard/o;->a:Lcom/tencent/bugly/proguard/o;

    .line 50
    :cond_e
    sget-object p0, Lcom/tencent/bugly/proguard/o;->a:Lcom/tencent/bugly/proguard/o;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a(Landroid/database/Cursor;)Lcom/tencent/bugly/proguard/q;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 575
    :cond_4
    :try_start_4
    new-instance v1, Lcom/tencent/bugly/proguard/q;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/q;-><init>()V

    const-string v2, "_id"

    .line 576
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/q;->a:J

    const-string v2, "_tp"

    .line 577
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/tencent/bugly/proguard/q;->b:I

    const-string v2, "_pc"

    .line 578
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/q;->c:Ljava/lang/String;

    const-string v2, "_th"

    .line 579
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/q;->d:Ljava/lang/String;

    const-string v2, "_tm"

    .line 580
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/q;->e:J

    const-string v2, "_dt"

    .line 581
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    iput-object p0, v1, Lcom/tencent/bugly/proguard/q;->g:[B
    :try_end_51
    .catchall {:try_start_4 .. :try_end_51} :catchall_52

    return-object v1

    :catchall_52
    move-exception p0

    .line 584
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 585
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5c
    return-object v0
.end method

.method private a(ILcom/tencent/bugly/proguard/n;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tencent/bugly/proguard/n;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    const/4 p2, 0x0

    .line 319
    :try_start_1
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/o;->c(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 321
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_2b

    .line 322
    :try_start_c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/bugly/proguard/q;

    .line 323
    iget-object v1, p2, Lcom/tencent/bugly/proguard/q;->g:[B

    if-eqz v1, :cond_10

    .line 325
    iget-object p2, p2, Lcom/tencent/bugly/proguard/q;->f:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_28

    goto :goto_10

    :cond_26
    move-object p2, v0

    goto :goto_35

    :catchall_28
    move-exception p1

    move-object p2, v0

    goto :goto_2c

    :catchall_2b
    move-exception p1

    .line 330
    :goto_2c
    :try_start_2c
    invoke-static {p1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 331
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_36

    :cond_35
    :goto_35
    return-object p2

    :catchall_36
    move-exception p1

    .line 335
    throw p1
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/o;ILcom/tencent/bugly/proguard/n;)Ljava/util/Map;
    .registers 3

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/o;->a(ILcom/tencent/bugly/proguard/n;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized a(ILjava/lang/String;Lcom/tencent/bugly/proguard/n;)Z
    .registers 8

    monitor-enter p0

    const/4 v0, 0x0

    .line 661
    :try_start_2
    sget-object v1, Lcom/tencent/bugly/proguard/o;->b:Lcom/tencent/bugly/proguard/p;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/p;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_67

    .line 664
    invoke-static {p2}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 665
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "_id = "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3f

    .line 667
    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and _tp"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = \""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3f
    const-string p2, "t_pf"

    const/4 v2, 0x0

    .line 671
    invoke-virtual {v1, p2, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const-string p2, "[Database] deleted %s data %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "t_pf"

    aput-object v2, v1, v0

    .line 672
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p2, v1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_59
    .catchall {:try_start_2 .. :try_end_59} :catchall_5d

    if-lez p1, :cond_67

    const/4 v0, 0x1

    goto :goto_67

    :catchall_5d
    move-exception p1

    .line 676
    :try_start_5e
    invoke-static {p1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_67

    .line 677
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_67
    .catchall {:try_start_5e .. :try_end_67} :catchall_69

    .line 687
    :cond_67
    :goto_67
    monitor-exit p0

    return v0

    :catchall_69
    move-exception p1

    .line 683
    :try_start_6a
    throw p1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_6b

    :catchall_6b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/n;)Z
    .registers 7

    .line 298
    :try_start_0
    new-instance p4, Lcom/tencent/bugly/proguard/q;

    invoke-direct {p4}, Lcom/tencent/bugly/proguard/q;-><init>()V

    int-to-long v0, p1

    .line 299
    iput-wide v0, p4, Lcom/tencent/bugly/proguard/q;->a:J

    .line 300
    iput-object p2, p4, Lcom/tencent/bugly/proguard/q;->f:Ljava/lang/String;

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p4, Lcom/tencent/bugly/proguard/q;->e:J

    .line 302
    iput-object p3, p4, Lcom/tencent/bugly/proguard/q;->g:[B

    .line 303
    invoke-direct {p0, p4}, Lcom/tencent/bugly/proguard/o;->b(Lcom/tencent/bugly/proguard/q;)Z

    move-result p1
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    goto :goto_22

    :catchall_17
    move-exception p1

    .line 305
    :try_start_18
    invoke-static {p1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_21

    .line 306
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_23

    :cond_21
    const/4 p1, 0x0

    :goto_22
    return p1

    :catchall_23
    move-exception p1

    .line 312
    throw p1
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/o;ILjava/lang/String;Lcom/tencent/bugly/proguard/n;)Z
    .registers 4

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/o;->a(ILjava/lang/String;Lcom/tencent/bugly/proguard/n;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/o;ILjava/lang/String;[BLcom/tencent/bugly/proguard/n;)Z
    .registers 5

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/bugly/proguard/o;->a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/n;)Z

    move-result p0

    return p0
.end method

.method private static b(Landroid/database/Cursor;)Lcom/tencent/bugly/proguard/q;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 725
    :cond_4
    :try_start_4
    new-instance v1, Lcom/tencent/bugly/proguard/q;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/q;-><init>()V

    const-string v2, "_id"

    .line 726
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/q;->a:J

    const-string v2, "_tm"

    .line 727
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/q;->e:J

    const-string v2, "_tp"

    .line 728
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/q;->f:Ljava/lang/String;

    const-string v2, "_dt"

    .line 729
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    iput-object p0, v1, Lcom/tencent/bugly/proguard/q;->g:[B
    :try_end_39
    .catchall {:try_start_4 .. :try_end_39} :catchall_3a

    return-object v1

    :catchall_3a
    move-exception p0

    .line 732
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 733
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_44
    return-object v0
.end method

.method private declared-synchronized b(Lcom/tencent/bugly/proguard/q;)Z
    .registers 9

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_6

    .line 386
    monitor-exit p0

    return v0

    .line 390
    :cond_6
    :try_start_6
    sget-object v1, Lcom/tencent/bugly/proguard/o;->b:Lcom/tencent/bugly/proguard/p;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/p;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 392
    invoke-static {p1}, Lcom/tencent/bugly/proguard/o;->d(Lcom/tencent/bugly/proguard/q;)Landroid/content/ContentValues;

    move-result-object v2

    if-eqz v2, :cond_34

    const-string v3, "t_pf"

    const-string v4, "_id"

    .line 394
    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_32

    const-string v3, "[Database] insert %s success."

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "t_pf"

    aput-object v6, v5, v0

    .line 396
    invoke-static {v3, v5}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 397
    iput-wide v1, p1, Lcom/tencent/bugly/proguard/q;->a:J
    :try_end_30
    .catchall {:try_start_6 .. :try_end_30} :catchall_36

    .line 398
    monitor-exit p0

    return v4

    .line 400
    :cond_32
    monitor-exit p0

    return v0

    .line 404
    :cond_34
    monitor-exit p0

    return v0

    :catchall_36
    move-exception p1

    .line 406
    :try_start_37
    invoke-static {p1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 407
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_42

    .line 409
    :cond_40
    monitor-exit p0

    return v0

    :catchall_42
    move-exception p1

    .line 412
    :try_start_43
    throw p1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_44

    :catchall_44
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static c(Lcom/tencent/bugly/proguard/q;)Landroid/content/ContentValues;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 547
    :cond_4
    :try_start_4
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 548
    iget-wide v2, p0, Lcom/tencent/bugly/proguard/q;->a:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1a

    const-string v4, "_id"

    .line 549
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1a
    const-string v2, "_tp"

    .line 551
    iget v3, p0, Lcom/tencent/bugly/proguard/q;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "_pc"

    .line 552
    iget-object v3, p0, Lcom/tencent/bugly/proguard/q;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_th"

    .line 553
    iget-object v3, p0, Lcom/tencent/bugly/proguard/q;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_tm"

    .line 554
    iget-wide v3, p0, Lcom/tencent/bugly/proguard/q;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 555
    iget-object p0, p0, Lcom/tencent/bugly/proguard/q;->g:[B

    if-eqz p0, :cond_47

    const-string v2, "_dt"

    .line 556
    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_47
    .catchall {:try_start_4 .. :try_end_47} :catchall_48

    :cond_47
    return-object v1

    :catchall_48
    move-exception p0

    .line 560
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 561
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_52
    return-object v0
.end method

.method private declared-synchronized c(I)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/q;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 601
    :try_start_2
    sget-object v1, Lcom/tencent/bugly/proguard/o;->b:Lcom/tencent/bugly/proguard/p;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/p;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_b1

    .line 603
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v3, "t_pf"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    move-object v5, v10

    .line 605
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_25
    .catchall {:try_start_2 .. :try_end_25} :catchall_a1

    if-nez v2, :cond_2e

    if-eqz v2, :cond_2c

    .line 642
    :try_start_29
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_ba

    .line 644
    :cond_2c
    monitor-exit p0

    return-object v0

    .line 610
    :cond_2e
    :try_start_2e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 611
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 612
    :goto_38
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_69

    .line 613
    invoke-static {v2}, Lcom/tencent/bugly/proguard/o;->b(Landroid/database/Cursor;)Lcom/tencent/bugly/proguard/q;

    move-result-object v5

    if-eqz v5, :cond_49

    .line 615
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_48
    .catchall {:try_start_2e .. :try_end_48} :catchall_9f

    goto :goto_38

    :cond_49
    :try_start_49
    const-string v5, "_tp"

    .line 619
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, " or _tp"

    .line 620
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_60
    .catchall {:try_start_49 .. :try_end_60} :catchall_61

    goto :goto_38

    :catchall_61
    :try_start_61
    const-string v5, "[Database] unknown id."

    new-array v6, v6, [Ljava/lang/Object;

    .line 622
    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_38

    .line 628
    :cond_69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_9a

    const-string v5, " and _id"

    .line 629
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 p1, 0x4

    .line 630
    invoke-virtual {v10, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "t_pf"

    .line 631
    invoke-virtual {v1, v3, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const-string v1, "[Database] deleted %s illegal data %d."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "t_pf"

    aput-object v5, v3, v6

    const/4 v5, 0x1

    .line 632
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v5

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_9a
    .catchall {:try_start_61 .. :try_end_9a} :catchall_9f

    .line 642
    :cond_9a
    :try_start_9a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_ba

    .line 644
    monitor-exit p0

    return-object v4

    :catchall_9f
    move-exception p1

    goto :goto_a3

    :catchall_a1
    move-exception p1

    move-object v2, v0

    .line 637
    :goto_a3
    :try_start_a3
    invoke-static {p1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_ac

    .line 638
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_ac
    .catchall {:try_start_a3 .. :try_end_ac} :catchall_b3

    :cond_ac
    if-eqz v2, :cond_b1

    .line 642
    :try_start_ae
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_ba

    .line 648
    :cond_b1
    monitor-exit p0

    return-object v0

    :catchall_b3
    move-exception p1

    if-eqz v2, :cond_b9

    .line 642
    :try_start_b6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 644
    :cond_b9
    throw p1
    :try_end_ba
    .catchall {:try_start_b6 .. :try_end_ba} :catchall_ba

    :catchall_ba
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static d(Lcom/tencent/bugly/proguard/q;)Landroid/content/ContentValues;
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :cond_48

    .line 694
    iget-object v1, p0, Lcom/tencent/bugly/proguard/q;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_48

    .line 699
    :cond_c
    :try_start_c
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 700
    iget-wide v2, p0, Lcom/tencent/bugly/proguard/q;->a:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_22

    const-string v4, "_id"

    .line 701
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_22
    const-string v2, "_tp"

    .line 703
    iget-object v3, p0, Lcom/tencent/bugly/proguard/q;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_tm"

    .line 704
    iget-wide v3, p0, Lcom/tencent/bugly/proguard/q;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 705
    iget-object p0, p0, Lcom/tencent/bugly/proguard/q;->g:[B

    if-eqz p0, :cond_3d

    const-string v2, "_dt"

    .line 706
    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_3d
    .catchall {:try_start_c .. :try_end_3d} :catchall_3e

    :cond_3d
    return-object v1

    :catchall_3e
    move-exception p0

    .line 710
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 711
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_48
    :goto_48
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/n;Z)I
    .registers 6

    const/4 p3, 0x0

    .line 139
    invoke-direct {p0, p1, p2, p3, p3}, Lcom/tencent/bugly/proguard/o;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/n;)I

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/n;Z)J
    .registers 5

    const/4 p3, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/o;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/n;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/n;Z)Landroid/database/Cursor;
    .registers 19

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 91
    invoke-virtual/range {v0 .. v11}, Lcom/tencent/bugly/proguard/o;->a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/n;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/n;Z)Landroid/database/Cursor;
    .registers 34

    if-nez p11, :cond_28

    .line 116
    new-instance v10, Lcom/tencent/bugly/proguard/o$a;

    const/4 v0, 0x3

    move-object/from16 v15, p0

    move-object/from16 v1, p10

    invoke-direct {v10, v15, v0, v1}, Lcom/tencent/bugly/proguard/o$a;-><init>(Lcom/tencent/bugly/proguard/o;ILcom/tencent/bugly/proguard/n;)V

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v10

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 117
    invoke-virtual/range {v0 .. v9}, Lcom/tencent/bugly/proguard/o$a;->a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/tencent/bugly/proguard/x;->a()Lcom/tencent/bugly/proguard/x;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    return-object v0

    :cond_28
    move-object/from16 v15, p0

    move-object/from16 v1, p10

    const/4 v12, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v11, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move-object/from16 v19, p8

    move-object/from16 v20, p9

    move-object/from16 v21, p10

    .line 122
    invoke-direct/range {v11 .. v21}, Lcom/tencent/bugly/proguard/o;->a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/n;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized a(I)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/q;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 423
    :try_start_1
    sget-object v0, Lcom/tencent/bugly/proguard/o;->b:Lcom/tencent/bugly/proguard/p;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/p;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_ba

    const/4 v9, 0x0

    if-eqz v0, :cond_b8

    if-ltz p1, :cond_20

    .line 427
    :try_start_c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_tp = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v4, p1

    goto :goto_21

    :catchall_1c
    move-exception p1

    move-object v0, v9

    goto/16 :goto_a2

    :cond_20
    move-object v4, v9

    :goto_21
    const-string v2, "t_lr"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    .line 429
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_1c

    if-nez p1, :cond_36

    if-eqz p1, :cond_34

    .line 467
    :try_start_31
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_ba

    .line 469
    :cond_34
    monitor-exit p0

    return-object v9

    .line 435
    :cond_36
    :try_start_36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 436
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 437
    :goto_40
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_71

    .line 438
    invoke-static {p1}, Lcom/tencent/bugly/proguard/o;->a(Landroid/database/Cursor;)Lcom/tencent/bugly/proguard/q;

    move-result-object v3

    if-eqz v3, :cond_51

    .line 440
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catchall {:try_start_36 .. :try_end_50} :catchall_9e

    goto :goto_40

    :cond_51
    :try_start_51
    const-string v3, "_id"

    .line 444
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-string v3, " or _id"

    .line 445
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_68
    .catchall {:try_start_51 .. :try_end_68} :catchall_69

    goto :goto_40

    :catchall_69
    :try_start_69
    const-string v3, "[Database] unknown id."

    new-array v4, v4, [Ljava/lang/Object;

    .line 448
    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_40

    .line 454
    :cond_71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 455
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_99

    const/4 v3, 0x4

    .line 456
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "t_lr"

    .line 457
    invoke-virtual {v0, v3, v1, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const-string v1, "[Database] deleted %s illegal data %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "t_lr"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 458
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_99
    .catchall {:try_start_69 .. :try_end_99} :catchall_9e

    .line 467
    :cond_99
    :try_start_99
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_ba

    .line 469
    monitor-exit p0

    return-object v2

    :catchall_9e
    move-exception v0

    move-object v10, v0

    move-object v0, p1

    move-object p1, v10

    .line 462
    :goto_a2
    :try_start_a2
    invoke-static {p1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_ab

    .line 463
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_ab
    .catchall {:try_start_a2 .. :try_end_ab} :catchall_b1

    :cond_ab
    if-eqz v0, :cond_b8

    .line 467
    :try_start_ad
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_b8

    :catchall_b1
    move-exception p1

    if-eqz v0, :cond_b7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 469
    :cond_b7
    throw p1
    :try_end_b8
    .catchall {:try_start_ad .. :try_end_b8} :catchall_ba

    .line 475
    :cond_b8
    :goto_b8
    monitor-exit p0

    return-object v9

    :catchall_ba
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(ILcom/tencent/bugly/proguard/n;Z)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tencent/bugly/proguard/n;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    const/4 p2, 0x0

    .line 264
    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/o;->a(ILcom/tencent/bugly/proguard/n;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized a(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/q;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_79

    .line 483
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    goto :goto_79

    .line 486
    :cond_a
    sget-object v0, Lcom/tencent/bugly/proguard/o;->b:Lcom/tencent/bugly/proguard/p;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/p;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_74

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/proguard/q;

    const-string v3, " or _id"

    .line 490
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v2, Lcom/tencent/bugly/proguard/q;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 493
    :cond_37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 494
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_46

    const/4 v2, 0x4

    .line 495
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_46
    const/4 v2, 0x0

    .line 497
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_76

    :try_start_4a
    const-string v1, "t_lr"

    const/4 v3, 0x0

    .line 499
    invoke-virtual {v0, v1, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const-string v0, "[Database] deleted %s data %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "t_lr"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 500
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_64
    .catchall {:try_start_4a .. :try_end_64} :catchall_66

    .line 506
    monitor-exit p0

    return-void

    :catchall_66
    move-exception p1

    .line 502
    :try_start_67
    invoke-static {p1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_70

    .line 503
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_70
    .catchall {:try_start_67 .. :try_end_70} :catchall_72

    .line 506
    :cond_70
    monitor-exit p0

    return-void

    :catchall_72
    move-exception p1

    .line 507
    :try_start_73
    throw p1
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_76

    .line 511
    :cond_74
    monitor-exit p0

    return-void

    :catchall_76
    move-exception p1

    monitor-exit p0

    throw p1

    .line 484
    :cond_79
    :goto_79
    monitor-exit p0

    return-void
.end method

.method public final a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/n;Z)Z
    .registers 7

    const/4 p4, 0x0

    if-nez p5, :cond_15

    .line 244
    new-instance p5, Lcom/tencent/bugly/proguard/o$a;

    const/4 v0, 0x4

    invoke-direct {p5, p0, v0, p4}, Lcom/tencent/bugly/proguard/o$a;-><init>(Lcom/tencent/bugly/proguard/o;ILcom/tencent/bugly/proguard/n;)V

    .line 245
    invoke-virtual {p5, p1, p2, p3}, Lcom/tencent/bugly/proguard/o$a;->a(ILjava/lang/String;[B)V

    .line 246
    invoke-static {}, Lcom/tencent/bugly/proguard/x;->a()Lcom/tencent/bugly/proguard/x;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1

    .line 249
    :cond_15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/bugly/proguard/o;->a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/n;)Z

    move-result p1

    return p1
.end method

.method public final declared-synchronized a(Lcom/tencent/bugly/proguard/q;)Z
    .registers 9

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_6

    .line 348
    monitor-exit p0

    return v0

    .line 352
    :cond_6
    :try_start_6
    sget-object v1, Lcom/tencent/bugly/proguard/o;->b:Lcom/tencent/bugly/proguard/p;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/p;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 354
    invoke-static {p1}, Lcom/tencent/bugly/proguard/o;->c(Lcom/tencent/bugly/proguard/q;)Landroid/content/ContentValues;

    move-result-object v2

    if-eqz v2, :cond_34

    const-string v3, "t_lr"

    const-string v4, "_id"

    .line 356
    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_32

    const-string v3, "[Database] insert %s success."

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "t_lr"

    aput-object v6, v5, v0

    .line 358
    invoke-static {v3, v5}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 359
    iput-wide v1, p1, Lcom/tencent/bugly/proguard/q;->a:J
    :try_end_30
    .catchall {:try_start_6 .. :try_end_30} :catchall_36

    .line 360
    monitor-exit p0

    return v4

    .line 362
    :cond_32
    monitor-exit p0

    return v0

    .line 366
    :cond_34
    monitor-exit p0

    return v0

    :catchall_36
    move-exception p1

    .line 368
    :try_start_37
    invoke-static {p1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 369
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_42

    .line 371
    :cond_40
    monitor-exit p0

    return v0

    :catchall_42
    move-exception p1

    .line 374
    :try_start_43
    throw p1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_44

    :catchall_44
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(I)V
    .registers 6

    monitor-enter p0

    .line 519
    :try_start_1
    sget-object v0, Lcom/tencent/bugly/proguard/o;->b:Lcom/tencent/bugly/proguard/p;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/p;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_49

    if-eqz v0, :cond_47

    const/4 v1, 0x0

    if-ltz p1, :cond_1d

    .line 522
    :try_start_c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_tp = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1e

    :catchall_1b
    move-exception p1

    goto :goto_3a

    :cond_1d
    move-object p1, v1

    :goto_1e
    const-string v2, "t_lr"

    .line 523
    invoke-virtual {v0, v2, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const-string v0, "[Database] deleted %s data %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "t_lr"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 524
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_38
    .catchall {:try_start_c .. :try_end_38} :catchall_1b

    .line 530
    monitor-exit p0

    return-void

    .line 526
    :goto_3a
    :try_start_3a
    invoke-static {p1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 527
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_45

    .line 530
    :cond_43
    monitor-exit p0

    return-void

    :catchall_45
    move-exception p1

    .line 531
    :try_start_46
    throw p1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_49

    .line 535
    :cond_47
    monitor-exit p0

    return-void

    :catchall_49
    move-exception p1

    monitor-exit p0

    throw p1
.end method
