.class public Lcom/tencent/smtt/sdk/j;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field static b:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/tencent/smtt/sdk/CookieManager;->LOGTAG:Ljava/lang/String;

    sput-object v0, Lcom/tencent/smtt/sdk/j;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .registers 5

    sget-object v0, Lcom/tencent/smtt/sdk/j;->b:Ljava/io/File;

    const-string v1, "Cookies"

    if-nez v0, :cond_16

    if-eqz p0, :cond_16

    new-instance v0, Ljava/io/File;

    const/4 v2, 0x0

    const-string v3, "webview"

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/smtt/sdk/j;->b:Ljava/io/File;

    :cond_16
    sget-object v0, Lcom/tencent/smtt/sdk/j;->b:Ljava/io/File;

    if-nez v0, :cond_46

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "app_webview"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/smtt/sdk/j;->b:Ljava/io/File;

    :cond_46
    sget-object p0, Lcom/tencent/smtt/sdk/j;->b:Ljava/io/File;

    return-object p0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select * from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "raws:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",columns:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez p1, :cond_6a

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_6a

    :cond_4c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    :goto_50
    if-ge p1, v0, :cond_61

    :try_start_52
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_56} :catch_5e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :catch_5e
    add-int/lit8 p1, p1, 0x1

    goto :goto_50

    :cond_61
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_4c

    :cond_6a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "select * from sqlite_master where type=\'table\'"

    :try_start_b
    invoke-virtual {p0, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2a

    :cond_15
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v2}, Lcom/tencent/smtt/sdk/j;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_34

    if-nez v2, :cond_15

    :cond_2a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_43

    goto :goto_40

    :catchall_34
    nop

    if-eqz v0, :cond_3a

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3a
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_43

    :goto_40
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_43
    return-object v1
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/smtt/sdk/CookieManager$a;Ljava/lang/String;ZZ)V
    .registers 14

    const-string p4, ";"

    if-nez p0, :cond_5

    return-void

    :cond_5
    sget-object v0, Lcom/tencent/smtt/sdk/CookieManager$a;->b:Lcom/tencent/smtt/sdk/CookieManager$a;

    if-ne p1, v0, :cond_10

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    :cond_10
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_151

    array-length v0, p2

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1e

    goto/16 :goto_151

    :cond_1e
    invoke-static {p0}, Lcom/tencent/smtt/sdk/j;->c(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_25

    return-void

    :cond_25
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    :try_start_2b
    const-string v4, "select * from cookies"

    invoke-virtual {v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_af

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_af

    :cond_3d
    const-string v4, "host_key"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/tencent/smtt/sdk/CookieManager$a;->b:Lcom/tencent/smtt/sdk/CookieManager$a;

    if-ne p1, v5, :cond_60

    array-length v5, p2

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_4e
    if-ge v7, v5, :cond_5d

    aget-object v8, p2, v7

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5a

    const/4 v6, 0x1

    goto :goto_5d

    :cond_5a
    add-int/lit8 v7, v7, 0x1

    goto :goto_4e

    :cond_5d
    :goto_5d
    if-nez v6, :cond_60

    goto :goto_a9

    :cond_60
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "value"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "name"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "expires_utc"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "priority"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a9
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_ad
    .catchall {:try_start_2b .. :try_end_ad} :catchall_bc

    if-nez v4, :cond_3d

    :cond_af
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_e3

    :goto_b8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_e3

    :catchall_bc
    move-exception p1

    :try_start_bd
    sget-object p2, Lcom/tencent/smtt/sdk/j;->a:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCookieDBVersion exception:"

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d7
    .catchall {:try_start_bd .. :try_end_d7} :catchall_141

    if-eqz v3, :cond_dc

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_dc
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_e3

    goto :goto_b8

    :cond_e3
    :goto_e3
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_ea

    return-void

    :cond_ea
    invoke-static {p0}, Lcom/tencent/smtt/sdk/j;->b(Landroid/content/Context;)Z

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_115

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {}, Lcom/tencent/smtt/sdk/CookieManager;->getInstance()Lcom/tencent/smtt/sdk/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p4, p2, v1}, Lcom/tencent/smtt/sdk/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_f5

    :cond_115
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_123

    invoke-static {}, Lcom/tencent/smtt/sdk/CookieManager;->getInstance()Lcom/tencent/smtt/sdk/CookieManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/CookieManager;->flush()V

    goto :goto_12a

    :cond_123
    invoke-static {}, Lcom/tencent/smtt/sdk/CookieSyncManager;->getInstance()Lcom/tencent/smtt/sdk/CookieSyncManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/CookieSyncManager;->sync()V

    :goto_12a
    if-eqz p3, :cond_140

    invoke-static {p0}, Lcom/tencent/smtt/sdk/j;->c(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/smtt/sdk/j;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/tencent/smtt/sdk/j;->d(Landroid/content/Context;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_140

    invoke-static {}, Lcom/tencent/smtt/sdk/CookieManager;->getInstance()Lcom/tencent/smtt/sdk/CookieManager;

    invoke-static {p0, p1}, Lcom/tencent/smtt/sdk/CookieManager;->setROMCookieDBVersion(Landroid/content/Context;I)V

    :cond_140
    return-void

    :catchall_141
    move-exception p0

    if-eqz v3, :cond_147

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_147
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_150

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_150
    throw p0

    :cond_151
    :goto_151
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 2

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-static {p0}, Lcom/tencent/smtt/sdk/j;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/io/File;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public static c(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-static {p0}, Lcom/tencent/smtt/sdk/j;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_b

    return-object v0

    :cond_b
    :try_start_b
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    nop

    :goto_16
    if-nez v0, :cond_1f

    sget-object p0, Lcom/tencent/smtt/sdk/j;->a:Ljava/lang/String;

    const-string v1, "dbPath is not exist!"

    invoke-static {p0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    return-object v0
.end method

.method public static d(Landroid/content/Context;)I
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_5
    invoke-static {p0}, Lcom/tencent/smtt/sdk/j;->c(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_58

    if-nez p0, :cond_18

    const/4 v0, -0x1

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_17
    return v0

    :cond_18
    :try_start_18
    const-string v2, "select * from meta"

    invoke-virtual {p0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I

    if-lez v2, :cond_49

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_49

    :cond_2d
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "version"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_49

    :cond_43
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_47
    .catchall {:try_start_18 .. :try_end_47} :catchall_56

    if-nez v2, :cond_2d

    :cond_49
    :goto_49
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_67

    :goto_52
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_67

    :catchall_56
    nop

    goto :goto_59

    :catchall_58
    move-object p0, v1

    :goto_59
    if-eqz v1, :cond_5e

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5e
    if-eqz p0, :cond_67

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_67

    goto :goto_52

    :cond_67
    :goto_67
    return v0
.end method
