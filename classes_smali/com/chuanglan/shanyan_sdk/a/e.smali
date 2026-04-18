.class public Lcom/chuanglan/shanyan_sdk/a/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/chuanglan/shanyan_sdk/a/f;

.field private b:J

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/chuanglan/shanyan_sdk/a/f;->a(Landroid/content/Context;)Lcom/chuanglan/shanyan_sdk/a/f;

    move-result-object p1

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/a/e;->a:Lcom/chuanglan/shanyan_sdk/a/f;

    return-void
.end method

.method private declared-synchronized a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    monitor-enter p0

    if-eqz p1, :cond_10

    :try_start_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_9
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    goto :goto_10

    :catchall_7
    move-exception p1

    goto :goto_e

    :catch_9
    move-exception p1

    :try_start_a
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_7

    goto :goto_10

    :goto_e
    monitor-exit p0

    throw p1

    :cond_10
    :goto_10
    monitor-exit p0

    return-void
.end method

.method private a(Lcom/chuanglan/shanyan_sdk/tool/c;JJILandroid/database/sqlite/SQLiteDatabase;)V
    .registers 14

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "count"

    iget v2, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->v:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "costTime"

    iget-wide v4, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->o:J

    add-long/2addr v4, p2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "stepTime"

    iget-wide v1, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->p:J

    add-long/2addr v1, p4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "report_behavior"

    const-string p2, "id=?"

    new-array p3, v3, [Ljava/lang/String;

    const/4 p4, 0x0

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    aput-object p5, p3, p4

    invoke-virtual {p7, p1, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_47} :catch_48

    goto :goto_4c

    :catch_48
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4c
    return-void
.end method

.method private a(Ljava/lang/String;JJLandroid/database/sqlite/SQLiteDatabase;)V
    .registers 19

    move-object v9, p0

    const/4 v1, 0x0

    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select * from report_behavior where sid = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v8, p6

    invoke-virtual {v8, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_27} :catch_181
    .catchall {:try_start_2 .. :try_end_27} :catchall_17e

    :try_start_27
    invoke-interface {v10}, Landroid/database/Cursor;->moveToLast()Z

    move-result v1

    const/4 v11, 0x0

    if-eqz v1, :cond_156

    new-instance v1, Lcom/chuanglan/shanyan_sdk/tool/c;

    invoke-direct {v1}, Lcom/chuanglan/shanyan_sdk/tool/c;-><init>()V

    const-string v2, "DID"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/c;->a:Ljava/lang/String;

    const-string v2, "telcom"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/c;->b:Ljava/lang/String;

    const-string v2, "sdkMode"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/c;->c:Ljava/lang/String;

    const-string v2, "osVersion"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/c;->d:Ljava/lang/String;

    const-string v2, "romVersion"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/c;->e:Ljava/lang/String;

    const-string v2, "sdkVersion"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/c;->f:Ljava/lang/String;

    const-string v2, "uuid"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/c;->g:Ljava/lang/String;

    const-string v2, "ip"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/c;->h:Ljava/lang/String;

    const-string v2, "network"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/c;->i:Ljava/lang/String;

    const-string v2, "dbm"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/c;->j:Ljava/lang/String;

    const-string v2, "wifidbm"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/c;->k:Ljava/lang/String;

    const-string v2, "processName"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/c;->l:Ljava/lang/String;

    const-string v2, "method"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/c;->m:Ljava/lang/String;

    const-string v2, "beginTime"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/c;->n:Ljava/lang/String;

    const-string v2, "costTime"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/chuanglan/shanyan_sdk/tool/c;->o:J

    const-string v2, "stepTime"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/chuanglan/shanyan_sdk/tool/c;->p:J

    const-string v2, "status"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/c;->q:Ljava/lang/String;

    const-string v2, "resCode"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/c;->r:Ljava/lang/String;

    const-string v2, "resDesc"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/c;->s:Ljava/lang/String;

    const-string v2, "innerCode"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/c;->t:Ljava/lang/String;

    const-string v2, "innerDesc"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/c;->u:Ljava/lang/String;

    const-string v2, "count"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/chuanglan/shanyan_sdk/tool/c;->v:I

    const-string v2, "sid"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/c;->w:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move v7, v1

    goto :goto_157

    :cond_156
    const/4 v7, 0x0

    :goto_157
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_170

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/chuanglan/shanyan_sdk/tool/c;

    move-object v1, p0

    move-wide v3, p2

    move-wide/from16 v5, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/chuanglan/shanyan_sdk/a/e;->a(Lcom/chuanglan/shanyan_sdk/tool/c;JJILandroid/database/sqlite/SQLiteDatabase;)V

    iput-boolean v11, v9, Lcom/chuanglan/shanyan_sdk/a/e;->c:Z

    goto :goto_173

    :cond_170
    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/chuanglan/shanyan_sdk/a/e;->c:Z
    :try_end_173
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_173} :catch_17b
    .catchall {:try_start_27 .. :try_end_173} :catchall_177

    :goto_173
    :try_start_173
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_176
    .catch Ljava/lang/Exception; {:try_start_173 .. :try_end_176} :catch_18b

    goto :goto_190

    :catchall_177
    move-exception v0

    move-object v2, v0

    move-object v1, v10

    goto :goto_191

    :catch_17b
    move-exception v0

    move-object v1, v10

    goto :goto_182

    :catchall_17e
    move-exception v0

    move-object v2, v0

    goto :goto_191

    :catch_181
    move-exception v0

    :goto_182
    :try_start_182
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_185
    .catchall {:try_start_182 .. :try_end_185} :catchall_17e

    if-eqz v1, :cond_190

    :try_start_187
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_187 .. :try_end_18a} :catch_18b

    goto :goto_190

    :catch_18b
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_190
    :goto_190
    return-void

    :goto_191
    if-eqz v1, :cond_19c

    :try_start_193
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_196
    .catch Ljava/lang/Exception; {:try_start_193 .. :try_end_196} :catch_197

    goto :goto_19c

    :catch_197
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_19c
    :goto_19c
    throw v2
