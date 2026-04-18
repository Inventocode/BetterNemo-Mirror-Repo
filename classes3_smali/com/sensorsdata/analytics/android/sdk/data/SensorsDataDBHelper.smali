.class Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SensorsDataDBHelper.java"


# static fields
.field private static final CHANNEL_EVENT_PERSISTENT_TABLE:Ljava/lang/String;

.field private static final CREATE_EVENTS_TABLE:Ljava/lang/String;

.field private static final EVENTS_TIME_INDEX:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SA.SQLiteOpenHelper"


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "events"

    aput-object v2, v0, v1

    const-string v3, "data"

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const/4 v3, 0x2

    const-string v5, "created_at"

    aput-object v5, v0, v3

    const-string v6, "is_instant_event"

    const/4 v7, 0x3

    aput-object v6, v0, v7

    const-string v6, "CREATE TABLE IF NOT EXISTS %s (_id INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT NOT NULL, %s INTEGER NOT NULL, %s INTEGER NOT NULL DEFAULT 0);"

    .line 30
    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataDBHelper;->CREATE_EVENTS_TABLE:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v2, v0, v1

    aput-object v5, v0, v4

    const-string v2, "CREATE INDEX IF NOT EXISTS time_idx ON %s (%s);"

    .line 32
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataDBHelper;->EVENTS_TIME_INDEX:Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/Object;

    const-string v2, "t_channel"

    aput-object v2, v0, v1

    const-string v1, "event_name"

    aput-object v1, v0, v4

    const-string v1, "result"

    aput-object v1, v0, v3

    const-string v1, "CREATE TABLE IF NOT EXISTS %s (%s TEXT PRIMARY KEY, %s INTEGER)"

    .line 33
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataDBHelper;->CHANNEL_EVENT_PERSISTENT_TABLE:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "sensorsdata"

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 37
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private checkColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 90
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " LIMIT 0"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 92
    invoke-interface {v0, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_22} :catch_3a
    .catchall {:try_start_2 .. :try_end_22} :catchall_38

    const/4 p2, -0x1

    if-eq p1, p2, :cond_27

    const/4 p1, 0x1

    const/4 v1, 0x1

    :cond_27
    if-eqz v0, :cond_49

    .line 97
    :try_start_29
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_49

    .line 98
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_32} :catch_33

    goto :goto_49

    :catch_33
    move-exception p1

    .line 101
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_49

    :catchall_38
    move-exception p1

    goto :goto_4a

    :catch_3a
    move-exception p1

    .line 94
    :try_start_3b
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_38

    if-eqz v0, :cond_49

    .line 97
    :try_start_40
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_49

    .line 98
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_49} :catch_33

    :cond_49
    :goto_49
    return v1

    :goto_4a
    if-eqz v0, :cond_5a

    .line 97
    :try_start_4c
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result p2

    if-nez p2, :cond_5a

    .line 98
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_55} :catch_56

    goto :goto_5a

    :catch_56
    move-exception p2

    .line 101
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 103
    :cond_5a
    :goto_5a
    throw p1
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 67
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataDBHelper;->CREATE_EVENTS_TABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataDBHelper;->EVENTS_TIME_INDEX:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataDBHelper;->CHANNEL_EVENT_PERSISTENT_TABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    const-string v0, "SA.SQLiteOpenHelper"

    const-string v1, "Creating a new Sensors Analytics DB"

    .line 42
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 8

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upgrading app, replacing Sensors Analytics DB, oldVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", newVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "SA.SQLiteOpenHelper"

    invoke-static {v0, p3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "events"

    const/4 v0, 0x4

    if-ge p2, v0, :cond_32

    :try_start_23
    const-string v1, "DROP TABLE IF EXISTS %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    .line 51
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 53
    :cond_32
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    if-lt p2, v0, :cond_4c

    const/4 v0, 0x5

    if-gt p2, v0, :cond_4c

    const-string p2, "is_instant_event"

    .line 56
    invoke-direct {p0, p1, p3, p2}, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataDBHelper;->checkColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4c

    const-string p2, "ALTER TABLE events ADD COLUMN  is_instant_event INTEGER NOT NULL DEFAULT 0"

    .line 58
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_47} :catch_48

    goto :goto_4c

    :catch_48
    move-exception p1

    .line 62
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_4c
    :goto_4c
    return-void
.end method
