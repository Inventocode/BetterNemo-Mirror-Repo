.class Lcom/tencent/smtt/sdk/f;
.super Ljava/lang/Object;


# static fields
.field static a:I = 0x0

.field static b:Z = false

.field private static e:Lcom/tencent/smtt/sdk/f; = null

.field private static h:I = 0x0

.field private static i:I = 0x3

.field private static k:Ljava/lang/String;


# instance fields
.field private c:Lcom/tencent/smtt/sdk/u;

.field private d:Lcom/tencent/smtt/sdk/u;

.field private f:Z

.field private g:Z

.field private j:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/f;->c:Lcom/tencent/smtt/sdk/u;

    iput-object v0, p0, Lcom/tencent/smtt/sdk/f;->d:Lcom/tencent/smtt/sdk/u;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/f;->f:Z

    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/f;->g:Z

    iput-object v0, p0, Lcom/tencent/smtt/sdk/f;->j:Ljava/io/File;

    return-void
.end method

.method public static a(Z)Lcom/tencent/smtt/sdk/f;
    .registers 2

    sget-object v0, Lcom/tencent/smtt/sdk/f;->e:Lcom/tencent/smtt/sdk/f;

    if-nez v0, :cond_19

    if-eqz p0, :cond_19

    const-class p0, Lcom/tencent/smtt/sdk/f;

    monitor-enter p0

    :try_start_9
    sget-object v0, Lcom/tencent/smtt/sdk/f;->e:Lcom/tencent/smtt/sdk/f;

    if-nez v0, :cond_14

    new-instance v0, Lcom/tencent/smtt/sdk/f;

    invoke-direct {v0}, Lcom/tencent/smtt/sdk/f;-><init>()V

    sput-object v0, Lcom/tencent/smtt/sdk/f;->e:Lcom/tencent/smtt/sdk/f;

    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_16

    throw v0

    :cond_19
    :goto_19
    sget-object p0, Lcom/tencent/smtt/sdk/f;->e:Lcom/tencent/smtt/sdk/f;

    return-object p0
.end method

.method static a(I)V
    .registers 1

    sput p0, Lcom/tencent/smtt/sdk/f;->h:I

    return-void
.end method

.method private b(I)V
    .registers 6

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sget-object v1, Lcom/tencent/smtt/sdk/f;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_e
    new-instance p1, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/f;->j:Ljava/io/File;

    const-string v3, "count.prop"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_20} :catch_26
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_20} :catch_21

    goto :goto_2a

    :catch_21
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2a

    :catch_26
    move-exception p1

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_2a
    return-void
.end method

.method public static d()I
    .registers 1

    sget v0, Lcom/tencent/smtt/sdk/f;->h:I

    return v0
.end method

.method private i()I
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/f;->j:Ljava/io/File;

    const-string v4, "count.prop"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_12

    return v0

    :cond_12
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1c} :catch_41
    .catchall {:try_start_2 .. :try_end_1c} :catchall_3f

    :try_start_1c
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    sget-object v3, Lcom/tencent/smtt/sdk/f;->k:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_34} :catch_3d
    .catchall {:try_start_1c .. :try_end_34} :catchall_53

    :try_start_34
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_3c

    :catch_38
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_3c
    return v0

    :catch_3d
    move-exception v1

    goto :goto_45

    :catchall_3f
    move-exception v0

    goto :goto_55

    :catch_41
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    :goto_45
    :try_start_45
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_53

    if-eqz v2, :cond_52

    :try_start_4a
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_52

    :catch_4e
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_52
    :goto_52
    return v0

    :catchall_53
    move-exception v0

    move-object v1, v2

    :goto_55
    if-eqz v1, :cond_5f

    :try_start_57
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_5f

    :catch_5b
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_5f
    :goto_5f
    throw v0
.end method


