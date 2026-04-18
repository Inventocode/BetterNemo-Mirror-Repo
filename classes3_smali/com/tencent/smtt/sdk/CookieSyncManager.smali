.class public Lcom/tencent/smtt/sdk/CookieSyncManager;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static a:Landroid/webkit/CookieSyncManager; = null

.field private static b:Lcom/tencent/smtt/sdk/CookieSyncManager; = null

.field private static c:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/x;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v4

    const-string p1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v4, "cookieSyncManager_createInstance"

    invoke-virtual {v0, p1, v4, v2, v3}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    sput-boolean v1, Lcom/tencent/smtt/sdk/CookieSyncManager;->c:Z

    :cond_2c
    return-void
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/CookieSyncManager;
    .registers 3

    const-class v0, Lcom/tencent/smtt/sdk/CookieSyncManager;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v1

    sput-object v1, Lcom/tencent/smtt/sdk/CookieSyncManager;->a:Landroid/webkit/CookieSyncManager;

    sget-object v1, Lcom/tencent/smtt/sdk/CookieSyncManager;->b:Lcom/tencent/smtt/sdk/CookieSyncManager;

    if-eqz v1, :cond_11

    sget-boolean v1, Lcom/tencent/smtt/sdk/CookieSyncManager;->c:Z

    if-nez v1, :cond_1c

    :cond_11
    new-instance v1, Lcom/tencent/smtt/sdk/CookieSyncManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/tencent/smtt/sdk/CookieSyncManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/smtt/sdk/CookieSyncManager;->b:Lcom/tencent/smtt/sdk/CookieSyncManager;

    :cond_1c
    sget-object p0, Lcom/tencent/smtt/sdk/CookieSyncManager;->b:Lcom/tencent/smtt/sdk/CookieSyncManager;
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_20

    monitor-exit v0

    return-object p0

    :catchall_20
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getInstance()Lcom/tencent/smtt/sdk/CookieSyncManager;
    .registers 3

    const-class v0, Lcom/tencent/smtt/sdk/CookieSyncManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/tencent/smtt/sdk/CookieSyncManager;->b:Lcom/tencent/smtt/sdk/CookieSyncManager;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_11

    if-eqz v1, :cond_9

    monitor-exit v0

    return-object v1

    :cond_9
    :try_start_9
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "CookieSyncManager::createInstance() needs to be called before CookieSyncManager::getInstance()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public startSync()V
    .registers 6

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

    const-string v4, "cookieSyncManager_startSync"

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_46

    :cond_21
    sget-object v0, Lcom/tencent/smtt/sdk/CookieSyncManager;->a:Landroid/webkit/CookieSyncManager;

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    :try_start_26
    const-string v0, "android.webkit.WebSyncManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mSyncThread"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v1, Lcom/tencent/smtt/sdk/CookieSyncManager;->a:Landroid/webkit/CookieSyncManager;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/smtt/sdk/g;

    invoke-direct {v1}, Lcom/tencent/smtt/sdk/g;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_46} :catch_46

    :catch_46
    :goto_46
    return-void
.end method

.method public stopSync()V
    .registers 6

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

    const-string v4, "cookieSyncManager_stopSync"

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    :cond_21
    sget-object v0, Lcom/tencent/smtt/sdk/CookieSyncManager;->a:Landroid/webkit/CookieSyncManager;

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    :goto_26
    return-void
.end method

.method public sync()V
    .registers 6

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

    const-string v4, "cookieSyncManager_Sync"

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    :cond_21
    sget-object v0, Lcom/tencent/smtt/sdk/CookieSyncManager;->a:Landroid/webkit/CookieSyncManager;

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    :goto_26
    return-void
.end method
