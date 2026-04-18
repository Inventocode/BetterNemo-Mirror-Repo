.class Lcom/codemao/toolssdk/audiocache/sourcestorage/DatabaseSourceInfoStorage;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseSourceInfoStorage.java"

# interfaces
.implements Lcom/codemao/toolssdk/audiocache/sourcestorage/SourceInfoStorage;


# static fields
.field private static final ALL_COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "_id"

    const-string v1, "url"

    const-string v2, "length"

    const-string v3, "mime"

    .line 26
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/codemao/toolssdk/audiocache/sourcestorage/DatabaseSourceInfoStorage;->ALL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "AndroidVideoCache.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 36
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 37
    invoke-static {p1}, Lcom/codemao/toolssdk/audiocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private convert(Lcom/codemao/toolssdk/audiocache/SourceInfo;)Landroid/content/ContentValues;
    .registers 5

    .line 92
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 93
    iget-object v1, p1, Lcom/codemao/toolssdk/audiocache/SourceInfo;->url:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-wide v1, p1, Lcom/codemao/toolssdk/audiocache/SourceInfo;->length:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "length"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 95
    iget-object p1, p1, Lcom/codemao/toolssdk/audiocache/SourceInfo;->mime:Ljava/lang/String;

    const-string v1, "mime"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private convert(Landroid/database/Cursor;)Lcom/codemao/toolssdk/audiocache/SourceInfo;
    .registers 7

    .line 84
    new-instance v0, Lcom/codemao/toolssdk/audiocache/SourceInfo;

    const-string v1, "url"

    .line 85
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "length"

    .line 86
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v4, "mime"

    .line 87
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/codemao/toolssdk/audiocache/SourceInfo;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/codemao/toolssdk/audiocache/SourceInfo;
    .registers 12

    .line 53
    invoke-static {p1}, Lcom/codemao/toolssdk/audiocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 56
    :try_start_4
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "SourceInfo"

    sget-object v3, Lcom/codemao/toolssdk/audiocache/sourcestorage/DatabaseSourceInfoStorage;->ALL_COLUMNS:[Ljava/lang/String;

    const-string v4, "url=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_31

    if-eqz p1, :cond_2b

    .line 57
    :try_start_1d
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_24

    goto :goto_2b

    :cond_24
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/audiocache/sourcestorage/DatabaseSourceInfoStorage;->convert(Landroid/database/Cursor;)Lcom/codemao/toolssdk/audiocache/SourceInfo;

    move-result-object v0
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_29

    goto :goto_2b

    :catchall_29
    move-exception v0

    goto :goto_35

    :cond_2b
    :goto_2b
    if-eqz p1, :cond_30

    .line 60
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_30
    return-object v0

    :catchall_31
    move-exception p1

    move-object v9, v0

    move-object v0, p1

    move-object p1, v9

    :goto_35
    if-eqz p1, :cond_3a

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 62
    :cond_3a
    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 42
    invoke-static {p1}, Lcom/codemao/toolssdk/audiocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CREATE TABLE SourceInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,url TEXT NOT NULL,mime TEXT,length INTEGER);"

    .line 43
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .line 48
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Should not be called. There is no any migration"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public put(Ljava/lang/String;Lcom/codemao/toolssdk/audiocache/SourceInfo;)V
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    .line 67
    invoke-static {v0}, Lcom/codemao/toolssdk/audiocache/Preconditions;->checkAllNotNull([Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/audiocache/sourcestorage/DatabaseSourceInfoStorage;->get(Ljava/lang/String;)Lcom/codemao/toolssdk/audiocache/SourceInfo;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 70
    :goto_15
    invoke-direct {p0, p2}, Lcom/codemao/toolssdk/audiocache/sourcestorage/DatabaseSourceInfoStorage;->convert(Lcom/codemao/toolssdk/audiocache/SourceInfo;)Landroid/content/ContentValues;

    move-result-object p2

    const-string v3, "SourceInfo"

    if-eqz v0, :cond_2b

    .line 72
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v1

    const-string p1, "url=?"

    invoke-virtual {v0, v3, p2, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_33

    .line 74
    :cond_2b
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v3, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :goto_33
    return-void
.end method

.method public release()V
    .registers 1

    .line 80
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void
.end method