# virtual methods
.method public a()Lcom/tencent/smtt/sdk/u;
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/f;->f:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/f;->c:Lcom/tencent/smtt/sdk/u;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public declared-synchronized a(Landroid/content/Context;ZZ)V
    .registers 14

    monitor-enter p0

    const/16 v0, 0x3e7

    const/4 v1, 0x0

    :try_start_4
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lcom/tencent/smtt/utils/TbsLog;->addLog(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/tencent/smtt/utils/TbsLog;->initIfNeed(Landroid/content/Context;)V

    const-string v0, "SDKEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init -- context: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", isPreIniting: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/tencent/smtt/sdk/f;->a:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    sput v0, Lcom/tencent/smtt/sdk/f;->a:I

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a()V

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    sget v4, Lcom/tencent/smtt/sdk/f;->a:I

    if-ne v4, v2, :cond_42

    const/4 v4, 0x1

    goto :goto_43

    :cond_42
    const/4 v4, 0x0

    :goto_43
    invoke-virtual {v0, p1, v4}, Lcom/tencent/smtt/sdk/o;->b(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/o;->k(Landroid/content/Context;)V

    invoke-static {p1, v2}, Lcom/tencent/smtt/sdk/TbsShareManager;->forceToLoadX5ForThirdApp(Landroid/content/Context;Z)V

    invoke-static {p1, p2, p3}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;ZZ)Z

    move-result p2

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x7

    if-lt p3, v0, :cond_5b

    const/4 p3, 0x1

    goto :goto_5c

    :cond_5b
    const/4 p3, 0x0

    :goto_5c
    if-eqz p2, :cond_62

    if-eqz p3, :cond_62

    const/4 v0, 0x1

    goto :goto_63

    :cond_62
    const/4 v0, 0x0

    :goto_63
    if-eqz v0, :cond_98

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    invoke-static {}, Lcom/tencent/smtt/sdk/f;->d()I

    move-result v6

    invoke-virtual {v0, p1, v6}, Lcom/tencent/smtt/sdk/o;->g(Landroid/content/Context;I)Z

    move-result v0

    const-string v6, "SDKEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isTbsCoreLegal: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "; cost: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_98
    if-eqz v0, :cond_19f

    iget-boolean p2, p0, Lcom/tencent/smtt/sdk/f;->f:Z
    :try_end_9c
    .catchall {:try_start_4 .. :try_end_9c} :catchall_203

    if-eqz p2, :cond_a0

    monitor-exit p0

    return-void

    :cond_a0
    :try_start_a0
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_dc

    const/16 p2, 0x3e3

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p2, v3, p3}, Lcom/tencent/smtt/utils/TbsLog;->addLog(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->j(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_d3

    new-instance p2, Ljava/io/File;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/tencent/smtt/sdk/o;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object p3

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->e(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez p3, :cond_10e

    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/f;->f:Z

    const-string p2, "SDKEngine::useSystemWebView by error_tbs_core_dexopt_dir null!"

    invoke-static {p1, p2}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_d1
    .catchall {:try_start_a0 .. :try_end_d1} :catchall_168

    monitor-exit p0

    return-void

    :cond_d3
    :try_start_d3
    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/f;->f:Z

    const-string p2, "SDKEngine::useSystemWebView by error_host_unavailable"

    invoke-static {p1, p2}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_da
    .catchall {:try_start_d3 .. :try_end_da} :catchall_168

    monitor-exit p0

    return-void

    :cond_dc
    const/16 p2, 0x3e4

    :try_start_de
    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p2, v3, p3}, Lcom/tencent/smtt/utils/TbsLog;->addLog(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tencent/smtt/sdk/o;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    sget p3, Lcom/tencent/smtt/sdk/f;->h:I

    const/16 v0, 0x635c

    if-eq p3, v0, :cond_f8

    const/16 v0, 0x635d

    if-ne p3, v0, :cond_f6

    goto :goto_f8

    :cond_f6
    const/4 p3, 0x0

    goto :goto_f9

    :cond_f8
    :goto_f8
    const/4 p3, 0x1

    :goto_f9
    if-eqz p3, :cond_101

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    move-object v0, p3

    goto :goto_102

    :cond_101
    move-object v0, p1

    :goto_102
    if-nez p2, :cond_10d

    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/f;->f:Z

    const-string p2, "SDKEngine::useSystemWebView by tbs_core_share_dir null!"

    invoke-static {p1, p2}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_10b
    .catchall {:try_start_de .. :try_end_10b} :catchall_168

    monitor-exit p0

    return-void

    :cond_10d
    move-object p3, p2

    :cond_10e
    move-object v5, v0

    :try_start_10f
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v5, v0}, Lcom/tencent/smtt/sdk/QbSdk;->getDexLoaderFileList(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x0

    :goto_118
    array-length v3, v8

    if-ge v0, v3, :cond_11e

    add-int/lit8 v0, v0, 0x1

    goto :goto_118

    :cond_11e
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getHostCorePathAppDefined()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_129

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getHostCorePathAppDefined()Ljava/lang/String;

    move-result-object p3

    goto :goto_12d

    :cond_129
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    :goto_12d
    move-object v7, p3

    const-string p3, "SDKEngine"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SDKEngine init optDir is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/smtt/sdk/f;->d:Lcom/tencent/smtt/sdk/u;

    if-eqz v3, :cond_155

    iput-object v3, p0, Lcom/tencent/smtt/sdk/f;->c:Lcom/tencent/smtt/sdk/u;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lcom/tencent/smtt/sdk/QbSdk;->d:Ljava/lang/String;

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/tencent/smtt/sdk/u;->a(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_164

    :cond_155
    new-instance p3, Lcom/tencent/smtt/sdk/u;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lcom/tencent/smtt/sdk/QbSdk;->d:Ljava/lang/String;

    move-object v3, p3

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/tencent/smtt/sdk/u;-><init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/tencent/smtt/sdk/f;->c:Lcom/tencent/smtt/sdk/u;

    :goto_164
    iput-boolean v2, p0, Lcom/tencent/smtt/sdk/f;->f:Z
    :try_end_166
    .catchall {:try_start_10f .. :try_end_166} :catchall_168

    goto/16 :goto_1e7

    :catchall_168
    move-exception p2

    :try_start_169
    const-string p3, "SDKEngine"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "useSystemWebView by exception: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object p3

    const/16 v0, 0x147

    invoke-virtual {p3, p1, v0, p2}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/f;->f:Z

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SDKEngine::useSystemWebView by exception: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1e7

    :cond_19f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can_load_x5="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "; is_compatible="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SDKEngine"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SDKEngine.init canLoadTbs=false; failure: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p3, Lcom/tencent/smtt/sdk/QbSdk;->a:Z

    if-eqz p3, :cond_1d7

    iget-boolean p3, p0, Lcom/tencent/smtt/sdk/f;->f:Z

    if-eqz p3, :cond_1d7

    goto :goto_1e7

    :cond_1d7
    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/f;->f:Z

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object p3

    const/16 v0, 0x195

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1, v0, v1}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    :goto_1e7
    invoke-static {}, Lcom/tencent/smtt/sdk/c;->a()Lcom/tencent/smtt/sdk/c;

    move-result-object p2

    iget-object p3, p0, Lcom/tencent/smtt/sdk/f;->c:Lcom/tencent/smtt/sdk/u;

    if-eqz p3, :cond_1f6

    invoke-virtual {p3}, Lcom/tencent/smtt/sdk/u;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/tencent/smtt/sdk/c;->a(Lcom/tencent/smtt/export/external/DexLoader;)V

    :cond_1f6
    invoke-virtual {p2, p1}, Lcom/tencent/smtt/sdk/c;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/o;->s(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/smtt/sdk/f;->j:Ljava/io/File;

    iput-boolean v2, p0, Lcom/tencent/smtt/sdk/f;->g:Z
    :try_end_201
    .catchall {:try_start_169 .. :try_end_201} :catchall_203

    monitor-exit p0

    return-void

    :catchall_203
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a(Ljava/lang/String;)V
    .registers 2

    sput-object p1, Lcom/tencent/smtt/sdk/f;->k:Ljava/lang/String;

    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/f;->f:Z

    return v0
.end method

.method b(Z)Z
    .registers 2

    sput-boolean p1, Lcom/tencent/smtt/sdk/f;->b:Z

    return p1
.end method

.method c()Lcom/tencent/smtt/sdk/u;
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/f;->c:Lcom/tencent/smtt/sdk/u;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/tencent/smtt/sdk/f;->c:Lcom/tencent/smtt/sdk/u;

    if-eqz v0, :cond_e

    sget-boolean v1, Lcom/tencent/smtt/sdk/QbSdk;->a:Z

    if-eqz v1, :cond_9

    goto :goto_e

    :cond_9
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/u;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e
    :goto_e
    const-string v0, "system webview get nothing..."

    return-object v0
.end method

.method f()Z
    .registers 4

    sget-boolean v0, Lcom/tencent/smtt/sdk/f;->b:Z

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/tencent/smtt/sdk/f;->k:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/f;->i()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_15

    invoke-direct {p0, v2}, Lcom/tencent/smtt/sdk/f;->b(I)V

    goto :goto_1f

    :cond_15
    add-int/2addr v0, v2

    sget v2, Lcom/tencent/smtt/sdk/f;->i:I

    if-gt v0, v2, :cond_1e

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/f;->b(I)V

    goto :goto_1f

    :cond_1e
    return v1

    :cond_1f
    :goto_1f
    sget-boolean v0, Lcom/tencent/smtt/sdk/f;->b:Z

    return v0
.end method

.method g()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/f;->g:Z

    return v0
.end method

.method public h()Z
    .registers 2

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->useSoftWare()Z

    move-result v0

    return v0
.end method
