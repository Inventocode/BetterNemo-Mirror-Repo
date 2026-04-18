.class public Lcom/sensorsdata/analytics/android/sdk/data/OldBDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "OldBDatabaseHelper.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 30
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method getAllEvents(Landroid/database/sqlite/SQLiteDatabase;Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$QueryEventsListener;)V
    .registers 10

    const-string v0, "created_at"

    const/4 v1, 0x0

    .line 46
    :try_start_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "SELECT * FROM %s ORDER BY %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "events"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    .line 47
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 48
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 49
    :goto_1f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    const-string v2, "data"

    .line 50
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 51
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 52
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$QueryEventsListener;->insert(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 54
    :cond_3b
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3e} :catch_47
    .catchall {:try_start_3 .. :try_end_3e} :catchall_45

    .line 58
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 59
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    goto :goto_53

    :catchall_45
    move-exception p2

    goto :goto_57

    :catch_47
    move-exception p2

    .line 56
    :try_start_48
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_45

    .line 58
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 59
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    if-eqz v1, :cond_56

    .line 61
    :goto_53
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_56
    return-void

    .line 58
    :goto_57
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 59
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    if-eqz v1, :cond_62

    .line 61
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 63
    :cond_62
    throw p2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    return-void
.end method
