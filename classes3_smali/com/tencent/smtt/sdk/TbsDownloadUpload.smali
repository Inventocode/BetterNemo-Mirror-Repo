.class public Lcom/tencent/smtt/sdk/TbsDownloadUpload;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/smtt/sdk/TbsDownloadUpload$TbsUploadKey;
    }
.end annotation


# static fields
.field private static b:Lcom/tencent/smtt/sdk/TbsDownloadUpload;


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field public mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v0, "tbs_download_upload"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->c:Landroid/content/Context;

    if-nez v0, :cond_1d

    iput-object p1, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->c:Landroid/content/Context;

    :cond_1d
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    invoke-static {p0}, Lcom/tencent/smtt/sdk/o;->s(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_b

    return-object v0

    :cond_b
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_17

    return-object v1

    :cond_17
    :try_start_17
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1b

    return-object v1

    :catch_1b
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v0
.end method

.method public static declared-synchronized clear()V
    .registers 2

    const-class v0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    sput-object v1, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->b:Lcom/tencent/smtt/sdk/TbsDownloadUpload;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance()Lcom/tencent/smtt/sdk/TbsDownloadUpload;
    .registers 2

    const-class v0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->b:Lcom/tencent/smtt/sdk/TbsDownloadUpload;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadUpload;
    .registers 3

    const-class v0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->b:Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    if-nez v1, :cond_e

    new-instance v1, Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    invoke-direct {v1, p0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->b:Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    :cond_e
    sget-object p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->b:Lcom/tencent/smtt/sdk/TbsDownloadUpload;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public clearUploadCode()V
    .registers 4

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tbs_needdownload_code"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v2, "tbs_startdownload_code"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v2, "tbs_needdownload_return"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v2, "tbs_needdownload_sent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v2, "tbs_startdownload_sent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v2, "tbs_local_core_version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->writeTbsDownloadInfo()V

    return-void
.end method

.method public declared-synchronized commit()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->writeTbsDownloadInfo()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLocalCoreVersion()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->i:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNeedDownloadCode()I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->g:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    const/16 v0, 0x94

    monitor-exit p0

    return v0

    :cond_a
    :try_start_a
    iget v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->d:I
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_e

    monitor-exit p0

    return v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNeedDownloadReturn()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->f:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStartDownloadCode()I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->h:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    const/16 v0, 0xa8

    monitor-exit p0

    return v0

    :cond_a
    :try_start_a
    iget v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->e:I
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_e

    monitor-exit p0

    return v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized readTbsDownloadInfo(Landroid/content/Context;)V
    .registers 7

    monitor-enter p0

    const/4 p1, 0x0

    :try_start_2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->c:Landroid/content/Context;

    const-string v1, "download_upload"

    invoke-static {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_c8

    if-nez v0, :cond_e

    monitor-exit p0

    return-void

    :cond_e
    :try_start_e
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_c8

    :try_start_18
    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v1, "tbs_needdownload_code"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3b

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->d:I

    :cond_3b
    const-string v1, "tbs_startdownload_code"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->e:I

    :cond_55
    const-string v1, "tbs_needdownload_return"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6f

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->f:I

    :cond_6f
    const-string v1, "tbs_needdownload_sent"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_89

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->g:I

    :cond_89
    const-string v1, "tbs_startdownload_sent"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->h:I

    :cond_a3
    const-string v1, "tbs_local_core_version"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bd

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->i:I
    :try_end_bd
    .catchall {:try_start_18 .. :try_end_bd} :catchall_c6

    :cond_bd
    :try_start_bd
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_c0} :catch_c1
    .catchall {:try_start_bd .. :try_end_c0} :catchall_d5

    goto :goto_d9

    :catch_c1
    move-exception p1

    :goto_c2
    :try_start_c2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c5
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_d5

    goto :goto_d9

    :catchall_c6
    move-exception p1

    goto :goto_cc

    :catchall_c8
    move-exception v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    :goto_cc
    :try_start_cc
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_cf
    .catchall {:try_start_cc .. :try_end_cf} :catchall_db

    if-eqz v0, :cond_d9

    :try_start_d1
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_d4} :catch_d7
    .catchall {:try_start_d1 .. :try_end_d4} :catchall_d5

    goto :goto_d9

    :catchall_d5
    move-exception p1

    goto :goto_e7

    :catch_d7
    move-exception p1

    goto :goto_c2

    :cond_d9
    :goto_d9
    monitor-exit p0

    return-void

    :catchall_db
    move-exception p1

    if-eqz v0, :cond_e6

    :try_start_de
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_e1} :catch_e2
    .catchall {:try_start_de .. :try_end_e1} :catchall_d5

    goto :goto_e6

    :catch_e2
    move-exception v0

    :try_start_e3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e6
    :goto_e6
    throw p1
    :try_end_e7
    .catchall {:try_start_e3 .. :try_end_e7} :catchall_d5

    :goto_e7
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized writeTbsDownloadInfo()V
    .registers 11

    monitor-enter p0

    :try_start_1
    const-string v0, "TbsDownloadUpload"

    const-string v1, "writeTbsDownloadInfo #1"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_d1

    const/4 v0, 0x0

    :try_start_9
    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->c:Landroid/content/Context;

    const-string v2, "download_upload"

    invoke-static {v1, v2}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_a1

    if-nez v1, :cond_15

    monitor-exit p0

    return-void

    :cond_15
    :try_start_15
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_a1

    :try_start_1f
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    iget-object v4, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_31
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_76

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v7, "TbsDownloadUpload"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "writeTbsDownloadInfo key is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " value is "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    :cond_76
    iget-object v4, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_85
    .catchall {:try_start_1f .. :try_end_85} :catchall_9c

    :try_start_85
    invoke-virtual {v2, v1, v0}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_99

    :try_start_88
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8b} :catch_8c
    .catchall {:try_start_88 .. :try_end_8b} :catchall_d1

    goto :goto_90

    :catch_8c
    move-exception v0

    :try_start_8d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_d1

    :goto_90
    :try_start_90
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_93} :catch_94
    .catchall {:try_start_90 .. :try_end_93} :catchall_d1

    goto :goto_b9

    :catch_94
    move-exception v0

    :goto_95
    :try_start_95
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_d1

    goto :goto_b9

    :catchall_99
    move-exception v0

    move-object v2, v0

    goto :goto_9f

    :catchall_9c
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_9f
    move-object v0, v3

    goto :goto_a4

    :catchall_a1
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_a4
    :try_start_a4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a7
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_bb

    if-eqz v0, :cond_b1

    :try_start_a9
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_ac} :catch_ad
    .catchall {:try_start_a9 .. :try_end_ac} :catchall_d1

    goto :goto_b1

    :catch_ad
    move-exception v0

    :try_start_ae
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_d1

    :cond_b1
    :goto_b1
    if-eqz v1, :cond_b9

    :try_start_b3
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_b6} :catch_b7
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_d1

    goto :goto_b9

    :catch_b7
    move-exception v0

    goto :goto_95

    :cond_b9
    :goto_b9
    monitor-exit p0

    return-void

    :catchall_bb
    move-exception v2

    if-eqz v0, :cond_c6

    :try_start_be
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_c1} :catch_c2
    .catchall {:try_start_be .. :try_end_c1} :catchall_d1

    goto :goto_c6

    :catch_c2
    move-exception v0

    :try_start_c3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c6
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_d1

    :cond_c6
    :goto_c6
    if-eqz v1, :cond_d0

    :try_start_c8
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_cb} :catch_cc
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_d1

    goto :goto_d0

    :catch_cc
    move-exception v0

    :try_start_cd
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d0
    :goto_d0
    throw v2
    :try_end_d1
    .catchall {:try_start_cd .. :try_end_d1} :catchall_d1

    :catchall_d1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
