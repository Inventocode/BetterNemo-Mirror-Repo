.class Lcom/chuanglan/shanyan_sdk/a/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# instance fields
.field private a:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;IZ)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    if-eqz p5, :cond_7

    const/4 p1, 0x0

    goto :goto_f

    :cond_7
    invoke-static {}, Lcom/chuanglan/shanyan_sdk/a/c;->a()Ljava/io/File;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/chuanglan/shanyan_sdk/a/c;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    :goto_f
    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/a/a;->a:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/a/a;->a:Ljava/io/File;

    if-nez v0, :cond_9

    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_e

    :cond_9
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :goto_e
    invoke-virtual {p0, v0}, Lcom/chuanglan/shanyan_sdk/a/a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v0
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/a/a;->a:Ljava/io/File;

    if-nez v0, :cond_9

    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_e

    :cond_9
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :goto_e
    invoke-virtual {p0, v0}, Lcom/chuanglan/shanyan_sdk/a/a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    return-void
.end method
