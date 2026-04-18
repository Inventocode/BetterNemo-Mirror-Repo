.class Lcom/tencent/smtt/sdk/l;
.super Ljava/lang/Object;


# static fields
.field private static e:I = 0x5

.field private static f:I = 0x1

.field private static final g:[Ljava/lang/String;


# instance fields
.field private A:Landroid/os/Handler;

.field private B:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private C:I

.field private D:Z

.field a:Ljava/lang/String;

.field b:[Ljava/lang/String;

.field c:I

.field private d:Z

.field private h:Landroid/content/Context;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/io/File;

.field private m:J

.field private n:I

.field private o:I

.field private p:Z

.field private q:I

.field private r:I

.field private s:Z

.field private t:Z

.field private u:Ljava/net/HttpURLConnection;

.field private v:Ljava/lang/String;

.field private w:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

.field private x:Ljava/lang/String;

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-string v0, "tbs_downloading_com.tencent.mtt"

    const-string v1, "tbs_downloading_com.tencent.mm"

    const-string v2, "tbs_downloading_com.tencent.mobileqq"

    const-string v3, "tbs_downloading_com.tencent.tbs"

    const-string v4, "tbs_downloading_com.qzone"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/l;->g:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/l;->d:Z

    const/16 v1, 0x7530

    iput v1, p0, Lcom/tencent/smtt/sdk/l;->n:I

    const/16 v1, 0x4e20

    iput v1, p0, Lcom/tencent/smtt/sdk/l;->o:I

    sget v1, Lcom/tencent/smtt/sdk/l;->e:I

    iput v1, p0, Lcom/tencent/smtt/sdk/l;->C:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/smtt/sdk/l;->b:[Ljava/lang/String;

    iput v0, p0, Lcom/tencent/smtt/sdk/l;->c:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->tbsLogInfo()Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/smtt/sdk/l;->w:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/tencent/smtt/sdk/l;->B:Ljava/util/Set;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "tbs_downloading_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/smtt/sdk/l;->v:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    iget-object p1, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/o;->s(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/smtt/sdk/l;->l:Ljava/io/File;

    const-string v0, "TbsCorePrivateDir is null!"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/l;->g()V

    iput-object v1, p0, Lcom/tencent/smtt/sdk/l;->x:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lcom/tencent/smtt/sdk/l;->y:I

    return-void
.end method

.method private a(JJ)J
    .registers 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long p1, v0, p1

    iget-object v2, p0, Lcom/tencent/smtt/sdk/l;->w:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v2, p1, p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setDownConsumeTime(J)V

    iget-object p1, p0, Lcom/tencent/smtt/sdk/l;->w:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {p1, p3, p4}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setDownloadSize(J)V

    return-wide v0
.end method

.method static a(Landroid/content/Context;)Ljava/io/File;
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_12

    new-instance v1, Ljava/io/File;

    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/tencent/smtt/utils/FileUtil;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_13

    :cond_12
    move-object v1, v0

    :goto_13
    if-eqz v1, :cond_24

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_24

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_24

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_25

    :cond_24
    return-object v1

    :catch_25
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TbsApkDownloader.backupApkPath] Exception is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TbsDownload"

    invoke-static {v1, p0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Landroid/content/Context;I)Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/tencent/smtt/utils/FileUtil;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_31

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_31

    :cond_17
    new-instance p1, Ljava/io/File;

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_22

    const-string p0, "x5.oversea.tbs.org"

    goto :goto_27

    :cond_22
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloader;->getBackupFileName(Z)Ljava/lang/String;

    move-result-object p0

    :goto_27
    invoke-direct {p1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_31

    return-object v0

    :cond_31
    :goto_31
    return-object v1
.end method

.method private a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x400

    if-le v0, v1, :cond_11

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_11
    return-object p1
.end method

.method private a(Ljava/net/URL;)Ljava/lang/String;
    .registers 2

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_12
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_18

    :catch_d
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_16

    :catch_12
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_16
    const-string p1, ""

    :goto_18
    return-object p1
.end method

.method private a(ILjava/lang/String;Z)V
    .registers 5

    if-nez p3, :cond_8

    iget p3, p0, Lcom/tencent/smtt/sdk/l;->q:I

    iget v0, p0, Lcom/tencent/smtt/sdk/l;->C:I

    if-le p3, v0, :cond_12

    :cond_8
    iget-object p3, p0, Lcom/tencent/smtt/sdk/l;->w:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {p3, p1}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setErrorCode(I)V

    iget-object p1, p0, Lcom/tencent/smtt/sdk/l;->w:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {p1, p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setFailDetail(Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method private a(J)V
    .registers 6

    iget v0, p0, Lcom/tencent/smtt/sdk/l;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/smtt/sdk/l;->q:I

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_10

    :try_start_c
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/l;->n()J

    move-result-wide p1

    :cond_10
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_13} :catch_13

    :catch_13
    return-void
.end method

.method private a(Ljava/io/Closeable;)V
    .registers 2

    if-eqz p1, :cond_5

    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public static a(Ljava/io/File;Landroid/content/Context;)V
    .registers 13

    const-class v0, Lcom/tencent/smtt/utils/a;

    monitor-enter v0

    if-eqz p0, :cond_14b

    :try_start_5
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_14b

    :cond_d
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_15

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_14d

    return-void

    :cond_15
    :try_start_15
    invoke-static {p1}, Lcom/tencent/smtt/sdk/l;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_149

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "tbs_download_version_type"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_35

    new-instance v2, Ljava/io/File;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloader;->getBackupFileName(Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_47

    :cond_35
    new-instance v2, Ljava/io/File;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_40

    const-string v5, "x5.oversea.tbs.org"

    goto :goto_44

    :cond_40
    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloader;->getBackupFileName(Z)Ljava/lang/String;

    move-result-object v5

    :goto_44
    invoke-direct {v2, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_47
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    invoke-static {p0, v2}, Lcom/tencent/smtt/utils/FileUtil;->b(Ljava/io/File;Ljava/io/File;)Z

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tbs.org"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v6, "x5.tbs.decouple"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_65

    if-eqz v5, :cond_e3

    :cond_65
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/tencent/smtt/utils/a;->a(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "(.*)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    array-length v7, v5

    const/4 v8, 0x0

    :goto_84
    if-ge v8, v7, :cond_a8

    aget-object v9, v5, v8

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_a5

    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_a5

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_a5

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_a5
    add-int/lit8 v8, v8, 0x1

    goto :goto_84

    :cond_a8
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v5

    iget-object v5, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "tbs_download_version"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/tencent/smtt/utils/a;->a(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_e0

    const-string p0, "TbsDownload"

    const-string p1, "[TbsApkDownloader.backupTbsApk]delete bacup config file error "

    invoke-static {p0, p1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_de} :catch_149
    .catchall {:try_start_15 .. :try_end_de} :catchall_14d

    :try_start_de
    monitor-exit v0
    :try_end_df
    .catchall {:try_start_de .. :try_end_df} :catchall_14d

    return-void

    :cond_e0
    :try_start_e0
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    :cond_e3
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "tbs_download_version_type"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_149

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "tbs_decouplecoreversion"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p1, p0}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;)I

    move-result v5

    if-ne v2, v5, :cond_149

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "tbs_responsecode"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_115

    const/4 v4, 0x3

    if-ne v2, v4, :cond_130

    :cond_115
    const-string v4, "TbsApkDownloader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "response code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "return backup decouple apk"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_130
    new-instance v2, Ljava/io/File;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloader;->getBackupFileName(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;)I

    move-result v1

    invoke-static {p1, v2}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;)I

    move-result p1

    if-eq v1, p1, :cond_149

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    invoke-static {p0, v2}, Lcom/tencent/smtt/utils/FileUtil;->b(Ljava/io/File;Ljava/io/File;)Z
    :try_end_149
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_149} :catch_149
    .catchall {:try_start_e0 .. :try_end_149} :catchall_14d

    :catch_149
    :cond_149
    :try_start_149
    monitor-exit v0

    return-void

    :cond_14b
    :goto_14b
    monitor-exit v0

    return-void

    :catchall_14d
    move-exception p0

    monitor-exit v0
    :try_end_14f
    .catchall {:try_start_149 .. :try_end_14f} :catchall_14d

    throw p0
.end method

.method private a(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/smtt/sdk/l;->u:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_28

    :try_start_9
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_d

    goto :goto_28

    :catchall_d
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initHttpRequest] mHttpRequest.disconnect() Throwable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TbsDownload"

    invoke-static {v1, p1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    :goto_28
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lcom/tencent/smtt/sdk/l;->u:Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/smtt/sdk/l;->u:Ljava/net/HttpURLConnection;

    const-string v0, "Accept-Encoding"

    const-string v1, "identity"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/smtt/sdk/l;->u:Ljava/net/HttpURLConnection;

    const-string v0, "GET"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/smtt/sdk/l;->u:Ljava/net/HttpURLConnection;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object p1, p0, Lcom/tencent/smtt/sdk/l;->u:Ljava/net/HttpURLConnection;

    iget v0, p0, Lcom/tencent/smtt/sdk/l;->o:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object p1, p0, Lcom/tencent/smtt/sdk/l;->u:Ljava/net/HttpURLConnection;

    iget v0, p0, Lcom/tencent/smtt/sdk/l;->n:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/smtt/sdk/l;)Z
    .registers 1

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/l;->o()Z

    move-result p0

    return p0
.end method

.method private a(Ljava/io/File;)Z
    .registers 6

    iget-object v0, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "use_backup_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tbs_download_version"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_1f
    iget-object v1, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    const-wide/16 v2, 0x0

    invoke-static {v1, p1, v2, v3, v0}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;JI)Z

    move-result p1

    return p1
.end method

.method static b(Landroid/content/Context;)Ljava/io/File;
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_23

    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/tencent/smtt/sdk/l;->a(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_13

    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/tencent/smtt/sdk/l;->a(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v1

    :cond_13
    if-nez v1, :cond_1a

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/tencent/smtt/sdk/l;->a(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v1

    :cond_1a
    if-nez v1, :cond_22

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/tencent/smtt/sdk/l;->a(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_24

    goto :goto_23

    :cond_22
    move-object v0, v1

    :cond_23
    :goto_23
    return-object v0

    :catch_24
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TbsApkDownloader.backupApkPath] Exception is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TbsDownload"

    invoke-static {v1, p0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private b(I)Z
    .registers 8

    const-string v0, "TbsDownload"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/l;->l:Ljava/io/File;

    const-string v4, "x5.tbs"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/l;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_40

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_21

    const-string v5, "x5.oversea.tbs.org"

    goto :goto_25

    :cond_21
    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsDownloader;->getBackupFileName(Z)Ljava/lang/String;

    move-result-object v5

    :goto_25
    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    invoke-static {v4, v2}, Lcom/tencent/smtt/utils/FileUtil;->b(Ljava/io/File;Ljava/io/File;)Z

    iget-object v3, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    const-wide/16 v4, 0x0

    invoke-static {v3, v2, v4, v5, p1}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;JI)Z

    move-result p1

    if-nez p1, :cond_3e

    const-string p1, "[TbsApkDownloader.copyTbsApkFromBackupToInstall] verifyTbsApk error!!"

    invoke-static {v0, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3d} :catch_41

    return v1

    :cond_3e
    const/4 p1, 0x1

    return p1

    :cond_40
    return v1

    :catch_41
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TbsApkDownloader.copyTbsApkFromBackupToInstall] Exception is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static c(Landroid/content/Context;)V
    .registers 8

    const-string v0, "(.*)"

    :try_start_2
    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    invoke-static {p0}, Lcom/tencent/smtt/sdk/o;->s(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "x5.tbs"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    new-instance v2, Ljava/io/File;

    const-string v3, "x5.tbs.temp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    invoke-static {p0}, Lcom/tencent/smtt/sdk/l;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_b8

    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloader;->getBackupFileName(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    new-instance v1, Ljava/io/File;

    const-string v3, "x5.oversea.tbs.org"

    invoke-direct {v1, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/tencent/smtt/utils/a;->a(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    array-length v3, p0

    const/4 v4, 0x0

    :goto_58
    if-ge v4, v3, :cond_7c

    aget-object v5, p0, v4

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_79

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_79

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_79

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_79
    add-int/lit8 v4, v4, 0x1

    goto :goto_58

    :cond_7c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/tencent/smtt/utils/a;->a(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    array-length v1, p0

    :goto_94
    if-ge v2, v1, :cond_b8

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_b5

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_b5

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_b5

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b5} :catch_b8

    :cond_b5
    add-int/lit8 v2, v2, 0x1

    goto :goto_94

    :catch_b8
    :cond_b8
    return-void
.end method

.method private c(ZZ)Z
    .registers 15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TbsApkDownloader.verifyTbsApk] isTempFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TbsDownload"

    invoke-static {v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/l;->l:Ljava/io/File;

    const-string v4, "x5.tbs"

    if-nez p1, :cond_20

    move-object v5, v4

    goto :goto_22

    :cond_20
    const-string v5, "x5.tbs.temp"

    :goto_22
    invoke-direct {v0, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_2d

    return v5

    :cond_2d
    iget-object v3, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "tbs_apk_md5"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/tencent/smtt/utils/a;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    if-eqz v3, :cond_1c9

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    goto/16 :goto_1c9

    :cond_4a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TbsApkDownloader.verifyTbsApk] md5("

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") successful!"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v8, 0x0

    if-eqz p1, :cond_bd

    iget-object v3, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v10, "tbs_apkfilesize"

    invoke-interface {v3, v10, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_87

    cmp-long v3, v10, v8

    if-lez v3, :cond_bd

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v3, v10, v8

    if-eqz v3, :cond_bd

    :cond_87
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " filelength failed"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/smtt/sdk/l;->w:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fileLength:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",contentLength:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setCheckErrorDetail(Ljava/lang/String;)V

    return v5

    :cond_bd
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[TbsApkDownloader.verifyTbsApk] length("

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    if-eqz p2, :cond_127

    if-nez p1, :cond_127

    iget-object v3, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;)I

    move-result v3

    iget-object v8, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v9, "tbs_download_version"

    invoke-interface {v8, v9, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v3, :cond_127

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " versionCode failed"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_126

    iget-object p1, p0, Lcom/tencent/smtt/sdk/l;->w:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fileVersion:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",configVersion:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setCheckErrorDetail(Ljava/lang/String;)V

    :cond_126
    return v5

    :cond_127
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[TbsApkDownloader.verifyTbsApk] tbsApkVersionCode("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_18d

    if-nez p1, :cond_18d

    iget-object p2, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {p2, v5, v0}, Lcom/tencent/smtt/utils/b;->a(Landroid/content/Context;ZLjava/io/File;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "3082023f308201a8a00302010202044c46914a300d06092a864886f70d01010505003064310b30090603550406130238363110300e060355040813074265696a696e673110300e060355040713074265696a696e673110300e060355040a130754656e63656e74310c300a060355040b13035753443111300f0603550403130873616d75656c6d6f301e170d3130303732313036313835305a170d3430303731333036313835305a3064310b30090603550406130238363110300e060355040813074265696a696e673110300e060355040713074265696a696e673110300e060355040a130754656e63656e74310c300a060355040b13035753443111300f0603550403130873616d75656c6d6f30819f300d06092a864886f70d010101050003818d0030818902818100c209077044bd0d63ea00ede5b839914cabcc912a87f0f8b390877e0f7a2583f0d5933443c40431c35a4433bc4c965800141961adc44c9625b1d321385221fd097e5bdc2f44a1840d643ab59dc070cf6c4b4b4d98bed5cbb8046e0a7078ae134da107cdf2bfc9b440fe5cb2f7549b44b73202cc6f7c2c55b8cfb0d333a021f01f0203010001300d06092a864886f70d010105050003818100b007db9922774ef4ccfee81ba514a8d57c410257e7a2eba64bfa17c9e690da08106d32f637ac41fbc9f205176c71bde238c872c3ee2f8313502bee44c80288ea4ef377a6f2cdfe4d3653c145c4acfedbfbadea23b559d41980cc3cdd35d79a68240693739aabf5c5ed26148756cf88264226de394c8a24ac35b712b120d4d23a"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " signature failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_18c

    iget-object p1, p0, Lcom/tencent/smtt/sdk/l;->w:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "signature:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_17a

    const-string p2, "null"

    goto :goto_182

    :cond_17a
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_182
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setCheckErrorDetail(Ljava/lang/String;)V

    :cond_18c
    return v5

    :cond_18d
    const-string p2, "[TbsApkDownloader.verifyTbsApk] signature successful!"

    invoke-static {v2, p2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    if-eqz p1, :cond_1b1

    :try_start_195
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/l;->l:Ljava/io/File;

    invoke-direct {p1, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1
    :try_end_1a0
    .catch Ljava/lang/Exception; {:try_start_195 .. :try_end_1a0} :catch_1a1

    goto :goto_1a4

    :catch_1a1
    move-exception p1

    move-object v7, p1

    const/4 p1, 0x0

    :goto_1a4
    if-nez p1, :cond_1b0

    const/16 p1, 0x6d

    invoke-direct {p0, v7}, Lcom/tencent/smtt/sdk/l;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/tencent/smtt/sdk/l;->a(ILjava/lang/String;Z)V

    return v5

    :cond_1b0
    move v5, p1

    :cond_1b1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[TbsApkDownloader.verifyTbsApk] rename("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p2

    :cond_1c9
    :goto_1c9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " md5 failed"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1e9

    iget-object p1, p0, Lcom/tencent/smtt/sdk/l;->w:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    const-string p2, "fileMd5 not match"

    invoke-virtual {p1, p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setCheckErrorDetail(Ljava/lang/String;)V

    :cond_1e9
    return v5
.end method

.method private d(Z)V
    .registers 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/p;->a(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v1, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "request_full_package"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-string v3, "tbs_needdownload"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const/16 v2, -0x7b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "tbs_download_interrupt_code_reason"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    sget-object v1, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    if-eqz p1, :cond_32

    const/16 p1, 0x64

    goto :goto_34

    :cond_32
    const/16 p1, 0x78

    :goto_34
    invoke-interface {v1, p1}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadFinish(I)V

    iget-object p1, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tbs_responsecode"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget-object v1, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;)Z

    move-result v1

    const/4 v4, 0x5

    if-ne p1, v4, :cond_5a

    invoke-virtual {p0, p1, v1}, Lcom/tencent/smtt/sdk/l;->a(IZ)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_50

    return-void

    :cond_50
    :goto_50
    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/smtt/sdk/o;->b(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_a7

    :cond_5a
    const/4 v4, 0x3

    if-eq p1, v4, :cond_8d

    const/16 v4, 0x2710

    if-le p1, v4, :cond_62

    goto :goto_8d

    :cond_62
    iget-object p1, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "tbs_download_version"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/l;->l:Ljava/io/File;

    const-string v4, "x5.tbs"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/tencent/smtt/sdk/o;->a(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/l;->l:Ljava/io/File;

    invoke-direct {p1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/tencent/smtt/sdk/l;->a(Ljava/io/File;Landroid/content/Context;)V

    goto :goto_a7

    :cond_8d
    :goto_8d
    iget-object v2, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/l;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_9a

    invoke-virtual {p0, p1, v2, v1}, Lcom/tencent/smtt/sdk/l;->a(ILjava/io/File;Z)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_50

    :cond_9a
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/l;->c()V

    iget-object p1, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    :goto_a7
    return-void
.end method

.method private e(Z)Z
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TbsApkDownloader.deleteFile] isApk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TbsDownload"

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_22

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/l;->l:Ljava/io/File;

    const-string v1, "x5.tbs"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_2b

    :cond_22
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/l;->l:Ljava/io/File;

    const-string v1, "x5.tbs.temp"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_2b
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-static {p1}, Lcom/tencent/smtt/utils/FileUtil;->b(Ljava/io/File;)V

    :cond_35
    return v0
.end method

.method private g()V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/smtt/sdk/l;->q:I

    iput v0, p0, Lcom/tencent/smtt/sdk/l;->r:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/tencent/smtt/sdk/l;->m:J

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/smtt/sdk/l;->k:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/l;->p:Z

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/l;->s:Z

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/l;->t:Z

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/l;->z:Z

    return-void
.end method

.method private h()V
    .registers 8

    const-string v0, "TbsDownload"

    const-string v1, "[TbsApkDownloader.closeHttpRequest]"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/smtt/sdk/l;->u:Ljava/net/HttpURLConnection;

    const/4 v2, 0x0

    if-eqz v1, :cond_3e

    iget-boolean v3, p0, Lcom/tencent/smtt/sdk/l;->s:Z

    if-nez v3, :cond_1d

    iget-object v3, p0, Lcom/tencent/smtt/sdk/l;->w:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/l;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setResolveIp(Ljava/lang/String;)V

    :cond_1d
    :try_start_1d
    iget-object v1, p0, Lcom/tencent/smtt/sdk/l;->u:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_23

    goto :goto_3c

    :catchall_23
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[closeHttpRequest] mHttpRequest.disconnect() Throwable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3c
    iput-object v2, p0, Lcom/tencent/smtt/sdk/l;->u:Ljava/net/HttpURLConnection;

    :cond_3e
    iget-object v0, p0, Lcom/tencent/smtt/sdk/l;->w:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    iget v1, v0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->a:I

    iget-boolean v3, p0, Lcom/tencent/smtt/sdk/l;->s:Z

    const/4 v4, 0x0

    if-nez v3, :cond_d0

    iget-boolean v3, p0, Lcom/tencent/smtt/sdk/l;->z:Z

    if-eqz v3, :cond_d0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setEventTime(J)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/Apn;->getApnInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5c

    const-string v0, ""

    :cond_5c
    iget-object v3, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result v3

    iget-object v5, p0, Lcom/tencent/smtt/sdk/l;->w:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v5, v0}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setApn(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tencent/smtt/sdk/l;->w:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v5, v3}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setNetworkType(I)V

    iget v5, p0, Lcom/tencent/smtt/sdk/l;->y:I

    if-ne v3, v5, :cond_78

    iget-object v3, p0, Lcom/tencent/smtt/sdk/l;->x:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    :cond_78
    iget-object v0, p0, Lcom/tencent/smtt/sdk/l;->w:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v0, v4}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setNetworkChange(I)V

    :cond_7d
    iget-object v0, p0, Lcom/tencent/smtt/sdk/l;->w:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    iget v3, v0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->a:I

    if-eqz v3, :cond_87

    const/16 v4, 0x6b

    if-ne v3, v4, :cond_a3

    :cond_87
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->getDownFinalFlag()I

    move-result v0

    if-nez v0, :cond_a3

    iget-object v0, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/Apn;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v3, 0x1

    const/16 v4, 0x65

    if-nez v0, :cond_9c

    :goto_98
    invoke-direct {p0, v4, v2, v3}, Lcom/tencent/smtt/sdk/l;->a(ILjava/lang/String;Z)V

    goto :goto_a3

    :cond_9c
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/l;->m()Z

    move-result v0

    if-nez v0, :cond_a3

    goto :goto_98

    :cond_a3
    :goto_a3
    iget-object v0, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b4

    iget-object v0, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    sget-object v2, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_DOWNLOAD_DECOUPLE:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    goto :goto_bc

    :cond_b4
    iget-object v0, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    sget-object v2, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_DOWNLOAD:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    :goto_bc
    iget-object v3, p0, Lcom/tencent/smtt/sdk/l;->w:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v0, v2, v3}, Lcom/tencent/smtt/sdk/TbsLogReport;->eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/l;->w:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->resetArgs()V

    const/16 v0, 0x64

    if-eq v1, v0, :cond_d6

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    invoke-interface {v0, v1}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadFinish(I)V

    goto :goto_d6

    :cond_d0
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/l;->d:Z

    if-nez v0, :cond_d6

    sput-boolean v4, Lcom/tencent/smtt/sdk/TbsDownloader;->a:Z

    :cond_d6
    :goto_d6
    return-void
.end method

.method private i()Ljava/io/File;
    .registers 5

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/FileUtil;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_14

    const-string v3, "x5.oversea.tbs.org"

    goto :goto_19

    :cond_14
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloader;->getBackupFileName(Z)Ljava/lang/String;

    move-result-object v3

    :goto_19
    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_34

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/FileUtil;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloader;->getBackupFileName(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    return-object v0
.end method

.method private j()V
    .registers 7

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/l;->i()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_60

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-static {v0}, Lcom/tencent/smtt/utils/FileUtil;->b(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Lcom/tencent/smtt/utils/a;->a(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(.*)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    array-length v2, v0

    const/4 v3, 0x0

    :goto_38
    if-ge v3, v2, :cond_60

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_59

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_59

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_59

    invoke-static {v4}, Lcom/tencent/smtt/utils/FileUtil;->b(Ljava/io/File;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_59} :catch_5c

    :cond_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    :catch_5c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_60
    return-void
.end method

.method private k()Z
    .registers 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/l;->l:Ljava/io/File;

    const-string v2, "x5.tbs.temp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method private l()J
    .registers 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/l;->l:Ljava/io/File;

    const-string v2, "x5.tbs.temp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_16

    :cond_14
    const-wide/16 v0, 0x0

    :goto_16
    return-wide v0
.end method

.method private m()Z
    .registers 10

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "www.qq.com"

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ping "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_57

    :try_start_21
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_52

    :try_start_26
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_4d

    const/4 v3, 0x0

    :cond_2c
    :try_start_2c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_5f

    const-string v7, "TTL"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_49

    const-string v7, "ttl"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_41
    .catchall {:try_start_2c .. :try_end_41} :catchall_4b

    if-eqz v5, :cond_44

    goto :goto_49

    :cond_44
    add-int/2addr v3, v6

    const/4 v5, 0x5

    if-lt v3, v5, :cond_2c

    goto :goto_5f

    :cond_49
    :goto_49
    const/4 v2, 0x1

    goto :goto_5f

    :catchall_4b
    move-exception v3

    goto :goto_5c

    :catchall_4d
    move-exception v4

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    goto :goto_5c

    :catchall_52
    move-exception v1

    move-object v4, v3

    move-object v3, v1

    move-object v1, v4

    goto :goto_5c

    :catchall_57
    move-exception v0

    move-object v1, v3

    move-object v4, v1

    move-object v3, v0

    move-object v0, v4

    :goto_5c
    :try_start_5c
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_69

    :cond_5f
    :goto_5f
    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/l;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/l;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v4}, Lcom/tencent/smtt/sdk/l;->a(Ljava/io/Closeable;)V

    return v2

    :catchall_69
    move-exception v2

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/l;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/l;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v4}, Lcom/tencent/smtt/sdk/l;->a(Ljava/io/Closeable;)V

    throw v2
.end method

.method private n()J
    .registers 5

    iget v0, p0, Lcom/tencent/smtt/sdk/l;->q:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    const/4 v1, 0x3

    if-eq v0, v1, :cond_12

    const/4 v1, 0x4

    if-eq v0, v1, :cond_12

    const-wide/32 v0, 0x30d40

    goto :goto_1b

    :cond_12
    const-wide/32 v0, 0x186a0

    goto :goto_1b

    :cond_16
    int-to-long v0, v0

    const-wide/16 v2, 0x4e20

    mul-long v0, v0, v2

    :goto_1b
    return-wide v0
.end method

.method private o()Z
    .registers 9

    iget-object v0, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TbsApkDwonloader.detectWifiNetworkAvailable] isWifi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TbsDownload"

    invoke-static {v4, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz v0, :cond_98

    iget-object v0, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/Apn;->getWifiSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[TbsApkDwonloader.detectWifiNetworkAvailable] localBSSID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_41
    new-instance v5, Ljava/net/URL;

    const-string v6, "https://pms.mb.qq.com/rsp204"

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;
    :try_end_4e
    .catchall {:try_start_41 .. :try_end_4e} :catchall_86

    :try_start_4e
    invoke-virtual {v5, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v3, 0x2710

    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v5, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TbsApkDwonloader.detectWifiNetworkAvailable] responseCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_77
    .catchall {:try_start_4e .. :try_end_77} :catchall_83

    const/16 v4, 0xcc

    if-ne v3, v4, :cond_7c

    goto :goto_7d

    :cond_7c
    const/4 v1, 0x0

    :goto_7d
    :try_start_7d
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_80

    :catch_80
    move-object v3, v0

    move v2, v1

    goto :goto_98

    :catchall_83
    move-exception v1

    move-object v3, v5

    goto :goto_87

    :catchall_86
    move-exception v1

    :goto_87
    :try_start_87
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_91

    if-eqz v3, :cond_8f

    :try_start_8c
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8f} :catch_8f

    :catch_8f
    :cond_8f
    move-object v3, v0

    goto :goto_98

    :catchall_91
    move-exception v0

    if-eqz v3, :cond_97

    :try_start_94
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_97} :catch_97

    :catch_97
    :cond_97
    throw v0

    :cond_98
    :goto_98
    if-nez v2, :cond_c0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/l;->B:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/l;->B:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/l;->p()V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/l;->A:Landroid/os/Handler;

    const/16 v1, 0x96

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/l;->A:Landroid/os/Handler;

    const-wide/32 v4, 0x1d4c0

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_c0
    if-eqz v2, :cond_cf

    iget-object v0, p0, Lcom/tencent/smtt/sdk/l;->B:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    iget-object v0, p0, Lcom/tencent/smtt/sdk/l;->B:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_cf
    return v2
.end method

.method private p()V
    .registers 3

    iget-object v0, p0, Lcom/tencent/smtt/sdk/l;->A:Landroid/os/Handler;

    if-nez v0, :cond_13

    new-instance v0, Lcom/tencent/smtt/sdk/l$1;

    invoke-static {}, Lcom/tencent/smtt/sdk/n;->a()Lcom/tencent/smtt/sdk/n;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/smtt/sdk/l$1;-><init>(Lcom/tencent/smtt/sdk/l;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/l;->A:Landroid/os/Handler;

    :cond_13
    return-void
.end method


# virtual methods
.method public a(ILjava/io/File;Z)Landroid/os/Bundle;
    .registers 8

    const/4 v0, 0x0

    if-eqz p3, :cond_e

    new-instance p3, Ljava/io/File;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsDownloader;->getBackupFileName(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_22

    :cond_e
    new-instance p3, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "x5.oversea.tbs.org"

    goto :goto_1f

    :cond_1b
    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->getBackupFileName(Z)Ljava/lang/String;

    move-result-object v1

    :goto_1f
    invoke-direct {p3, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_22
    iget-object p2, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {p2, p3}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;)I

    move-result p2

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/l;->l:Ljava/io/File;

    const-string v3, "x5.tbs"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_3d

    :cond_3c
    const/4 v1, 0x0

    :goto_3d
    iget-object v2, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "tbs_download_version"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "operation"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "old_core_ver"

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "new_core_ver"

    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string p2, "old_apk_location"

    invoke-virtual {v2, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "new_apk_location"

    invoke-virtual {v2, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "diff_file_location"

    invoke-virtual {v2, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public a(IZ)Landroid/os/Bundle;
    .registers 9

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    if-eqz p2, :cond_17

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/o;->p(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/o;->h(Landroid/content/Context;)I

    move-result v1

    goto :goto_25

    :cond_17
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/o;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/o;->i(Landroid/content/Context;)I

    move-result v1

    :goto_25
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/l;->l:Ljava/io/File;

    const-string v4, "x5.tbs"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3a

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_3b

    :cond_3a
    move-object v2, v4

    :goto_3b
    if-nez v2, :cond_3e

    return-object v4

    :cond_3e
    iget-object v3, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    const-string v5, "tbs_download_version"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz p2, :cond_57

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object p2

    iget-object v4, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    const/4 v5, 0x6

    goto :goto_5e

    :cond_57
    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object p2

    iget-object v4, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    const/4 v5, 0x5

    :goto_5e
    invoke-virtual {p2, v4, v5}, Lcom/tencent/smtt/sdk/o;->f(Landroid/content/Context;I)Ljava/io/File;

    move-result-object p2

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "operation"

    invoke-virtual {v4, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "old_core_ver"

    invoke-virtual {v4, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "new_core_ver"

    invoke-virtual {v4, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "old_apk_location"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string p2, "new_apk_location"

    invoke-virtual {v4, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "diff_file_location"

    invoke-virtual {v4, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    const/4 p2, 0x7

    invoke-static {p1, p2}, Lcom/tencent/smtt/utils/FileUtil;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_a2

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    :cond_a2
    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".tbs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string p2, "backup_apk"

    invoke-virtual {v4, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public a(I)V
    .registers 5

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/o;->t(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/o;->b()V

    :try_start_13
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/l;->l:Ljava/io/File;

    const-string v2, "x5.tbs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_29

    if-lez p1, :cond_2c

    if-ne p1, v1, :cond_2c

    :cond_29
    invoke-static {v0}, Lcom/tencent/smtt/utils/FileUtil;->b(Ljava/io/File;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2c} :catch_2c

    :catch_2c
    :cond_2c
    return-void
.end method

.method public a(Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/smtt/sdk/l;->b(ZZ)V

    return-void
.end method

.method public a()Z
    .registers 9

    const-string v0, "TbsApkDownloader"

    const-string v1, "verifyAndInstallDecoupleCoreFromBackup #1"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/FileUtil;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloader;->getBackupFileName(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1c} :catch_66

    const/4 v3, -0x1

    const-string v4, "tbs_decouplecoreversion"

    if-eqz v2, :cond_27

    :try_start_21
    const-string v2, "verifyAndInstallDecoupleCoreFromBackup #2"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42

    :cond_27
    iget-object v2, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloader;->b(I)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_42

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-static {v2, v1}, Lcom/tencent/smtt/utils/FileUtil;->b(Ljava/io/File;Ljava/io/File;)Z

    :cond_42
    :goto_42
    iget-object v2, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    const-wide/16 v5, 0x0

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v7, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v1, v5, v6, v3}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;JI)Z

    move-result v1

    if-eqz v1, :cond_66

    const-string v1, "verifyAndInstallDecoupleCoreFromBackup #3"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/o;->e(Landroid/content/Context;)Z

    move-result v0
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_65} :catch_66

    return v0

    :catch_66
    :cond_66
    const/4 v0, 0x0

    return v0
.end method

.method public a(ZZ)Z
    .registers 11

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x17

    if-ne p1, v1, :cond_8

    return v0

    :cond_8
    iget-object p1, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "use_backup_version"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/o;->i(Landroid/content/Context;)I

    move-result v1

    if-nez p1, :cond_33

    iget-object p1, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "tbs_download_version"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v2, "by default key"

    goto :goto_35

    :cond_33
    const-string v2, "by new key"

    :goto_35
    iput-object v2, p0, Lcom/tencent/smtt/sdk/l;->a:Ljava/lang/String;

    if-eqz p1, :cond_154

    if-ne p1, v1, :cond_3d

    goto/16 :goto_154

    :cond_3d
    const-string v1, "tbs_download_interrupt_code_reason"

    const/16 v2, -0xd6

    const/4 v3, 0x1

    if-eqz p2, :cond_114

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(I)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_84

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_84

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    const/4 v7, 0x4

    invoke-static {v6, v7}, Lcom/tencent/smtt/utils/FileUtil;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_64

    const-string v7, "x5.oversea.tbs.org"

    goto :goto_68

    :cond_64
    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->getBackupFileName(Z)Ljava/lang/String;

    move-result-object v7

    :goto_68
    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_6b
    iget-object v6, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v6

    iget-object v6, v6, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v7, "tbs_download_version_type"

    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v3, :cond_84

    invoke-static {v4, v5}, Lcom/tencent/smtt/utils/FileUtil;->b(Ljava/io/File;Ljava/io/File;)Z
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_7e} :catch_80

    const/4 v5, 0x1

    goto :goto_85

    :catch_80
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_84
    const/4 v5, 0x0

    :goto_85
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/l;->i()Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_f6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_f6

    invoke-direct {p0, v6}, Lcom/tencent/smtt/sdk/l;->a(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_f6

    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/l;->b(I)Z

    move-result p1

    if-eqz p1, :cond_114

    iget-object p1, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/l;->d(Z)V

    if-eqz v5, :cond_f5

    const/16 p1, 0x64

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "use local backup apk in startDownload"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/l;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, v3}, Lcom/tencent/smtt/sdk/l;->a(ILjava/lang/String;Z)V

    iget-object p1, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_e3

    iget-object p1, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object p1

    sget-object p2, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_DOWNLOAD_DECOUPLE:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    goto :goto_eb

    :cond_e3
    iget-object p1, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object p1

    sget-object p2, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_DOWNLOAD:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    :goto_eb
    iget-object v0, p0, Lcom/tencent/smtt/sdk/l;->w:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {p1, p2, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V

    iget-object p1, p0, Lcom/tencent/smtt/sdk/l;->w:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->resetArgs()V

    :cond_f5
    return v3

    :cond_f6
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/l;->j()V

    if-eqz v4, :cond_114

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_114

    iget-object v5, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    const-wide/16 v6, 0x0

    invoke-static {v5, v4, v6, v7, p1}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;JI)Z

    move-result p1

    if-nez p1, :cond_114

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_114

    invoke-static {v4}, Lcom/tencent/smtt/utils/FileUtil;->b(Ljava/io/File;)V

    :cond_114
    invoke-direct {p0, v0, p2}, Lcom/tencent/smtt/sdk/l;->c(ZZ)Z

    move-result p1

    if-eqz p1, :cond_136

    iget-object p1, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/l;->d(Z)V

    return v3

    :cond_136
    invoke-direct {p0, v3}, Lcom/tencent/smtt/sdk/l;->e(Z)Z

    move-result p1

    if-nez p1, :cond_154

    invoke-direct {p0, v3}, Lcom/tencent/smtt/sdk/l;->e(Z)Z

    move-result p1

    if-nez p1, :cond_154

    const-string p1, "TbsDownload"

    const-string p2, "[TbsApkDownloader] delete file failed!"

    invoke-static {p1, p2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object p1

    const/16 p2, -0x12d

    invoke-virtual {p1, p2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    :cond_154
    :goto_154
    return v0
.end method

.method public b()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/l;->s:Z

    iget-object v0, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->tbsLogInfo()Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    move-result-object v0

    const/16 v1, -0x135

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setErrorCode(I)V

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setFailDetail(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v1

    sget-object v2, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_DOWNLOAD_DECOUPLE:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    goto :goto_3b

    :cond_33
    iget-object v1, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v1

    sget-object v2, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_DOWNLOAD:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    :goto_3b
    invoke-virtual {v1, v2, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V

    :cond_3e
    return-void
.end method

.method public b(ZZ)V
    .registers 42

    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, "tbs_downloadstarttime"

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v4

    iget-object v5, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/o;->c(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_23

    if-nez v2, :cond_23

    sput-boolean v5, Lcom/tencent/smtt/sdk/TbsDownloader;->a:Z

    iget-object v2, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x142

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    return-void

    :cond_23
    iget-object v4, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "tbs_responsecode"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v4, v7, :cond_3d

    if-eq v4, v6, :cond_3d

    const/4 v8, 0x4

    if-ne v4, v8, :cond_3b

    goto :goto_3d

    :cond_3b
    const/4 v4, 0x0

    goto :goto_3e

    :cond_3d
    :goto_3d
    const/4 v4, 0x1

    :goto_3e
    if-nez p2, :cond_49

    invoke-virtual {v1, v2, v4}, Lcom/tencent/smtt/sdk/l;->a(ZZ)Z

    move-result v8

    if-eqz v8, :cond_49

    sput-boolean v5, Lcom/tencent/smtt/sdk/TbsDownloader;->a:Z

    return-void

    :cond_49
    iput-boolean v2, v1, Lcom/tencent/smtt/sdk/l;->D:Z

    iget-object v8, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v9, "tbs_downloadurl"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/tencent/smtt/sdk/l;->i:Ljava/lang/String;

    iget-object v8, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v9, "tbs_downloadurl_list"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "backupUrlStrings:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "TbsDownload"

    invoke-static {v11, v9, v7}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v10, v1, Lcom/tencent/smtt/sdk/l;->b:[Ljava/lang/String;

    iput v5, v1, Lcom/tencent/smtt/sdk/l;->c:I

    if-nez v2, :cond_a0

    if-eqz v8, :cond_a0

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v12, ""

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a0

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v12, ";"

    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/tencent/smtt/sdk/l;->b:[Ljava/lang/String;

    :cond_a0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[TbsApkDownloader.startDownload] mDownloadUrl="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/tencent/smtt/sdk/l;->i:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " backupUrlStrings="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " mLocation="

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/tencent/smtt/sdk/l;->k:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " mCanceled="

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v1, Lcom/tencent/smtt/sdk/l;->s:Z

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " mHttpRequest="

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/tencent/smtt/sdk/l;->u:Ljava/net/HttpURLConnection;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v1, Lcom/tencent/smtt/sdk/l;->i:Ljava/lang/String;

    const/16 v9, 0x6e

    if-nez v8, :cond_f7

    iget-object v8, v1, Lcom/tencent/smtt/sdk/l;->k:Ljava/lang/String;

    if-nez v8, :cond_f7

    sget-object v2, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    invoke-interface {v2, v9}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadFinish(I)V

    iget-object v2, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x12e

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    return-void

    :cond_f7
    iget-object v8, v1, Lcom/tencent/smtt/sdk/l;->u:Ljava/net/HttpURLConnection;

    if-eqz v8, :cond_110

    iget-boolean v8, v1, Lcom/tencent/smtt/sdk/l;->s:Z

    if-nez v8, :cond_110

    sget-object v2, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    invoke-interface {v2, v9}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadFinish(I)V

    iget-object v2, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x12f

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    return-void

    :cond_110
    const/16 v8, -0x130

    if-nez v2, :cond_136

    iget-object v12, v1, Lcom/tencent/smtt/sdk/l;->B:Ljava/util/Set;

    iget-object v13, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v13}, Lcom/tencent/smtt/utils/Apn;->getWifiSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_136

    const-string v2, "[TbsApkDownloader.startDownload] WIFI Unavailable"

    invoke-static {v11, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    invoke-interface {v2, v9}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadFinish(I)V

    iget-object v2, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    return-void

    :cond_136
    invoke-direct/range {p0 .. p0}, Lcom/tencent/smtt/sdk/l;->g()V

    const-string v9, "STEP 1/2 begin downloading..."

    invoke-static {v11, v9, v7}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v9, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v9}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getDownloadMaxflow()J

    move-result-wide v12

    iget-object v9, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v9}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v9

    iget-object v9, v9, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v14, "tbs_downloadflow"

    const-wide/16 v5, 0x0

    invoke-interface {v9, v14, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    if-eqz v2, :cond_15d

    sget v9, Lcom/tencent/smtt/sdk/l;->f:I

    goto :goto_15f

    :cond_15d
    sget v9, Lcom/tencent/smtt/sdk/l;->e:I

    :goto_15f
    iput v9, v1, Lcom/tencent/smtt/sdk/l;->C:I

    move-wide/from16 v8, v16

    const/16 v16, 0x0

    :goto_165
    iget v15, v1, Lcom/tencent/smtt/sdk/l;->q:I

    iget v5, v1, Lcom/tencent/smtt/sdk/l;->C:I

    if-le v15, v5, :cond_16d

    goto/16 :goto_694

    :cond_16d
    iget v5, v1, Lcom/tencent/smtt/sdk/l;->r:I

    const/16 v6, 0x8

    if-le v5, v6, :cond_185

    const/16 v2, 0x7b

    invoke-direct {v1, v2, v10, v7}, Lcom/tencent/smtt/sdk/l;->a(ILjava/lang/String;Z)V

    iget-object v2, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x132

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto/16 :goto_694

    :cond_185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v10, "STEP 1/2 begin downloading...failed because you exceeded max flow!"

    if-nez v2, :cond_262

    :try_start_18d
    iget-object v15, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v15}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v15

    iget-object v15, v15, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;
    :try_end_195
    .catchall {:try_start_18d .. :try_end_195} :catchall_257

    move-wide/from16 v23, v8

    const-wide/16 v7, 0x0

    :try_start_199
    invoke-interface {v15, v3, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v25
    :try_end_19d
    .catchall {:try_start_199 .. :try_end_19d} :catchall_253

    sub-long v7, v5, v25

    const-wide/32 v25, 0x5265c00

    cmp-long v9, v7, v25

    if-lez v9, :cond_1e4

    :try_start_1a6
    const-string v7, "[TbsApkDownloader.startDownload] OVER DOWNLOAD_PERIOD"

    invoke-static {v11, v7}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v7, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V
    :try_end_1d4
    .catchall {:try_start_1a6 .. :try_end_1d4} :catchall_1d9

    const/16 v7, -0x133

    const-wide/16 v8, 0x0

    goto :goto_231

    :catchall_1d9
    move-exception v0

    move-object v5, v0

    move-object v10, v11

    move-wide/from16 v26, v12

    move-wide/from16 v8, v23

    move-object/from16 v23, v3

    goto/16 :goto_25e

    :cond_1e4
    :try_start_1e4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TbsApkDownloader.startDownload] downloadFlow="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1ee
    .catchall {:try_start_1e4 .. :try_end_1ee} :catchall_253

    move-wide/from16 v8, v23

    :try_start_1f0
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v7, v8, v12

    if-ltz v7, :cond_22f

    const/4 v5, 0x1

    invoke-static {v11, v10, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v6, 0x70

    const/4 v7, 0x0

    invoke-direct {v1, v6, v7, v5}, Lcom/tencent/smtt/sdk/l;->a(ILjava/lang/String;Z)V

    iget-object v5, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v5

    const/16 v7, -0x133

    invoke-virtual {v5, v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_213
    .catchall {:try_start_1f0 .. :try_end_213} :catchall_257

    if-nez v2, :cond_694

    :goto_215
    iget-object v2, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_224
    iget-object v2, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_694

    :cond_22f
    const/16 v7, -0x133

    :goto_231
    :try_start_231
    iget-object v15, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v15}, Lcom/tencent/smtt/utils/FileUtil;->b(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_264

    const-string v5, "DownloadBegin FreeSpace too small"

    const/4 v6, 0x1

    invoke-static {v11, v5, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v5, 0x69

    const/4 v7, 0x0

    invoke-direct {v1, v5, v7, v6}, Lcom/tencent/smtt/sdk/l;->a(ILjava/lang/String;Z)V

    iget-object v5, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v5

    const/16 v6, -0x134

    invoke-virtual {v5, v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_250
    .catchall {:try_start_231 .. :try_end_250} :catchall_257

    if-nez v2, :cond_694

    goto :goto_215

    :catchall_253
    move-exception v0

    move-wide/from16 v8, v23

    goto :goto_258

    :catchall_257
    move-exception v0

    :goto_258
    move-object v5, v0

    move-object/from16 v23, v3

    :goto_25b
    move-object v10, v11

    move-wide/from16 v26, v12

    :goto_25e
    move v11, v4

    move-object v4, v14

    goto/16 :goto_b51

    :cond_262
    const/16 v7, -0x133

    :cond_264
    const/4 v15, 0x1

    :try_start_265
    iput-boolean v15, v1, Lcom/tencent/smtt/sdk/l;->z:Z

    iget-object v15, v1, Lcom/tencent/smtt/sdk/l;->k:Ljava/lang/String;

    if-eqz v15, :cond_26c

    goto :goto_26e

    :cond_26c
    iget-object v15, v1, Lcom/tencent/smtt/sdk/l;->i:Ljava/lang/String;

    :goto_26e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_273
    .catchall {:try_start_265 .. :try_end_273} :catchall_b48

    move-object/from16 v23, v3

    :try_start_275
    const-string v3, "try url:"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",mRetryTimes:"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/tencent/smtt/sdk/l;->q:I

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x1

    invoke-static {v11, v3, v7}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, v1, Lcom/tencent/smtt/sdk/l;->j:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_295
    .catchall {:try_start_275 .. :try_end_295} :catchall_b46

    if-nez v3, :cond_2a0

    :try_start_297
    iget-object v3, v1, Lcom/tencent/smtt/sdk/l;->w:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v3, v15}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setDownloadUrl(Ljava/lang/String;)V
    :try_end_29c
    .catchall {:try_start_297 .. :try_end_29c} :catchall_29d

    goto :goto_2a0

    :catchall_29d
    move-exception v0

    move-object v5, v0

    goto :goto_25b

    :cond_2a0
    :goto_2a0
    :try_start_2a0
    iput-object v15, v1, Lcom/tencent/smtt/sdk/l;->j:Ljava/lang/String;

    invoke-direct {v1, v15}, Lcom/tencent/smtt/sdk/l;->a(Ljava/lang/String;)V

    iget-boolean v3, v1, Lcom/tencent/smtt/sdk/l;->p:Z
    :try_end_2a7
    .catchall {:try_start_2a0 .. :try_end_2a7} :catchall_b46

    const-string v7, "/"

    if-nez v3, :cond_347

    move-wide/from16 v24, v5

    :try_start_2ad
    invoke-direct/range {p0 .. p0}, Lcom/tencent/smtt/sdk/l;->l()J

    move-result-wide v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[TbsApkDownloader.startDownload] range="

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c5
    .catchall {:try_start_2ad .. :try_end_2c5} :catchall_29d

    move-wide/from16 v26, v12

    :try_start_2c7
    iget-wide v12, v1, Lcom/tencent/smtt/sdk/l;->m:J
    :try_end_2c9
    .catchall {:try_start_2c7 .. :try_end_2c9} :catchall_342

    const-string v3, "-"

    const-string v15, "bytes="

    move-object/from16 v28, v10

    const-string v10, "Range"

    const-wide/16 v18, 0x0

    cmp-long v29, v12, v18

    if-gtz v29, :cond_306

    :try_start_2d7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "STEP 1/2 begin downloading...current"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v12, v1, Lcom/tencent/smtt/sdk/l;->u:Ljava/net/HttpURLConnection;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v10, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v29, v14

    goto :goto_351

    :cond_306
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "#1 STEP 1/2 begin downloading...current/total="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_316
    .catchall {:try_start_2d7 .. :try_end_316} :catchall_342

    move-object/from16 v29, v14

    :try_start_318
    iget-wide v13, v1, Lcom/tencent/smtt/sdk/l;->m:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v12, v1, Lcom/tencent/smtt/sdk/l;->u:Ljava/net/HttpURLConnection;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v1, Lcom/tencent/smtt/sdk/l;->m:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v10, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_341
    .catchall {:try_start_318 .. :try_end_341} :catchall_379

    goto :goto_351

    :catchall_342
    move-exception v0

    move-object v5, v0

    move-object v10, v11

    goto/16 :goto_25e

    :cond_347
    move-wide/from16 v24, v5

    move-object/from16 v28, v10

    move-wide/from16 v26, v12

    move-object/from16 v29, v14

    const-wide/16 v5, 0x0

    :goto_351
    :try_start_351
    iget-object v3, v1, Lcom/tencent/smtt/sdk/l;->w:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    const-wide/16 v12, 0x0

    cmp-long v10, v5, v12

    if-nez v10, :cond_35b

    const/4 v15, 0x0

    goto :goto_35c

    :cond_35b
    const/4 v15, 0x1

    :goto_35c
    invoke-virtual {v3, v15}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setDownloadCancel(I)V

    iget-object v3, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result v3

    iget-object v10, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v10}, Lcom/tencent/smtt/utils/Apn;->getApnInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    iget-object v12, v1, Lcom/tencent/smtt/sdk/l;->x:Ljava/lang/String;
    :try_end_36d
    .catchall {:try_start_351 .. :try_end_36d} :catchall_b40

    if-nez v12, :cond_381

    :try_start_36f
    iget v13, v1, Lcom/tencent/smtt/sdk/l;->y:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_381

    iput-object v10, v1, Lcom/tencent/smtt/sdk/l;->x:Ljava/lang/String;

    iput v3, v1, Lcom/tencent/smtt/sdk/l;->y:I
    :try_end_378
    .catchall {:try_start_36f .. :try_end_378} :catchall_379

    goto :goto_38c

    :catchall_379
    move-exception v0

    move-object v5, v0

    move-object v10, v11

    move v11, v4

    move-object/from16 v4, v29

    goto/16 :goto_b51

    :cond_381
    :try_start_381
    iget v13, v1, Lcom/tencent/smtt/sdk/l;->y:I
    :try_end_383
    .catchall {:try_start_381 .. :try_end_383} :catchall_b40

    if-ne v3, v13, :cond_38f

    :try_start_385
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_389
    .catchall {:try_start_385 .. :try_end_389} :catchall_379

    if-nez v12, :cond_38c

    goto :goto_38f

    :cond_38c
    :goto_38c
    const/16 v12, -0x133

    goto :goto_39b

    :cond_38f
    :goto_38f
    :try_start_38f
    iget-object v12, v1, Lcom/tencent/smtt/sdk/l;->w:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setNetworkChange(I)V

    const/16 v12, -0x133

    iput-object v10, v1, Lcom/tencent/smtt/sdk/l;->x:Ljava/lang/String;

    iput v3, v1, Lcom/tencent/smtt/sdk/l;->y:I

    :goto_39b
    iget v3, v1, Lcom/tencent/smtt/sdk/l;->q:I
    :try_end_39d
    .catchall {:try_start_38f .. :try_end_39d} :catchall_b40

    const/4 v10, 0x1

    if-lt v3, v10, :cond_3a9

    :try_start_3a0
    iget-object v3, v1, Lcom/tencent/smtt/sdk/l;->u:Ljava/net/HttpURLConnection;

    const-string v10, "Referer"

    iget-object v14, v1, Lcom/tencent/smtt/sdk/l;->i:Ljava/lang/String;

    invoke-virtual {v3, v10, v14}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a9
    .catchall {:try_start_3a0 .. :try_end_3a9} :catchall_379

    :cond_3a9
    :try_start_3a9
    iget-object v3, v1, Lcom/tencent/smtt/sdk/l;->u:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[TbsApkDownloader.startDownload] responseCode="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v1, Lcom/tencent/smtt/sdk/l;->w:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v10, v3}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setHttpCode(I)V
    :try_end_3c8
    .catchall {:try_start_3a9 .. :try_end_3c8} :catchall_b40

    if-nez v2, :cond_3fb

    :try_start_3ca
    iget-object v10, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v10}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_3fb

    iget-object v10, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v10}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result v10

    const/4 v14, 0x3

    if-ne v10, v14, :cond_3e3

    iget-object v10, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v10}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result v10

    if-nez v10, :cond_3fb

    :cond_3e3
    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getDownloadWithoutWifi()Z

    move-result v10

    if-nez v10, :cond_3fb

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/l;->b()V

    sget-object v10, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    if-eqz v10, :cond_3f5

    const/16 v14, 0x6f

    invoke-interface {v10, v14}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadFinish(I)V

    :cond_3f5
    const-string v10, "Download is canceled due to NOT_WIFI error!"

    const/4 v13, 0x0

    invoke-static {v11, v10, v13}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3fb
    .catchall {:try_start_3ca .. :try_end_3fb} :catchall_379

    :cond_3fb
    :try_start_3fb
    iget-boolean v13, v1, Lcom/tencent/smtt/sdk/l;->s:Z
    :try_end_3fd
    .catchall {:try_start_3fb .. :try_end_3fd} :catchall_b40

    if-eqz v13, :cond_41f

    :try_start_3ff
    iget-object v3, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v5, -0x135

    invoke-virtual {v3, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_40a
    .catchall {:try_start_3ff .. :try_end_40a} :catchall_379

    if-nez v2, :cond_694

    iget-object v2, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v13, v29

    :goto_41a
    invoke-interface {v2, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_224

    :cond_41f
    move-object/from16 v13, v29

    const/16 v14, 0xc8

    if-eq v3, v14, :cond_590

    const/16 v14, 0xce

    if-ne v3, v14, :cond_42b

    goto/16 :goto_590

    :cond_42b
    const/16 v5, 0x12c

    if-lt v3, v5, :cond_463

    const/16 v5, 0x133

    if-gt v3, v5, :cond_463

    :try_start_433
    iget-object v3, v1, Lcom/tencent/smtt/sdk/l;->u:Ljava/net/HttpURLConnection;

    const-string v5, "Location"

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_44d

    iput-object v3, v1, Lcom/tencent/smtt/sdk/l;->k:Ljava/lang/String;

    iget v3, v1, Lcom/tencent/smtt/sdk/l;->r:I

    const/4 v5, 0x1

    add-int/2addr v3, v5

    iput v3, v1, Lcom/tencent/smtt/sdk/l;->r:I

    if-nez v2, :cond_503

    goto/16 :goto_4eb

    :cond_44d
    const/16 v3, 0x7c

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v1, v3, v5, v6}, Lcom/tencent/smtt/sdk/l;->a(ILjava/lang/String;Z)V

    iget-object v3, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v5, -0x138

    invoke-virtual {v3, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    if-nez v2, :cond_694

    goto/16 :goto_4d7

    :cond_463
    const/16 v5, 0x66

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v1, v5, v6, v7}, Lcom/tencent/smtt/sdk/l;->a(ILjava/lang/String;Z)V

    const/16 v6, 0x1a0

    if-ne v3, v6, :cond_4ba

    const/4 v6, 0x1

    invoke-direct {v1, v6, v4}, Lcom/tencent/smtt/sdk/l;->c(ZZ)Z

    move-result v3
    :try_end_476
    .catchall {:try_start_433 .. :try_end_476} :catchall_589

    if-eqz v3, :cond_4a8

    :try_start_478
    iget-object v3, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v6, -0xd6

    invoke-virtual {v3, v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_483
    .catchall {:try_start_478 .. :try_end_483} :catchall_4a1

    if-nez v2, :cond_49d

    iget-object v2, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    :cond_49d
    move v11, v4

    const/4 v9, 0x1

    goto/16 :goto_bc7

    :catchall_4a1
    move-exception v0

    move-object v5, v0

    move-object v10, v11

    const/16 v16, 0x1

    goto/16 :goto_58c

    :cond_4a8
    const/4 v3, 0x0

    :try_start_4a9
    invoke-direct {v1, v3}, Lcom/tencent/smtt/sdk/l;->e(Z)Z

    iget-object v3, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v5, -0x139

    invoke-virtual {v3, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    if-nez v2, :cond_694

    goto :goto_4d7

    :cond_4ba
    const/16 v5, 0x193

    if-eq v3, v5, :cond_4c2

    const/16 v5, 0x196

    if-ne v3, v5, :cond_4e5

    :cond_4c2
    iget-wide v5, v1, Lcom/tencent/smtt/sdk/l;->m:J

    const-wide/16 v14, -0x1

    cmp-long v7, v5, v14

    if-nez v7, :cond_4e5

    iget-object v3, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v5, -0x13a

    invoke-virtual {v3, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_4d5
    .catchall {:try_start_4a9 .. :try_end_4d5} :catchall_589

    if-nez v2, :cond_694

    :goto_4d7
    iget-object v2, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto/16 :goto_41a

    :cond_4e5
    const/16 v5, 0xca

    if-ne v3, v5, :cond_506

    if-nez v2, :cond_503

    :goto_4eb
    iget-object v3, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v13, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    :cond_503
    move-object v10, v13

    goto/16 :goto_632

    :cond_506
    :try_start_506
    iget v5, v1, Lcom/tencent/smtt/sdk/l;->q:I

    iget v6, v1, Lcom/tencent/smtt/sdk/l;->C:I

    if-ge v5, v6, :cond_534

    const/16 v7, 0x1f7

    if-ne v3, v7, :cond_534

    iget-object v3, v1, Lcom/tencent/smtt/sdk/l;->u:Ljava/net/HttpURLConnection;

    const-string v5, "Retry-After"

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct {v1, v5, v6}, Lcom/tencent/smtt/sdk/l;->a(J)V

    iget-boolean v3, v1, Lcom/tencent/smtt/sdk/l;->s:Z

    if-eqz v3, :cond_531

    iget-object v3, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v5, -0x135

    invoke-virtual {v3, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    if-nez v2, :cond_694

    goto :goto_4d7

    :cond_531
    if-nez v2, :cond_503

    goto :goto_4eb

    :cond_534
    if-ge v5, v6, :cond_561

    const/16 v5, 0x198

    if-eq v3, v5, :cond_546

    const/16 v5, 0x1f8

    if-eq v3, v5, :cond_546

    const/16 v5, 0x1f6

    if-eq v3, v5, :cond_546

    const/16 v5, 0x198

    if-ne v3, v5, :cond_561

    :cond_546
    const-wide/16 v5, 0x0

    invoke-direct {v1, v5, v6}, Lcom/tencent/smtt/sdk/l;->a(J)V

    iget-boolean v3, v1, Lcom/tencent/smtt/sdk/l;->s:Z

    if-eqz v3, :cond_55e

    iget-object v3, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v5, -0x135

    invoke-virtual {v3, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    if-nez v2, :cond_694

    goto/16 :goto_4d7

    :cond_55e
    if-nez v2, :cond_503

    goto :goto_4eb

    :cond_561
    invoke-direct/range {p0 .. p0}, Lcom/tencent/smtt/sdk/l;->l()J

    move-result-wide v5

    const-wide/16 v14, 0x0

    cmp-long v7, v5, v14

    if-gtz v7, :cond_57a

    iget-boolean v5, v1, Lcom/tencent/smtt/sdk/l;->p:Z

    if-nez v5, :cond_57a

    const/16 v5, 0x19a

    if-eq v3, v5, :cond_57a

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/tencent/smtt/sdk/l;->p:Z

    if-nez v2, :cond_503

    goto/16 :goto_4eb

    :cond_57a
    iget-object v3, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v5, -0x13b

    invoke-virtual {v3, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_585
    .catchall {:try_start_506 .. :try_end_585} :catchall_589

    if-nez v2, :cond_694

    goto/16 :goto_4d7

    :catchall_589
    move-exception v0

    move-object v5, v0

    move-object v10, v11

    :goto_58c
    move v11, v4

    move-object v4, v13

    goto/16 :goto_b51

    :cond_590
    :goto_590
    :try_start_590
    iget-object v3, v1, Lcom/tencent/smtt/sdk/l;->u:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    int-to-long v14, v3

    add-long/2addr v14, v5

    iput-wide v14, v1, Lcom/tencent/smtt/sdk/l;->m:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[TbsApkDownloader.startDownload] mContentLength="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v1, Lcom/tencent/smtt/sdk/l;->m:J

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/tencent/smtt/sdk/l;->w:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    iget-wide v14, v1, Lcom/tencent/smtt/sdk/l;->m:J

    invoke-virtual {v3, v14, v15}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setPkgSize(J)V

    iget-object v3, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v14, "tbs_apkfilesize"
    :try_end_5c1
    .catchall {:try_start_590 .. :try_end_5c1} :catchall_b3b

    move-object/from16 v29, v13

    const-wide/16 v12, 0x0

    :try_start_5c5
    invoke-interface {v3, v14, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v14
    :try_end_5c9
    .catchall {:try_start_5c5 .. :try_end_5c9} :catchall_b40

    cmp-long v3, v14, v12

    if-eqz v3, :cond_6a3

    :try_start_5cd
    iget-wide v12, v1, Lcom/tencent/smtt/sdk/l;->m:J

    cmp-long v3, v12, v14

    if-eqz v3, :cond_6a3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DownloadBegin tbsApkFileSize="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "  but contentLength="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/tencent/smtt/sdk/l;->m:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v11, v3, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v2, :cond_66c

    invoke-direct/range {p0 .. p0}, Lcom/tencent/smtt/sdk/l;->o()Z

    move-result v3

    if-nez v3, :cond_608

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getDownloadWithoutWifi()Z

    move-result v3

    if-eqz v3, :cond_66c

    iget-object v3, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/utils/Apn;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_66c

    :cond_608
    iget-object v3, v1, Lcom/tencent/smtt/sdk/l;->b:[Ljava/lang/String;

    if-eqz v3, :cond_63d

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/tencent/smtt/sdk/l;->b(Z)Z

    move-result v5
    :try_end_611
    .catchall {:try_start_5cd .. :try_end_611} :catchall_379

    if-eqz v5, :cond_63d

    if-nez v2, :cond_630

    iget-object v5, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v5

    iget-object v5, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v10, v29

    invoke-interface {v5, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto :goto_632

    :cond_630
    move-object/from16 v10, v29

    :goto_632
    move-object v14, v10

    move-object/from16 v3, v23

    move-wide/from16 v12, v26

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    :goto_63a
    const/4 v10, 0x0

    goto/16 :goto_165

    :cond_63d
    move-object/from16 v10, v29

    const/16 v5, 0x71

    :try_start_641
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tbsApkFileSize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "  but contentLength="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v1, Lcom/tencent/smtt/sdk/l;->m:J

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v1, v5, v6, v7}, Lcom/tencent/smtt/sdk/l;->a(ILjava/lang/String;Z)V

    iget-object v5, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v5

    const/16 v6, -0x136

    invoke-virtual {v5, v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto :goto_681

    :cond_66c
    move-object/from16 v10, v29

    const/16 v5, 0x65

    const-string v6, "WifiNetworkUnAvailable"

    const/4 v7, 0x1

    invoke-direct {v1, v5, v6, v7}, Lcom/tencent/smtt/sdk/l;->a(ILjava/lang/String;Z)V

    iget-object v5, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v5

    const/16 v6, -0x130

    invoke-virtual {v5, v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_681
    .catchall {:try_start_641 .. :try_end_681} :catchall_699

    :goto_681
    if-nez v2, :cond_694

    iget-object v2, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_224

    :cond_694
    :goto_694
    move v11, v4

    :cond_695
    :goto_695
    move/from16 v9, v16

    goto/16 :goto_bc7

    :catchall_699
    move-exception v0

    move-object v5, v0

    move-object/from16 v38, v11

    move v11, v4

    move-object v4, v10

    move-object/from16 v10, v38

    goto/16 :goto_b51

    :cond_6a3
    move-object/from16 v10, v29

    :try_start_6a5
    const-string v12, "[TbsApkDownloader.startDownload] begin readResponse"

    invoke-static {v11, v12}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6aa
    .catchall {:try_start_6a5 .. :try_end_6aa} :catchall_b33

    :try_start_6aa
    iget-object v12, v1, Lcom/tencent/smtt/sdk/l;->u:Ljava/net/HttpURLConnection;

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12
    :try_end_6b0
    .catch Ljava/io/IOException; {:try_start_6aa .. :try_end_6b0} :catch_a1d
    .catchall {:try_start_6aa .. :try_end_6b0} :catchall_a10

    if-eqz v12, :cond_9d2

    :try_start_6b2
    iget-object v13, v1, Lcom/tencent/smtt/sdk/l;->u:Ljava/net/HttpURLConnection;

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v13
    :try_end_6b8
    .catch Ljava/io/IOException; {:try_start_6b2 .. :try_end_6b8} :catch_9c7
    .catchall {:try_start_6b2 .. :try_end_6b8} :catchall_9bd

    if-eqz v13, :cond_6e2

    :try_start_6ba
    const-string v14, "gzip"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_6e2

    new-instance v13, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v13, v12}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_6f9

    :catchall_6c8
    move-exception v0

    move-object v5, v0

    const/4 v7, 0x0

    const/4 v13, 0x0

    :goto_6cc
    move-object/from16 v38, v11

    move v11, v4

    move-object v4, v10

    move-object/from16 v10, v38

    goto/16 :goto_b27

    :catch_6d4
    move-exception v0

    move-object v5, v0

    const/16 v3, -0x130

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_6da
    move-object/from16 v38, v11

    move v11, v4

    move-object v4, v10

    move-object/from16 v10, v38

    goto/16 :goto_a2a

    :cond_6e2
    if-eqz v13, :cond_6f8

    const-string v14, "deflate"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6f8

    new-instance v13, Ljava/util/zip/InflaterInputStream;

    new-instance v14, Ljava/util/zip/Inflater;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v13, v12, v14}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V
    :try_end_6f7
    .catch Ljava/io/IOException; {:try_start_6ba .. :try_end_6f7} :catch_6d4
    .catchall {:try_start_6ba .. :try_end_6f7} :catchall_6c8

    goto :goto_6f9

    :cond_6f8
    move-object v13, v12

    :goto_6f9
    const/16 v14, 0x2000

    :try_start_6fb
    new-array v14, v14, [B

    new-instance v15, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    move-wide/from16 v29, v5

    iget-object v5, v1, Lcom/tencent/smtt/sdk/l;->l:Ljava/io/File;

    const-string v6, "x5.tbs.temp"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-direct {v15, v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_70e
    .catch Ljava/io/IOException; {:try_start_6fb .. :try_end_70e} :catch_9b1
    .catchall {:try_start_6fb .. :try_end_70e} :catchall_9a6

    :try_start_70e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5
    :try_end_712
    .catch Ljava/io/IOException; {:try_start_70e .. :try_end_712} :catch_99a
    .catchall {:try_start_70e .. :try_end_712} :catchall_991

    move-wide/from16 v31, v8

    move-wide/from16 v8, v24

    move-wide/from16 v24, v29

    :goto_718
    :try_start_718
    iget-boolean v3, v1, Lcom/tencent/smtt/sdk/l;->s:Z
    :try_end_71a
    .catch Ljava/io/IOException; {:try_start_718 .. :try_end_71a} :catch_985
    .catchall {:try_start_718 .. :try_end_71a} :catchall_97a

    if-eqz v3, :cond_743

    :try_start_71c
    const-string v3, "STEP 1/2 begin downloading...Canceled!"

    const/4 v5, 0x1

    invoke-static {v11, v3, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v5, -0x135

    invoke-virtual {v3, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_72d
    .catch Ljava/io/IOException; {:try_start_71c .. :try_end_72d} :catch_73c
    .catchall {:try_start_71c .. :try_end_72d} :catchall_736

    move-object/from16 v33, v10

    :goto_72f
    move-object v10, v11

    const/4 v5, 0x0

    :goto_731
    const/16 v8, -0x130

    :goto_733
    move v11, v4

    goto/16 :goto_8f8

    :catchall_736
    move-exception v0

    move-object v5, v0

    move-object v7, v15

    move-wide/from16 v8, v31

    goto :goto_6cc

    :catch_73c
    move-exception v0

    move-object v5, v0

    move-wide/from16 v8, v31

    const/16 v3, -0x130

    goto :goto_6da

    :cond_743
    const/16 v3, 0x2000

    move-object/from16 v33, v10

    const/4 v10, 0x0

    :try_start_748
    invoke-virtual {v13, v14, v10, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_74c
    .catch Ljava/io/IOException; {:try_start_748 .. :try_end_74c} :catch_971
    .catchall {:try_start_748 .. :try_end_74c} :catchall_966

    if-gtz v3, :cond_798

    :try_start_74e
    iget-object v3, v1, Lcom/tencent/smtt/sdk/l;->b:[Ljava/lang/String;

    if-eqz v3, :cond_76e

    const/4 v3, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tencent/smtt/sdk/l;->c(ZZ)Z

    move-result v5

    if-nez v5, :cond_76e

    if-nez v2, :cond_764

    invoke-virtual {v1, v10}, Lcom/tencent/smtt/sdk/l;->b(Z)Z

    move-result v3

    if-eqz v3, :cond_764

    move-object v10, v11

    const/4 v5, 0x1

    goto :goto_731

    :cond_764
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/tencent/smtt/sdk/l;->t:Z

    move-object v10, v11

    const/4 v5, 0x0

    const/16 v8, -0x130

    const/16 v16, 0x0

    goto :goto_733

    :cond_76e
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/tencent/smtt/sdk/l;->t:Z

    iget-object v3, v1, Lcom/tencent/smtt/sdk/l;->b:[Ljava/lang/String;

    if-eqz v3, :cond_777

    const/16 v16, 0x1

    :cond_777
    iget-object v3, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v6, -0x137

    invoke-virtual {v3, v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_782
    .catch Ljava/io/IOException; {:try_start_74e .. :try_end_782} :catch_78c
    .catchall {:try_start_74e .. :try_end_782} :catchall_783

    goto :goto_72f

    :catchall_783
    move-exception v0

    move-object v5, v0

    move-object v10, v11

    move-object v7, v15

    move-wide/from16 v8, v31

    move v11, v4

    goto/16 :goto_96d

    :catch_78c
    move-exception v0

    move-object v5, v0

    move-object v10, v11

    move-wide/from16 v8, v31

    const/16 v3, -0x130

    move v11, v4

    move-object/from16 v4, v33

    goto/16 :goto_a2a

    :cond_798
    :try_start_798
    invoke-virtual {v15, v14, v10, v3}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v15}, Ljava/io/FileOutputStream;->flush()V
    :try_end_79e
    .catch Ljava/io/IOException; {:try_start_798 .. :try_end_79e} :catch_971
    .catchall {:try_start_798 .. :try_end_79e} :catchall_966

    if-nez v2, :cond_860

    move-object/from16 v17, v11

    int-to-long v10, v3

    add-long v10, v31, v10

    cmp-long v31, v10, v26

    if-ltz v31, :cond_800

    move-object/from16 v5, v17

    move-object/from16 v3, v28

    const/4 v6, 0x1

    :try_start_7ae
    invoke-static {v5, v3, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "downloadFlow="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " downloadMaxflow="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7c3
    .catch Ljava/io/IOException; {:try_start_7ae .. :try_end_7c3} :catch_7f6
    .catchall {:try_start_7ae .. :try_end_7c3} :catchall_7ec

    move-wide/from16 v6, v26

    :try_start_7c5
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v8, 0x70

    const/4 v9, 0x1

    invoke-direct {v1, v8, v3, v9}, Lcom/tencent/smtt/sdk/l;->a(ILjava/lang/String;Z)V

    iget-object v3, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v8, -0x133

    invoke-virtual {v3, v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_7dd
    .catch Ljava/io/IOException; {:try_start_7c5 .. :try_end_7dd} :catch_7e8
    .catchall {:try_start_7c5 .. :try_end_7dd} :catchall_7e4

    move-wide/from16 v26, v6

    move-wide/from16 v31, v10

    move-object v10, v5

    goto/16 :goto_850

    :catchall_7e4
    move-exception v0

    move-wide/from16 v26, v6

    goto :goto_7ed

    :catch_7e8
    move-exception v0

    move-wide/from16 v26, v6

    goto :goto_7f7

    :catchall_7ec
    move-exception v0

    :goto_7ed
    move-wide v8, v10

    move-object v7, v15

    move v11, v4

    move-object v10, v5

    move-object/from16 v4, v33

    move-object v5, v0

    goto/16 :goto_b27

    :catch_7f6
    move-exception v0

    :goto_7f7
    move-wide v8, v10

    const/16 v3, -0x130

    move v11, v4

    move-object v10, v5

    move-object/from16 v4, v33

    goto/16 :goto_9a3

    :cond_800
    move-wide/from16 v31, v10

    move-object/from16 v10, v17

    move-object/from16 v21, v28

    const/16 v17, -0x133

    const/16 v20, 0x70

    :try_start_80a
    iget-object v11, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v11}, Lcom/tencent/smtt/utils/FileUtil;->b(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_867

    const-string v3, "DownloadEnd FreeSpace too small "

    const/4 v5, 0x1

    invoke-static {v10, v3, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "freespace="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/smtt/utils/p;->a()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ",and minFreeSpace="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getDownloadMinFreeSpace()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x69

    const/4 v6, 0x1

    invoke-direct {v1, v5, v3, v6}, Lcom/tencent/smtt/sdk/l;->a(ILjava/lang/String;Z)V

    iget-object v3, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v5, -0x134

    invoke-virtual {v3, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_850
    .catch Ljava/io/IOException; {:try_start_80a .. :try_end_850} :catch_85b
    .catchall {:try_start_80a .. :try_end_850} :catchall_856

    :goto_850
    move v11, v4

    const/4 v5, 0x0

    const/16 v8, -0x130

    goto/16 :goto_8f8

    :catchall_856
    move-exception v0

    move-object v5, v0

    move v11, v4

    goto/16 :goto_96a

    :catch_85b
    move-exception v0

    move-object v5, v0

    move v11, v4

    goto/16 :goto_975

    :cond_860
    move-object v10, v11

    move-object/from16 v21, v28

    const/16 v17, -0x133

    const/16 v20, 0x70

    :cond_867
    move v11, v4

    int-to-long v3, v3

    :try_start_869
    invoke-direct {v1, v8, v9, v3, v4}, Lcom/tencent/smtt/sdk/l;->a(JJ)J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    add-long v3, v29, v3

    sub-long v28, v34, v5

    const-wide/16 v36, 0x3e8

    cmp-long v30, v28, v36

    if-lez v30, :cond_94a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#2 STEP 1/2 begin downloading...current/total="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v28, v7

    iget-wide v6, v1, Lcom/tencent/smtt/sdk/l;->m:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v10, v5, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v5, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    if-eqz v5, :cond_8ae

    long-to-double v6, v3

    move-wide/from16 v29, v8

    iget-wide v8, v1, Lcom/tencent/smtt/sdk/l;->m:J

    long-to-double v8, v8

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x4059000000000000L  # 100.0

    mul-double v6, v6, v8

    double-to-int v6, v6

    invoke-interface {v5, v6}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadProgress(I)V

    goto :goto_8b0

    :cond_8ae
    move-wide/from16 v29, v8

    :goto_8b0
    if-nez v2, :cond_943

    sub-long v5, v3, v24

    const-wide/32 v7, 0x100000

    cmp-long v9, v5, v7

    if-lez v9, :cond_943

    iget-object v5, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_93c

    iget-object v5, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_8d4

    iget-object v5, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result v5

    if-nez v5, :cond_93c

    :cond_8d4
    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getDownloadWithoutWifi()Z

    move-result v5

    if-nez v5, :cond_93c

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/l;->b()V

    sget-object v3, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    if-eqz v3, :cond_8e6

    const/16 v4, 0x6f

    invoke-interface {v3, v4}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadFinish(I)V

    :cond_8e6
    const-string v3, "Download is paused due to NOT_WIFI error!"

    const/4 v4, 0x0

    invoke-static {v10, v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v8, -0x130

    invoke-virtual {v3, v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_8f7
    .catch Ljava/io/IOException; {:try_start_869 .. :try_end_8f7} :catch_964
    .catchall {:try_start_869 .. :try_end_8f7} :catchall_962

    const/4 v5, 0x0

    :goto_8f8
    if-eqz v5, :cond_934

    :try_start_8fa
    invoke-direct {v1, v15}, Lcom/tencent/smtt/sdk/l;->a(Ljava/io/Closeable;)V

    invoke-direct {v1, v13}, Lcom/tencent/smtt/sdk/l;->a(Ljava/io/Closeable;)V

    invoke-direct {v1, v12}, Lcom/tencent/smtt/sdk/l;->a(Ljava/io/Closeable;)V
    :try_end_903
    .catchall {:try_start_8fa .. :try_end_903} :catchall_92c

    if-nez v2, :cond_920

    iget-object v3, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v9, v33

    invoke-interface {v3, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto :goto_922

    :cond_920
    move-object/from16 v9, v33

    :goto_922
    move-object v14, v9

    move v4, v11

    move-object/from16 v3, v23

    move-wide/from16 v12, v26

    move-wide/from16 v8, v31

    goto/16 :goto_b11

    :catchall_92c
    move-exception v0

    move-object v5, v0

    move-wide/from16 v8, v31

    move-object/from16 v4, v33

    goto/16 :goto_b51

    :cond_934
    move-wide/from16 v8, v31

    move-object/from16 v4, v33

    const/16 v3, -0x130

    goto/16 :goto_9dc

    :cond_93c
    move-object/from16 v9, v33

    const/16 v8, -0x130

    move-wide/from16 v24, v3

    goto :goto_947

    :cond_943
    move-object/from16 v9, v33

    const/16 v8, -0x130

    :goto_947
    move-wide/from16 v5, v34

    goto :goto_952

    :cond_94a
    move-object/from16 v28, v7

    move-wide/from16 v29, v8

    move-object/from16 v9, v33

    const/16 v8, -0x130

    :goto_952
    move-object/from16 v7, v28

    move-object/from16 v28, v21

    move-object/from16 v38, v10

    move-object v10, v9

    move-wide/from16 v8, v29

    move-wide/from16 v29, v3

    move v4, v11

    move-object/from16 v11, v38

    goto/16 :goto_718

    :catchall_962
    move-exception v0

    goto :goto_969

    :catch_964
    move-exception v0

    goto :goto_974

    :catchall_966
    move-exception v0

    move-object v10, v11

    move v11, v4

    :goto_969
    move-object v5, v0

    :goto_96a
    move-object v7, v15

    move-wide/from16 v8, v31

    :goto_96d
    move-object/from16 v4, v33

    goto/16 :goto_b27

    :catch_971
    move-exception v0

    move-object v10, v11

    move v11, v4

    :goto_974
    move-object v5, v0

    :goto_975
    move-wide/from16 v8, v31

    move-object/from16 v4, v33

    goto :goto_98d

    :catchall_97a
    move-exception v0

    move-object v9, v10

    move-object v10, v11

    move v11, v4

    move-object v5, v0

    move-object v4, v9

    move-object v7, v15

    move-wide/from16 v8, v31

    goto/16 :goto_b27

    :catch_985
    move-exception v0

    move-object v9, v10

    move-object v10, v11

    move v11, v4

    move-object v5, v0

    move-object v4, v9

    move-wide/from16 v8, v31

    :goto_98d
    const/16 v3, -0x130

    goto/16 :goto_a2a

    :catchall_991
    move-exception v0

    move-object/from16 v38, v11

    move v11, v4

    move-object v4, v10

    move-object/from16 v10, v38

    goto/16 :goto_b25

    :catch_99a
    move-exception v0

    const/16 v3, -0x130

    move-object/from16 v38, v11

    move v11, v4

    move-object v4, v10

    move-object/from16 v10, v38

    :goto_9a3
    move-object v5, v0

    goto/16 :goto_a2a

    :catchall_9a6
    move-exception v0

    move-object/from16 v38, v11

    move v11, v4

    move-object v4, v10

    move-object/from16 v10, v38

    move-object v5, v0

    const/4 v7, 0x0

    goto/16 :goto_b27

    :catch_9b1
    move-exception v0

    const/16 v3, -0x130

    move-object/from16 v38, v11

    move v11, v4

    move-object v4, v10

    move-object/from16 v10, v38

    move-object v5, v0

    goto/16 :goto_a29

    :catchall_9bd
    move-exception v0

    move-object/from16 v38, v11

    move v11, v4

    move-object v4, v10

    move-object/from16 v10, v38

    move-object v5, v0

    const/4 v7, 0x0

    goto :goto_a1a

    :catch_9c7
    move-exception v0

    const/16 v3, -0x130

    move-object/from16 v38, v11

    move v11, v4

    move-object v4, v10

    move-object/from16 v10, v38

    move-object v5, v0

    goto :goto_a28

    :cond_9d2
    const/16 v3, -0x130

    move-object/from16 v38, v11

    move v11, v4

    move-object v4, v10

    move-object/from16 v10, v38

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_9dc
    :try_start_9dc
    invoke-direct {v1, v15}, Lcom/tencent/smtt/sdk/l;->a(Ljava/io/Closeable;)V

    invoke-direct {v1, v13}, Lcom/tencent/smtt/sdk/l;->a(Ljava/io/Closeable;)V

    invoke-direct {v1, v12}, Lcom/tencent/smtt/sdk/l;->a(Ljava/io/Closeable;)V

    iget-boolean v5, v1, Lcom/tencent/smtt/sdk/l;->t:Z

    if-nez v5, :cond_9f4

    iget-object v5, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v5

    const/16 v6, -0x13f

    invoke-virtual {v5, v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_9f4
    .catchall {:try_start_9dc .. :try_end_9f4} :catchall_b31

    :cond_9f4
    if-nez v2, :cond_695

    iget-object v2, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_a02
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a05
    iget-object v2, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_695

    :catchall_a10
    move-exception v0

    move-object/from16 v38, v11

    move v11, v4

    move-object v4, v10

    move-object/from16 v10, v38

    move-object v5, v0

    const/4 v7, 0x0

    const/4 v12, 0x0

    :goto_a1a
    const/4 v13, 0x0

    goto/16 :goto_b27

    :catch_a1d
    move-exception v0

    const/16 v3, -0x130

    move-object/from16 v38, v11

    move v11, v4

    move-object v4, v10

    move-object/from16 v10, v38

    move-object v5, v0

    const/4 v12, 0x0

    :goto_a28
    const/4 v13, 0x0

    :goto_a29
    const/4 v15, 0x0

    :goto_a2a
    :try_start_a2a
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    instance-of v6, v5, Ljava/net/SocketTimeoutException;

    if-nez v6, :cond_ad0

    instance-of v6, v5, Ljava/net/SocketException;
    :try_end_a33
    .catchall {:try_start_a2a .. :try_end_a33} :catchall_b22

    if-eqz v6, :cond_a37

    goto/16 :goto_ad0

    :cond_a37
    if-nez v2, :cond_aa1

    :try_start_a39
    iget-object v6, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/utils/FileUtil;->b(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_aa1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "freespace="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a4b
    .catchall {:try_start_a39 .. :try_end_a4b} :catchall_a9e

    move-object/from16 v29, v4

    :try_start_a4d
    invoke-static {}, Lcom/tencent/smtt/utils/p;->a()J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",and minFreeSpace="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getDownloadMinFreeSpace()J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x69

    const/4 v5, 0x1

    invoke-direct {v1, v4, v3, v5}, Lcom/tencent/smtt/sdk/l;->a(ILjava/lang/String;Z)V

    iget-object v3, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v4, -0x134

    invoke-virtual {v3, v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_a7b
    .catchall {:try_start_a4d .. :try_end_a7b} :catchall_a99

    :try_start_a7b
    invoke-direct {v1, v15}, Lcom/tencent/smtt/sdk/l;->a(Ljava/io/Closeable;)V

    invoke-direct {v1, v13}, Lcom/tencent/smtt/sdk/l;->a(Ljava/io/Closeable;)V

    invoke-direct {v1, v12}, Lcom/tencent/smtt/sdk/l;->a(Ljava/io/Closeable;)V
    :try_end_a84
    .catchall {:try_start_a7b .. :try_end_a84} :catchall_a96

    if-nez v2, :cond_695

    iget-object v2, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v4, v29

    goto/16 :goto_a02

    :catchall_a96
    move-exception v0

    goto/16 :goto_b43

    :catchall_a99
    move-exception v0

    move-object/from16 v4, v29

    goto/16 :goto_b25

    :catchall_a9e
    move-exception v0

    goto/16 :goto_b25

    :cond_aa1
    move-wide/from16 v21, v8

    const-wide/16 v7, 0x0

    :try_start_aa5
    invoke-direct {v1, v7, v8}, Lcom/tencent/smtt/sdk/l;->a(J)V

    invoke-direct/range {p0 .. p0}, Lcom/tencent/smtt/sdk/l;->k()Z

    move-result v6
    :try_end_aac
    .catchall {:try_start_aa5 .. :try_end_aac} :catchall_b1c

    if-nez v6, :cond_abc

    const/16 v6, 0x6a

    :try_start_ab0
    invoke-direct {v1, v5}, Lcom/tencent/smtt/sdk/l;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5
    :try_end_ab4
    .catchall {:try_start_ab0 .. :try_end_ab4} :catchall_ab9

    const/4 v3, 0x0

    :goto_ab5
    :try_start_ab5
    invoke-direct {v1, v6, v5, v3}, Lcom/tencent/smtt/sdk/l;->a(ILjava/lang/String;Z)V

    goto :goto_ac4

    :catchall_ab9
    move-exception v0

    const/4 v3, 0x0

    goto :goto_b1d

    :cond_abc
    const/4 v3, 0x0

    const/16 v6, 0x68

    invoke-direct {v1, v5}, Lcom/tencent/smtt/sdk/l;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5
    :try_end_ac3
    .catchall {:try_start_ab5 .. :try_end_ac3} :catchall_b1c

    goto :goto_ab5

    :goto_ac4
    :try_start_ac4
    invoke-direct {v1, v15}, Lcom/tencent/smtt/sdk/l;->a(Ljava/io/Closeable;)V

    invoke-direct {v1, v13}, Lcom/tencent/smtt/sdk/l;->a(Ljava/io/Closeable;)V

    invoke-direct {v1, v12}, Lcom/tencent/smtt/sdk/l;->a(Ljava/io/Closeable;)V
    :try_end_acd
    .catchall {:try_start_ac4 .. :try_end_acd} :catchall_b17

    if-nez v2, :cond_b09

    goto :goto_af1

    :cond_ad0
    :goto_ad0
    move-wide/from16 v21, v8

    const v6, 0x186a0

    :try_start_ad5
    iput v6, v1, Lcom/tencent/smtt/sdk/l;->n:I

    const-wide/16 v6, 0x0

    invoke-direct {v1, v6, v7}, Lcom/tencent/smtt/sdk/l;->a(J)V

    const/16 v6, 0x67

    invoke-direct {v1, v5}, Lcom/tencent/smtt/sdk/l;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    invoke-direct {v1, v6, v5, v3}, Lcom/tencent/smtt/sdk/l;->a(ILjava/lang/String;Z)V
    :try_end_ae6
    .catchall {:try_start_ad5 .. :try_end_ae6} :catchall_b1c

    :try_start_ae6
    invoke-direct {v1, v15}, Lcom/tencent/smtt/sdk/l;->a(Ljava/io/Closeable;)V

    invoke-direct {v1, v13}, Lcom/tencent/smtt/sdk/l;->a(Ljava/io/Closeable;)V

    invoke-direct {v1, v12}, Lcom/tencent/smtt/sdk/l;->a(Ljava/io/Closeable;)V
    :try_end_aef
    .catchall {:try_start_ae6 .. :try_end_aef} :catchall_b17

    if-nez v2, :cond_b09

    :goto_af1
    iget-object v5, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v5

    iget-object v5, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    :cond_b09
    move-object v14, v4

    move v4, v11

    move-wide/from16 v8, v21

    move-object/from16 v3, v23

    move-wide/from16 v12, v26

    :goto_b11
    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    move-object v11, v10

    goto/16 :goto_63a

    :catchall_b17
    move-exception v0

    move-object v5, v0

    move-wide/from16 v8, v21

    goto :goto_b51

    :catchall_b1c
    move-exception v0

    :goto_b1d
    move-object v5, v0

    move-object v7, v15

    move-wide/from16 v8, v21

    goto :goto_b27

    :catchall_b22
    move-exception v0

    move-wide/from16 v21, v8

    :goto_b25
    move-object v5, v0

    move-object v7, v15

    :goto_b27
    :try_start_b27
    invoke-direct {v1, v7}, Lcom/tencent/smtt/sdk/l;->a(Ljava/io/Closeable;)V

    invoke-direct {v1, v13}, Lcom/tencent/smtt/sdk/l;->a(Ljava/io/Closeable;)V

    invoke-direct {v1, v12}, Lcom/tencent/smtt/sdk/l;->a(Ljava/io/Closeable;)V

    throw v5
    :try_end_b31
    .catchall {:try_start_b27 .. :try_end_b31} :catchall_b31

    :catchall_b31
    move-exception v0

    goto :goto_b50

    :catchall_b33
    move-exception v0

    move-object/from16 v38, v11

    move v11, v4

    move-object v4, v10

    move-object/from16 v10, v38

    goto :goto_b50

    :catchall_b3b
    move-exception v0

    move-object v10, v11

    move v11, v4

    move-object v4, v13

    goto :goto_b50

    :catchall_b40
    move-exception v0

    move-object v10, v11

    move v11, v4

    :goto_b43
    move-object/from16 v4, v29

    goto :goto_b50

    :catchall_b46
    move-exception v0

    goto :goto_b4b

    :catchall_b48
    move-exception v0

    move-object/from16 v23, v3

    :goto_b4b
    move-object v10, v11

    move-wide/from16 v26, v12

    move v11, v4

    move-object v4, v14

    :goto_b50
    move-object v5, v0

    :goto_b51
    :try_start_b51
    instance-of v6, v5, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v6, :cond_b92

    if-nez v2, :cond_b92

    iget-object v6, v1, Lcom/tencent/smtt/sdk/l;->b:[Ljava/lang/String;

    if-eqz v6, :cond_b92

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/tencent/smtt/sdk/l;->b(Z)Z

    move-result v6

    if-eqz v6, :cond_b92

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[startdownload]url:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/tencent/smtt/sdk/l;->k:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " download exception："

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x7d

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v1, v5, v6, v7}, Lcom/tencent/smtt/sdk/l;->a(ILjava/lang/String;Z)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x1

    const-wide/16 v12, 0x0

    goto/16 :goto_c64

    :cond_b92
    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    const-wide/16 v12, 0x0

    invoke-direct {v1, v12, v13}, Lcom/tencent/smtt/sdk/l;->a(J)V

    const/16 v7, 0x6b

    invoke-direct {v1, v5}, Lcom/tencent/smtt/sdk/l;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    invoke-direct {v1, v7, v5, v3}, Lcom/tencent/smtt/sdk/l;->a(ILjava/lang/String;Z)V

    iget-boolean v5, v1, Lcom/tencent/smtt/sdk/l;->s:Z

    if-eqz v5, :cond_c61

    iget-object v5, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v5

    const/16 v6, -0x135

    invoke-virtual {v5, v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_bb4
    .catchall {:try_start_b51 .. :try_end_bb4} :catchall_c94

    if-nez v2, :cond_695

    iget-object v2, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a05

    :goto_bc7
    iget-boolean v2, v1, Lcom/tencent/smtt/sdk/l;->s:Z

    if-nez v2, :cond_c5d

    iget-boolean v2, v1, Lcom/tencent/smtt/sdk/l;->t:Z

    if-eqz v2, :cond_c19

    iget-object v2, v1, Lcom/tencent/smtt/sdk/l;->b:[Ljava/lang/String;

    if-nez v2, :cond_bda

    if-nez v9, :cond_bda

    const/4 v2, 0x1

    invoke-direct {v1, v2, v11}, Lcom/tencent/smtt/sdk/l;->c(ZZ)Z

    move-result v9

    :cond_bda
    iget-object v2, v1, Lcom/tencent/smtt/sdk/l;->w:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v2, v9}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setUnpkgFlag(I)V

    iget-object v2, v1, Lcom/tencent/smtt/sdk/l;->w:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    if-nez v11, :cond_bec

    if-eqz v9, :cond_be7

    const/4 v4, 0x1

    goto :goto_be8

    :cond_be7
    const/4 v4, 0x2

    :goto_be8
    invoke-virtual {v2, v4}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setPatchUpdateFlag(I)V

    goto :goto_bf0

    :cond_bec
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setPatchUpdateFlag(I)V

    :goto_bf0
    if-eqz v9, :cond_c09

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/tencent/smtt/sdk/l;->d(Z)V

    iget-object v3, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v4, -0x13d

    invoke-virtual {v3, v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    const/16 v3, 0x64

    const-string v4, "success"

    invoke-direct {v1, v3, v4, v2}, Lcom/tencent/smtt/sdk/l;->a(ILjava/lang/String;Z)V

    goto :goto_c19

    :cond_c09
    iget-object v2, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x13e

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/tencent/smtt/sdk/l;->e(Z)Z

    goto :goto_c1a

    :cond_c19
    :goto_c19
    const/4 v3, 0x0

    :goto_c1a
    iget-object v2, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    if-eqz v9, :cond_c36

    iget-object v4, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "tbs_download_success_retrytimes"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const/4 v7, 0x1

    add-int/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c55

    :cond_c36
    const/4 v7, 0x1

    iget-object v4, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "tbs_download_failed_retrytimes"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    add-int/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getDownloadFailedMaxRetrytimes()I

    move-result v4

    if-ne v3, v4, :cond_c55

    iget-object v3, v1, Lcom/tencent/smtt/sdk/l;->w:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setDownloadCancel(I)V

    :cond_c55
    :goto_c55
    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    iget-object v2, v1, Lcom/tencent/smtt/sdk/l;->w:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v2, v9}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setDownFinalFlag(I)V

    :cond_c5d
    invoke-direct/range {p0 .. p0}, Lcom/tencent/smtt/sdk/l;->h()V

    return-void

    :cond_c61
    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x1

    :goto_c64
    :try_start_c64
    iget-object v14, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v14}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v14

    const/16 v15, -0x13c

    invoke-virtual {v14, v15}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_c6f
    .catchall {:try_start_c64 .. :try_end_c6f} :catchall_c94

    if-nez v2, :cond_c89

    iget-object v14, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v14}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v14

    iget-object v14, v14, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v14, v4, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v14, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v14}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v14

    invoke-virtual {v14}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    :cond_c89
    move-object v14, v4

    move v4, v11

    move-object/from16 v3, v23

    move-object v11, v10

    move-object v10, v6

    move-wide v5, v12

    move-wide/from16 v12, v26

    goto/16 :goto_165

    :catchall_c94
    move-exception v0

    move-object v3, v0

    if-nez v2, :cond_cb0

    iget-object v2, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    :cond_cb0
    throw v3
.end method

.method public b(Z)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/l;->o()Z

    move-result p1

    if-nez p1, :cond_18

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getDownloadWithoutWifi()Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/smtt/utils/Apn;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_18

    :cond_17
    return v0

    :cond_18
    iget-object p1, p0, Lcom/tencent/smtt/sdk/l;->b:[Ljava/lang/String;

    if-eqz p1, :cond_3d

    iget v1, p0, Lcom/tencent/smtt/sdk/l;->c:I

    if-ltz v1, :cond_3d

    array-length v2, p1

    if-ge v1, v2, :cond_3d

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tencent/smtt/sdk/l;->c:I

    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/tencent/smtt/sdk/l;->k:Ljava/lang/String;

    iput v0, p0, Lcom/tencent/smtt/sdk/l;->q:I

    iput v0, p0, Lcom/tencent/smtt/sdk/l;->r:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/tencent/smtt/sdk/l;->m:J

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/l;->p:Z

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/l;->s:Z

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/l;->t:Z

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/l;->z:Z

    const/4 p1, 0x1

    return p1

    :cond_3d
    return v0
.end method

.method public c(Z)I
    .registers 6

    iget-object v0, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/l;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1d

    if-nez v0, :cond_c

    goto :goto_1c

    :cond_c
    iget-object p1, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    new-instance v1, Ljava/io/File;

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloader;->getBackupFileName(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;)I

    move-result v1

    :goto_1c
    return v1

    :cond_1d
    if-nez v0, :cond_20

    goto :goto_3a

    :cond_20
    iget-object p1, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/l;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2f

    const-string v1, "x5.oversea.tbs.org"

    goto :goto_33

    :cond_2f
    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsDownloader;->getBackupFileName(Z)Ljava/lang/String;

    move-result-object v1

    :goto_33
    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;)I

    move-result v1

    :goto_3a
    return v1
.end method

.method public c()V
    .registers 2

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/l;->b()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/l;->e(Z)Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/l;->e(Z)Z

    return-void
.end method

.method public d()Z
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TbsApkDownloader.isDownloadForeground] mIsDownloadForeground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/smtt/sdk/l;->D:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TbsDownload"

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/l;->D:Z

    return v0
.end method

.method e()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pauseDownload,isPause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/smtt/sdk/l;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "isDownloading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->isDownloading()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TbsDownload"

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/l;->d:Z

    if-nez v0, :cond_37

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/l;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/l;->d:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/l;->z:Z

    :cond_37
    return-void
.end method

.method f()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeDownload,isPause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/smtt/sdk/l;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "isDownloading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->isDownloading()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TbsDownload"

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/l;->d:Z

    if-eqz v0, :cond_34

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/l;->d:Z

    invoke-virtual {p0, v0}, Lcom/tencent/smtt/sdk/l;->a(Z)V

    :cond_34
    return-void
.end method
