.class public Lcom/tencent/smtt/sdk/TbsDownloadConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/smtt/sdk/TbsDownloadConfig$TbsConfigKey;
    }
.end annotation


# static fields
.field public static final CMD_ID_DOWNLOAD_FILE:I = 0x65

.field public static final CMD_ID_FILE_UPLOAD:I = 0x64

.field public static final DEFAULT_RETRY_INTERVAL_SEC:J = 0x15180L

.field public static final ERROR_DOWNLOAD:I = 0x2

.field public static final ERROR_INSTALL:I = 0x5

.field public static final ERROR_LOAD:I = 0x6

.field public static final ERROR_NONE:I = 0x1

.field public static final ERROR_REPORTED:I = 0x0

.field public static final ERROR_UNZIP:I = 0x4

.field public static final ERROR_VERIFY:I = 0x3

.field private static a:Lcom/tencent/smtt/sdk/TbsDownloadConfig;


# instance fields
.field private b:Landroid/content/Context;

.field public mPreferences:Landroid/content/SharedPreferences;

.field public mSyncMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-string v0, "tbs_download_config"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->b:Landroid/content/Context;

    if-nez v0, :cond_1d

    iput-object p1, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->b:Landroid/content/Context;

    :cond_1d
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/tencent/smtt/sdk/TbsDownloadConfig;
    .registers 2

    const-class v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Lcom/tencent/smtt/sdk/TbsDownloadConfig;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;
    .registers 3

    const-class v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    if-nez v1, :cond_e

    new-instance v1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    invoke-direct {v1, p0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    :cond_e
    sget-object p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Lcom/tencent/smtt/sdk/TbsDownloadConfig;
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
.method public clear()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_11

    :catch_11
    return-void
.end method

.method public declared-synchronized commit()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_2d

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_11

    :cond_2d
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_3b

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_11

    :cond_3b
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_49

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_11

    :cond_49
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_57

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_11

    :cond_57
    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_11

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_11

    :cond_65
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6d} :catch_70
    .catchall {:try_start_1 .. :try_end_6d} :catchall_6e

    goto :goto_74

    :catchall_6e
    move-exception v0

    goto :goto_76

    :catch_70
    move-exception v0

    :try_start_71
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_6e

    :goto_74
    monitor-exit p0

    return-void

    :goto_76
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDownloadFailedMaxRetrytimes()I
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tbs_download_failed_max_retrytimes"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_10

    if-nez v0, :cond_e

    const/16 v0, 0x64

    :cond_e
    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDownloadInterruptCode()I
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tbs_download_interrupt_code"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_a2

    if-nez v0, :cond_3b

    :try_start_b
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "shared_prefs"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "tbs_download_config"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_28

    const/16 v0, -0x61

    goto :goto_6f

    :cond_28
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tbs_needdownload"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0
    :try_end_30
    .catchall {:try_start_b .. :try_end_30} :catchall_38

    if-nez v0, :cond_35

    const/16 v0, -0x60

    goto :goto_6f

    :cond_35
    const/16 v0, -0x65

    goto :goto_6f

    :catchall_38
    const/16 v0, -0x5f

    goto :goto_6f

    :cond_3b
    :try_start_3b
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tbs_download_interrupt_code"

    const/16 v2, -0x63

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, -0x77

    if-eq v0, v1, :cond_4d

    const/16 v2, -0x79

    if-ne v0, v2, :cond_55

    :cond_4d
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "tbs_download_interrupt_code_reason"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "tbs_download_interrupt_time"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    cmp-long v5, v1, v3

    if-lez v5, :cond_6f

    const v1, 0x17ed0

    sub-int/2addr v0, v1

    :cond_6f
    :goto_6f
    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->b:Landroid/content/Context;

    if-eqz v1, :cond_95

    const-string v2, "com.tencent.mobileqq"

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    const-string v1, "CN"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_8f
    .catchall {:try_start_3b .. :try_end_8f} :catchall_a2

    if-nez v1, :cond_95

    const/16 v0, -0x140

    :goto_93
    monitor-exit p0

    return v0

    :cond_95
    :try_start_95
    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "tbs_install_interrupt_code"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_9e
    .catchall {:try_start_95 .. :try_end_9e} :catchall_a2

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr v0, v1

    goto :goto_93

    :catchall_a2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDownloadMaxflow()J
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tbs_download_maxflow"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_17

    if-nez v0, :cond_e

    const/16 v0, 0x14

    :cond_e
    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    const-wide/16 v2, 0x400

    mul-long v0, v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDownloadMinFreeSpace()J
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tbs_download_min_free_space"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_17

    if-nez v0, :cond_d

    goto :goto_e

    :cond_d
    move v2, v0

    :goto_e
    mul-int/lit16 v2, v2, 0x400

    int-to-long v0, v2

    const-wide/16 v2, 0x400

    mul-long v0, v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDownloadSingleTimeout()J
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tbs_single_timeout"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_14

    cmp-long v4, v0, v2

    if-nez v4, :cond_12

    const-wide/32 v0, 0x124f80

    :cond_12
    monitor-exit p0

    return-wide v0

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDownloadSuccessMaxRetrytimes()I
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tbs_download_success_max_retrytimes"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_f

    if-nez v0, :cond_d

    const/4 v0, 0x3

    :cond_d
    monitor-exit p0

    return v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRetryInterval()J
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->getRetryIntervalInSeconds()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_11

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->getRetryIntervalInSeconds()J

    move-result-wide v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_1e

    monitor-exit p0

    return-wide v0

    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "retry_interval"

    const-wide/32 v2, 0x15180

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_1e

    monitor-exit p0

    return-wide v0

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTbsCoreLoadRenameFileLockEnable()Z
    .registers 4

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "tbs_core_load_rename_file_lock_enable"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_e
    .catchall {:try_start_2 .. :try_end_a} :catchall_b

    goto :goto_e

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_e
    :goto_e
    monitor-exit p0

    return v0
