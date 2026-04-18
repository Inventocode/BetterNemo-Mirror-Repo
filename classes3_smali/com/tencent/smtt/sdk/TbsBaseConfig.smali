.class public abstract Lcom/tencent/smtt/sdk/TbsBaseConfig;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "TbsBaseConfig"


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsBaseConfig;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/TbsBaseConfig;->commit()V

    return-void
.end method

.method public declared-synchronized commit()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/TbsBaseConfig;->writeTbsDownloadInfo()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract getConfigFileName()Ljava/lang/String;
.end method

.method public init(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsBaseConfig;->a:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsBaseConfig;->b:Landroid/content/Context;

    if-nez v0, :cond_11

    iput-object p1, p0, Lcom/tencent/smtt/sdk/TbsBaseConfig;->b:Landroid/content/Context;

    :cond_11
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/TbsBaseConfig;->refreshSyncMap(Landroid/content/Context;)V

    return-void
.end method

.method public declared-synchronized refreshSyncMap(Landroid/content/Context;)V
    .registers 8

    monitor-enter p0

    const/4 p1, 0x0

    :try_start_2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsBaseConfig;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/TbsBaseConfig;->getConfigFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/sdk/TbsBaseConfig;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_50

    if-nez v0, :cond_10

    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsBaseConfig;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_50

    :try_start_1f
    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/TbsBaseConfig;->a:Ljava/util/Map;

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_1f .. :try_end_44} :catchall_4e

    goto :goto_2f

    :cond_45
    :try_start_45
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_49
    .catchall {:try_start_45 .. :try_end_48} :catchall_5d

    goto :goto_61

    :catch_49
    move-exception p1

    :goto_4a
    :try_start_4a
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_5d

    goto :goto_61

    :catchall_4e
    move-exception p1

    goto :goto_54

    :catchall_50
    move-exception v0

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    :goto_54
    :try_start_54
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_63

    if-eqz v0, :cond_61

    :try_start_59
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_5f
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5d

    goto :goto_61

    :catchall_5d
    move-exception p1

    goto :goto_6f

    :catch_5f
    move-exception p1

    goto :goto_4a

    :cond_61
    :goto_61
    monitor-exit p0

    return-void

    :catchall_63
    move-exception p1

    if-eqz v0, :cond_6e

    :try_start_66
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_69} :catch_6a
    .catchall {:try_start_66 .. :try_end_69} :catchall_5d

    goto :goto_6e

    :catch_6a
    move-exception v0

    :try_start_6b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6e
    :goto_6e
    throw p1
    :try_end_6f
    .catchall {:try_start_6b .. :try_end_6f} :catchall_5d

    :goto_6f
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized writeTbsDownloadInfo()V
    .registers 11

    monitor-enter p0

    :try_start_1
    const-string v0, "TbsBaseConfig"

    const-string v1, "writeTbsDownloadInfo #1"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_d6

    const/4 v0, 0x0

    :try_start_9
    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsBaseConfig;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/TbsBaseConfig;->getConfigFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/sdk/TbsBaseConfig;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_a6

    if-nez v1, :cond_17

    monitor-exit p0

    return-void

    :cond_17
    :try_start_17
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_a6

    :try_start_21
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/util/Properties;->clear()V

    iget-object v4, p0, Lcom/tencent/smtt/sdk/TbsBaseConfig;->a:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/smtt/sdk/TbsBaseConfig;->a:Ljava/util/Map;

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

    const-string v7, "TbsBaseConfig"

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

    goto :goto_36

    :cond_7b
    iget-object v4, p0, Lcom/tencent/smtt/sdk/TbsBaseConfig;->a:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_8a
    .catchall {:try_start_21 .. :try_end_8a} :catchall_a1

    :try_start_8a
    invoke-virtual {v2, v1, v0}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_9e

    :try_start_8d
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_90} :catch_91
    .catchall {:try_start_8d .. :try_end_90} :catchall_d6

    goto :goto_95

    :catch_91
    move-exception v0

    :try_start_92
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_d6

    :goto_95
    :try_start_95
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_98} :catch_99
    .catchall {:try_start_95 .. :try_end_98} :catchall_d6

    goto :goto_be

    :catch_99
    move-exception v0

    :goto_9a
    :try_start_9a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_d6

    goto :goto_be

    :catchall_9e
    move-exception v0

    move-object v2, v0

    goto :goto_a4

    :catchall_a1
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_a4
    move-object v0, v3

    goto :goto_a9

    :catchall_a6
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_a9
    :try_start_a9
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_ac
    .catchall {:try_start_a9 .. :try_end_ac} :catchall_c0

    if-eqz v0, :cond_b6

    :try_start_ae
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_b1} :catch_b2
    .catchall {:try_start_ae .. :try_end_b1} :catchall_d6

    goto :goto_b6

    :catch_b2
    move-exception v0

    :try_start_b3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_d6

    :cond_b6
    :goto_b6
    if-eqz v1, :cond_be

    :try_start_b8
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_bb} :catch_bc
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_d6

    goto :goto_be

    :catch_bc
    move-exception v0

    goto :goto_9a

    :cond_be
    :goto_be
    monitor-exit p0

    return-void

    :catchall_c0
    move-exception v2

    if-eqz v0, :cond_cb

    :try_start_c3
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_c6} :catch_c7
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_d6

    goto :goto_cb

    :catch_c7
    move-exception v0

    :try_start_c8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_cb
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_d6

    :cond_cb
    :goto_cb
    if-eqz v1, :cond_d5

    :try_start_cd
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d0} :catch_d1
    .catchall {:try_start_cd .. :try_end_d0} :catchall_d6

    goto :goto_d5

    :catch_d1
    move-exception v0

    :try_start_d2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d5
    :goto_d5
    throw v2
    :try_end_d6
    .catchall {:try_start_d2 .. :try_end_d6} :catchall_d6

    :catchall_d6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
