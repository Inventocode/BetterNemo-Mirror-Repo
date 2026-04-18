.class Lcom/umeng/analytics/pro/f;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "UMDBCreater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/f$a;
    }
.end annotation


# static fields
.field private static b:Landroid/content/Context;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 6

    .line 59
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p2, "ua.db"

    :cond_8
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/umeng/analytics/pro/f;->a:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/f;->a()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 7

    .line 55
    new-instance v0, Lcom/umeng/analytics/pro/c;

    invoke-direct {v0, p1, p2}, Lcom/umeng/analytics/pro/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3, p4, p5}, Lcom/umeng/analytics/pro/f;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILcom/umeng/analytics/pro/f$1;)V
    .registers 7

    .line 24
    invoke-direct/range {p0 .. p5}, Lcom/umeng/analytics/pro/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;
    .registers 2

    .line 39
    sget-object v0, Lcom/umeng/analytics/pro/f;->b:Landroid/content/Context;

    if-nez v0, :cond_a

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/pro/f;->b:Landroid/content/Context;

    .line 42
    :cond_a
    invoke-static {}, Lcom/umeng/analytics/pro/f$a;->a()Lcom/umeng/analytics/pro/f;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    :try_start_0
    const-string v0, "create table if not exists __er(id INTEGER primary key autoincrement, __i TEXT, __a TEXT, __t INTEGER, __av TEXT, __vc TEXT)"

    .line 110
    iput-object v0, p0, Lcom/umeng/analytics/pro/f;->a:Ljava/lang/String;

    .line 120
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 5

    .line 253
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 254
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_14} :catch_14

    :catch_14
    return-void
.end method

.method static synthetic b()Landroid/content/Context;
    .registers 1

    .line 24
    sget-object v0, Lcom/umeng/analytics/pro/f;->b:Landroid/content/Context;

    return-object v0
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    :try_start_0
    const-string v0, "create table if not exists __et(id INTEGER primary key autoincrement, __i TEXT, __e TEXT, __s TEXT, __t INTEGER, __av TEXT, __vc TEXT)"

    .line 130
    iput-object v0, p0, Lcom/umeng/analytics/pro/f;->a:Ljava/lang/String;

    .line 141
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    :try_start_0
    const-string v0, "create table if not exists __sd(id INTEGER primary key autoincrement, __ii TEXT unique, __a TEXT, __b TEXT, __c TEXT, __d TEXT, __e TEXT, __f TEXT, __g TEXT, __sp TEXT, __pp TEXT, __av TEXT, __vc TEXT)"

    .line 151
    iput-object v0, p0, Lcom/umeng/analytics/pro/f;->a:Ljava/lang/String;

    .line 168
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method

.method private d(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    :try_start_0
    const-string v0, "create table if not exists __is(id INTEGER primary key autoincrement, __ii TEXT unique, __e TEXT, __sp TEXT, __pp TEXT, __av TEXT, __vc TEXT)"

    .line 178
    iput-object v0, p0, Lcom/umeng/analytics/pro/f;->a:Ljava/lang/String;

    .line 186
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method

.method private e(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 7

    const-string v0, "__sd"

    const-string v1, "__av"

    .line 218
    invoke-static {p1, v0, v1}, Lcom/umeng/analytics/pro/h;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "__vc"

    const-string v4, "TEXT"

    if-nez v2, :cond_1e

    const-string v2, "__sp"

    .line 220
    invoke-static {p1, v0, v2, v4}, Lcom/umeng/analytics/pro/h;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "__pp"

    .line 221
    invoke-static {p1, v0, v2, v4}, Lcom/umeng/analytics/pro/h;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-static {p1, v0, v1, v4}, Lcom/umeng/analytics/pro/h;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-static {p1, v0, v3, v4}, Lcom/umeng/analytics/pro/h;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    const-string v0, "__et"

    .line 226
    invoke-static {p1, v0, v1}, Lcom/umeng/analytics/pro/h;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 228
    invoke-static {p1, v0, v1, v4}, Lcom/umeng/analytics/pro/h;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-static {p1, v0, v3, v4}, Lcom/umeng/analytics/pro/h;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    const-string v0, "__er"

    .line 232
    invoke-static {p1, v0, v1}, Lcom/umeng/analytics/pro/h;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 234
    invoke-static {p1, v0, v1, v4}, Lcom/umeng/analytics/pro/h;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-static {p1, v0, v3, v4}, Lcom/umeng/analytics/pro/h;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    return-void
.end method

.method private f(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string v0, "__sd"

    .line 242
    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "__et"

    .line 243
    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "__er"

    .line 244
    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/f;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 67
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "__sd"

    .line 68
    invoke-static {v1, v0}, Lcom/umeng/analytics/pro/h;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 69
    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/f;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_f
    const-string v1, "__is"

    .line 71
    invoke-static {v1, v0}, Lcom/umeng/analytics/pro/h;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 72
    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/f;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1a
    const-string v1, "__et"

    .line 74
    invoke-static {v1, v0}, Lcom/umeng/analytics/pro/h;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 75
    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/f;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_25
    const-string v1, "__er"

    .line 77
    invoke-static {v1, v0}, Lcom/umeng/analytics/pro/h;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 78
    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_30

    :catch_30
    :cond_30
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 89
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 90
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/f;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 91
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/f;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 92
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/f;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 93
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 94
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_12} :catch_19
    .catchall {:try_start_0 .. :try_end_12} :catchall_16

    .line 102
    :goto_12
    :try_start_12
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_21

    goto :goto_21

    :catchall_16
    if-eqz p1, :cond_21

    goto :goto_12

    .line 97
    :catch_19
    :try_start_19
    sget-object v0, Lcom/umeng/analytics/pro/f;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_22

    if-eqz p1, :cond_21

    goto :goto_12

    :catchall_21
    :cond_21
    :goto_21
    return-void

    :catchall_22
    move-exception v0

    if-eqz p1, :cond_28

    .line 102
    :try_start_25
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_28

    .line 104
    :catchall_28
    :cond_28
    throw v0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    if-le p3, p2, :cond_10

    const/4 p3, 0x1

    if-ne p2, p3, :cond_10

    .line 202
    :try_start_5
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/f;->e(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_10

    .line 205
    :catch_9
    :try_start_9
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/f;->e(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_10

    .line 208
    :catch_d
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/f;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_10
    :goto_10
    return-void
.end method