.end method

.method private declared-synchronized d()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/a/e;->a:Lcom/chuanglan/shanyan_sdk/a/f;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/a/f;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/chuanglan/shanyan_sdk/tool/d;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/a/e;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_af
    .catchall {:try_start_1 .. :try_end_5} :catchall_aa

    :try_start_5
    const-string v8, "DID ASC"

    const-string v2, "report_device"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v1, v10

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_14} :catch_a7
    .catchall {:try_start_5 .. :try_end_14} :catchall_a2

    :try_start_14
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_19
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_94

    new-instance v3, Lcom/chuanglan/shanyan_sdk/tool/d;

    invoke-direct {v3}, Lcom/chuanglan/shanyan_sdk/tool/d;-><init>()V

    const-string v4, "DID"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/chuanglan/shanyan_sdk/tool/d;->a:Ljava/lang/String;

    const-string v4, "IMEI"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/chuanglan/shanyan_sdk/tool/d;->b:Ljava/lang/String;

    const-string v4, "IMSI"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/chuanglan/shanyan_sdk/tool/d;->c:Ljava/lang/String;

    const-string v4, "ICCID"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/chuanglan/shanyan_sdk/tool/d;->d:Ljava/lang/String;

    const-string v4, "MAC"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/chuanglan/shanyan_sdk/tool/d;->e:Ljava/lang/String;

    const-string v4, "appPlatform"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/chuanglan/shanyan_sdk/tool/d;->f:Ljava/lang/String;

    const-string v4, "device"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/chuanglan/shanyan_sdk/tool/d;->g:Ljava/lang/String;

    const-string v4, "deviceName"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/chuanglan/shanyan_sdk/tool/d;->h:Ljava/lang/String;

    const-string v4, "oaid"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/chuanglan/shanyan_sdk/tool/d;->i:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_93} :catch_a0
    .catchall {:try_start_14 .. :try_end_93} :catchall_c3

    goto :goto_19

    :cond_94
    :try_start_94
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_97} :catch_98

    goto :goto_9c

    :catch_98
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_9c
    invoke-direct {p0, v10}, Lcom/chuanglan/shanyan_sdk/a/e;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v2

    :catch_a0
    move-exception v2

    goto :goto_b2

    :catchall_a2
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_c4

    :catch_a7
    move-exception v2

    move-object v1, v0

    goto :goto_b2

    :catchall_aa
    move-exception v1

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_c4

    :catch_af
    move-exception v2

    move-object v1, v0

    move-object v10, v1

    :goto_b2
    :try_start_b2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_c3

    if-eqz v1, :cond_bf

    :try_start_b7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_ba} :catch_bb

    goto :goto_bf

    :catch_bb
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_bf
    :goto_bf
    invoke-direct {p0, v10}, Lcom/chuanglan/shanyan_sdk/a/e;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v0

    :catchall_c3
    move-exception v0

    :goto_c4
    if-eqz v1, :cond_ce

    :try_start_c6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_c9} :catch_ca

    goto :goto_ce

    :catch_ca
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_ce
    :goto_ce
    invoke-direct {p0, v10}, Lcom/chuanglan/shanyan_sdk/a/e;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/chuanglan/shanyan_sdk/tool/c;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/a/e;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_165
    .catchall {:try_start_1 .. :try_end_5} :catchall_160

    :try_start_5
    const-string v8, "id ASC"

    const-string v2, "report_behavior"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v10

    move-object v9, p1

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_14} :catch_15d
    .catchall {:try_start_5 .. :try_end_14} :catchall_158

    :try_start_14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_19
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_14a

    new-instance v2, Lcom/chuanglan/shanyan_sdk/tool/c;

    invoke-direct {v2}, Lcom/chuanglan/shanyan_sdk/tool/c;-><init>()V

    const-string v3, "DID"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->a:Ljava/lang/String;

    const-string v3, "telcom"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->b:Ljava/lang/String;

    const-string v3, "sdkMode"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->c:Ljava/lang/String;

    const-string v3, "osVersion"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->d:Ljava/lang/String;

    const-string v3, "romVersion"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->e:Ljava/lang/String;

    const-string v3, "sdkVersion"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->f:Ljava/lang/String;

    const-string v3, "uuid"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->g:Ljava/lang/String;

    const-string v3, "ip"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->h:Ljava/lang/String;

    const-string v3, "network"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->i:Ljava/lang/String;

    const-string v3, "dbm"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->j:Ljava/lang/String;

    const-string v3, "wifidbm"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->k:Ljava/lang/String;

    const-string v3, "processName"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->l:Ljava/lang/String;

    const-string v3, "method"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->m:Ljava/lang/String;

    const-string v3, "beginTime"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->n:Ljava/lang/String;

    const-string v3, "costTime"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->o:J

    const-string v3, "stepTime"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->p:J

    const-string v3, "status"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->q:Ljava/lang/String;

    const-string v3, "resCode"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->r:Ljava/lang/String;

    const-string v3, "resDesc"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->s:Ljava/lang/String;

    const-string v3, "innerCode"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->t:Ljava/lang/String;

    const-string v3, "innerDesc"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->u:Ljava/lang/String;

    const-string v3, "count"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->v:I

    const-string v3, "sid"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->w:Ljava/lang/String;

    const-string v3, "id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/chuanglan/shanyan_sdk/a/e;->b:J

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_148} :catch_156
    .catchall {:try_start_14 .. :try_end_148} :catchall_179

    goto/16 :goto_19

    :cond_14a
    :try_start_14a
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_14d
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_14d} :catch_14e

    goto :goto_152

    :catch_14e
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_152
    invoke-direct {p0, v10}, Lcom/chuanglan/shanyan_sdk/a/e;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v1

    :catch_156
    move-exception v1

    goto :goto_168

    :catchall_158
    move-exception p1

    move-object v11, v0

    move-object v0, p1

    move-object p1, v11

    goto :goto_17a

    :catch_15d
    move-exception v1

    move-object p1, v0

    goto :goto_168

    :catchall_160
    move-exception p1

    move-object v10, v0

    move-object v0, p1

    move-object p1, v10

    goto :goto_17a

    :catch_165
    move-exception v1

    move-object p1, v0

    move-object v10, p1

    :goto_168
    :try_start_168
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_16b
    .catchall {:try_start_168 .. :try_end_16b} :catchall_179

    if-eqz p1, :cond_175

    :try_start_16d
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_170
    .catch Ljava/lang/Exception; {:try_start_16d .. :try_end_170} :catch_171

    goto :goto_175

    :catch_171
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_175
    :goto_175
    invoke-direct {p0, v10}, Lcom/chuanglan/shanyan_sdk/a/e;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v0

    :catchall_179
    move-exception v0

    :goto_17a
    if-eqz p1, :cond_184

    :try_start_17c
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_17f
    .catch Ljava/lang/Exception; {:try_start_17c .. :try_end_17f} :catch_180

    goto :goto_184

    :catch_180
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_184
    :goto_184
    invoke-direct {p0, v10}, Lcom/chuanglan/shanyan_sdk/a/e;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
