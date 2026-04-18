.class public abstract Lcom/tencent/bugly/a;
.super Ljava/lang/Object;
.source "BUGLY"


# instance fields
.field public id:I

.field public moduleName:Ljava/lang/String;

.field public version:Ljava/lang/String;

.field public versionKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getTables()[Ljava/lang/String;
.end method

.method public abstract init(Landroid/content/Context;ZLcom/tencent/bugly/BuglyStrategy;)V
.end method

.method public onDbCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    return-void
.end method

.method public onDbDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 8

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/bugly/a;->getTables()[Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_7

    return-void

    .line 72
    :cond_7
    invoke-virtual {p0}, Lcom/tencent/bugly/a;->getTables()[Ljava/lang/String;

    move-result-object p2

    array-length p3, p2

    const/4 v0, 0x0

    :goto_d
    if-ge v0, p3, :cond_25

    aget-object v1, p2, v0

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DROP TABLE IF EXISTS "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 75
    :cond_25
    invoke-virtual {p0, p1}, Lcom/tencent/bugly/a;->onDbCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_29

    return-void

    :catchall_29
    move-exception p1

    .line 77
    invoke-static {p1}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_33

    .line 78
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_33
    return-void
.end method

.method public onDbUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 8

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/bugly/a;->getTables()[Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_7

    return-void

    .line 50
    :cond_7
    invoke-virtual {p0}, Lcom/tencent/bugly/a;->getTables()[Ljava/lang/String;

    move-result-object p2

    array-length p3, p2

    const/4 v0, 0x0

    :goto_d
    if-ge v0, p3, :cond_25

    aget-object v1, p2, v0

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DROP TABLE IF EXISTS "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 53
    :cond_25
    invoke-virtual {p0, p1}, Lcom/tencent/bugly/a;->onDbCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_29

    return-void

    :catchall_29
    move-exception p1

    .line 55
    invoke-static {p1}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_33

    .line 56
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_33
    return-void
.end method

.method public onServerStrategyChanged(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)V
    .registers 2

    return-void
.end method