.end method

.method public declared-synchronized getTbsCoreLoadRenameFileLockWaitEnable()Z
    .registers 4

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "tbs_core_load_rename_file_lock_wait_enable"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_e
    .catchall {:try_start_2 .. :try_end_a} :catchall_b

    goto :goto_e

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_e
    :goto_e
    monitor-exit p0

    return v0
.end method

.method public declared-synchronized isOverSea()Z
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "is_oversea"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDownloadInterruptCode(I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tbs_download_interrupt_code"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p1, "tbs_download_interrupt_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_1c
    .catchall {:try_start_1 .. :try_end_18} :catchall_19

    goto :goto_1c

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1

    :catch_1c
    :goto_1c
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setInstallInterruptCode(I)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tbs_install_interrupt_code"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTbsCoreLoadRenameFileLockEnable(Z)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tbs_core_load_rename_file_lock_enable"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_13
    .catchall {:try_start_1 .. :try_end_f} :catchall_10

    goto :goto_13

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1

    :catch_13
    :goto_13
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setTbsCoreLoadRenameFileLockWaitEnable(Z)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tbs_core_load_rename_file_lock_wait_enable"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_13
    .catchall {:try_start_1 .. :try_end_f} :catchall_10

    goto :goto_13

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1

    :catch_13
    :goto_13
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized uploadDownloadInterruptCodeIfNeeded(Landroid/content/Context;)V
    .registers 7

    monitor-enter p0

    if-eqz p1, :cond_a2

    :try_start_3
    const-string v0, "com.tencent.mm"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "tbs_download_interrupt_code"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_a2

    if-nez v1, :cond_50

    :try_start_20
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "shared_prefs"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "tbs_download_config"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3d

    const/16 v1, -0x61

    goto :goto_76

    :cond_3d
    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "tbs_needdownload"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1
    :try_end_45
    .catchall {:try_start_20 .. :try_end_45} :catchall_4d

    if-nez v1, :cond_4a

    const/16 v1, -0x60

    goto :goto_76

    :cond_4a
    const/16 v1, -0x65

    goto :goto_76

    :catchall_4d
    const/16 v1, -0x5f

    goto :goto_76

    :cond_50
    :try_start_50
    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "tbs_download_interrupt_code"

    const/16 v3, -0x63

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, -0xce

    if-gt v1, v2, :cond_63

    const/16 v2, -0xdb

    if-lt v1, v2, :cond_63

    goto :goto_76

    :cond_63
    const/16 v2, -0x12e

    if-gt v1, v2, :cond_6c

    const/16 v2, -0x13c

    if-lt v1, v2, :cond_6c

    goto :goto_76

    :cond_6c
    const/16 v2, -0x13e

    if-gt v1, v2, :cond_75

    const/16 v2, -0x142

    if-lt v1, v2, :cond_75

    goto :goto_76

    :cond_75
    const/4 v0, 0x0

    :goto_76
    if-eqz v0, :cond_a2

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->tbsLogInfo()Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setErrorCode(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setFailDetail(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object p1

    sget-object v1, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_DOWNLOAD:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    invoke-virtual {p1, v1, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V
    :try_end_a2
    .catchall {:try_start_50 .. :try_end_a2} :catchall_a2

    :catchall_a2
    :cond_a2
    monitor-exit p0

    return-void
.end method