.end method

.method public a(J)V
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/a/e;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "report_behavior"

    const-string v2, "id <= ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_19
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_1d

    :catchall_17
    move-exception p1

    goto :goto_21

    :catch_19
    move-exception p1

    :try_start_1a
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_17

    :goto_1d
    invoke-direct {p0, v0}, Lcom/chuanglan/shanyan_sdk/a/e;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :goto_21
    invoke-direct {p0, v0}, Lcom/chuanglan/shanyan_sdk/a/e;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1
.end method

.method public a(Lcom/chuanglan/shanyan_sdk/tool/c;Z)V
    .registers 13

    const/4 v0, 0x0

    if-eqz p1, :cond_e4

    :try_start_3
    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/a/e;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_db
    .catchall {:try_start_3 .. :try_end_7} :catchall_d9

    const/4 v9, 0x1

    :try_start_8
    iput-boolean v9, p0, Lcom/chuanglan/shanyan_sdk/a/e;->c:Z

    if-eqz p2, :cond_16

    iget-object v2, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->w:Ljava/lang/String;

    iget-wide v5, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->o:J

    move-object v1, p0

    move-wide v3, v5

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/chuanglan/shanyan_sdk/a/e;->a(Ljava/lang/String;JJLandroid/database/sqlite/SQLiteDatabase;)V

    :cond_16
    iget-boolean v1, p0, Lcom/chuanglan/shanyan_sdk/a/e;->c:Z

    if-nez v1, :cond_1c

    if-nez p2, :cond_d1

    :cond_1c
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "DID"

    iget-object v2, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->a:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "telcom"

    iget-object v2, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->b:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sdkMode"

    iget-object v2, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->c:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "osVersion"

    iget-object v2, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->d:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "romVersion"

    iget-object v2, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->e:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sdkVersion"

    iget-object v2, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->f:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "uuid"

    iget-object v2, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->g:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ip"

    iget-object v2, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->h:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "network"

    iget-object v2, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->i:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dbm"

    iget-object v2, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->j:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "wifidbm"

    iget-object v2, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->k:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "processName"

    iget-object v2, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->l:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "method"

    iget-object v2, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->m:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "beginTime"

    iget-object v2, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->n:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "costTime"

    iget-wide v2, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->o:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "stepTime"

    iget-wide v2, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->p:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "status"

    iget-object v2, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->q:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "resCode"

    iget-object v2, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->r:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "resDesc"

    iget-object v2, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->s:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "innerCode"

    iget-object v2, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->t:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "innerDesc"

    iget-object v2, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->u:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "count"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "sid"

    iget-object p1, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->w:Ljava/lang/String;

    invoke-virtual {p2, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "report_behavior"

    invoke-virtual {v8, p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d1} :catch_d6
    .catchall {:try_start_8 .. :try_end_d1} :catchall_d3

    :cond_d1
    move-object v0, v8

    goto :goto_e4

    :catchall_d3
    move-exception p1

    move-object v0, v8

    goto :goto_e0

    :catch_d6
    move-exception p1

    move-object v0, v8

    goto :goto_dc

    :catchall_d9
    move-exception p1

    goto :goto_e0

    :catch_db
    move-exception p1

    :goto_dc
    :try_start_dc
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_df
    .catchall {:try_start_dc .. :try_end_df} :catchall_d9

    goto :goto_e4

    :goto_e0
    invoke-direct {p0, v0}, Lcom/chuanglan/shanyan_sdk/a/e;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1

    :cond_e4
    :goto_e4
    invoke-direct {p0, v0}, Lcom/chuanglan/shanyan_sdk/a/e;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public a(Lcom/chuanglan/shanyan_sdk/tool/d;)V
    .registers 15

    const-string v0, "DID"

    const/4 v1, 0x0

    if-eqz p1, :cond_99

    :try_start_5
    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/a/e;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_7e
    .catchall {:try_start_5 .. :try_end_9} :catchall_7b

    :try_start_9
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    iget-object v2, p1, Lcom/chuanglan/shanyan_sdk/tool/d;->a:Ljava/lang/String;

    invoke-virtual {v12, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "IMEI"

    iget-object v3, p1, Lcom/chuanglan/shanyan_sdk/tool/d;->b:Ljava/lang/String;

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "IMSI"

    iget-object v3, p1, Lcom/chuanglan/shanyan_sdk/tool/d;->c:Ljava/lang/String;

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ICCID"

    iget-object v3, p1, Lcom/chuanglan/shanyan_sdk/tool/d;->d:Ljava/lang/String;

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MAC"

    iget-object v3, p1, Lcom/chuanglan/shanyan_sdk/tool/d;->e:Ljava/lang/String;

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "appPlatform"

    iget-object v3, p1, Lcom/chuanglan/shanyan_sdk/tool/d;->f:Ljava/lang/String;

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "device"

    iget-object v3, p1, Lcom/chuanglan/shanyan_sdk/tool/d;->g:Ljava/lang/String;

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "deviceName"

    iget-object v3, p1, Lcom/chuanglan/shanyan_sdk/tool/d;->h:Ljava/lang/String;

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "oaid"

    iget-object v3, p1, Lcom/chuanglan/shanyan_sdk/tool/d;->i:Ljava/lang/String;

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "report_device"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "DID = ?"

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object p1, p1, Lcom/chuanglan/shanyan_sdk/tool/d;->a:Ljava/lang/String;

    aput-object p1, v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v11

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_64} :catch_79
    .catchall {:try_start_9 .. :try_end_64} :catchall_77

    :try_start_64
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_6f

    const-string v0, "report_device"

    invoke-virtual {v11, v0, v1, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_6f} :catch_74
    .catchall {:try_start_64 .. :try_end_6f} :catchall_71

    :cond_6f
    move-object v1, p1

    goto :goto_9a

    :catchall_71
    move-exception v0

    move-object v1, p1

    goto :goto_8b

    :catch_74
    move-exception v0

    move-object v1, p1

    goto :goto_80

    :catchall_77
    move-exception v0

    goto :goto_8b

    :catch_79
    move-exception v0

    goto :goto_80

    :catchall_7b
    move-exception v0

    move-object v11, v1

    goto :goto_8b

    :catch_7e
    move-exception v0

    move-object v11, v1

    :goto_80
    :try_start_80
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_77

    if-eqz v1, :cond_a4

    :try_start_85
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_88} :catch_89

    goto :goto_a4

    :catch_89
    move-exception p1

    goto :goto_a1

    :goto_8b
    if-eqz v1, :cond_95

    :try_start_8d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_90} :catch_91

    goto :goto_95

    :catch_91
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_95
    :goto_95
    invoke-direct {p0, v11}, Lcom/chuanglan/shanyan_sdk/a/e;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    :cond_99
    move-object v11, v1

    :goto_9a
    if-eqz v1, :cond_a4

    :try_start_9c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_9f} :catch_a0

    goto :goto_a4

    :catch_a0
    move-exception p1

    :goto_a1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a4
    :goto_a4
    invoke-direct {p0, v11}, Lcom/chuanglan/shanyan_sdk/a/e;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public a(I)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/a/e;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6} :catch_2c
    .catchall {:try_start_2 .. :try_end_6} :catchall_29

    :try_start_6
    const-string v3, "select count(*) from report_behavior"

    invoke-virtual {v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_27
    .catchall {:try_start_6 .. :try_end_13} :catchall_25

    int-to-long v5, p1

    cmp-long p1, v3, v5

    if-lez p1, :cond_19

    const/4 v0, 0x1

    :cond_19
    :try_start_19
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_21
    invoke-direct {p0, v2}, Lcom/chuanglan/shanyan_sdk/a/e;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return v0

    :catchall_25
    move-exception p1

    goto :goto_3f

    :catch_27
    move-exception p1

    goto :goto_2e

    :catchall_29
    move-exception p1

    move-object v2, v1

    goto :goto_3f

    :catch_2c
    move-exception p1

    move-object v2, v1

    :goto_2e
    :try_start_2e
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_25

    if-eqz v1, :cond_3b

    :try_start_33
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_3b

    :catch_37
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3b
    :goto_3b
    invoke-direct {p0, v2}, Lcom/chuanglan/shanyan_sdk/a/e;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return v0

    :goto_3f
    if-eqz v1, :cond_49

    :try_start_41
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_49

    :catch_45
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_49
    :goto_49
    invoke-direct {p0, v2}, Lcom/chuanglan/shanyan_sdk/a/e;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1
.end method

.method public b()J
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/a/e;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_26
    .catchall {:try_start_1 .. :try_end_5} :catchall_23

    :try_start_5
    const-string v2, "select count(*) from report_behavior"

    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_13} :catch_21
    .catchall {:try_start_5 .. :try_end_13} :catchall_1f

    :try_start_13
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1b
    invoke-direct {p0, v1}, Lcom/chuanglan/shanyan_sdk/a/e;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-wide v2

    :catchall_1f
    move-exception v2

    goto :goto_3b

    :catch_21
    move-exception v2

    goto :goto_28

    :catchall_23
    move-exception v2

    move-object v1, v0

    goto :goto_3b

    :catch_26
    move-exception v2

    move-object v1, v0

    :goto_28
    :try_start_28
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_1f

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_37

    :try_start_2f
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_37

    :catch_33
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_37
    :goto_37
    invoke-direct {p0, v1}, Lcom/chuanglan/shanyan_sdk/a/e;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-wide v2

    :goto_3b
    if-eqz v0, :cond_45

    :try_start_3d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_45

    :catch_41
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_45
    :goto_45
    invoke-direct {p0, v1}, Lcom/chuanglan/shanyan_sdk/a/e;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
.end method

.method public c()J
    .registers 3

    iget-wide v0, p0, Lcom/chuanglan/shanyan_sdk/a/e;->b:J

    return-wide v0
.end method
