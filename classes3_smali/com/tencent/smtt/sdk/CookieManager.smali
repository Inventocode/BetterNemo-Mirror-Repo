.class public Lcom/tencent/smtt/sdk/CookieManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/smtt/sdk/CookieManager$b;,
        Lcom/tencent/smtt/sdk/CookieManager$a;
    }
.end annotation


# static fields
.field public static LOGTAG:Ljava/lang/String; = "CookieManager"

.field private static d:Lcom/tencent/smtt/sdk/CookieManager;


# instance fields
.field a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/tencent/smtt/sdk/CookieManager$b;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/String;

.field c:Lcom/tencent/smtt/sdk/CookieManager$a;

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/tencent/smtt/sdk/CookieManager$a;->a:Lcom/tencent/smtt/sdk/CookieManager$a;

    iput-object v0, p0, Lcom/tencent/smtt/sdk/CookieManager;->c:Lcom/tencent/smtt/sdk/CookieManager$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/CookieManager;->e:Z

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/CookieManager;->f:Z

    return-void
.end method

.method public static getInstance()Lcom/tencent/smtt/sdk/CookieManager;
    .registers 2

    sget-object v0, Lcom/tencent/smtt/sdk/CookieManager;->d:Lcom/tencent/smtt/sdk/CookieManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/tencent/smtt/sdk/CookieManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/tencent/smtt/sdk/CookieManager;->d:Lcom/tencent/smtt/sdk/CookieManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/tencent/smtt/sdk/CookieManager;

    invoke-direct {v1}, Lcom/tencent/smtt/sdk/CookieManager;-><init>()V

    sput-object v1, Lcom/tencent/smtt/sdk/CookieManager;->d:Lcom/tencent/smtt/sdk/CookieManager;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/tencent/smtt/sdk/CookieManager;->d:Lcom/tencent/smtt/sdk/CookieManager;

    return-object v0
.end method

