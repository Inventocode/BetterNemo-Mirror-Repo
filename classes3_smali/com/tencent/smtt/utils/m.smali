.class public Lcom/tencent/smtt/utils/m;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/tencent/smtt/utils/m;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/io/File;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/utils/m;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/tencent/smtt/utils/m;->b:Ljava/io/File;

    const-string v0, "https://log.tbs.qq.com/ajax?c=pu&v=2&k="

    iput-object v0, p0, Lcom/tencent/smtt/utils/m;->d:Ljava/lang/String;

    const-string v0, "https://log.tbs.qq.com/ajax?c=pu&tk="

    iput-object v0, p0, Lcom/tencent/smtt/utils/m;->e:Ljava/lang/String;

    const-string v0, "https://log.tbs.qq.com/ajax?c=dl&k="

    iput-object v0, p0, Lcom/tencent/smtt/utils/m;->f:Ljava/lang/String;

    const-string v0, "https://cfg.imtt.qq.com/tbs?v=2&mk="

    iput-object v0, p0, Lcom/tencent/smtt/utils/m;->g:Ljava/lang/String;

    const-string v0, "https://log.tbs.qq.com/ajax?c=ul&v=2&k="

    iput-object v0, p0, Lcom/tencent/smtt/utils/m;->h:Ljava/lang/String;

    const-string v0, "https://mqqad.html5.qq.com/adjs"

    iput-object v0, p0, Lcom/tencent/smtt/utils/m;->i:Ljava/lang/String;

    const-string v0, "https://log.tbs.qq.com/ajax?c=ucfu&k="

    iput-object v0, p0, Lcom/tencent/smtt/utils/m;->j:Ljava/lang/String;

    const-string v0, "https://tbsrecovery.imtt.qq.com/getconfig"

    iput-object v0, p0, Lcom/tencent/smtt/utils/m;->k:Ljava/lang/String;

    const-string v0, "TbsCommonConfig"

    const-string v1, "TbsCommonConfig constructing..."

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/smtt/utils/m;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/tencent/smtt/utils/m;->h()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/smtt/utils/m;
    .registers 2

    const-class v0, Lcom/tencent/smtt/utils/m;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/tencent/smtt/utils/m;->c:Lcom/tencent/smtt/utils/m;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/smtt/utils/m;
    .registers 3

    const-class v0, Lcom/tencent/smtt/utils/m;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/tencent/smtt/utils/m;->c:Lcom/tencent/smtt/utils/m;

    if-nez v1, :cond_e

    new-instance v1, Lcom/tencent/smtt/utils/m;

    invoke-direct {v1, p0}, Lcom/tencent/smtt/utils/m;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/smtt/utils/m;->c:Lcom/tencent/smtt/utils/m;

    :cond_e
    sget-object p0, Lcom/tencent/smtt/utils/m;->c:Lcom/tencent/smtt/utils/m;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized h()V
    .registers 7

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0}, Lcom/tencent/smtt/utils/m;->i()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_11

    const-string v1, "TbsCommonConfig"

    const-string v2, "Config file is null, default values will be applied"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_c1

    monitor-exit p0

    return-void

    :cond_11
    :try_start_11
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_c1

    :try_start_1b
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v2, "pv_post_url"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    iput-object v2, p0, Lcom/tencent/smtt/utils/m;->d:Ljava/lang/String;

    :cond_35
    const-string v2, "tbs_download_stat_post_url"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    iput-object v2, p0, Lcom/tencent/smtt/utils/m;->f:Ljava/lang/String;

    :cond_47
    const-string v2, "tbs_downloader_post_url"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_59

    iput-object v2, p0, Lcom/tencent/smtt/utils/m;->g:Ljava/lang/String;

    :cond_59
    const-string v2, "tbs_log_post_url"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6b

    iput-object v2, p0, Lcom/tencent/smtt/utils/m;->h:Ljava/lang/String;

    :cond_6b
    const-string v2, "tips_url"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7d

    iput-object v2, p0, Lcom/tencent/smtt/utils/m;->i:Ljava/lang/String;

    :cond_7d
    const-string v2, "tbs_cmd_post_url"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8f

    iput-object v2, p0, Lcom/tencent/smtt/utils/m;->j:Ljava/lang/String;

    :cond_8f
    const-string v2, "tbs_emergency_post_url"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a1

    iput-object v2, p0, Lcom/tencent/smtt/utils/m;->k:Ljava/lang/String;

    :cond_a1
    const-string v2, "pv_post_url_tk"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b3

    iput-object v0, p0, Lcom/tencent/smtt/utils/m;->e:Ljava/lang/String;
    :try_end_b3
    .catchall {:try_start_1b .. :try_end_b3} :catchall_bc

    :cond_b3
    :try_start_b3
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b6} :catch_b7
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_ff

    goto :goto_f1

    :catch_b7
    move-exception v0

    :goto_b8
    :try_start_b8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_bb
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_ff

    goto :goto_f1

    :catchall_bc
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_c2

    :catchall_c1
    move-exception v1

    :goto_c2
    :try_start_c2
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string v1, "TbsCommonConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exceptions occurred1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e9
    .catchall {:try_start_c2 .. :try_end_e9} :catchall_f3

    if-eqz v0, :cond_f1

    :try_start_eb
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_ee} :catch_ef
    .catchall {:try_start_eb .. :try_end_ee} :catchall_ff

    goto :goto_f1

    :catch_ef
    move-exception v0

    goto :goto_b8

    :cond_f1
    :goto_f1
    monitor-exit p0

    return-void

    :catchall_f3
    move-exception v1

    if-eqz v0, :cond_fe

    :try_start_f6
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_f9
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_f9} :catch_fa
    .catchall {:try_start_f6 .. :try_end_f9} :catchall_ff

    goto :goto_fe

    :catch_fa
    move-exception v0

    :try_start_fb
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_fe
    :goto_fe
    throw v1
    :try_end_ff
    .catchall {:try_start_fb .. :try_end_ff} :catchall_ff

    :catchall_ff
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private i()Ljava/io/File;
    .registers 11

    const-string v0, "TbsCommonConfig"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/tencent/smtt/utils/m;->b:Ljava/io/File;

    if-nez v2, :cond_7a

    iget-object v2, p0, Lcom/tencent/smtt/utils/m;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x8

    if-nez v3, :cond_63

    iget-object v3, p0, Lcom/tencent/smtt/utils/m;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v3, v5, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_2d

    const/4 v3, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v3, 0x0

    :goto_2e
    iget-object v7, p0, Lcom/tencent/smtt/utils/m;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v7, v8, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3d

    goto :goto_3e

    :cond_3d
    const/4 v5, 0x0

    :goto_3e
    if-nez v3, :cond_51

    if-eqz v5, :cond_43

    goto :goto_51

    :cond_43
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/smtt/utils/m;->a:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/tencent/smtt/utils/FileUtil;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_4e
    iput-object v2, p0, Lcom/tencent/smtt/utils/m;->b:Ljava/io/File;

    goto :goto_6f

    :cond_51
    :goto_51
    const-string v2, "no permission,use sdcard default folder"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/smtt/utils/m;->a:Landroid/content/Context;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/tencent/smtt/utils/FileUtil;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_4e

    :cond_63
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/smtt/utils/m;->a:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/tencent/smtt/utils/FileUtil;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_4e

    :goto_6f
    iget-object v2, p0, Lcom/tencent/smtt/utils/m;->b:Ljava/io/File;

    if-eqz v2, :cond_79

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_7a

    :cond_79
    return-object v1

    :cond_7a
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/smtt/utils/m;->b:Ljava/io/File;

    const-string v4, "tbsnet.conf"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_a7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get file("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") failed!"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a6
    .catchall {:try_start_3 .. :try_end_a6} :catchall_c5

    return-object v1

    :cond_a7
    :try_start_a7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pathc:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bf
    .catchall {:try_start_a7 .. :try_end_bf} :catchall_c0

    goto :goto_ec

    :catchall_c0
    move-exception v1

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto :goto_c6

    :catchall_c5
    move-exception v2

    :goto_c6
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exceptions occurred2:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    :goto_ec
    return-object v2
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/utils/m;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/utils/m;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/utils/m;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/utils/m;->h:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/utils/m;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/utils/m;->k:Ljava/lang/String;

    return-object v0
.end method
