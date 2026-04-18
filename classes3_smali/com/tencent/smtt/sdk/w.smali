.class Lcom/tencent/smtt/sdk/w;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tencent/smtt/sdk/w;

.field private static e:Ljava/nio/channels/FileLock;


# instance fields
.field private b:Lcom/tencent/smtt/sdk/x;

.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/tencent/smtt/sdk/w;
    .registers 2

    sget-object v0, Lcom/tencent/smtt/sdk/w;->a:Lcom/tencent/smtt/sdk/w;

    if-nez v0, :cond_17

    const-class v0, Lcom/tencent/smtt/sdk/w;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/tencent/smtt/sdk/w;->a:Lcom/tencent/smtt/sdk/w;

    if-nez v1, :cond_12

    new-instance v1, Lcom/tencent/smtt/sdk/w;

    invoke-direct {v1}, Lcom/tencent/smtt/sdk/w;-><init>()V

    sput-object v1, Lcom/tencent/smtt/sdk/w;->a:Lcom/tencent/smtt/sdk/w;

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
    sget-object v0, Lcom/tencent/smtt/sdk/w;->a:Lcom/tencent/smtt/sdk/w;

    return-object v0
.end method


# virtual methods
.method public a(Z)Lcom/tencent/smtt/sdk/x;
    .registers 2

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/tencent/smtt/sdk/w;->b:Lcom/tencent/smtt/sdk/x;

    return-object p1

    :cond_5
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized a(Landroid/content/Context;)V
    .registers 12

    monitor-enter p0

    :try_start_1
    const-string v0, "X5CoreEngine"

    const-string v1, "init #1"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/smtt/sdk/f;->a(Z)Lcom/tencent/smtt/sdk/f;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v2}, Lcom/tencent/smtt/sdk/f;->a(Landroid/content/Context;ZZ)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/f;->a()Lcom/tencent/smtt/sdk/u;

    move-result-object v4

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/f;->b()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_72

    if-eqz v4, :cond_72

    iget-boolean v5, p0, Lcom/tencent/smtt/sdk/w;->d:Z

    if-nez v5, :cond_79

    new-instance v5, Lcom/tencent/smtt/sdk/x;

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/u;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/tencent/smtt/sdk/x;-><init>(Lcom/tencent/smtt/export/external/DexLoader;)V

    iput-object v5, p0, Lcom/tencent/smtt/sdk/w;->b:Lcom/tencent/smtt/sdk/x;
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_1c1

    :try_start_32
    invoke-virtual {v5}, Lcom/tencent/smtt/sdk/x;->a()Z

    move-result v5

    iput-boolean v5, p0, Lcom/tencent/smtt/sdk/w;->c:Z

    if-nez v5, :cond_5e

    const-string v5, "can not use X5 by x5corewizard return false"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_32 .. :try_end_3f} :catch_5c
    .catchall {:try_start_32 .. :try_end_3f} :catchall_40

    goto :goto_5e

    :catchall_40
    move-exception v5

    :try_start_41
    iput-boolean v2, p0, Lcom/tencent/smtt/sdk/w;->c:Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can not use x5 by throwable "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5f

    :catch_5c
    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/w;->c:Z

    :cond_5e
    :goto_5e
    move-object v5, v6

    :goto_5f
    iget-boolean v7, p0, Lcom/tencent/smtt/sdk/w;->c:Z

    if-eqz v7, :cond_7a

    invoke-static {}, Lcom/tencent/smtt/sdk/CookieManager;->getInstance()Lcom/tencent/smtt/sdk/CookieManager;

    move-result-object v7

    invoke-virtual {v7, p1, v0, v0}, Lcom/tencent/smtt/sdk/CookieManager;->a(Landroid/content/Context;ZZ)V

    invoke-static {}, Lcom/tencent/smtt/sdk/CookieManager;->getInstance()Lcom/tencent/smtt/sdk/CookieManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/smtt/sdk/CookieManager;->a()V

    goto :goto_7a

    :cond_72
    iput-boolean v2, p0, Lcom/tencent/smtt/sdk/w;->c:Z

    const-string v5, "can not use X5 by !tbs available"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_79
    move-object v5, v6

    :cond_7a
    :goto_7a
    const-string v7, "X5CoreEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "init  mCanUseX5 is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/tencent/smtt/sdk/w;->c:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/tencent/smtt/sdk/w;->c:Z

    if-nez v7, :cond_19e

    const-string v7, "X5CoreEngine"

    const-string v8, "mCanUseX5 is false --> report"

    invoke-static {v7, v8}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/f;->b()Z

    move-result v7
    :try_end_a1
    .catchall {:try_start_41 .. :try_end_a1} :catchall_1c1

    if-eqz v7, :cond_15b

    if-eqz v4, :cond_15b

    if-nez v5, :cond_15b

    :try_start_a7
    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/u;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v1

    if-eqz v1, :cond_b9

    const-string v4, "com.tencent.tbs.tbsshell.TBSShell"

    const-string v5, "getLoadFailureDetails"

    new-array v6, v2, [Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5, v6, v2}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :cond_b9
    instance-of v1, v6, Ljava/lang/Throwable;

    if-eqz v1, :cond_ec

    move-object v1, v6

    check-cast v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; cause: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; th: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ec
    instance-of v1, v6, Ljava/lang/String;

    if-eqz v1, :cond_109

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failure detail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_104
    .catchall {:try_start_a7 .. :try_end_104} :catchall_105

    goto :goto_109

    :catchall_105
    move-exception v1

    :try_start_106
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_109
    :goto_109
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "isPreloadX5Disabled:-10000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13a

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v1

    const/16 v2, 0x198

    new-instance v4, Ljava/lang/Throwable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "X5CoreEngine::init, mCanUseX5=false, available true, details: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    :goto_135
    invoke-virtual {v1, p1, v2, v4}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    goto/16 :goto_1bd

    :cond_13a
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v1

    const/16 v2, 0x197

    new-instance v4, Ljava/lang/Throwable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "X5CoreEngine::init, mCanUseX5=false, available true, details: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    goto :goto_135

    :cond_15b
    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/f;->b()Z

    move-result v1

    if-eqz v1, :cond_181

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v1

    const/16 v2, 0x199

    new-instance v3, Ljava/lang/Throwable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCanUseX5=false, available true, reason: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    :goto_17d
    invoke-virtual {v1, p1, v2, v3}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    goto :goto_1bd

    :cond_181
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v1

    const/16 v2, 0x19a

    new-instance v3, Ljava/lang/Throwable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCanUseX5=false, available false, reason: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    goto :goto_17d

    :cond_19e
    const-string v1, "X5CoreEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init  sTbsCoreLoadFileLock is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/tencent/smtt/sdk/w;->e:Ljava/nio/channels/FileLock;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/smtt/sdk/w;->e:Ljava/nio/channels/FileLock;

    if-nez v1, :cond_1bd

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/w;->b(Landroid/content/Context;)Ljava/nio/channels/FileLock;

    :cond_1bd
    :goto_1bd
    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/w;->d:Z
    :try_end_1bf
    .catchall {:try_start_106 .. :try_end_1bf} :catchall_1c1

    monitor-exit p0

    return-void

    :catchall_1c1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Landroid/content/Context;)Ljava/nio/channels/FileLock;
    .registers 5

    const-string v0, "X5CoreEngine"

    const-string v1, "tryTbsCoreLoadFileLock ##"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/smtt/sdk/w;->e:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_c

    return-object v0

    :cond_c
    const-class v0, Lcom/tencent/smtt/sdk/w;

    monitor-enter v0

    :try_start_f
    sget-object v1, Lcom/tencent/smtt/sdk/w;->e:Ljava/nio/channels/FileLock;

    if-nez v1, :cond_39

    invoke-static {p1}, Lcom/tencent/smtt/utils/FileUtil;->e(Landroid/content/Context;)Ljava/nio/channels/FileLock;

    move-result-object p1

    sput-object p1, Lcom/tencent/smtt/sdk/w;->e:Ljava/nio/channels/FileLock;

    if-nez p1, :cond_23

    const-string p1, "X5CoreEngine"

    const-string v1, "init -- sTbsCoreLoadFileLock failed!"

    :goto_1f
    invoke-static {p1, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    :cond_23
    const-string p1, "X5CoreEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init -- sTbsCoreLoadFileLock succeeded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/smtt/sdk/w;->e:Ljava/nio/channels/FileLock;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1f

    :cond_39
    :goto_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_f .. :try_end_3a} :catchall_3d

    sget-object p1, Lcom/tencent/smtt/sdk/w;->e:Ljava/nio/channels/FileLock;

    return-object p1

    :catchall_3d
    move-exception p1

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method public b()Z
    .registers 2

    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->a:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/w;->c:Z

    :goto_8
    return v0
.end method

.method public c()Lcom/tencent/smtt/sdk/x;
    .registers 2

    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->a:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget-object v0, p0, Lcom/tencent/smtt/sdk/w;->b:Lcom/tencent/smtt/sdk/x;

    :goto_8
    return-object v0
.end method

.method d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/w;->d:Z

    return v0
.end method