.method public static getROMCookieDBVersion(Landroid/content/Context;)I
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "cookiedb_info"

    const/16 v2, 0xb

    if-lt v0, v2, :cond_a

    const/4 v0, 0x4

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, -0x1

    const-string v1, "db_version"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static setROMCookieDBVersion(Landroid/content/Context;I)V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "cookiedb_info"

    const/16 v2, 0xb

    if-lt v0, v2, :cond_a

    const/4 v0, 0x4

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "db_version"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method declared-synchronized a()V
    .registers 12

    const-class v0, Ljava/lang/String;

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/CookieManager;->f:Z

    iget-object v2, p0, Lcom/tencent/smtt/sdk/CookieManager;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_a0

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-nez v2, :cond_12

    goto/16 :goto_a0

    :cond_12
    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v2

    const/4 v3, 0x2

    if-eqz v2, :cond_4a

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v2

    if-eqz v2, :cond_4a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/CookieManager;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_99

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/smtt/sdk/CookieManager$b;

    iget v4, v2, Lcom/tencent/smtt/sdk/CookieManager$b;->a:I

    if-eq v4, v1, :cond_40

    if-eq v4, v3, :cond_38

    goto :goto_25

    :cond_38
    iget-object v4, v2, Lcom/tencent/smtt/sdk/CookieManager$b;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/tencent/smtt/sdk/CookieManager$b;->c:Ljava/lang/String;

    invoke-virtual {p0, v4, v2}, Lcom/tencent/smtt/sdk/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    :cond_40
    iget-object v4, v2, Lcom/tencent/smtt/sdk/CookieManager$b;->b:Ljava/lang/String;

    iget-object v5, v2, Lcom/tencent/smtt/sdk/CookieManager$b;->c:Ljava/lang/String;

    iget-object v2, v2, Lcom/tencent/smtt/sdk/CookieManager$b;->d:Lcom/tencent/smtt/sdk/ValueCallback;

    invoke-virtual {p0, v4, v5, v2}, Lcom/tencent/smtt/sdk/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V

    goto :goto_25

    :cond_4a
    iget-object v2, p0, Lcom/tencent/smtt/sdk/CookieManager;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_50
    :goto_50
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_99

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/smtt/sdk/CookieManager$b;

    iget v5, v4, Lcom/tencent/smtt/sdk/CookieManager$b;->a:I

    if-eq v5, v1, :cond_6f

    if-eq v5, v3, :cond_63

    goto :goto_50

    :cond_63
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v5

    iget-object v6, v4, Lcom/tencent/smtt/sdk/CookieManager$b;->b:Ljava/lang/String;

    iget-object v4, v4, Lcom/tencent/smtt/sdk/CookieManager$b;->c:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50

    :cond_6f
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_50

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v5

    const-string v6, "setCookie"

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    aput-object v0, v8, v1

    const-class v10, Landroid/webkit/ValueCallback;

    aput-object v10, v8, v3

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v10, v4, Lcom/tencent/smtt/sdk/CookieManager$b;->b:Ljava/lang/String;

    aput-object v10, v7, v9

    iget-object v9, v4, Lcom/tencent/smtt/sdk/CookieManager$b;->c:Ljava/lang/String;

    aput-object v9, v7, v1

    iget-object v4, v4, Lcom/tencent/smtt/sdk/CookieManager$b;->d:Lcom/tencent/smtt/sdk/ValueCallback;

    aput-object v4, v7, v3

    invoke-static {v5, v6, v8, v7}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_50

    :cond_99
    iget-object v0, p0, Lcom/tencent/smtt/sdk/CookieManager;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_9e
    .catchall {:try_start_4 .. :try_end_9e} :catchall_a2

    monitor-exit p0

    return-void

    :cond_a0
    :goto_a0
    monitor-exit p0

    return-void

    :catchall_a2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a(Landroid/content/Context;ZZ)V
    .registers 13

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/CookieManager;->c:Lcom/tencent/smtt/sdk/CookieManager$a;

    sget-object v1, Lcom/tencent/smtt/sdk/CookieManager$a;->a:Lcom/tencent/smtt/sdk/CookieManager$a;

    if-eq v0, v1, :cond_14f

    if-eqz p1, :cond_14f

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->getInstance()Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;

    move-result-object v0

    const-string v1, "cookie_switch.txt"

    invoke-virtual {v0, p1, v1}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->canUseFunction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14f

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/CookieManager;->e:Z

    if-eqz v0, :cond_1b

    goto/16 :goto_14f

    :cond_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    sget-object v4, Lcom/tencent/smtt/sdk/CookieManager;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "compatiableCookieDatabaseIfNeed,isX5Inited:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",useX5:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_55

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getIsSysWebViewForcedByOuter()Z

    move-result p2

    if-nez p2, :cond_55

    sget-boolean p2, Lcom/tencent/smtt/sdk/QbSdk;->a:Z

    if-eqz p2, :cond_4c

    goto :goto_55

    :cond_4c
    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tencent/smtt/sdk/w;->a(Landroid/content/Context;)V
    :try_end_53
    .catchall {:try_start_1 .. :try_end_53} :catchall_151

    monitor-exit p0

    return-void

    :cond_55
    :goto_55
    :try_start_55
    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getIsSysWebViewForcedByOuter()Z

    move-result p2

    const/4 v4, 0x0

    if-nez p2, :cond_60

    sget-boolean p2, Lcom/tencent/smtt/sdk/QbSdk;->a:Z

    if-eqz p2, :cond_61

    :cond_60
    const/4 p3, 0x0

    :cond_61
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->getInstance()Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;

    move-result-object p2

    const-string v5, "usex5.txt"

    invoke-virtual {p2, p1, v5}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->canUseFunction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    sget-object v5, Lcom/tencent/smtt/sdk/CookieManager;->LOGTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "usex5 : mUseX5LastProcess->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",useX5:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->getInstance()Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;

    move-result-object v5

    const-string v6, "usex5.txt"

    invoke-virtual {v5, p1, v6, p3}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->setFunctionEnable(Landroid/content/Context;Ljava/lang/String;Z)Z
    :try_end_92
    .catchall {:try_start_55 .. :try_end_92} :catchall_151

    if-ne p2, p3, :cond_96

    monitor-exit p0

    return-void

    :cond_96
    :try_start_96
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/smtt/sdk/TbsLogReport;->tbsLogInfo()Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/smtt/sdk/CookieManager;->b:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_112

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/tencent/smtt/sdk/o;->i(Landroid/content/Context;)I

    move-result v6

    if-lez v6, :cond_bf

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/tencent/smtt/sdk/o;->i(Landroid/content/Context;)I

    move-result v6
    :try_end_b8
    .catchall {:try_start_96 .. :try_end_b8} :catchall_151

    const v7, 0x8ca1

    if-ge v6, v7, :cond_bf

    monitor-exit p0

    return-void

    :cond_bf
    if-eqz p2, :cond_cf

    :try_start_c1
    invoke-static {p1}, Lcom/tencent/smtt/sdk/j;->d(Landroid/content/Context;)I

    move-result v6

    if-lez v6, :cond_ea

    invoke-static {p1}, Lcom/tencent/smtt/sdk/CookieManager;->getROMCookieDBVersion(Landroid/content/Context;)I

    move-result v7

    if-gtz v7, :cond_eb

    const/4 v4, 0x1

    goto :goto_eb

    :cond_cf
    invoke-static {p1}, Lcom/tencent/smtt/sdk/j;->d(Landroid/content/Context;)I

    move-result v6

    if-lez v6, :cond_ea

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v7

    const-string v8, "cookies_database_version"

    invoke-virtual {v7, p1, v8}, Lcom/tencent/smtt/sdk/o;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_e3
    .catchall {:try_start_c1 .. :try_end_e3} :catchall_151

    if-nez v8, :cond_ea

    :try_start_e5
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_e9} :catch_ea
    .catchall {:try_start_e5 .. :try_end_e9} :catchall_151

    goto :goto_eb

    :catch_ea
    :cond_ea
    const/4 v7, 0x0

    :cond_eb
    :goto_eb
    if-nez v4, :cond_f7

    if-lez v6, :cond_f1

    if-gtz v7, :cond_f7

    :cond_f1
    const/16 p3, 0x2be

    :try_start_f3
    invoke-virtual {v5, p3}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setErrorCode(I)V

    goto :goto_fe

    :cond_f7
    if-lt v7, v6, :cond_100

    const/16 p3, 0x2bf

    invoke-virtual {v5, p3}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setErrorCode(I)V

    :goto_fe
    move v4, v6

    goto :goto_118

    :cond_100
    iget-object v2, p0, Lcom/tencent/smtt/sdk/CookieManager;->c:Lcom/tencent/smtt/sdk/CookieManager$a;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/CookieManager;->b:Ljava/lang/String;

    invoke-static {p1, v2, v3, v4, p3}, Lcom/tencent/smtt/sdk/j;->a(Landroid/content/Context;Lcom/tencent/smtt/sdk/CookieManager$a;Ljava/lang/String;ZZ)V

    const/16 p3, 0x2c0

    invoke-virtual {v5, p3}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setErrorCode(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    goto :goto_fe

    :cond_112
    const/16 p3, 0x2bd

    invoke-virtual {v5, p3}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setErrorCode(I)V

    const/4 v7, 0x0

    :goto_118
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "x5->sys:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " from:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",timeused:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setFailDetail(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object p1

    sget-object p2, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_COOKIE_DB_SWITCH:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    invoke-virtual {p1, p2, v5}, Lcom/tencent/smtt/sdk/TbsLogReport;->eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V
    :try_end_14d
    .catchall {:try_start_f3 .. :try_end_14d} :catchall_151

    monitor-exit p0

    return-void

    :cond_14f
    :goto_14f
    monitor-exit p0

    return-void

    :catchall_151
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public acceptCookie()Z
    .registers 3

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/x;->d()Z

    move-result v0

    return v0

    :cond_15
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->acceptCookie()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized acceptThirdPartyCookies(Lcom/tencent/smtt/sdk/WebView;)Z
    .registers 9

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/x;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v0

    const-string v3, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v4, "cookieManager_acceptThirdPartyCookies"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v1

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebView;->getView()Landroid/view/View;

    move-result-object p1

    aput-object p1, v6, v1

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_37

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_65

    monitor-exit p0

    return p1

    :cond_37
    monitor-exit p0

    return v2

    :cond_39
    :try_start_39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_3b
    .catchall {:try_start_39 .. :try_end_3b} :catchall_65

    const/16 v3, 0x15

    if-ge v0, v3, :cond_41

    monitor-exit p0

    return v2

    :cond_41
    :try_start_41
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const-string v3, "acceptThirdPartyCookies"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Landroid/webkit/WebView;

    aput-object v5, v4, v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebView;->getView()Landroid/view/View;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v0, v3, v4, v2}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_63

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_61
    .catchall {:try_start_41 .. :try_end_61} :catchall_65

    monitor-exit p0

    return p1

    :cond_63
    monitor-exit p0

    return v1

    :catchall_65
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public flush()V
    .registers 6

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/x;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v4, "cookieManager_flush"

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    :cond_21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_28

    return-void

    :cond_28
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "flush"

    invoke-static {v0, v3, v2, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_35
    return-void
.end method

.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_15
    const/4 v0, 0x0

    :try_start_16
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_1f

    goto :goto_23

    :catchall_1f
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_23
    return-object v0
.end method

.method public hasCookies()Z
    .registers 3

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/x;->h()Z

    move-result v0

    return v0

    :cond_15
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->hasCookies()Z

    move-result v0

    return v0
.end method

.method public removeAllCookie()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/tencent/smtt/sdk/CookieManager;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_7
    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/x;->e()V

    goto :goto_22

    :cond_1b
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    :goto_22
    return-void
.end method

.method public removeAllCookies(Lcom/tencent/smtt/sdk/ValueCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/smtt/sdk/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/smtt/sdk/CookieManager;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_7
    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/x;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/webkit/ValueCallback;

    aput-object v4, v3, v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v1, "cookieManager_removeAllCookies"

    invoke-virtual {v0, p1, v1, v3, v2}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_49

    :cond_2f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v0, v3, :cond_36

    return-void

    :cond_36
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/webkit/ValueCallback;

    aput-object v4, v3, v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "removeAllCookies"

    invoke-static {v0, p1, v3, v2}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_49
    return-void
.end method

.method public removeExpiredCookie()V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/x;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v4, "cookieManager_removeExpiredCookie"

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    :cond_21
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    :goto_28
    return-void
.end method

.method public removeSessionCookie()V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/x;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v4, "cookieManager_removeSessionCookie"

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    :cond_21
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    :goto_28
    return-void
.end method

.method public removeSessionCookies(Lcom/tencent/smtt/sdk/ValueCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/smtt/sdk/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/x;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/webkit/ValueCallback;

    aput-object v4, v3, v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v1, "cookieManager_removeSessionCookies"

    invoke-virtual {v0, p1, v1, v3, v2}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    :cond_28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v0, v3, :cond_2f

    return-void

    :cond_2f
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/webkit/ValueCallback;

    aput-object v4, v3, v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "removeSessionCookies"

    invoke-static {v0, p1, v3, v2}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_42
    return-void
.end method

.method public declared-synchronized setAcceptCookie(Z)V
    .registers 9

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/x;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v0

    const-string v1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v2, "cookieManager_setAcceptCookie"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v6

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_3b

    goto :goto_39

    :cond_2d
    :try_start_2d
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_35

    goto :goto_39

    :catchall_35
    move-exception p1

    :try_start_36
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3b

    :goto_39
    monitor-exit p0

    return-void

    :catchall_3b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAcceptThirdPartyCookies(Lcom/tencent/smtt/sdk/WebView;Z)V
    .registers 11

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/x;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v0

    const-string v4, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v5, "cookieManager_setAcceptThirdPartyCookies"

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebView;->getView()Landroid/view/View;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {v0, v4, v5, v6, v3}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_61

    :cond_38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_63

    const/16 v4, 0x15

    if-ge v0, v4, :cond_40

    monitor-exit p0

    return-void

    :cond_40
    :try_start_40
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const-string v4, "setAcceptThirdPartyCookies"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Landroid/webkit/WebView;

    aput-object v6, v5, v2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebView;->getView()Landroid/view/View;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {v0, v4, v5, v3}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_61
    .catchall {:try_start_40 .. :try_end_61} :catchall_63

    :goto_61
    monitor-exit p0

    return-void

    :catchall_63
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/smtt/sdk/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCookie(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tencent/smtt/sdk/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-class v0, Ljava/lang/String;

    monitor-enter p0

    :try_start_3
    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v1, :cond_35

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/x;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v1

    const-string v6, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v7, "cookieManager_setCookie"

    new-array v8, v4, [Ljava/lang/Class;

    aput-object v0, v8, v3

    aput-object v0, v8, v5

    const-class v0, Landroid/webkit/ValueCallback;

    aput-object v0, v8, v2

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v3

    aput-object p2, v0, v5

    aput-object p3, v0, v2

    invoke-virtual {v1, v6, v7, v8, v0}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_83

    :cond_35
    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/w;->d()Z

    move-result v1

    if-nez v1, :cond_5c

    new-instance v1, Lcom/tencent/smtt/sdk/CookieManager$b;

    invoke-direct {v1, p0}, Lcom/tencent/smtt/sdk/CookieManager$b;-><init>(Lcom/tencent/smtt/sdk/CookieManager;)V

    iput v5, v1, Lcom/tencent/smtt/sdk/CookieManager$b;->a:I

    iput-object p1, v1, Lcom/tencent/smtt/sdk/CookieManager$b;->b:Ljava/lang/String;

    iput-object p2, v1, Lcom/tencent/smtt/sdk/CookieManager$b;->c:Ljava/lang/String;

    iput-object p3, v1, Lcom/tencent/smtt/sdk/CookieManager$b;->d:Lcom/tencent/smtt/sdk/ValueCallback;

    iget-object v6, p0, Lcom/tencent/smtt/sdk/CookieManager;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v6, :cond_57

    new-instance v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v6, p0, Lcom/tencent/smtt/sdk/CookieManager;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_57
    iget-object v6, p0, Lcom/tencent/smtt/sdk/CookieManager;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_5c
    iget-boolean v1, p0, Lcom/tencent/smtt/sdk/CookieManager;->f:Z

    if-eqz v1, :cond_83

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_85

    const/16 v6, 0x15

    if-ge v1, v6, :cond_68

    monitor-exit p0

    return-void

    :cond_68
    :try_start_68
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    const-string v6, "setCookie"

    new-array v7, v4, [Ljava/lang/Class;

    aput-object v0, v7, v3

    aput-object v0, v7, v5

    const-class v0, Landroid/webkit/ValueCallback;

    aput-object v0, v7, v2

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v3

    aput-object p2, v0, v5

    aput-object p3, v0, v2

    invoke-static {v1, v6, v7, v0}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_83
    .catchall {:try_start_68 .. :try_end_83} :catchall_85

    :cond_83
    :goto_83
    monitor-exit p0

    return-void

    :catchall_85
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCookie(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11

    const-class v0, Ljava/lang/String;

    monitor-enter p0

    :try_start_3
    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v1

    const/4 v2, 0x2

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object p3

    invoke-virtual {p3}, Lcom/tencent/smtt/sdk/x;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object p3

    const-string v1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "cookieManager_setCookie"

    new-array v4, v2, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v6, 0x1

    aput-object v0, v4, v6

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v5

    aput-object p2, v0, v6

    invoke-virtual {p3, v1, v3, v4, v0}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_63

    :cond_2e
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/CookieManager;->f:Z

    if-nez v0, :cond_34

    if-eqz p3, :cond_3b

    :cond_34
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object p3

    invoke-virtual {p3}, Lcom/tencent/smtt/sdk/w;->d()Z

    move-result p3

    if-nez p3, :cond_63

    new-instance p3, Lcom/tencent/smtt/sdk/CookieManager$b;

    invoke-direct {p3, p0}, Lcom/tencent/smtt/sdk/CookieManager$b;-><init>(Lcom/tencent/smtt/sdk/CookieManager;)V

    iput v2, p3, Lcom/tencent/smtt/sdk/CookieManager$b;->a:I

    iput-object p1, p3, Lcom/tencent/smtt/sdk/CookieManager$b;->b:Ljava/lang/String;

    iput-object p2, p3, Lcom/tencent/smtt/sdk/CookieManager$b;->c:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p3, Lcom/tencent/smtt/sdk/CookieManager$b;->d:Lcom/tencent/smtt/sdk/ValueCallback;

    iget-object p1, p0, Lcom/tencent/smtt/sdk/CookieManager;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez p1, :cond_5e

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/tencent/smtt/sdk/CookieManager;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_5e
    iget-object p1, p0, Lcom/tencent/smtt/sdk/CookieManager;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_63
    .catchall {:try_start_3 .. :try_end_63} :catchall_65

    :cond_63
    :goto_63
    monitor-exit p0

    return-void

    :catchall_65
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setCookieCompatialbeMode(Landroid/content/Context;Lcom/tencent/smtt/sdk/CookieManager$a;Ljava/lang/String;Z)Z
    .registers 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-eqz p1, :cond_31

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->getInstance()Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;

    move-result-object v0

    const-string v1, "cookie_switch.txt"

    invoke-virtual {v0, p1, v1}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->canUseFunction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_31

    :cond_12
    iput-object p2, p0, Lcom/tencent/smtt/sdk/CookieManager;->c:Lcom/tencent/smtt/sdk/CookieManager$a;

    if-eqz p3, :cond_18

    iput-object p3, p0, Lcom/tencent/smtt/sdk/CookieManager;->b:Ljava/lang/String;

    :cond_18
    sget-object p3, Lcom/tencent/smtt/sdk/CookieManager$a;->a:Lcom/tencent/smtt/sdk/CookieManager$a;

    if-eq p2, p3, :cond_2f

    if-eqz p4, :cond_2f

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/smtt/sdk/w;->d()Z

    move-result p2

    if-nez p2, :cond_2f

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tencent/smtt/sdk/w;->a(Landroid/content/Context;)V

    :cond_2f
    const/4 p1, 0x1

    return p1

    :cond_31
    :goto_31
    const/4 p1, 0x0

    return p1
.end method

.method public setCookies(Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/x;->a(Ljava/util/Map;)Z

    move-result v0

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    if-nez v0, :cond_3f

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_35
    if-ge v5, v4, :cond_21

    aget-object v6, v3, v5

    invoke-virtual {p0, v2, v6}, Lcom/tencent/smtt/sdk/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    :cond_3f
    return-void
.end method
