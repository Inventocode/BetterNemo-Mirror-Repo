.class Lcom/tencent/smtt/sdk/o;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static b:Z

.field static final c:Ljava/io/FileFilter;

.field private static d:Lcom/tencent/smtt/sdk/o;

.field private static final i:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final j:Ljava/util/concurrent/locks/Lock;

.field private static l:Ljava/nio/channels/FileLock;

.field private static m:Landroid/os/Handler;

.field private static final n:[[Ljava/lang/Long;

.field private static o:I

.field private static p:Z


# instance fields
.field private e:I

.field private f:Ljava/nio/channels/FileLock;

.field private g:Ljava/io/FileOutputStream;

.field private h:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/tencent/smtt/sdk/o;->i:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/tencent/smtt/sdk/o;->j:Ljava/util/concurrent/locks/Lock;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/smtt/sdk/o;->l:Ljava/nio/channels/FileLock;

    new-instance v1, Lcom/tencent/smtt/sdk/o$1;

    invoke-direct {v1}, Lcom/tencent/smtt/sdk/o$1;-><init>()V

    sput-object v1, Lcom/tencent/smtt/sdk/o;->a:Ljava/lang/ThreadLocal;

    sput-object v0, Lcom/tencent/smtt/sdk/o;->m:Landroid/os/Handler;

    const/16 v0, 0xb

    new-array v0, v0, [[Ljava/lang/Long;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Long;

    const-wide/32 v3, 0xabe6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-wide/32 v5, 0x25486f8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/Long;

    const-wide/32 v6, 0xabe5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v4

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Long;

    const-wide/32 v6, 0xab86

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v4

    const-wide/32 v6, 0x251d6b8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v5

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/Long;

    const-wide/32 v7, 0xabfb

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v2, v4

    aput-object v3, v2, v5

    const/4 v7, 0x3

    aput-object v2, v0, v7

    new-array v2, v1, [Ljava/lang/Long;

    const-wide/32 v7, 0xabfc

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v2, v4

    aput-object v3, v2, v5

    const/4 v7, 0x4

    aput-object v2, v0, v7

    new-array v2, v1, [Ljava/lang/Long;

    const-wide/32 v7, 0xabfd

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v2, v4

    aput-object v3, v2, v5

    const/4 v7, 0x5

    aput-object v2, v0, v7

    new-array v2, v1, [Ljava/lang/Long;

    const-wide/32 v7, 0xabfe

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v2, v4

    aput-object v3, v2, v5

    const/4 v7, 0x6

    aput-object v2, v0, v7

    new-array v2, v1, [Ljava/lang/Long;

    const-wide/32 v7, 0xac00

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v2, v4

    aput-object v3, v2, v5

    const/4 v7, 0x7

    aput-object v2, v0, v7

    new-array v2, v1, [Ljava/lang/Long;

    const-wide/32 v7, 0xac01

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v2, v4

    aput-object v3, v2, v5

    const/16 v7, 0x8

    aput-object v2, v0, v7

    new-array v2, v1, [Ljava/lang/Long;

    const-wide/32 v7, 0xac02

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v2, v4

    aput-object v3, v2, v5

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v1, v1, [Ljava/lang/Long;

    const-wide/32 v2, 0xab85

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object v6, v1, v5

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/tencent/smtt/sdk/o;->n:[[Ljava/lang/Long;

    sput-boolean v4, Lcom/tencent/smtt/sdk/o;->b:Z

    new-instance v0, Lcom/tencent/smtt/sdk/o$2;

    invoke-direct {v0}, Lcom/tencent/smtt/sdk/o$2;-><init>()V

    sput-object v0, Lcom/tencent/smtt/sdk/o;->c:Ljava/io/FileFilter;

    sput v4, Lcom/tencent/smtt/sdk/o;->o:I

    sput-boolean v4, Lcom/tencent/smtt/sdk/o;->p:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/smtt/sdk/o;->e:I

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/o;->h:Z

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/o;->k:Z

    sget-object v0, Lcom/tencent/smtt/sdk/o;->m:Landroid/os/Handler;

    if-nez v0, :cond_1d

    new-instance v0, Lcom/tencent/smtt/sdk/o$3;

    invoke-static {}, Lcom/tencent/smtt/sdk/n;->a()Lcom/tencent/smtt/sdk/n;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/smtt/sdk/o$3;-><init>(Lcom/tencent/smtt/sdk/o;Landroid/os/Looper;)V

    sput-object v0, Lcom/tencent/smtt/sdk/o;->m:Landroid/os/Handler;

    :cond_1d
    return-void
.end method

.method private A(Landroid/content/Context;)V
    .registers 4

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller--deleteOldCore"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/o;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/io/File;Z)V

    return-void
.end method

.method private B(Landroid/content/Context;)V
    .registers 7

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller--renameShareDir"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/tencent/smtt/sdk/o;->f(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/o;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    if-eqz v2, :cond_59

    if-nez v3, :cond_15

    goto :goto_59

    :cond_15
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "renameTbsCoreShareDir rename success="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_55

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.tencent.mm"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, " "

    if-eqz v2, :cond_4c

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v2

    const/16 v3, 0xe6

    goto :goto_52

    :cond_4c
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v2

    const/16 v3, 0xe7

    :goto_52
    invoke-virtual {v2, v3, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    :cond_55
    invoke-direct {p0, p1, v1}, Lcom/tencent/smtt/sdk/o;->g(Landroid/content/Context;Z)V

    return-void

    :cond_59
    :goto_59
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "renameTbsCoreShareDir return,tmpTbsCoreUnzipDir="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "tbsSharePath="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private C(Landroid/content/Context;)V
    .registers 4

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller--renameTbsCoreCopyDir"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tencent/smtt/sdk/o;->f(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/o;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-eqz v0, :cond_1c

    if-nez v1, :cond_15

    goto :goto_1c

    :cond_15
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/smtt/sdk/o;->g(Landroid/content/Context;Z)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method private D(Landroid/content/Context;)V
    .registers 4

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller--renameTbsTpatchCoreDir"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/tencent/smtt/sdk/o;->f(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/o;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-eqz v0, :cond_1c

    if-nez v1, :cond_15

    goto :goto_1c

    :cond_15
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/smtt/sdk/o;->g(Landroid/content/Context;Z)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method private E(Landroid/content/Context;)V
    .registers 5

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller--clearNewTbsCore"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/smtt/sdk/o;->f(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/io/File;Z)V

    :cond_11
    invoke-static {p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Lcom/tencent/smtt/sdk/m;->c(II)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/m;->c(I)V

    const-string v0, "TbsInstaller::clearNewTbsCore forceSysWebViewInner!"

    invoke-static {p1, v0}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static declared-synchronized a()Lcom/tencent/smtt/sdk/o;
    .registers 2

    const-class v0, Lcom/tencent/smtt/sdk/o;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/tencent/smtt/sdk/o;->d:Lcom/tencent/smtt/sdk/o;

    if-nez v1, :cond_18

    monitor-enter v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1c

    :try_start_8
    sget-object v1, Lcom/tencent/smtt/sdk/o;->d:Lcom/tencent/smtt/sdk/o;

    if-nez v1, :cond_13

    new-instance v1, Lcom/tencent/smtt/sdk/o;

    invoke-direct {v1}, Lcom/tencent/smtt/sdk/o;-><init>()V

    sput-object v1, Lcom/tencent/smtt/sdk/o;->d:Lcom/tencent/smtt/sdk/o;

    :cond_13
    monitor-exit v0

    goto :goto_18

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_15

    :try_start_17
    throw v1

    :cond_18
    :goto_18
    sget-object v1, Lcom/tencent/smtt/sdk/o;->d:Lcom/tencent/smtt/sdk/o;
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1c

    monitor-exit v0

    return-object v1

    :catchall_1c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(ILjava/lang/String;Landroid/content/Context;)V
    .registers 9

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Local tbs apk("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") is deleted!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TbsInstaller"

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p3}, Lcom/tencent/smtt/sdk/QbSdk;->getTbsFolderDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    new-instance p3, Ljava/io/File;

    const-string v1, "core_unzip_tmp"

    invoke-direct {p3, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->canRead()Z

    move-result p1

    if-eqz p1, :cond_a9

    new-instance p1, Ljava/io/File;

    const-string v1, "tbs.conf"

    invoke-direct {p1, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p3, Ljava/util/Properties;

    invoke-direct {p3}, Ljava/util/Properties;-><init>()V

    const/4 v1, 0x0

    :try_start_42
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_79

    :try_start_4c
    invoke-virtual {p3, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance p1, Ljava/io/BufferedOutputStream;

    invoke-direct {p1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_59
    .catchall {:try_start_4c .. :try_end_59} :catchall_77

    :try_start_59
    const-string v2, "tbs_local_installation"

    const-string v4, "true"

    invoke-virtual {p3, v2, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p3, p1, v1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string p3, "TBS_LOCAL_INSTALLATION is set!"

    invoke-static {p2, p3, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_68
    .catchall {:try_start_59 .. :try_end_68} :catchall_74

    :try_start_68
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_70

    :catch_6c
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_70
    :try_start_70
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_8e

    goto :goto_a9

    :catchall_74
    move-exception p2

    move-object v1, p1

    goto :goto_7b

    :catchall_77
    move-exception p2

    goto :goto_7b

    :catchall_79
    move-exception p2

    move-object v3, v1

    :goto_7b
    :try_start_7b
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_93

    if-eqz v1, :cond_88

    :try_start_80
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_84

    goto :goto_88

    :catch_84
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_88
    :goto_88
    if-eqz v3, :cond_a9

    :try_start_8a
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8e

    goto :goto_a9

    :catch_8e
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a9

    :catchall_93
    move-exception p1

    if-eqz v1, :cond_9e

    :try_start_96
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_9a

    goto :goto_9e

    :catch_9a
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_9e
    :goto_9e
    if-eqz v3, :cond_a8

    :try_start_a0
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_a4

    goto :goto_a8

    :catch_a4
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_a8
    :goto_a8
    throw p1

    :cond_a9
    :goto_a9
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 6

    invoke-static {p0}, Lcom/tencent/smtt/sdk/o;->v(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_58

    const-string v0, "core_unzip_tmp"

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/o;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "TbsInstaller"

    const/16 v2, 0x1a1

    if-eqz v0, :cond_26

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v0

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "TMP_TBS_UNZIP_FOLDER_NAME"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v2, v3}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    const-string p0, "TbsInstaller-UploadIfTempCoreExistConfError INFO_TEMP_CORE_EXIST_CONF_ERROR TMP_TBS_UNZIP_FOLDER_NAME"

    :goto_22
    invoke-static {v1, p0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    :cond_26
    const-string v0, "core_share_backup_tmp"

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/o;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v0

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "TMP_BACKUP_TBSCORE_FOLDER_NAME"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v2, v3}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    const-string p0, "TbsInstaller-UploadIfTempCoreExistConfError INFO_TEMP_CORE_EXIST_CONF_ERROR TMP_BACKUP_TBSCORE_FOLDER_NAME"

    goto :goto_22

    :cond_3f
    const-string v0, "core_copy_tmp"

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/o;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v0

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "TMP_TBS_COPY_FOLDER_NAME"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v2, v3}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    const-string p0, "TbsInstaller-UploadIfTempCoreExistConfError INFO_TEMP_CORE_EXIST_CONF_ERROR TMP_TBS_COPY_FOLDER_NAME"

    goto :goto_22

    :cond_58
    :goto_58
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Context;I)V
    .registers 24
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    const-string v4, ""

    const-string v5, "1"

    const-string v6, "copy_retry_num"

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    const/16 v8, -0x20c

    invoke-virtual {v7, v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/o;->c(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1c

    return-void

    :cond_1c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TbsInstaller-copyTbsCoreInThread start!  tbsCoreTargetVer is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "TbsInstaller"

    invoke-static {v8, v7}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v9, 0x4

    const/16 v10, 0xb

    const-string v11, "tbs_preloadx5_check_cfg_file"

    const/4 v12, 0x0

    if-lt v7, v10, :cond_41

    invoke-virtual {v2, v11, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    goto :goto_45

    :cond_41
    invoke-virtual {v2, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    :goto_45
    const-string v13, "tbs_precheck_disable_version"

    const/4 v14, -0x1

    invoke-interface {v7, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v3, :cond_71

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TbsInstaller-copyTbsCoreInThread -- version:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is disabled by preload_x5_check!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x20d

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    return-void

    :cond_71
    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/o;->t(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_81

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x20e

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    return-void

    :cond_81
    sget-object v7, Lcom/tencent/smtt/sdk/o;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TbsInstaller-copyTbsCoreInThread #1 locked is "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v13, :cond_573

    sget-object v13, Lcom/tencent/smtt/sdk/o;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_a2
    invoke-static/range {p2 .. p2}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v15

    const-string v14, "copy_core_ver"

    invoke-virtual {v15, v14}, Lcom/tencent/smtt/sdk/m;->c(Ljava/lang/String;)I

    move-result v14

    invoke-static/range {p2 .. p2}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v15

    const-string v9, "copy_status"

    invoke-virtual {v15, v9}, Lcom/tencent/smtt/sdk/m;->b(Ljava/lang/String;)I

    move-result v9

    const/16 v15, -0x210

    const/16 v10, 0xdc

    if-ne v14, v3, :cond_d2

    sget-object v3, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    invoke-interface {v3, v10}, Lcom/tencent/smtt/sdk/TbsListener;->onInstallFinish(I)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_c8} :catch_50b
    .catchall {:try_start_a2 .. :try_end_c8} :catchall_508

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/o;->b()V

    return-void

    :cond_d2
    :try_start_d2
    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/o;->i(Landroid/content/Context;)I

    move-result v12

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TbsInstaller-copyTbsCoreInThread tbsCoreInstalledVer="

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v12, v3, :cond_11a

    sget-object v3, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    const/16 v4, 0xdc

    invoke-interface {v3, v4}, Lcom/tencent/smtt/sdk/TbsListener;->onInstallFinish(I)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v4, -0x210

    invoke-virtual {v3, v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TbsInstaller-copyTbsCoreInThread return have same version is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_110} :catch_50b
    .catchall {:try_start_d2 .. :try_end_110} :catchall_508

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/o;->b()V

    return-void

    :cond_11a
    :try_start_11a
    invoke-static/range {p2 .. p2}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v10

    invoke-virtual {v10}, Lcom/tencent/smtt/sdk/m;->b()I

    move-result v10

    if-lez v10, :cond_126

    if-gt v3, v10, :cond_12a

    :cond_126
    if-lez v14, :cond_12d

    if-le v3, v14, :cond_12d

    :cond_12a
    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/o;->o(Landroid/content/Context;)V

    :cond_12d
    const/4 v10, 0x3

    const/4 v14, 0x1

    if-ne v9, v10, :cond_143

    if-lez v12, :cond_143

    if-gt v3, v12, :cond_13a

    const v10, 0x54c5638

    if-ne v3, v10, :cond_143

    :cond_13a
    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/o;->o(Landroid/content/Context;)V

    const-string v9, "TbsInstaller-copyTbsCoreInThread -- update TBS....."

    invoke-static {v8, v9, v14}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v9, -0x1

    :cond_143
    invoke-static/range {p2 .. p2}, Lcom/tencent/smtt/utils/FileUtil;->b(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_18a

    invoke-static {}, Lcom/tencent/smtt/utils/p;->a()J

    move-result-wide v3

    invoke-static/range {p2 .. p2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getDownloadMinFreeSpace()J

    move-result-wide v5

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v9

    const/16 v10, -0x211

    invoke-virtual {v9, v10}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-static/range {p2 .. p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v9

    const/16 v10, 0xd2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "rom is not enough when copying tbs core! curAvailROM="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",minReqRom="

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v10, v3}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V
    :try_end_180
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_180} :catch_50b
    .catchall {:try_start_11a .. :try_end_180} :catchall_508

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/o;->b()V

    return-void

    :cond_18a
    if-lez v9, :cond_1c1

    :try_start_18c
    invoke-static/range {p2 .. p2}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_19f

    invoke-static/range {p2 .. p2}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_19f

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/o;->h(Landroid/content/Context;)I

    move-result v10

    if-eq v3, v10, :cond_19f

    goto :goto_1c1

    :cond_19f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TbsInstaller-copyTbsCoreInThread return have copied is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/o;->h(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b7
    .catch Ljava/lang/Exception; {:try_start_18c .. :try_end_1b7} :catch_50b
    .catchall {:try_start_18c .. :try_end_1b7} :catchall_508

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/o;->b()V

    return-void

    :cond_1c1
    :goto_1c1
    const/4 v10, 0x2

    if-nez v9, :cond_1f4

    :try_start_1c4
    invoke-static/range {p2 .. p2}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/tencent/smtt/sdk/m;->c(Ljava/lang/String;)I

    move-result v9

    if-le v9, v10, :cond_1ec

    invoke-static/range {p2 .. p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v3

    const/16 v4, 0xd3

    const-string v5, "exceed copy retry num!"

    invoke-virtual {v3, v4, v5}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v4, -0x212

    invoke-virtual {v3, v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V
    :try_end_1e2
    .catch Ljava/lang/Exception; {:try_start_1c4 .. :try_end_1e2} :catch_50b
    .catchall {:try_start_1c4 .. :try_end_1e2} :catchall_508

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/o;->b()V

    return-void

    :cond_1ec
    :try_start_1ec
    invoke-static/range {p2 .. p2}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v12

    add-int/2addr v9, v14

    invoke-virtual {v12, v6, v9}, Lcom/tencent/smtt/sdk/m;->a(Ljava/lang/String;I)V

    :cond_1f4
    invoke-virtual/range {p0 .. p1}, Lcom/tencent/smtt/sdk/o;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    invoke-static/range {p2 .. p2}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_209

    invoke-static/range {p2 .. p2}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_209

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/o;->p(Landroid/content/Context;)Ljava/io/File;

    move-result-object v9

    goto :goto_20d

    :cond_209
    invoke-virtual {v1, v2, v14}, Lcom/tencent/smtt/sdk/o;->f(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v9
    :try_end_20d
    .catch Ljava/lang/Exception; {:try_start_1ec .. :try_end_20d} :catch_50b
    .catchall {:try_start_1ec .. :try_end_20d} :catchall_508

    :goto_20d
    if-eqz v6, :cond_4d6

    if-eqz v9, :cond_4d6

    :try_start_211
    invoke-static/range {p2 .. p2}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v15

    const/4 v10, 0x0

    invoke-virtual {v15, v3, v10}, Lcom/tencent/smtt/sdk/m;->a(II)V

    new-instance v10, Lcom/tencent/smtt/utils/o;

    invoke-direct {v10}, Lcom/tencent/smtt/utils/o;-><init>()V

    invoke-virtual {v10, v6}, Lcom/tencent/smtt/utils/o;->a(Ljava/io/File;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v15

    const/16 v12, -0x227

    invoke-virtual {v15, v12}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    sget-object v12, Lcom/tencent/smtt/sdk/o;->c:Ljava/io/FileFilter;

    invoke-static {v6, v9, v12}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;)Z

    move-result v12

    invoke-static/range {p2 .. p2}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_23d

    invoke-static/range {p2 .. p2}, Lcom/tencent/smtt/sdk/TbsShareManager;->b(Landroid/content/Context;)V

    :cond_23d
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TbsInstaller-copyTbsCoreInThread time="

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18
    :try_end_24b
    .catch Ljava/lang/Exception; {:try_start_211 .. :try_end_24b} :catch_4ed
    .catchall {:try_start_211 .. :try_end_24b} :catchall_508

    sub-long v1, v18, v16

    :try_start_24d
    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v12, :cond_4a1

    invoke-virtual {v10, v6}, Lcom/tencent/smtt/utils/o;->b(Ljava/io/File;)V

    invoke-virtual {v10}, Lcom/tencent/smtt/utils/o;->a()Z

    move-result v1

    if-nez v1, :cond_289

    const-string v1, "TbsInstaller-copyTbsCoreInThread copy-verify fail!"

    invoke-static {v8, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v9, v1}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/io/File;Z)V

    invoke-static/range {p2 .. p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v1

    const-string v2, "TbsCopy-Verify fail after copying tbs core!"

    const/16 v3, 0xd5

    invoke-virtual {v1, v3, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v1

    const/16 v2, -0x213

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V
    :try_end_27f
    .catch Ljava/lang/Exception; {:try_start_24d .. :try_end_27f} :catch_4d0
    .catchall {:try_start_24d .. :try_end_27f} :catchall_4cc

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/o;->b()V

    return-void

    :cond_289
    :try_start_289
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v9, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V
    :try_end_293
    .catch Ljava/lang/Exception; {:try_start_289 .. :try_end_293} :catch_2d0
    .catchall {:try_start_289 .. :try_end_293} :catchall_2c7

    :try_start_293
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2b6

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2a3
    .catch Ljava/lang/Exception; {:try_start_293 .. :try_end_2a3} :catch_2c4
    .catchall {:try_start_293 .. :try_end_2a3} :catchall_2c7

    :try_start_2a3
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2a6
    .catch Ljava/lang/Exception; {:try_start_2a3 .. :try_end_2a6} :catch_2b2
    .catchall {:try_start_2a3 .. :try_end_2a6} :catchall_2a9

    move-object v14, v1

    const/4 v1, 0x1

    goto :goto_2b8

    :catchall_2a9
    move-exception v0

    move-object/from16 v2, p2

    move-object v3, v0

    move-object v14, v1

    move-object/from16 v1, p0

    goto/16 :goto_495

    :catch_2b2
    move-exception v0

    move-object v14, v1

    move-object v1, v0

    goto :goto_2d4

    :cond_2b6
    const/4 v1, 0x0

    const/4 v14, 0x0

    :goto_2b8
    if-eqz v14, :cond_2e3

    :try_start_2ba
    invoke-virtual {v14}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2bd
    .catch Ljava/io/IOException; {:try_start_2ba .. :try_end_2bd} :catch_2be
    .catch Ljava/lang/Exception; {:try_start_2ba .. :try_end_2bd} :catch_4d0
    .catchall {:try_start_2ba .. :try_end_2bd} :catchall_4cc

    goto :goto_2e3

    :catch_2be
    move-exception v0

    move-object v6, v0

    :try_start_2c0
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2c3
    .catch Ljava/lang/Exception; {:try_start_2c0 .. :try_end_2c3} :catch_4d0
    .catchall {:try_start_2c0 .. :try_end_2c3} :catchall_4cc

    goto :goto_2e3

    :catch_2c4
    move-exception v0

    move-object v1, v0

    goto :goto_2d3

    :catchall_2c7
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v3, v0

    const/4 v14, 0x0

    goto/16 :goto_495

    :catch_2d0
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    :goto_2d3
    const/4 v14, 0x0

    :goto_2d4
    :try_start_2d4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2d7
    .catchall {:try_start_2d4 .. :try_end_2d7} :catchall_48f

    if-eqz v14, :cond_2e2

    :try_start_2d9
    invoke-virtual {v14}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2dc
    .catch Ljava/io/IOException; {:try_start_2d9 .. :try_end_2dc} :catch_2dd
    .catch Ljava/lang/Exception; {:try_start_2d9 .. :try_end_2dc} :catch_4d0
    .catchall {:try_start_2d9 .. :try_end_2dc} :catchall_4cc

    goto :goto_2e2

    :catch_2dd
    move-exception v0

    move-object v1, v0

    :try_start_2df
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2e2
    :goto_2e2
    const/4 v1, 0x1

    :cond_2e3
    :goto_2e3
    if-eqz v1, :cond_394

    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    const/16 v10, -0x228

    invoke-virtual {v7, v10}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    const/4 v7, 0x0

    :goto_2f3
    array-length v10, v6

    if-ge v7, v10, :cond_394

    aget-object v10, v6, v7

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_390

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, ".dex"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_390

    const-string v12, "tbs.conf"

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_390

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-nez v12, :cond_390

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, ".prof"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_32d

    goto :goto_390

    :cond_32d
    invoke-static {v10}, Lcom/tencent/smtt/utils/a;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_33d
    .catch Ljava/lang/Exception; {:try_start_2df .. :try_end_33d} :catch_4d0
    .catchall {:try_start_2df .. :try_end_33d} :catchall_4cc

    const-string v15, ")"

    if-nez v14, :cond_363

    :try_start_341
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_363

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "md5_check_success for ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_390

    :cond_363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "md5_check_failure for ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " targetMd5:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", realMd5:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_395

    :cond_390
    :goto_390
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2f3

    :cond_394
    const/4 v2, 0x1

    :goto_395
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copyTbsCoreInThread - md5_check_success:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_3d8

    if-nez v2, :cond_3d8

    const-string v1, "copyTbsCoreInThread - md5 incorrect -> delete destTmpDir!"

    invoke-static {v8, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v9, v1}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/io/File;Z)V

    invoke-static/range {p2 .. p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v1

    const-string v2, "TbsCopy-Verify md5 fail after copying tbs core!"

    const/16 v3, 0xd5

    invoke-virtual {v1, v3, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v1

    const/16 v2, -0x214

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V
    :try_end_3ca
    .catch Ljava/lang/Exception; {:try_start_341 .. :try_end_3ca} :catch_4d0
    .catchall {:try_start_341 .. :try_end_3ca} :catchall_4cc

    sget-object v1, Lcom/tencent/smtt/sdk/o;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-object v1, Lcom/tencent/smtt/sdk/o;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/o;->b()V

    return-void

    :cond_3d8
    :try_start_3d8
    const-string v1, "TbsInstaller-copyTbsCoreInThread success!"

    invoke-static {v8, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3dd
    .catch Ljava/lang/Exception; {:try_start_3d8 .. :try_end_3dd} :catch_4d0
    .catchall {:try_start_3d8 .. :try_end_3dd} :catchall_4cc

    const/4 v4, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    :try_start_3e2
    invoke-direct {v1, v2, v4}, Lcom/tencent/smtt/sdk/o;->g(Landroid/content/Context;Z)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/l;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_408

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_408

    new-instance v5, Ljava/io/File;

    invoke-static/range {p2 .. p2}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3fc

    const-string v6, "x5.oversea.tbs.org"

    goto :goto_402

    :cond_3fc
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloader;->getBackupFileName(Z)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    :goto_402
    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5, v2}, Lcom/tencent/smtt/sdk/l;->a(Ljava/io/File;Landroid/content/Context;)V

    :cond_408
    invoke-static/range {p2 .. p2}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lcom/tencent/smtt/sdk/m;->a(II)V

    iget-boolean v4, v1, Lcom/tencent/smtt/sdk/o;->k:Z

    if-eqz v4, :cond_420

    invoke-static/range {p2 .. p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v4

    const-string v5, "continueInstallWithout core success"

    const/16 v6, 0xdc

    :goto_41c
    invoke-virtual {v4, v6, v5}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    goto :goto_429

    :cond_420
    invoke-static/range {p2 .. p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v4

    const-string v5, "success"

    const/16 v6, 0xdc

    goto :goto_41c

    :goto_429
    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    const/16 v5, -0x215

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TbsInstaller-copyTbsCoreInThread success -- version:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_454

    const/4 v4, 0x4

    invoke-virtual {v2, v11, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    move-object v5, v4

    const/4 v4, 0x0

    goto :goto_459

    :cond_454
    const/4 v4, 0x0

    invoke-virtual {v2, v11, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5
    :try_end_459
    .catch Ljava/lang/Exception; {:try_start_3e2 .. :try_end_459} :catch_4ed
    .catchall {:try_start_3e2 .. :try_end_459} :catchall_508

    :goto_459
    :try_start_459
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "tbs_preload_x5_counter"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v6, "tbs_preload_x5_recorder"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v4, "tbs_preload_x5_version"

    invoke-interface {v5, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_46f
    .catchall {:try_start_459 .. :try_end_46f} :catchall_470

    goto :goto_48a

    :catchall_470
    move-exception v0

    move-object v3, v0

    :try_start_472
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Init tbs_preload_x5_counter#2 exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_48a
    invoke-static/range {p2 .. p2}, Lcom/tencent/smtt/utils/p;->a(Landroid/content/Context;)Z
    :try_end_48d
    .catch Ljava/lang/Exception; {:try_start_472 .. :try_end_48d} :catch_4ed
    .catchall {:try_start_472 .. :try_end_48d} :catchall_508

    goto/16 :goto_557

    :catchall_48f
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v3, v0

    :goto_495
    if-eqz v14, :cond_4a0

    :try_start_497
    invoke-virtual {v14}, Ljava/io/BufferedInputStream;->close()V
    :try_end_49a
    .catch Ljava/io/IOException; {:try_start_497 .. :try_end_49a} :catch_49b
    .catch Ljava/lang/Exception; {:try_start_497 .. :try_end_49a} :catch_4ed
    .catchall {:try_start_497 .. :try_end_49a} :catchall_508

    goto :goto_4a0

    :catch_49b
    move-exception v0

    move-object v4, v0

    :try_start_49d
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_4a0
    :goto_4a0
    throw v3

    :cond_4a1
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v4, "TbsInstaller-copyTbsCoreInThread fail!"

    invoke-static {v8, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v3, v5}, Lcom/tencent/smtt/sdk/m;->a(II)V

    const/4 v3, 0x0

    invoke-static {v9, v3}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/io/File;Z)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v4, -0x216

    invoke-virtual {v3, v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-static/range {p2 .. p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v3

    const/16 v4, 0xd4

    const-string v5, "copy fail!"

    invoke-virtual {v3, v4, v5}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    goto/16 :goto_557

    :catchall_4cc
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_509

    :catch_4d0
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    goto :goto_4ee

    :cond_4d6
    if-nez v6, :cond_4f1

    invoke-static/range {p2 .. p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v3

    const-string v4, "src-dir is null when copying tbs core!"

    const/16 v5, 0xd5

    invoke-virtual {v3, v5, v4}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v4, -0x217

    invoke-virtual {v3, v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    goto :goto_4f1

    :catch_4ed
    move-exception v0

    :goto_4ee
    move-object v3, v0

    move-object v14, v9

    goto :goto_50e

    :cond_4f1
    :goto_4f1
    if-nez v9, :cond_557

    invoke-static/range {p2 .. p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v3

    const/16 v4, 0xd6

    const-string v5, "dst-dir is null when copying tbs core!"

    invoke-virtual {v3, v4, v5}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v4, -0x218

    invoke-virtual {v3, v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V
    :try_end_507
    .catch Ljava/lang/Exception; {:try_start_49d .. :try_end_507} :catch_4ed
    .catchall {:try_start_49d .. :try_end_507} :catchall_508

    goto :goto_557

    :catchall_508
    move-exception v0

    :goto_509
    move-object v2, v0

    goto :goto_565

    :catch_50b
    move-exception v0

    move-object v3, v0

    const/4 v14, 0x0

    :goto_50e
    :try_start_50e
    invoke-static/range {p2 .. p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v4

    const/16 v5, 0xd7

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v4, -0x219

    invoke-virtual {v3, v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V
    :try_end_524
    .catchall {:try_start_50e .. :try_end_524} :catchall_508

    const/4 v3, 0x0

    :try_start_525
    invoke-static {v14, v3}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/io/File;Z)V

    invoke-static/range {p2 .. p2}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v2

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/tencent/smtt/sdk/m;->a(II)V
    :try_end_530
    .catch Ljava/lang/Exception; {:try_start_525 .. :try_end_530} :catch_531
    .catchall {:try_start_525 .. :try_end_530} :catchall_508

    goto :goto_557

    :catch_531
    move-exception v0

    move-object v2, v0

    :try_start_533
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TbsInstaller-copyTbsCoreInThread] delete dstTmpDir throws exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_557
    .catchall {:try_start_533 .. :try_end_557} :catchall_508

    :cond_557
    :goto_557
    sget-object v2, Lcom/tencent/smtt/sdk/o;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-object v2, Lcom/tencent/smtt/sdk/o;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/o;->b()V

    goto :goto_57f

    :goto_565
    sget-object v3, Lcom/tencent/smtt/sdk/o;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-object v3, Lcom/tencent/smtt/sdk/o;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/o;->b()V

    throw v2

    :cond_573
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/o;->b()V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0x21a

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    :goto_57f
    return-void
.end method

.method static synthetic a(Lcom/tencent/smtt/sdk/o;Landroid/content/Context;Landroid/content/Context;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/smtt/sdk/o;->a(Landroid/content/Context;Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/smtt/sdk/o;Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/smtt/sdk/o;->b(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/io/File;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/smtt/sdk/o;->a(Landroid/content/Context;Ljava/io/File;Z)Z

    move-result p1

    return p1
.end method

.method private a(Landroid/content/Context;Ljava/io/File;Z)Z
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "copyFileIfChanged -- delete tmpTbsCoreUnzipDir#2! exist:"

    const-string v4, "copyFileIfChanged -- delete tmpTbsCoreUnzipDir#2! exception:"

    const-string v5, "TbsInstaller-unzipTbs done"

    const-string v6, "TbsInstaller"

    const-string v0, "TbsInstaller-unzipTbs start"

    invoke-static {v6, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcom/tencent/smtt/utils/FileUtil;->c(Ljava/io/File;)Z

    move-result v0

    const/4 v7, 0x0

    if-nez v0, :cond_2d

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const/16 v3, 0xcc

    const-string v4, "apk is invalid!"

    invoke-virtual {v0, v3, v4}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v2, -0x208

    :goto_29
    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    return v7

    :cond_2d
    :try_start_2d
    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/QbSdk;->getTbsFolderDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz p3, :cond_3b

    new-instance v8, Ljava/io/File;

    const-string v9, "core_share_decouple"

    invoke-direct {v8, v0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_42

    :cond_3b
    new-instance v8, Ljava/io/File;

    const-string v9, "core_unzip_tmp"

    invoke-direct {v8, v0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_42
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6b

    invoke-static {v8}, Lcom/tencent/smtt/utils/FileUtil;->b(Ljava/io/File;)V
    :try_end_51
    .catchall {:try_start_2d .. :try_end_51} :catchall_52

    goto :goto_6b

    :catchall_52
    move-exception v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TbsInstaller-unzipTbs -- delete unzip folder if exists exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6b
    :goto_6b
    if-eqz p3, :cond_73

    const/4 v0, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/smtt/sdk/o;->f(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    goto :goto_77

    :cond_73
    invoke-virtual {v1, v2, v7}, Lcom/tencent/smtt/sdk/o;->f(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    :goto_77
    move-object v8, v0

    if-nez v8, :cond_8c

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const/16 v3, 0xcd

    const-string v4, "tmp unzip dir is null!"

    invoke-virtual {v0, v3, v4}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v2, -0x209

    goto :goto_29

    :cond_8c
    const/16 v9, -0x20b

    const/4 v10, 0x1

    :try_start_8f
    invoke-static {v8}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/io/File;)Z

    if-eqz p3, :cond_97

    invoke-static {v8, v10}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/io/File;Z)V

    :cond_97
    move-object/from16 v11, p2

    invoke-static {v11, v8}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_a3

    invoke-direct {v1, v8, v2}, Lcom/tencent/smtt/sdk/o;->a(Ljava/io/File;Landroid/content/Context;)Z

    move-result v0

    :cond_a3
    if-eqz p3, :cond_d6

    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    :goto_aa
    array-length v13, v11

    if-ge v12, v13, :cond_c6

    new-instance v13, Ljava/io/File;

    aget-object v14, v11, v12

    invoke-direct {v13, v8, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, ".dex"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c3

    invoke-virtual {v13}, Ljava/io/File;->delete()Z
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_c3} :catch_166
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_c3} :catch_116
    .catchall {:try_start_8f .. :try_end_c3} :catchall_113

    :cond_c3
    add-int/lit8 v12, v12, 0x1

    goto :goto_aa

    :cond_c6
    :try_start_c6
    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/o;->s(Landroid/content/Context;)Ljava/io/File;

    move-result-object v11

    new-instance v12, Ljava/io/File;

    const-string v13, "x5.tbs"

    invoke-direct {v12, v11, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_d4} :catch_d5
    .catchall {:try_start_c6 .. :try_end_d4} :catchall_113

    goto :goto_d6

    :catch_d5
    nop

    :cond_d6
    :goto_d6
    if-nez v0, :cond_fd

    :try_start_d8
    invoke-static {v8}, Lcom/tencent/smtt/utils/FileUtil;->b(Ljava/io/File;)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v11

    const/16 v12, -0x20a

    invoke-virtual {v11, v12}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "copyFileIfChanged -- delete tmpTbsCoreUnzipDir#1! exist:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10f

    :cond_fd
    invoke-direct {v1, v2, v10}, Lcom/tencent/smtt/sdk/o;->g(Landroid/content/Context;Z)V

    if-eqz p3, :cond_10f

    invoke-virtual/range {p0 .. p1}, Lcom/tencent/smtt/sdk/o;->p(Landroid/content/Context;)Ljava/io/File;

    move-result-object v11

    invoke-static {v11, v10}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/io/File;Z)V

    invoke-virtual {v8, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->b(Landroid/content/Context;)V
    :try_end_10f
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_10f} :catch_166
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_10f} :catch_116
    .catchall {:try_start_d8 .. :try_end_10f} :catchall_113

    :cond_10f
    :goto_10f
    invoke-static {v6, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catchall_113
    move-exception v0

    goto/16 :goto_1b6

    :catch_116
    move-exception v0

    :try_start_117
    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v2

    const/16 v9, 0xcf

    invoke-virtual {v2, v9, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/Throwable;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_12b
    .catchall {:try_start_117 .. :try_end_12b} :catchall_113

    if-eqz v0, :cond_12e

    goto :goto_12f

    :cond_12e
    const/4 v10, 0x0

    :goto_12f
    if-eqz v10, :cond_162

    :try_start_131
    invoke-static {v8}, Lcom/tencent/smtt/utils/FileUtil;->b(Ljava/io/File;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14a
    .catchall {:try_start_131 .. :try_end_14a} :catchall_14b

    goto :goto_162

    :catchall_14b
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_162
    :goto_162
    invoke-static {v6, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :catch_166
    move-exception v0

    :try_start_167
    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v2

    const/16 v9, 0xce

    invoke-virtual {v2, v9, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/Throwable;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_17b
    .catchall {:try_start_167 .. :try_end_17b} :catchall_113

    if-eqz v0, :cond_17e

    goto :goto_17f

    :cond_17e
    const/4 v10, 0x0

    :goto_17f
    if-eqz v10, :cond_1b2

    :try_start_181
    invoke-static {v8}, Lcom/tencent/smtt/utils/FileUtil;->b(Ljava/io/File;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19a
    .catchall {:try_start_181 .. :try_end_19a} :catchall_19b

    goto :goto_1b2

    :catchall_19b
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b2
    :goto_1b2
    invoke-static {v6, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :goto_1b6
    invoke-static {v6, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->getTbsFolderDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 p1, 0x0

    const-string v1, "TbsInstaller"

    if-nez p0, :cond_18

    const-string p0, "TbsInstaller-isPrepareTbsCore, #1"

    :goto_14
    invoke-static {v1, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_18
    new-instance p0, Ljava/io/File;

    const-string v2, "tbs.conf"

    invoke-direct {p0, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_28

    const-string p0, "TbsInstaller-isPrepareTbsCore, #2"

    goto :goto_14

    :cond_28
    const-string p0, "TbsInstaller-isPrepareTbsCore, #3"

    invoke-static {v1, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private a(Ljava/io/File;Landroid/content/Context;)Z
    .registers 15

    const-string v0, "1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finalCheckForTbsCoreValidity - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "TbsInstaller"

    invoke-static {v1, p2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_23
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2d} :catch_59
    .catchall {:try_start_23 .. :try_end_2d} :catchall_56

    :try_start_2d
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_45

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3d} :catch_51
    .catchall {:try_start_2d .. :try_end_3d} :catchall_56

    :try_start_3d
    invoke-virtual {v5, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_43
    .catchall {:try_start_3d .. :try_end_40} :catchall_14e

    move-object p2, v4

    const/4 v4, 0x1

    goto :goto_46

    :catch_43
    move-exception p2

    goto :goto_5d

    :cond_45
    const/4 v4, 0x0

    :goto_46
    if-eqz p2, :cond_6b

    :try_start_48
    invoke-virtual {p2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_6b

    :catch_4c
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6b

    :catch_51
    move-exception v4

    move-object v11, v4

    move-object v4, p2

    move-object p2, v11

    goto :goto_5d

    :catchall_56
    move-exception p1

    goto/16 :goto_150

    :catch_59
    move-exception v4

    move-object v5, p2

    move-object p2, v4

    move-object v4, v5

    :goto_5d
    :try_start_5d
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_14e

    if-eqz v4, :cond_6a

    :try_start_62
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_6a

    :catch_66
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_6a
    :goto_6a
    const/4 v4, 0x1

    :cond_6b
    :goto_6b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finalCheckForTbsCoreValidity - need_check:"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_129

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    const/4 p2, 0x0

    :goto_86
    array-length v6, p1

    if-ge p2, v6, :cond_129

    aget-object v6, p1, p2

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_125

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".dex"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_125

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "tbs.conf"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_125

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_125

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".prof"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c0

    goto :goto_125

    :cond_c0
    invoke-static {v6}, Lcom/tencent/smtt/utils/a;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v5, v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, ")"

    if-nez v9, :cond_f8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "md5_check_success for ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_125

    :cond_f8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "md5_check_failure for ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " targetMd5:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", realMd5:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_12a

    :cond_125
    :goto_125
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_86

    :cond_129
    const/4 p1, 0x1

    :goto_12a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "finalCheckForTbsCoreValidity - md5_check_success:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_148

    if-nez p1, :cond_148

    const-string p1, "finalCheckForTbsCoreValidity - Verify failed after unzipping!"

    invoke-static {v1, p1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_148
    const-string p1, "finalCheckForTbsCoreValidity success!"

    invoke-static {v1, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :catchall_14e
    move-exception p1

    move-object p2, v4

    :goto_150
    if-eqz p2, :cond_15a

    :try_start_152
    invoke-virtual {p2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_155
    .catch Ljava/io/IOException; {:try_start_152 .. :try_end_155} :catch_156

    goto :goto_15a

    :catch_156
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_15a
    :goto_15a
    throw p1
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 22
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    const-string v0, "unlzma return false"

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v5

    const/16 v6, -0x1f5

    invoke-virtual {v5, v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-virtual/range {p0 .. p1}, Lcom/tencent/smtt/sdk/o;->c(Landroid/content/Context;)Z

    move-result v5

    const/4 v6, 0x1

    const-string v7, "TbsInstaller"

    if-eqz v5, :cond_2b

    const-string v0, "isTbsLocalInstalled --> no installation!"

    invoke-static {v7, v0, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v2, -0x1f6

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    return-void

    :cond_2b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TbsInstaller-installTbsCoreInThread tbsApkPath="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TbsInstaller-installTbsCoreInThread tbsCoreTargetVer="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TbsInstaller-continueInstallTbsCore currentProcessName="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TbsInstaller-installTbsCoreInThread currentProcessId="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TbsInstaller-installTbsCoreInThread currentThreadName="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v8, 0x4

    const/16 v9, 0xb

    const-string v10, "tbs_preloadx5_check_cfg_file"

    const/4 v11, 0x0

    if-lt v5, v9, :cond_b0

    invoke-virtual {v2, v10, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    goto :goto_b4

    :cond_b0
    invoke-virtual {v2, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    :goto_b4
    const-string v13, "tbs_precheck_disable_version"

    const/4 v14, -0x1

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v4, :cond_e0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TbsInstaller-installTbsCoreInThread -- version:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is disabled by preload_x5_check!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v2, -0x1f7

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    return-void

    :cond_e0
    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/utils/FileUtil;->b(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_11e

    invoke-static {}, Lcom/tencent/smtt/utils/p;->a()J

    move-result-wide v3

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getDownloadMinFreeSpace()J

    move-result-wide v5

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v7, -0x1f8

    invoke-virtual {v0, v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const/16 v2, 0xd2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "rom is not enough when installing tbs core! curAvailROM="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",minReqRom="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    return-void

    :cond_11e
    invoke-virtual/range {p0 .. p1}, Lcom/tencent/smtt/sdk/o;->t(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_12e

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v2, -0x1f9

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    return-void

    :cond_12e
    sget-object v12, Lcom/tencent/smtt/sdk/o;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TbsInstaller-installTbsCoreInThread locked ="

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v13, :cond_672

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v13

    const/16 v14, -0x1fb

    invoke-virtual {v13, v14}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    sget-object v13, Lcom/tencent/smtt/sdk/o;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_158
    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v15

    const-string v14, "copy_core_ver"

    invoke-virtual {v15, v14}, Lcom/tencent/smtt/sdk/m;->c(Ljava/lang/String;)I

    move-result v14

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v15

    invoke-virtual {v15}, Lcom/tencent/smtt/sdk/m;->b()I

    move-result v15

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TbsInstaller-installTbsCoreInThread tbsCoreCopyVer ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TbsInstaller-installTbsCoreInThread tbsCoreInstallVer ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TbsInstaller-installTbsCoreInThread tbsCoreTargetVer ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a6
    .catchall {:try_start_158 .. :try_end_1a6} :catchall_64c

    if-lez v15, :cond_1aa

    if-gt v4, v15, :cond_1ae

    :cond_1aa
    if-lez v14, :cond_1b5

    if-le v4, v14, :cond_1b5

    :cond_1ae
    :try_start_1ae
    invoke-virtual/range {p0 .. p1}, Lcom/tencent/smtt/sdk/o;->o(Landroid/content/Context;)V
    :try_end_1b1
    .catchall {:try_start_1ae .. :try_end_1b1} :catchall_1b2

    goto :goto_1b5

    :catchall_1b2
    move-exception v0

    goto/16 :goto_64e

    :cond_1b5
    :goto_1b5
    :try_start_1b5
    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/smtt/sdk/m;->c()I

    move-result v8

    invoke-virtual/range {p0 .. p1}, Lcom/tencent/smtt/sdk/o;->i(Landroid/content/Context;)I

    move-result v9

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "TbsInstaller-installTbsCoreInThread installStatus1="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "TbsInstaller-installTbsCoreInThread tbsCoreInstalledVer="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e9
    .catchall {:try_start_1b5 .. :try_end_1e9} :catchall_64c

    const v14, 0x54c5638

    const/4 v15, 0x2

    if-ltz v8, :cond_1f8

    if-ge v8, v15, :cond_1f8

    :try_start_1f1
    const-string v9, "TbsInstaller-installTbsCoreInThread -- retry....."

    invoke-static {v7, v9, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v9, 0x1

    goto :goto_20b

    :cond_1f8
    const/4 v15, 0x3

    if-ne v8, v15, :cond_20a

    if-ltz v9, :cond_20a

    if-gt v4, v9, :cond_201

    if-ne v4, v14, :cond_20a

    :cond_201
    invoke-virtual/range {p0 .. p1}, Lcom/tencent/smtt/sdk/o;->o(Landroid/content/Context;)V

    const-string v8, "TbsInstaller-installTbsCoreInThread -- update TBS....."

    invoke-static {v7, v8, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_209
    .catchall {:try_start_1f1 .. :try_end_209} :catchall_1b2

    const/4 v8, -0x1

    :cond_20a
    const/4 v9, 0x0

    :goto_20b
    :try_start_20b
    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v15

    const/16 v14, -0x1fc

    invoke-virtual {v15, v14}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "TbsInstaller-installTbsCoreInThread installStatus2="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_228
    .catchall {:try_start_20b .. :try_end_228} :catchall_64c

    const-string v15, "apk path is null!"

    const-string v11, "install_apk_path"

    if-ge v8, v6, :cond_4b7

    :try_start_22e
    const-string v14, "STEP 2/2 begin installation....."

    invoke-static {v7, v14, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v14

    const/16 v6, -0x1fd

    invoke-virtual {v14, v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    if-eqz v9, :cond_283

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v6

    const-string v14, "unzip_retry_num"

    invoke-virtual {v6, v14}, Lcom/tencent/smtt/sdk/m;->c(Ljava/lang/String;)I

    move-result v6

    const/16 v14, 0xa

    if-le v6, v14, :cond_278

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const/16 v3, 0xc9

    const-string v4, "exceed unzip retry num!"

    invoke-virtual {v0, v3, v4}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/tencent/smtt/sdk/o;->E(Landroid/content/Context;)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v2, -0x1fe

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V
    :try_end_263
    .catchall {:try_start_22e .. :try_end_263} :catchall_1b2

    :try_start_263
    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_269
    .catch Ljava/lang/Exception; {:try_start_263 .. :try_end_269} :catch_26a

    goto :goto_26e

    :catch_26a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_26e
    :try_start_26e
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/o;->b()V
    :try_end_271
    .catch Ljava/lang/Exception; {:try_start_26e .. :try_end_271} :catch_272

    goto :goto_277

    :catch_272
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_277
    return-void

    :cond_278
    :try_start_278
    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v14

    const/16 v16, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v14, v6}, Lcom/tencent/smtt/sdk/m;->b(I)V

    :cond_283
    if-nez v3, :cond_2b6

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/tencent/smtt/sdk/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2b7

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const/16 v3, 0xca

    invoke-virtual {v0, v3, v15}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v2, -0x1ff

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V
    :try_end_2a1
    .catchall {:try_start_278 .. :try_end_2a1} :catchall_1b2

    :try_start_2a1
    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2a7
    .catch Ljava/lang/Exception; {:try_start_2a1 .. :try_end_2a7} :catch_2a8

    goto :goto_2ac

    :catch_2a8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2ac
    :try_start_2ac
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/o;->b()V
    :try_end_2af
    .catch Ljava/lang/Exception; {:try_start_2ac .. :try_end_2af} :catch_2b0

    goto :goto_2b5

    :catch_2b0
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2b5
    return-void

    :cond_2b6
    move-object v6, v3

    :cond_2b7
    :try_start_2b7
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "TbsInstaller-installTbsCoreInThread apkPath ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v6}, Lcom/tencent/smtt/sdk/o;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_2fa

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v3, -0x200

    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const/16 v2, 0xcb

    const-string v3, "apk version is 0!"

    invoke-virtual {v0, v2, v3}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V
    :try_end_2e5
    .catchall {:try_start_2b7 .. :try_end_2e5} :catchall_1b2

    :try_start_2e5
    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2eb
    .catch Ljava/lang/Exception; {:try_start_2e5 .. :try_end_2eb} :catch_2ec

    goto :goto_2f0

    :catch_2ec
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2f0
    :try_start_2f0
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/o;->b()V
    :try_end_2f3
    .catch Ljava/lang/Exception; {:try_start_2f0 .. :try_end_2f3} :catch_2f4

    goto :goto_2f9

    :catch_2f4
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2f9
    return-void

    :cond_2fa
    :try_start_2fa
    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v15

    invoke-virtual {v15, v11, v6}, Lcom/tencent/smtt/sdk/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v11

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Lcom/tencent/smtt/sdk/m;->c(II)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v11

    const/16 v15, -0x224

    invoke-virtual {v11, v15}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;)Z

    move-result v11
    :try_end_316
    .catchall {:try_start_2fa .. :try_end_316} :catchall_1b2

    const-string v15, "unzipTbsApk failed"

    move-object/from16 v17, v10

    const/16 v10, 0xcf

    if-eqz v11, :cond_348

    :try_start_31e
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-direct {v1, v2, v11, v6}, Lcom/tencent/smtt/sdk/o;->a(Landroid/content/Context;Ljava/io/File;Z)Z

    move-result v11

    if-nez v11, :cond_36f

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    sget-object v2, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_INSTALL_DECOUPLE:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    invoke-virtual {v0, v10, v15, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;Lcom/tencent/smtt/sdk/TbsLogReport$EventType;)V
    :try_end_333
    .catchall {:try_start_31e .. :try_end_333} :catchall_1b2

    :try_start_333
    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_339
    .catch Ljava/lang/Exception; {:try_start_333 .. :try_end_339} :catch_33a

    goto :goto_33e

    :catch_33a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_33e
    :try_start_33e
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/o;->b()V
    :try_end_341
    .catch Ljava/lang/Exception; {:try_start_33e .. :try_end_341} :catch_342

    goto :goto_347

    :catch_342
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_347
    return-void

    :cond_348
    :try_start_348
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v11}, Lcom/tencent/smtt/sdk/o;->a(Landroid/content/Context;Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_36f

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    invoke-virtual {v0, v10, v15}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V
    :try_end_35a
    .catchall {:try_start_348 .. :try_end_35a} :catchall_1b2

    :try_start_35a
    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_360
    .catch Ljava/lang/Exception; {:try_start_35a .. :try_end_360} :catch_361

    goto :goto_365

    :catch_361
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_365
    :try_start_365
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/o;->b()V
    :try_end_368
    .catch Ljava/lang/Exception; {:try_start_365 .. :try_end_368} :catch_369

    goto :goto_36e

    :catch_369
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_36e
    return-void

    :cond_36f
    if-eqz v9, :cond_3d5

    :try_start_371
    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v6

    const-string v10, "unlzma_status"

    invoke-virtual {v6, v10}, Lcom/tencent/smtt/sdk/m;->b(Ljava/lang/String;)I

    move-result v6

    const/4 v10, 0x5

    if-le v6, v10, :cond_3cc

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const/16 v3, 0xdf

    const-string v4, "exceed unlzma retry num!"

    invoke-virtual {v0, v3, v4}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v3, -0x229

    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-direct/range {p0 .. p1}, Lcom/tencent/smtt/sdk/o;->E(Landroid/content/Context;)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/l;->c(Landroid/content/Context;)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-string v3, "tbs_needdownload"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    const-string v3, "request_full_package"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V
    :try_end_3b7
    .catchall {:try_start_371 .. :try_end_3b7} :catchall_1b2

    :try_start_3b7
    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_3bd
    .catch Ljava/lang/Exception; {:try_start_3b7 .. :try_end_3bd} :catch_3be

    goto :goto_3c2

    :catch_3be
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3c2
    :try_start_3c2
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/o;->b()V
    :try_end_3c5
    .catch Ljava/lang/Exception; {:try_start_3c2 .. :try_end_3c5} :catch_3c6

    goto :goto_3cb

    :catch_3c6
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3cb
    return-void

    :cond_3cc
    :try_start_3cc
    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v10

    const/4 v11, 0x1

    add-int/2addr v6, v11

    invoke-virtual {v10, v6}, Lcom/tencent/smtt/sdk/m;->d(I)V

    :cond_3d5
    const-string v6, "unlzma begin"

    invoke-static {v7, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance()Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v6

    iget-object v6, v6, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v10, "tbs_responsecode"

    const/4 v11, 0x0

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual/range {p0 .. p1}, Lcom/tencent/smtt/sdk/o;->i(Landroid/content/Context;)I

    move-result v10

    if-eqz v10, :cond_4a8

    const-string v10, "can_unlzma"

    const/4 v11, 0x0

    invoke-static {v2, v10, v11}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_401

    instance-of v11, v10, Ljava/lang/Boolean;

    if-eqz v11, :cond_401

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    goto :goto_402

    :cond_401
    const/4 v10, 0x0

    :goto_402
    if-eqz v10, :cond_4a8

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string v11, "responseCode"

    invoke-virtual {v10, v11, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;)Z

    move-result v6
    :try_end_412
    .catchall {:try_start_3cc .. :try_end_412} :catchall_1b2

    const-string v11, "unzip_temp_path"

    if-eqz v6, :cond_422

    :try_start_416
    invoke-virtual/range {p0 .. p1}, Lcom/tencent/smtt/sdk/o;->p(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    :goto_41e
    invoke-virtual {v10, v11, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42c

    :cond_422
    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6}, Lcom/tencent/smtt/sdk/o;->f(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    goto :goto_41e

    :goto_42c
    const-string v6, "unlzma"

    invoke-static {v2, v6, v10}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v6

    const/16 v10, 0xde

    if-nez v6, :cond_445

    const-string v0, "unlzma return null"

    invoke-static {v7, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const-string v6, "unlzma is null"

    invoke-virtual {v0, v10, v6}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    goto :goto_490

    :cond_445
    instance-of v11, v6, Ljava/lang/Boolean;

    if-eqz v11, :cond_462

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_457

    const-string v0, "unlzma success"

    invoke-static {v7, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_466

    :cond_457
    invoke-static {v7, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v6

    invoke-virtual {v6, v10, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    goto :goto_490

    :cond_462
    instance-of v0, v6, Landroid/os/Bundle;

    if-eqz v0, :cond_468

    :goto_466
    const/4 v0, 0x1

    goto :goto_491

    :cond_468
    instance-of v0, v6, Ljava/lang/Throwable;

    if-eqz v0, :cond_490

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unlzma failure because Throwable"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v11, v6

    check-cast v11, Ljava/lang/Throwable;

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    check-cast v6, Ljava/lang/Throwable;

    invoke-virtual {v0, v10, v6}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/Throwable;)V
    :try_end_490
    .catchall {:try_start_416 .. :try_end_490} :catchall_1b2

    :cond_490
    :goto_490
    const/4 v0, 0x0

    :goto_491
    if-nez v0, :cond_4a8

    :try_start_493
    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_499
    .catch Ljava/lang/Exception; {:try_start_493 .. :try_end_499} :catch_49a

    goto :goto_49e

    :catch_49a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_49e
    :try_start_49e
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/o;->b()V
    :try_end_4a1
    .catch Ljava/lang/Exception; {:try_start_49e .. :try_end_4a1} :catch_4a2

    goto :goto_4a7

    :catch_4a2
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4a7
    return-void

    :cond_4a8
    :try_start_4a8
    const-string v0, "unlzma finished"

    invoke-static {v7, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v0

    const/4 v6, 0x1

    invoke-virtual {v0, v14, v6}, Lcom/tencent/smtt/sdk/m;->c(II)V
    :try_end_4b5
    .catchall {:try_start_4a8 .. :try_end_4b5} :catchall_1b2

    const/4 v0, 0x2

    goto :goto_4fe

    :cond_4b7
    move-object/from16 v17, v10

    :try_start_4b9
    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;)Z

    move-result v0
    :try_end_4bd
    .catchall {:try_start_4b9 .. :try_end_4bd} :catchall_64c

    if-eqz v0, :cond_4fc

    if-nez v3, :cond_4f2

    :try_start_4c1
    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/tencent/smtt/sdk/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4f3

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const/16 v3, 0xca

    invoke-virtual {v0, v3, v15}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v2, -0x1ff

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V
    :try_end_4dd
    .catchall {:try_start_4c1 .. :try_end_4dd} :catchall_1b2

    :try_start_4dd
    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_4e3
    .catch Ljava/lang/Exception; {:try_start_4dd .. :try_end_4e3} :catch_4e4

    goto :goto_4e8

    :catch_4e4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4e8
    :try_start_4e8
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/o;->b()V
    :try_end_4eb
    .catch Ljava/lang/Exception; {:try_start_4e8 .. :try_end_4eb} :catch_4ec

    goto :goto_4f1

    :catch_4ec
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4f1
    return-void

    :cond_4f2
    move-object v0, v3

    :cond_4f3
    :try_start_4f3
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x1

    invoke-direct {v1, v2, v6, v10}, Lcom/tencent/smtt/sdk/o;->a(Landroid/content/Context;Ljava/io/File;Z)Z

    :cond_4fc
    const/4 v0, 0x2

    const/4 v14, 0x0

    :goto_4fe
    if-ge v8, v0, :cond_61a

    if-eqz v9, :cond_545

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v0

    const-string v6, "dexopt_retry_num"

    invoke-virtual {v0, v6}, Lcom/tencent/smtt/sdk/m;->c(Ljava/lang/String;)I

    move-result v0

    const/16 v6, 0xa

    if-le v0, v6, :cond_53c

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const/16 v3, 0xd0

    const-string v4, "exceed dexopt retry num!"

    invoke-virtual {v0, v3, v4}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v3, -0x202

    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-direct/range {p0 .. p1}, Lcom/tencent/smtt/sdk/o;->E(Landroid/content/Context;)V
    :try_end_527
    .catchall {:try_start_4f3 .. :try_end_527} :catchall_1b2

    :try_start_527
    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_52d
    .catch Ljava/lang/Exception; {:try_start_527 .. :try_end_52d} :catch_52e

    goto :goto_532

    :catch_52e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_532
    :try_start_532
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/o;->b()V
    :try_end_535
    .catch Ljava/lang/Exception; {:try_start_532 .. :try_end_535} :catch_536

    goto :goto_53b

    :catch_536
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_53b
    return-void

    :cond_53c
    :try_start_53c
    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v6

    const/4 v8, 0x1

    add-int/2addr v0, v8

    invoke-virtual {v6, v0}, Lcom/tencent/smtt/sdk/m;->a(I)V
    :try_end_545
    .catchall {:try_start_53c .. :try_end_545} :catchall_1b2

    :cond_545
    :try_start_545
    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v6, -0x225

    invoke-virtual {v0, v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    const/4 v6, 0x0

    invoke-direct {v1, v2, v6}, Lcom/tencent/smtt/sdk/o;->j(Landroid/content/Context;I)Z

    move-result v0
    :try_end_553
    .catchall {:try_start_545 .. :try_end_553} :catchall_64c

    if-nez v0, :cond_573

    :try_start_555
    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v2, -0x203

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V
    :try_end_55e
    .catchall {:try_start_555 .. :try_end_55e} :catchall_1b2

    :try_start_55e
    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_564
    .catch Ljava/lang/Exception; {:try_start_55e .. :try_end_564} :catch_565

    goto :goto_569

    :catch_565
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_569
    :try_start_569
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/o;->b()V
    :try_end_56c
    .catch Ljava/lang/Exception; {:try_start_569 .. :try_end_56c} :catch_56d

    goto :goto_572

    :catch_56d
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_572
    return-void

    :cond_573
    :try_start_573
    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v0

    const/4 v6, 0x2

    invoke-virtual {v0, v14, v6}, Lcom/tencent/smtt/sdk/m;->c(II)V

    const-string v0, "STEP 2/2 installation completed! you can restart!"

    const/4 v6, 0x1

    invoke-static {v7, v0, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "STEP 2/2 installation completed! you can restart! version:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v8, -0x204

    invoke-virtual {v0, v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V
    :try_end_59e
    .catchall {:try_start_573 .. :try_end_59e} :catchall_64c

    const/16 v0, 0xb

    if-lt v5, v0, :cond_5ab

    move-object/from16 v5, v17

    const/4 v0, 0x4

    :try_start_5a5
    invoke-virtual {v2, v5, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v9, 0x0

    goto :goto_5b2

    :cond_5ab
    move-object/from16 v5, v17

    const/4 v9, 0x0

    invoke-virtual {v2, v5, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0
    :try_end_5b2
    .catchall {:try_start_5a5 .. :try_end_5b2} :catchall_1b2

    :goto_5b2
    :try_start_5b2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v5, "tbs_preload_x5_counter"

    invoke-interface {v0, v5, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v5, "tbs_preload_x5_recorder"

    invoke-interface {v0, v5, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v5, "tbs_preload_x5_version"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v5, -0x205

    invoke-virtual {v0, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V
    :try_end_5d1
    .catchall {:try_start_5b2 .. :try_end_5d1} :catchall_5d5

    :goto_5d1
    const v5, 0x54c5638

    goto :goto_5f8

    :catchall_5d5
    move-exception v0

    :try_start_5d6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Init tbs_preload_x5_counter#1 exception:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v5, -0x206

    invoke-virtual {v0, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    goto :goto_5d1

    :goto_5f8
    if-ne v4, v5, :cond_5fd

    invoke-direct {v1, v4, v3, v2}, Lcom/tencent/smtt/sdk/o;->a(ILjava/lang/String;Landroid/content/Context;)V

    :cond_5fd
    iget-boolean v0, v1, Lcom/tencent/smtt/sdk/o;->k:Z

    if-eqz v0, :cond_60f

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    invoke-direct/range {p0 .. p1}, Lcom/tencent/smtt/sdk/o;->u(Landroid/content/Context;)I

    move-result v2

    const-string v3, "continueInstallWithout core success"

    :goto_60b
    invoke-virtual {v0, v2, v3}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    goto :goto_62a

    :cond_60f
    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    invoke-direct/range {p0 .. p1}, Lcom/tencent/smtt/sdk/o;->u(Landroid/content/Context;)I

    move-result v2

    const-string v3, "success"
    :try_end_619
    .catchall {:try_start_5d6 .. :try_end_619} :catchall_1b2

    goto :goto_60b

    :cond_61a
    const/4 v6, 0x1

    const/4 v9, 0x0

    if-ne v8, v0, :cond_629

    :try_start_61e
    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    const/16 v2, 0xc8

    invoke-interface {v0, v2}, Lcom/tencent/smtt/sdk/TbsListener;->onInstallFinish(I)V
    :try_end_625
    .catchall {:try_start_61e .. :try_end_625} :catchall_626

    goto :goto_62a

    :catchall_626
    move-exception v0

    move-object v2, v0

    goto :goto_650

    :cond_629
    const/4 v6, 0x0

    :goto_62a
    :try_start_62a
    sget-object v0, Lcom/tencent/smtt/sdk/o;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-object v0, Lcom/tencent/smtt/sdk/o;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_634
    .catch Ljava/lang/Exception; {:try_start_62a .. :try_end_634} :catch_635

    goto :goto_639

    :catch_635
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_639
    :try_start_639
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/o;->b()V
    :try_end_63c
    .catch Ljava/lang/Exception; {:try_start_639 .. :try_end_63c} :catch_63d

    goto :goto_642

    :catch_63d
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_642
    if-eqz v6, :cond_67e

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    const/16 v2, 0xe8

    invoke-interface {v0, v2}, Lcom/tencent/smtt/sdk/TbsListener;->onInstallFinish(I)V

    goto :goto_67e

    :catchall_64c
    move-exception v0

    const/4 v9, 0x0

    :goto_64e
    move-object v2, v0

    const/4 v6, 0x0

    :goto_650
    :try_start_650
    sget-object v0, Lcom/tencent/smtt/sdk/o;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-object v0, Lcom/tencent/smtt/sdk/o;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_65a
    .catch Ljava/lang/Exception; {:try_start_650 .. :try_end_65a} :catch_65b

    goto :goto_65f

    :catch_65b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_65f
    :try_start_65f
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/o;->b()V
    :try_end_662
    .catch Ljava/lang/Exception; {:try_start_65f .. :try_end_662} :catch_663

    goto :goto_668

    :catch_663
    move-exception v0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_668
    if-eqz v6, :cond_671

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    const/16 v3, 0xe8

    invoke-interface {v0, v3}, Lcom/tencent/smtt/sdk/TbsListener;->onInstallFinish(I)V

    :cond_671
    throw v2

    :cond_672
    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v2, -0x207

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/o;->b()V

    :cond_67e
    :goto_67e
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/io/File;)Z
    .registers 13

    const-string v0, "TbsInstaller"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Lcom/tencent/smtt/sdk/o$6;

    invoke-direct {v2, p0}, Lcom/tencent/smtt/sdk/o$6;-><init>(Lcom/tencent/smtt/sdk/o;)V

    invoke-virtual {p2, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-ge v4, v5, :cond_2a

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2a

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.tencent.tbs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_23} :catch_60

    if-eqz v4, :cond_2a

    const-wide/16 v4, 0x1388

    :try_start_27
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_2a

    :catch_2a
    :cond_2a
    :try_start_2a
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x0

    :goto_2f
    if-ge v5, v3, :cond_5e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "jarFile: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v2, v5

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ldalvik/system/DexClassLoader;

    aget-object v7, v2, v5

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_5b} :catch_60

    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    :cond_5e
    const/4 p1, 0x1

    return p1

    :catch_60
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object p1

    const/16 v2, 0xd1

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    const-string p1, "TbsInstaller-doTbsDexOpt done"

    invoke-static {v0, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private c(Landroid/content/Context;Landroid/os/Bundle;)I
    .registers 13

    const-string v0, "TbsInstaller"

    const/4 v1, 0x1

    :try_start_3
    invoke-static {p1, p2}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tpatch finished,ret is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "patch_result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_21} :catch_11f

    const/4 v3, 0x0

    const-string v4, "new_apk_location"

    if-nez v2, :cond_f4

    :try_start_26
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "new_core_ver"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/tencent/smtt/sdk/o;->a(Ljava/io/File;)I

    move-result v2
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_39} :catch_11f

    const-string v5, ",patchVersion="

    const-string v6, "version="

    if-eq v4, v2, :cond_7a

    :try_start_3f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "version not equals!!!"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "patchVersion:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object p2

    const/16 v0, 0xf0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    return v1

    :cond_7a
    new-instance v7, Ljava/io/File;

    const-string v8, "backup_apk"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v7, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1, v7}, Lcom/tencent/smtt/utils/b;->a(Landroid/content/Context;ZLjava/io/File;)Ljava/lang/String;

    move-result-object p2

    const-string v8, "3082023f308201a8a00302010202044c46914a300d06092a864886f70d01010505003064310b30090603550406130238363110300e060355040813074265696a696e673110300e060355040713074265696a696e673110300e060355040a130754656e63656e74310c300a060355040b13035753443111300f0603550403130873616d75656c6d6f301e170d3130303732313036313835305a170d3430303731333036313835305a3064310b30090603550406130238363110300e060355040813074265696a696e673110300e060355040713074265696a696e673110300e060355040a130754656e63656e74310c300a060355040b13035753443111300f0603550403130873616d75656c6d6f30819f300d06092a864886f70d010101050003818d0030818902818100c209077044bd0d63ea00ede5b839914cabcc912a87f0f8b390877e0f7a2583f0d5933443c40431c35a4433bc4c965800141961adc44c9625b1d321385221fd097e5bdc2f44a1840d643ab59dc070cf6c4b4b4d98bed5cbb8046e0a7078ae134da107cdf2bfc9b440fe5cb2f7549b44b73202cc6f7c2c55b8cfb0d333a021f01f0203010001300d06092a864886f70d010105050003818100b007db9922774ef4ccfee81ba514a8d57c410257e7a2eba64bfa17c9e690da08106d32f637ac41fbc9f205176c71bde238c872c3ee2f8313502bee44c80288ea4ef377a6f2cdfe4d3653c145c4acfedbfbadea23b559d41980cc3cdd35d79a68240693739aabf5c5ed26148756cf88264226de394c8a24ac35b712b120d4d23a"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_cf

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tpatch sig not equals!!!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "signature:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object p2

    const/16 v0, 0xf1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    invoke-static {v7}, Lcom/tencent/smtt/utils/FileUtil;->b(Ljava/io/File;)V

    return v3

    :cond_cf
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;)Z

    move-result p2
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_d3} :catch_11f

    const-string v2, ""

    if-eqz p2, :cond_e6

    :try_start_d7
    const-string p2, "Tpatch decouple success!"

    invoke-static {v0, p2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object p2

    const/16 v0, 0xed

    :goto_e2
    invoke-virtual {p2, v0, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    goto :goto_f2

    :cond_e6
    const-string p2, "Tpatch success!"

    invoke-static {v0, p2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object p2

    const/16 v0, 0xec

    goto :goto_e2

    :goto_f2
    const/4 v1, 0x0

    goto :goto_141

    :cond_f4
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_106

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/smtt/utils/FileUtil;->b(Ljava/io/File;)V

    :cond_106
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tpatch fail,patch error_code="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_11e} :catch_11f

    goto :goto_141

    :catch_11f
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object p1

    const/16 v0, 0xef

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "patch exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    :goto_141
    return v1
.end method

.method private c(Landroid/content/Context;Ljava/io/File;)Z
    .registers 12

    const/16 v0, 0xe2

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/io/File;

    const-string v3, "tbs_sdk_extension_dex.jar"

    invoke-direct {v2, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "tbs_sdk_extension_dex.dex"

    invoke-direct {v3, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    new-instance v5, Ldalvik/system/DexClassLoader;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v2, v6, v7, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/tencent/smtt/sdk/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object p2

    const-string v2, "can not find oat command"

    invoke-virtual {p2, v0, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    return v1

    :cond_3b
    new-instance v3, Lcom/tencent/smtt/sdk/o$7;

    invoke-direct {v3, p0}, Lcom/tencent/smtt/sdk/o$7;-><init>(Lcom/tencent/smtt/sdk/o;)V

    invoke-virtual {p2, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p2

    array-length v3, p2

    const/4 v4, 0x0

    :goto_46
    if-ge v4, v3, :cond_9e

    aget-object v5, p2, v4

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v6, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "tbs_sdk_extension_dex"

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/system/bin/dex2oat "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " --dex-location="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/tencent/smtt/sdk/o;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".jar"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9b} :catch_a0

    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    :cond_9e
    const/4 p1, 0x1

    return p1

    :catch_a0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/Throwable;)V

    return v1
.end method

.method private declared-synchronized c(Landroid/content/Context;Z)Z
    .registers 10

    monitor-enter p0

    :try_start_1
    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller-enableTbsCoreFromTpatch"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_bb

    const/4 v0, 0x0

    :try_start_9
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/o;->t(Landroid/content/Context;)Z

    move-result v1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_93

    if-nez v1, :cond_11

    monitor-exit p0

    return v0

    :cond_11
    :try_start_11
    sget-object v1, Lcom/tencent/smtt/sdk/o;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v2

    const-string v3, "TbsInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TbsInstaller-enableTbsCoreFromTpatch Locked ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_11 .. :try_end_2d} :catchall_93

    if-eqz v2, :cond_8f

    :try_start_2f
    invoke-static {p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v2

    const-string v3, "tpatch_status"

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/m;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v0, p1}, Lcom/tencent/smtt/sdk/o;->a(ZLandroid/content/Context;)I

    move-result v3

    const-string v4, "TbsInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TbsInstaller-enableTbsCoreFromTpatch copyStatus ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "TbsInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TbsInstaller-enableTbsCoreFromTpatch tbsCoreInstalledVer ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    if-ne v2, v4, :cond_84

    if-nez v3, :cond_7a

    const-string p2, "TbsInstaller"

    const-string v2, "TbsInstaller-enableTbsCoreFromTpatch tbsCoreInstalledVer = 0"

    invoke-static {p2, v2, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_75
    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/o;->y(Landroid/content/Context;)V

    const/4 v0, 0x1

    goto :goto_84

    :cond_7a
    if-eqz p2, :cond_84

    const-string p2, "TbsInstaller"

    const-string v2, "TbsInstaller-enableTbsCoreFromTpatch tbsCoreInstalledVer != 0"

    invoke-static {p2, v2, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_83
    .catchall {:try_start_2f .. :try_end_83} :catchall_88

    goto :goto_75

    :cond_84
    :goto_84
    :try_start_84
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_8f

    :catchall_88
    move-exception p2

    sget-object v1, Lcom/tencent/smtt/sdk/o;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p2

    :cond_8f
    :goto_8f
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/o;->b()V
    :try_end_92
    .catchall {:try_start_84 .. :try_end_92} :catchall_93

    goto :goto_b9

    :catchall_93
    move-exception p2

    :try_start_94
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v1

    const/16 v2, 0xd7

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TbsInstaller::enableTbsCoreFromTpatch exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_b9
    .catchall {:try_start_94 .. :try_end_b9} :catchall_bb

    :goto_b9
    monitor-exit p0

    return v0

    :catchall_bb
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized d(Landroid/content/Context;Z)Z
    .registers 10

    monitor-enter p0

    :try_start_1
    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller-enableTbsCoreFromCopy"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_bd

    const/4 v0, 0x0

    :try_start_9
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/o;->t(Landroid/content/Context;)Z

    move-result v1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_93

    if-nez v1, :cond_11

    monitor-exit p0

    return v0

    :cond_11
    :try_start_11
    sget-object v1, Lcom/tencent/smtt/sdk/o;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v2

    const-string v3, "TbsInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TbsInstaller-enableTbsCoreFromCopy Locked ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_11 .. :try_end_2d} :catchall_93

    if-eqz v2, :cond_8f

    :try_start_2f
    invoke-static {p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v2

    const-string v3, "copy_status"

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/m;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v0, p1}, Lcom/tencent/smtt/sdk/o;->a(ZLandroid/content/Context;)I

    move-result v3

    const-string v4, "TbsInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TbsInstaller-enableTbsCoreFromCopy copyStatus ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "TbsInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TbsInstaller-enableTbsCoreFromCopy tbsCoreInstalledVer ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    if-ne v2, v4, :cond_84

    if-nez v3, :cond_7a

    const-string p2, "TbsInstaller"

    const-string v2, "TbsInstaller-enableTbsCoreFromCopy tbsCoreInstalledVer = 0"

    invoke-static {p2, v2, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_75
    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/o;->z(Landroid/content/Context;)V

    const/4 v0, 0x1

    goto :goto_84

    :cond_7a
    if-eqz p2, :cond_84

    const-string p2, "TbsInstaller"

    const-string v2, "TbsInstaller-enableTbsCoreFromCopy tbsCoreInstalledVer != 0"

    invoke-static {p2, v2, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_83
    .catchall {:try_start_2f .. :try_end_83} :catchall_88

    goto :goto_75

    :cond_84
    :goto_84
    :try_start_84
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_8f

    :catchall_88
    move-exception p2

    sget-object v1, Lcom/tencent/smtt/sdk/o;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p2

    :cond_8f
    :goto_8f
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/o;->b()V
    :try_end_92
    .catchall {:try_start_84 .. :try_end_92} :catchall_93

    goto :goto_b9

    :catchall_93
    move-exception p2

    :try_start_94
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v1

    const/16 v2, 0xd7

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TbsInstaller::enableTbsCoreFromCopy exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_b9
    .catchall {:try_start_94 .. :try_end_b9} :catchall_bb

    :goto_b9
    monitor-exit p0

    return v0

    :catchall_bb
    move-exception p1

    :try_start_bc
    throw p1
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bd

    :catchall_bd
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private e(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_9} :catch_a

    goto :goto_b

    :catch_a
    const/4 p1, 0x0

    :goto_b
    if-eqz p1, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    return v0
.end method

.method private declared-synchronized e(Landroid/content/Context;Z)Z
    .registers 9

    monitor-enter p0

    if-eqz p1, :cond_20

    :try_start_3
    const-string v0, "com.tencent.mm"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const/16 v1, 0xe5

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    :cond_20
    const-string v0, "TbsInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TbsInstaller-enableTbsCoreFromUnzip canRenameTmpDir ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TbsInstaller"

    const-string v1, "Tbsinstaller enableTbsCoreFromUnzip #1 "

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_d9

    const/4 v0, 0x0

    :try_start_3e
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/o;->t(Landroid/content/Context;)Z

    move-result v1
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_42} :catch_bf
    .catchall {:try_start_3e .. :try_end_42} :catchall_d9

    if-nez v1, :cond_46

    monitor-exit p0

    return v0

    :cond_46
    :try_start_46
    const-string v1, "TbsInstaller"

    const-string v2, "Tbsinstaller enableTbsCoreFromUnzip #2 "

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/smtt/sdk/o;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v2

    const-string v3, "TbsInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TbsInstaller-enableTbsCoreFromUnzip locked="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_69} :catch_bf
    .catchall {:try_start_46 .. :try_end_69} :catchall_d9

    if-eqz v2, :cond_bb

    :try_start_6b
    invoke-static {p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/m;->c()I

    move-result v2

    const-string v3, "TbsInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TbsInstaller-enableTbsCoreFromUnzip installStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lcom/tencent/smtt/sdk/o;->a(ZLandroid/content/Context;)I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v2, v4, :cond_b0

    const-string v2, "TbsInstaller"

    const-string v4, "Tbsinstaller enableTbsCoreFromUnzip #4 "

    invoke-static {v2, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_a6

    const-string p2, "TbsInstaller"

    const-string v2, "TbsInstaller-enableTbsCoreFromUnzip tbsCoreInstalledVer = 0"

    invoke-static {p2, v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_a1
    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/o;->x(Landroid/content/Context;)V

    const/4 v0, 0x1

    goto :goto_b0

    :cond_a6
    if-eqz p2, :cond_b0

    const-string p2, "TbsInstaller"

    const-string v2, "TbsInstaller-enableTbsCoreFromUnzip tbsCoreInstalledVer != 0"

    invoke-static {p2, v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_af
    .catchall {:try_start_6b .. :try_end_af} :catchall_b4

    goto :goto_a1

    :cond_b0
    :goto_b0
    :try_start_b0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_bb

    :catchall_b4
    move-exception p2

    sget-object v1, Lcom/tencent/smtt/sdk/o;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p2

    :cond_bb
    :goto_bb
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/o;->b()V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_be} :catch_bf
    .catchall {:try_start_b0 .. :try_end_be} :catchall_d9

    goto :goto_d7

    :catch_bf
    move-exception p2

    :try_start_c0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TbsInstaller::enableTbsCoreFromUnzip Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d7
    .catchall {:try_start_c0 .. :try_end_d7} :catchall_d9

    :goto_d7
    monitor-exit p0

    return v0

    :catchall_d9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized f(Landroid/content/Context;Z)Z
    .registers 3

    monitor-enter p0

    monitor-exit p0

    const/4 p1, 0x0

    return p1
.end method

.method private g(Landroid/content/Context;Z)V
    .registers 7

    const/16 v0, 0xe1

    if-nez p1, :cond_e

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object p1

    const-string p2, "setTmpFolderCoreToRead context is null"

    invoke-virtual {p1, v0, p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    return-void

    :cond_e
    :try_start_e
    invoke-static {p1}, Lcom/tencent/smtt/sdk/QbSdk;->getTbsFolderDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "tmp_folder_core_to_read.conf"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p2, :cond_26

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_22

    goto :goto_53

    :cond_22
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    goto :goto_53

    :cond_26
    invoke-static {v2}, Lcom/tencent/smtt/utils/FileUtil;->b(Ljava/io/File;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_29} :catch_2a

    goto :goto_53

    :catch_2a
    move-exception p2

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTmpFolderCoreToRead Exception message is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Exception cause is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    :goto_53
    return-void
.end method

.method private h(Landroid/content/Context;I)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "proceedTpatchStatus,result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TbsInstaller"

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1a

    goto :goto_3c

    :cond_1a
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_25

    const/4 p2, 0x6

    invoke-direct {p0, p1, p2}, Lcom/tencent/smtt/sdk/o;->i(Landroid/content/Context;I)V

    goto :goto_3c

    :cond_25
    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/tencent/smtt/sdk/o;->g(Landroid/content/Context;Z)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "tbs_download_version"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object p1

    invoke-virtual {p1, v1, p2}, Lcom/tencent/smtt/sdk/m;->b(II)V

    :goto_3c
    invoke-static {v0}, Lcom/tencent/smtt/sdk/QbSdk;->setTBSInstallingStatus(Z)V

    return-void
.end method

.method private i(Landroid/content/Context;I)V
    .registers 5

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/smtt/sdk/o;->f(Landroid/content/Context;I)Ljava/io/File;

    move-result-object p2

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/tencent/smtt/sdk/o;->g(Landroid/content/Context;Z)V

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/o;->p(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/io/File;Z)V

    invoke-virtual {p2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->b(Landroid/content/Context;)V

    return-void
.end method

.method private j(Landroid/content/Context;I)Z
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TbsInstaller-doTbsDexOpt start - dirMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TbsInstaller"

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_3e

    if-eq p2, v2, :cond_39

    const/4 v3, 0x2

    if-eq p2, v3, :cond_34

    :try_start_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doDexoptOrDexoat mode error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_34
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/o;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    goto :goto_49

    :cond_39
    invoke-virtual {p0, p1, v2}, Lcom/tencent/smtt/sdk/o;->f(Landroid/content/Context;I)Ljava/io/File;

    move-result-object p2

    goto :goto_49

    :cond_3e
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_45

    return v2

    :cond_45
    invoke-virtual {p0, p1, v0}, Lcom/tencent/smtt/sdk/o;->f(Landroid/content/Context;I)Ljava/io/File;

    move-result-object p2
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_49} :catch_a2

    :goto_49
    :try_start_49
    const-string v3, "java.vm.version"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_65

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_57
    .catchall {:try_start_49 .. :try_end_57} :catchall_5b

    if-eqz v3, :cond_65

    const/4 v3, 0x1

    goto :goto_66

    :catchall_5b
    move-exception v3

    :try_start_5c
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v4

    const/16 v5, 0xe2

    invoke-virtual {v4, v5, v3}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/Throwable;)V

    :cond_65
    const/4 v3, 0x0

    :goto_66
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ne v4, v5, :cond_6e

    const/4 v4, 0x1

    goto :goto_6f

    :cond_6e
    const/4 v4, 0x0

    :goto_6f
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v5

    iget-object v5, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "tbs_stop_preoat"

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v3, :cond_82

    if-eqz v4, :cond_82

    if-nez v5, :cond_82

    const/4 v0, 0x1

    :cond_82
    if-eqz v0, :cond_90

    invoke-direct {p0, p1, p2}, Lcom/tencent/smtt/sdk/o;->c(Landroid/content/Context;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_90

    const-string p2, "doTbsDexOpt -- doDexoatForArtVm"

    invoke-static {v1, p2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_90
    if-eqz v3, :cond_98

    const-string p2, "doTbsDexOpt -- is ART mode, skip!"

    invoke-static {v1, p2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b3

    :cond_98
    const-string v0, "doTbsDexOpt -- doDexoptForDavlikVM"

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/tencent/smtt/sdk/o;->b(Landroid/content/Context;Ljava/io/File;)Z

    move-result p1
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_a1} :catch_a2

    return p1

    :catch_a2
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object p1

    const/16 v0, 0xd1

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    :goto_b3
    const-string p1, "TbsInstaller-doTbsDexOpt done"

    invoke-static {v1, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method static s(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->getTbsFolderDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    const-string v1, "core_private"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_19

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result p0

    if-nez p0, :cond_19

    const/4 p0, 0x0

    return-object p0

    :cond_19
    return-object v0
.end method

.method private u(Landroid/content/Context;)I
    .registers 4

    invoke-static {p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/m;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz v1, :cond_1b

    if-eqz p1, :cond_18

    const/16 p1, 0xea

    return p1

    :cond_18
    const/16 p1, 0xdd

    return p1

    :cond_1b
    if-eqz p1, :cond_20

    const/16 p1, 0xe9

    return p1

    :cond_20
    const/16 p1, 0xc8

    return p1
.end method

.method private static v(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x1

    const-string v1, "TbsInstaller"

    if-nez p0, :cond_b

    const-string p0, "TbsInstaller-getTmpFolderCoreToRead, #1"

    :goto_7
    invoke-static {v1, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_b
    :try_start_b
    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->getTbsFolderDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    new-instance v2, Ljava/io/File;

    const-string v3, "tmp_folder_core_to_read.conf"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_22

    const-string p0, "TbsInstaller-getTmpFolderCoreToRead, #2"

    invoke-static {v1, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_22
    const-string p0, "TbsInstaller-getTmpFolderCoreToRead, #3"

    invoke-static {v1, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_27} :catch_29

    const/4 p0, 0x0

    return p0

    :catch_29
    const-string p0, "TbsInstaller-getTmpFolderCoreToRead, #4"

    goto :goto_7
.end method

.method private w(Landroid/content/Context;)Z
    .registers 7

    const-string v0, "TbsInstaller"

    const-string v1, "Tbsinstaller getTbsCoreRenameFileLock #1 "

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :try_start_8
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance()Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getTbsCoreLoadRenameFileLockEnable()Z

    move-result v2
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_11

    goto :goto_12

    :catchall_11
    const/4 v2, 0x1

    :goto_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tbsinstaller getTbsCoreRenameFileLock #2  enabled is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_31

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tencent/smtt/sdk/w;->b(Landroid/content/Context;)Ljava/nio/channels/FileLock;

    move-result-object p1

    goto :goto_35

    :cond_31
    invoke-static {p1}, Lcom/tencent/smtt/utils/FileUtil;->f(Landroid/content/Context;)Ljava/nio/channels/FileLock;

    move-result-object p1

    :goto_35
    sput-object p1, Lcom/tencent/smtt/sdk/o;->l:Ljava/nio/channels/FileLock;

    sget-object p1, Lcom/tencent/smtt/sdk/o;->l:Ljava/nio/channels/FileLock;

    if-nez p1, :cond_42

    const-string p1, "getTbsCoreRenameFileLock## failed!"

    invoke-static {v0, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_42
    const-string p1, "Tbsinstaller getTbsCoreRenameFileLock true "

    invoke-static {v0, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private x(Landroid/content/Context;)V
    .registers 9

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller--generateNewTbsCoreFromUnzip"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/o;->w(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string p1, "get rename fileLock#4 ## failed!"

    invoke-static {v0, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    const/4 v1, 0x1

    :try_start_14
    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/o;->A(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/o;->B(Landroid/content/Context;)V

    const-string v2, "after renameTbsCoreShareDir"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2e

    const-string v2, "prepare to shareTbsCore"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->a(Landroid/content/Context;)V

    goto :goto_33

    :cond_2e
    const-string v2, "is thirdapp and not chmod"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_33
    invoke-static {p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/m;->a(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/m;->b(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/m;->d(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v2

    const-string v4, "incrupdate_retry_num"

    invoke-virtual {v2, v4, v3}, Lcom/tencent/smtt/sdk/m;->a(Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/tencent/smtt/sdk/m;->c(II)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Lcom/tencent/smtt/sdk/m;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v2

    const-string v4, "tpatch_num"

    invoke-virtual {v2, v4, v3}, Lcom/tencent/smtt/sdk/m;->a(Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v2

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lcom/tencent/smtt/sdk/m;->c(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_d4

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "tbs_decouplecoreversion"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_a0

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/tencent/smtt/sdk/o;->h(Landroid/content/Context;)I

    move-result v4

    if-eq v2, v4, :cond_a0

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/tencent/smtt/sdk/o;->i(Landroid/content/Context;)I

    move-result v4

    if-ne v2, v4, :cond_a0

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/o;->n(Landroid/content/Context;)Z

    goto :goto_d4

    :cond_a0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TbsInstaller--generateNewTbsCoreFromUnzip #1 deCoupleCoreVersion is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " getTbsCoreShareDecoupleCoreVersion is "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tencent/smtt/sdk/o;->h(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " getTbsCoreInstalledVerInNolock is "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tencent/smtt/sdk/o;->i(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d4
    :goto_d4
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_e1

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/o;->m(Landroid/content/Context;)I

    move-result v2

    invoke-static {p1, v2, v1}, Lcom/tencent/smtt/sdk/TbsShareManager;->writeCoreInfoForThirdPartyApp(Landroid/content/Context;IZ)V

    :cond_e1
    sget-object v2, Lcom/tencent/smtt/sdk/o;->a:Ljava/lang/ThreadLocal;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sput v3, Lcom/tencent/smtt/sdk/o;->o:I
    :try_end_ec
    .catchall {:try_start_14 .. :try_end_ec} :catchall_ed

    goto :goto_114

    :catchall_ed
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v3

    const/16 v4, 0xdb

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception when renameing from unzip:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    const-string v2, "TbsInstaller--generateNewTbsCoreFromUnzip Exception"

    invoke-static {v0, v2, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_114
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/o;->g(Landroid/content/Context;)V

    return-void
.end method

.method private y(Landroid/content/Context;)V
    .registers 7

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller--generateNewTbsCoreFromTpatch"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/o;->w(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string p1, "get rename fileLock#4 ## failed!"

    invoke-static {v0, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    :try_start_13
    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/o;->A(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/o;->D(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/tencent/smtt/sdk/m;->b(II)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v0

    const-string v1, "tpatch_num"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/m;->a(Ljava/lang/String;I)V

    sget-object v0, Lcom/tencent/smtt/sdk/o;->a:Ljava/lang/ThreadLocal;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_37} :catch_38

    goto :goto_5a

    :catch_38
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v1

    const/16 v2, 0xf2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception when renameing from tpatch:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    :goto_5a
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/o;->g(Landroid/content/Context;)V

    return-void
.end method

.method private z(Landroid/content/Context;)V
    .registers 7

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller--generateNewTbsCoreFromCopy"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/o;->w(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string p1, "get rename fileLock#4 ## failed!"

    invoke-static {v0, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    :try_start_13
    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/o;->A(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/o;->C(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/tencent/smtt/sdk/m;->a(II)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v1

    const-string v2, "tpatch_num"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/smtt/sdk/m;->a(Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_8e

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "tbs_decouplecoreversion"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_5a

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tencent/smtt/sdk/o;->h(Landroid/content/Context;)I

    move-result v2

    if-eq v1, v2, :cond_5a

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tencent/smtt/sdk/o;->i(Landroid/content/Context;)I

    move-result v2

    if-ne v1, v2, :cond_5a

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/o;->n(Landroid/content/Context;)Z

    goto :goto_8e

    :cond_5a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TbsInstaller--generateNewTbsCoreFromCopy #1 deCoupleCoreVersion is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " getTbsCoreShareDecoupleCoreVersion is "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/smtt/sdk/o;->h(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " getTbsCoreInstalledVerInNolock is "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/smtt/sdk/o;->i(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8e
    :goto_8e
    sget-object v0, Lcom/tencent/smtt/sdk/o;->a:Ljava/lang/ThreadLocal;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_97} :catch_98

    goto :goto_ba

    :catch_98
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v1

    const/16 v2, 0xdb

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception when renameing from copy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    :goto_ba
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/o;->g(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method a(Ljava/io/File;)I
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    const-string v2, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TbsInstaller--getTbsVersion  tbsShareDir is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "tbs.conf"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_26

    return v0

    :cond_26
    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_35} :catch_5b
    .catchall {:try_start_2 .. :try_end_35} :catchall_54

    :try_start_35
    invoke-virtual {p1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    const-string v1, "tbs_core_version"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_41} :catch_52
    .catchall {:try_start_35 .. :try_end_41} :catchall_4f

    if-nez p1, :cond_47

    :try_start_43
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_46

    :catch_46
    return v0

    :cond_47
    :try_start_47
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4b} :catch_52
    .catchall {:try_start_47 .. :try_end_4b} :catchall_4f

    :try_start_4b
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_4e

    :catch_4e
    return p1

    :catchall_4f
    move-exception p1

    move-object v1, v2

    goto :goto_55

    :catch_52
    move-object v1, v2

    goto :goto_5c

    :catchall_54
    move-exception p1

    :goto_55
    if-eqz v1, :cond_5a

    :try_start_57
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5a

    :catch_5a
    :cond_5a
    throw p1

    :catch_5b
    nop

    :goto_5c
    if-eqz v1, :cond_61

    :try_start_5e
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_61

    :catch_61
    :cond_61
    return v0
.end method

.method a(Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    :try_start_5
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    const-string v3, "tbs.conf"

    invoke-direct {p1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_18

    return v0

    :cond_18
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-direct {p1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_27} :catch_4d
    .catchall {:try_start_5 .. :try_end_27} :catchall_46

    :try_start_27
    invoke-virtual {v2, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V

    const-string v1, "tbs_core_version"

    invoke-virtual {v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_33} :catch_44
    .catchall {:try_start_27 .. :try_end_33} :catchall_41

    if-nez v1, :cond_39

    :try_start_35
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_38

    :catch_38
    return v0

    :cond_39
    :try_start_39
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3d} :catch_44
    .catchall {:try_start_39 .. :try_end_3d} :catchall_41

    :try_start_3d
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_40

    :catch_40
    return v0

    :catchall_41
    move-exception v0

    move-object v1, p1

    goto :goto_47

    :catch_44
    move-object v1, p1

    goto :goto_4e

    :catchall_46
    move-exception v0

    :goto_47
    if-eqz v1, :cond_4c

    :try_start_49
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4c

    :catch_4c
    :cond_4c
    throw v0

    :catch_4d
    nop

    :goto_4e
    if-eqz v1, :cond_53

    :try_start_50
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_53

    :catch_53
    :cond_53
    return v0
.end method

.method public a(ZLandroid/content/Context;)I
    .registers 3

    if-nez p1, :cond_10

    sget-object p1, Lcom/tencent/smtt/sdk/o;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gtz p1, :cond_1d

    :cond_10
    sget-object p1, Lcom/tencent/smtt/sdk/o;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p0, p2}, Lcom/tencent/smtt/sdk/o;->i(Landroid/content/Context;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1d
    sget-object p1, Lcom/tencent/smtt/sdk/o;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method a(Landroid/content/Context;IZ)Ljava/io/File;
    .registers 7

    invoke-static {p1}, Lcom/tencent/smtt/sdk/QbSdk;->getTbsFolderDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    packed-switch p2, :pswitch_data_62

    const-string v0, ""

    goto :goto_1e

    :pswitch_a  #0x6
    const-string v0, "tpatch_decouple_tmp"

    goto :goto_1e

    :pswitch_d  #0x5
    const-string v0, "tpatch_tmp"

    goto :goto_1e

    :pswitch_10  #0x4
    const-string v0, "core_share_backup_tmp"

    goto :goto_1e

    :pswitch_13  #0x3
    const-string v0, "core_share_backup"

    goto :goto_1e

    :pswitch_16  #0x2
    const-string v0, "core_unzip_tmp_decouple"

    goto :goto_1e

    :pswitch_19  #0x1
    const-string v0, "core_copy_tmp"

    goto :goto_1e

    :pswitch_1c  #0x0
    const-string v0, "core_unzip_tmp"

    :goto_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "needMakeDir="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "folder="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "TbsInstaller"

    invoke-static {v1, p2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_61

    const/4 p1, 0x0

    if-eqz p3, :cond_5e

    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    move-result p3

    if-nez p3, :cond_61

    const-string p2, "getCoreDir,mkdir false"

    :goto_5a
    invoke-static {v1, p2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_5e
    const-string p2, "getCoreDir,no need mkdir"

    goto :goto_5a

    :cond_61
    return-object p2

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_1c  #00000000
        :pswitch_19  #00000001
        :pswitch_16  #00000002
        :pswitch_13  #00000003
        :pswitch_10  #00000004
        :pswitch_d  #00000005
        :pswitch_a  #00000006
    .end packed-switch
.end method

.method public a(Landroid/content/Context;I)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/tencent/smtt/sdk/o;->g(Landroid/content/Context;Z)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Lcom/tencent/smtt/sdk/m;->c(II)V

    return-void
.end method

.method a(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 5

    if-eqz p2, :cond_1d

    if-nez p1, :cond_5

    goto :goto_1d

    :cond_5
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 p2, 0x3

    iput p2, p1, Landroid/os/Message;->what:I

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object p2, Lcom/tencent/smtt/sdk/o;->m:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1d
    :goto_1d
    return-void
.end method

.method a(Landroid/content/Context;Ljava/io/File;I)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unzipTbsCoreToThirdAppTmp,ctx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "File="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "coreVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TbsInstaller"

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_4a

    if-nez p1, :cond_2b

    goto :goto_4a

    :cond_2b
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 p2, 0x4

    iput p2, p1, Landroid/os/Message;->what:I

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object p2, Lcom/tencent/smtt/sdk/o;->m:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4a
    :goto_4a
    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TbsInstaller-installTbsCore tbsApkPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TbsInstaller"

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TbsInstaller-installTbsCore tbsCoreTargetVer="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TbsInstaller-continueInstallTbsCore currentProcessName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TbsInstaller-installTbsCore currentProcessId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TbsInstaller-installTbsCore currentThreadName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v0, p3

    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    iput p1, p2, Landroid/os/Message;->what:I

    iput-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object p1, Lcom/tencent/smtt/sdk/o;->m:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method a(Landroid/content/Context;Z)V
    .registers 13

    const/4 v0, 0x1

    if-eqz p2, :cond_5

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/o;->k:Z

    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TbsInstaller-continueInstallTbsCore currentProcessName="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "TbsInstaller"

    invoke-static {v1, p2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TbsInstaller-continueInstallTbsCore currentProcessId="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TbsInstaller-continueInstallTbsCore currentThreadName="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/o;->t(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_5c

    return-void

    :cond_5c
    const/4 p2, 0x0

    sget-object v2, Lcom/tencent/smtt/sdk/o;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_a0

    :try_start_67
    invoke-static {p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/smtt/sdk/m;->c()I

    move-result p2

    invoke-static {p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/m;->b()I

    move-result v3

    invoke-static {p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v6

    const-string v7, "install_apk_path"

    invoke-virtual {v6, v7}, Lcom/tencent/smtt/sdk/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v7

    const-string v8, "copy_core_ver"

    invoke-virtual {v7, v8}, Lcom/tencent/smtt/sdk/m;->c(Ljava/lang/String;)I

    move-result v7

    invoke-static {p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v8

    const-string v9, "copy_status"

    invoke-virtual {v8, v9}, Lcom/tencent/smtt/sdk/m;->b(Ljava/lang/String;)I

    move-result v8
    :try_end_95
    .catchall {:try_start_67 .. :try_end_95} :catchall_99

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_a5

    :catchall_99
    move-exception p1

    sget-object p2, Lcom/tencent/smtt/sdk/o;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_a0
    move-object v6, p2

    const/4 p2, -0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    :goto_a5
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/o;->b()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TbsInstaller-continueInstallTbsCore installStatus="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TbsInstaller-continueInstallTbsCore tbsCoreInstallVer="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TbsInstaller-continueInstallTbsCore tbsApkPath="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TbsInstaller-continueInstallTbsCore tbsCoreCopyVer="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TbsInstaller-continueInstallTbsCore copyStatus="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_11a

    invoke-static {p1, v5}, Lcom/tencent/smtt/sdk/TbsShareManager;->a(Landroid/content/Context;Z)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/tencent/smtt/sdk/o;->c(Landroid/content/Context;I)V

    goto :goto_152

    :cond_11a
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "tbs_responsecode"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v0, :cond_130

    if-eq v1, v2, :cond_130

    const/4 v9, 0x4

    if-ne v1, v9, :cond_12f

    goto :goto_130

    :cond_12f
    const/4 v0, 0x0

    :cond_130
    :goto_130
    if-nez v0, :cond_146

    if-eqz v1, :cond_146

    const/4 v0, 0x5

    if-eq v1, v0, :cond_146

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0x2711

    const-string v5, "operation"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, p1, v0}, Lcom/tencent/smtt/sdk/o;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    :cond_146
    if-le p2, v4, :cond_14d

    if-ge p2, v2, :cond_14d

    invoke-virtual {p0, p1, v6, v3}, Lcom/tencent/smtt/sdk/o;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_14d
    if-nez v8, :cond_152

    invoke-virtual {p0, p1, v7}, Lcom/tencent/smtt/sdk/o;->b(Landroid/content/Context;I)Z

    :cond_152
    :goto_152
    return-void
.end method

.method public declared-synchronized a(Landroid/content/Context;Landroid/content/Context;)Z
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller--quickDexOptForThirdPartyApp"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/tencent/smtt/sdk/o;->p:Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_1b

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    monitor-exit p0

    return v1

    :cond_f
    :try_start_f
    sput-boolean v1, Lcom/tencent/smtt/sdk/o;->p:Z

    new-instance v0, Lcom/tencent/smtt/sdk/o$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/tencent/smtt/sdk/o$4;-><init>(Lcom/tencent/smtt/sdk/o;Landroid/content/Context;Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_1b

    monitor-exit p0

    return v1

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Landroid/content/Context;[Ljava/io/File;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eq v1, p2, :cond_12

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsPVConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsPVConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/TbsPVConfig;->isEnableNoCoreGray()Z

    move-result v1

    if-eqz v1, :cond_12

    return-object v0

    :cond_12
    const/4 v1, 0x2

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_18

    return-object p1

    :catch_18
    return-object v0
.end method

.method b(Landroid/content/Context;Landroid/content/Context;)Ljava/io/File;
    .registers 5

    invoke-static {p2}, Lcom/tencent/smtt/sdk/QbSdk;->getTbsFolderDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    new-instance v0, Ljava/io/File;

    const-string v1, "core_share"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-nez p2, :cond_28

    if-eqz p1, :cond_19

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_28

    :cond_19
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result p1

    if-nez p1, :cond_28

    const-string p1, "TbsInstaller"

    const-string p2, "getTbsCoreShareDir,mkdir false"

    invoke-static {p1, p2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_28
    return-object v0
.end method

.method declared-synchronized b()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/tencent/smtt/sdk/o;->e:I

    if-gtz v0, :cond_30

    const-string v0, "TbsInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseTbsInstallingFileLock currentTbsFileLockStackCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/smtt/sdk/o;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "call stack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_56

    monitor-exit p0

    return-void

    :cond_30
    const/4 v1, 0x1

    if-le v0, v1, :cond_41

    :try_start_33
    const-string v0, "TbsInstaller"

    const-string v2, "releaseTbsInstallingFileLock with skip"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/smtt/sdk/o;->e:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/smtt/sdk/o;->e:I
    :try_end_3f
    .catchall {:try_start_33 .. :try_end_3f} :catchall_56

    monitor-exit p0

    return-void

    :cond_41
    if-ne v0, v1, :cond_54

    :try_start_43
    const-string v0, "TbsInstaller"

    const-string v1, "releaseTbsInstallingFileLock without skip"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/o;->f:Ljava/nio/channels/FileLock;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/o;->g:Ljava/io/FileOutputStream;

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/nio/channels/FileLock;Ljava/io/FileOutputStream;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/smtt/sdk/o;->e:I
    :try_end_54
    .catchall {:try_start_43 .. :try_end_54} :catchall_56

    :cond_54
    monitor-exit p0

    return-void

    :catchall_56
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/tencent/smtt/sdk/o;->g(Landroid/content/Context;Z)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/o;->h(Landroid/content/Context;)I

    move-result p1

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/tencent/smtt/sdk/m;->c(II)V

    return-void
.end method

.method b(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    const-string v3, "tpatch_num"

    const-string v4, "tbs_core_ver"

    const-string v5, "apk_path"

    const-string v6, "TbsInstaller-installLocalTesCoreExInThread PATCH_SUCCESS"

    const-string v7, "decouple incrUpdate fail! patch ret="

    const-string v8, "incrUpdate fail! patch ret="

    const-string v9, "TbsInstaller-installLocalTesCoreExInThread PATCH_FAIL"

    const-string v10, "TbsInstaller-installLocalTesCoreExInThread PATCH_NONEEDPATCH"

    const-string v11, "tbs_needdownload"

    const-string v12, "incrupdate_retry_num"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TbsInstaller installLocalTbsCoreExInThreadthread "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v14, Ljava/lang/Throwable;

    invoke-direct {v14}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v14}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "TbsInstaller"

    invoke-static {v14, v13}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lcom/tencent/smtt/sdk/o;->c(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_54

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v2, -0x21b

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    return-void

    :cond_54
    const-string v13, "TbsInstaller-installLocalTesCoreExInThread"

    invoke-static {v14, v13}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_5b9

    if-nez v2, :cond_5f

    goto/16 :goto_5b9

    :cond_5f
    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/utils/FileUtil;->b(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_9d

    invoke-static {}, Lcom/tencent/smtt/utils/p;->a()J

    move-result-wide v3

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getDownloadMinFreeSpace()J

    move-result-wide v5

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const/16 v7, 0xd2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "rom is not enough when patching tbs core! curAvailROM="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",minReqRom="

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v7, v3}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v2, -0x21c

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    return-void

    :cond_9d
    invoke-virtual/range {p0 .. p1}, Lcom/tencent/smtt/sdk/o;->t(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_ad

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v2, -0x21d

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    return-void

    :cond_ad
    sget-object v13, Lcom/tencent/smtt/sdk/o;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v13}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v15

    move-object/from16 v16, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v5

    const-string v5, "TbsInstaller-installLocalTesCoreExInThread locked="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v15, :cond_5ad

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "tbs_responsecode"

    const/4 v15, 0x0

    invoke-interface {v4, v5, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v15, 0x5

    const/4 v5, 0x1

    :try_start_dc
    invoke-static {v5}, Lcom/tencent/smtt/sdk/QbSdk;->setTBSInstallingStatus(Z)V
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_df} :catch_440
    .catchall {:try_start_dc .. :try_end_df} :catchall_435

    if-ne v4, v15, :cond_1b8

    :try_start_e1
    invoke-direct/range {p0 .. p2}, Lcom/tencent/smtt/sdk/o;->c(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v15
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_e5} :catch_1ac
    .catchall {:try_start_e1 .. :try_end_e5} :catchall_1a1

    if-ne v15, v5, :cond_10d

    :try_start_e7
    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/m;->c(Ljava/lang/String;)I

    move-result v0

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v5

    const/16 v19, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v5, v3, v0}, Lcom/tencent/smtt/sdk/m;->a(Ljava/lang/String;I)V
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_fa} :catch_105
    .catchall {:try_start_e7 .. :try_end_fa} :catchall_fb

    goto :goto_10d

    :catchall_fb
    move-exception v0

    move-object v13, v0

    move-object v5, v8

    move-object/from16 v8, v16

    move-object/from16 v3, v17

    const/4 v0, 0x0

    goto/16 :goto_4f6

    :catch_105
    move-exception v0

    move-object v5, v8

    move-object/from16 v8, v16

    move-object/from16 v3, v17

    goto/16 :goto_447

    :cond_10d
    :goto_10d
    invoke-interface {v13}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/o;->b()V

    const/4 v3, 0x5

    if-ne v4, v3, :cond_11a

    invoke-direct {v1, v2, v15}, Lcom/tencent/smtt/sdk/o;->h(Landroid/content/Context;I)V

    return-void

    :cond_11a
    if-eqz v15, :cond_17b

    const/4 v3, 0x2

    if-ne v15, v3, :cond_124

    invoke-static {v14, v10}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_122
    const/4 v3, 0x0

    goto :goto_177

    :cond_124
    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v3, -0x222

    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-static {v14, v9}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15e

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xeb

    goto :goto_173

    :cond_15e
    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd9

    :goto_173
    invoke-virtual {v0, v3, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    goto :goto_122

    :goto_177
    invoke-static {v3}, Lcom/tencent/smtt/sdk/QbSdk;->setTBSInstallingStatus(Z)V

    return-void

    :cond_17b
    const/4 v3, 0x0

    invoke-static {v14, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v0

    invoke-virtual {v0, v12, v3}, Lcom/tencent/smtt/sdk/m;->a(Ljava/lang/String;I)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v4, -0x220

    invoke-virtual {v0, v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v0

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Lcom/tencent/smtt/sdk/m;->c(II)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/m;->c(I)V

    const/4 v3, 0x0

    throw v3

    :catchall_1a1
    move-exception v0

    const/4 v3, 0x0

    move-object v13, v0

    move-object v0, v3

    move-object v5, v8

    move-object/from16 v8, v16

    move-object/from16 v3, v17

    goto/16 :goto_43d

    :catch_1ac
    move-exception v0

    const/4 v3, 0x0

    move-object/from16 v18, v3

    move-object v5, v8

    move-object/from16 v8, v16

    move-object/from16 v3, v17

    :goto_1b5
    const/4 v15, 0x2

    goto/16 :goto_449

    :cond_1b8
    const/4 v3, 0x0

    :try_start_1b9
    invoke-virtual/range {p0 .. p1}, Lcom/tencent/smtt/sdk/o;->i(Landroid/content/Context;)I

    move-result v5

    if-lez v5, :cond_413

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/smtt/sdk/m;->d()I

    move-result v5
    :try_end_1c7
    .catch Ljava/lang/Exception; {:try_start_1b9 .. :try_end_1c7} :catch_440
    .catchall {:try_start_1b9 .. :try_end_1c7} :catchall_435

    const/4 v15, 0x1

    if-ne v5, v15, :cond_1cc

    goto/16 :goto_413

    :cond_1cc
    if-eq v4, v15, :cond_1d7

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1d7

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1d5

    goto :goto_1d7

    :cond_1d5
    const/4 v5, 0x0

    goto :goto_1d8

    :cond_1d7
    :goto_1d7
    const/4 v5, 0x1

    :goto_1d8
    if-nez v5, :cond_354

    if-eqz v4, :cond_354

    :try_start_1dc
    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/tencent/smtt/sdk/m;->c(Ljava/lang/String;)I

    move-result v5

    const/4 v15, 0x5

    if-le v5, v15, :cond_25b

    const-string v5, "TbsInstaller-installLocalTesCoreExInThread exceed incrupdate num"

    invoke-static {v14, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "old_apk_location"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v15, "new_apk_location"

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v3, "diff_file_location"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_20c

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/tencent/smtt/utils/FileUtil;->b(Ljava/io/File;)V

    :cond_20c
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_21a

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/tencent/smtt/utils/FileUtil;->b(Ljava/io/File;)V

    :cond_21a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_228

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/tencent/smtt/utils/FileUtil;->b(Ljava/io/File;)V

    :cond_228
    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const/16 v3, 0xe0

    const-string v5, "incrUpdate exceed retry max num"

    invoke-virtual {v0, v3, v5}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V
    :try_end_245
    .catch Ljava/lang/Exception; {:try_start_1dc .. :try_end_245} :catch_440
    .catchall {:try_start_1dc .. :try_end_245} :catchall_34b

    invoke-interface {v13}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/o;->b()V

    const/4 v3, 0x5

    if-ne v4, v3, :cond_253

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/tencent/smtt/sdk/o;->h(Landroid/content/Context;I)V

    return-void

    :cond_253
    invoke-static {v14, v10}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/tencent/smtt/sdk/QbSdk;->setTBSInstallingStatus(Z)V

    return-void

    :cond_25b
    :try_start_25b
    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v3

    const/4 v15, 0x1

    add-int/2addr v5, v15

    invoke-virtual {v3, v12, v5}, Lcom/tencent/smtt/sdk/m;->a(Ljava/lang/String;I)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/o;->s(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_354

    new-instance v5, Ljava/io/File;

    const-string v15, "x5.tbs"

    invoke-direct {v5, v3, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_354

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v5, -0x226

    invoke-virtual {v3, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-static/range {p1 .. p2}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5
    :try_end_284
    .catch Ljava/lang/Exception; {:try_start_25b .. :try_end_284} :catch_440
    .catchall {:try_start_25b .. :try_end_284} :catchall_34b

    if-nez v5, :cond_2d5

    :try_start_286
    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_28f
    .catch Ljava/lang/Exception; {:try_start_286 .. :try_end_28f} :catch_2ca
    .catchall {:try_start_286 .. :try_end_28f} :catchall_2c0

    move-object/from16 v20, v8

    :try_start_291
    const-string v8, "result null : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "new_core_ver"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xe4

    invoke-virtual {v15, v3, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V
    :try_end_2a8
    .catch Ljava/lang/Exception; {:try_start_291 .. :try_end_2a8} :catch_2b6
    .catchall {:try_start_291 .. :try_end_2a8} :catchall_2ab

    const/4 v3, 0x1

    goto/16 :goto_358

    :catchall_2ab
    move-exception v0

    move-object v13, v0

    move-object v0, v5

    move-object/from16 v8, v16

    move-object/from16 v3, v17

    move-object/from16 v5, v20

    goto/16 :goto_4ea

    :catch_2b6
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v8, v16

    move-object/from16 v3, v17

    move-object/from16 v5, v20

    goto :goto_2d2

    :catchall_2c0
    move-exception v0

    move-object v13, v0

    move-object v0, v5

    move-object v5, v8

    move-object/from16 v8, v16

    move-object/from16 v3, v17

    goto/16 :goto_4ea

    :catch_2ca
    move-exception v0

    move-object/from16 v18, v5

    move-object v5, v8

    move-object/from16 v8, v16

    move-object/from16 v3, v17

    :goto_2d2
    const/4 v15, 0x1

    goto/16 :goto_449

    :cond_2d5
    move-object/from16 v20, v8

    :try_start_2d7
    const-string v3, "patch_result"

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3
    :try_end_2dd
    .catch Ljava/lang/Exception; {:try_start_2d7 .. :try_end_2dd} :catch_33e
    .catchall {:try_start_2d7 .. :try_end_2dd} :catchall_330

    if-eqz v3, :cond_32b

    :try_start_2df
    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v8

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2e8
    .catch Ljava/lang/Exception; {:try_start_2df .. :try_end_2e8} :catch_31d
    .catchall {:try_start_2df .. :try_end_2e8} :catchall_30e

    move-object/from16 v21, v5

    :try_start_2ea
    const-string v5, "result "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "new_core_ver"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0xe4

    invoke-virtual {v8, v5, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V
    :try_end_309
    .catch Ljava/lang/Exception; {:try_start_2ea .. :try_end_309} :catch_30c
    .catchall {:try_start_2ea .. :try_end_309} :catchall_30a

    goto :goto_32d

    :catchall_30a
    move-exception v0

    goto :goto_311

    :catch_30c
    move-exception v0

    goto :goto_320

    :catchall_30e
    move-exception v0

    move-object/from16 v21, v5

    :goto_311
    move-object v13, v0

    move v15, v3

    move-object/from16 v8, v16

    move-object/from16 v3, v17

    move-object/from16 v5, v20

    move-object/from16 v0, v21

    goto/16 :goto_4f6

    :catch_31d
    move-exception v0

    move-object/from16 v21, v5

    :goto_320
    move v15, v3

    move-object/from16 v8, v16

    move-object/from16 v3, v17

    move-object/from16 v5, v20

    move-object/from16 v18, v21

    goto/16 :goto_449

    :cond_32b
    move-object/from16 v21, v5

    :goto_32d
    move-object/from16 v5, v21

    goto :goto_358

    :catchall_330
    move-exception v0

    move-object/from16 v21, v5

    move-object v13, v0

    move-object/from16 v8, v16

    move-object/from16 v3, v17

    move-object/from16 v5, v20

    move-object/from16 v0, v21

    goto/16 :goto_43d

    :catch_33e
    move-exception v0

    move-object/from16 v21, v5

    move-object/from16 v8, v16

    move-object/from16 v3, v17

    move-object/from16 v5, v20

    move-object/from16 v18, v21

    goto/16 :goto_1b5

    :catchall_34b
    move-exception v0

    move-object v13, v0

    move-object v5, v8

    move-object/from16 v8, v16

    move-object/from16 v3, v17

    goto/16 :goto_43c

    :cond_354
    move-object/from16 v20, v8

    const/4 v3, 0x2

    const/4 v5, 0x0

    :goto_358
    invoke-interface {v13}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/o;->b()V

    const/4 v8, 0x5

    if-ne v4, v8, :cond_365

    invoke-direct {v1, v2, v3}, Lcom/tencent/smtt/sdk/o;->h(Landroid/content/Context;I)V

    return-void

    :cond_365
    if-nez v3, :cond_3b1

    invoke-static {v14, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v12, v3}, Lcom/tencent/smtt/sdk/m;->a(Ljava/lang/String;I)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v4, -0x220

    invoke-virtual {v0, v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v0

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Lcom/tencent/smtt/sdk/m;->c(II)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/m;->c(I)V

    move-object/from16 v3, v17

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v2}, Lcom/tencent/smtt/sdk/l;->a(Ljava/io/File;Landroid/content/Context;)V

    move-object/from16 v8, v16

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Lcom/tencent/smtt/sdk/o;->b(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3b7

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/m;->c(I)V

    goto :goto_3b7

    :cond_3b1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3b9

    invoke-static {v14, v10}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b7
    :goto_3b7
    const/4 v15, 0x0

    goto :goto_40e

    :cond_3b9
    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v4, -0x222

    invoke-virtual {v0, v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-static {v14, v9}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3f3

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xeb

    goto :goto_40a

    :cond_3f3
    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v20

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd9

    :goto_40a
    invoke-virtual {v0, v3, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    goto :goto_3b7

    :goto_40e
    invoke-static {v15}, Lcom/tencent/smtt/sdk/QbSdk;->setTBSInstallingStatus(Z)V

    goto/16 :goto_5b9

    :cond_413
    :goto_413
    move-object v5, v8

    move-object/from16 v8, v16

    move-object/from16 v3, v17

    const/4 v15, 0x0

    :try_start_419
    invoke-static {v15}, Lcom/tencent/smtt/sdk/QbSdk;->setTBSInstallingStatus(Z)V
    :try_end_41c
    .catch Ljava/lang/Exception; {:try_start_419 .. :try_end_41c} :catch_433
    .catchall {:try_start_419 .. :try_end_41c} :catchall_431

    invoke-interface {v13}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/o;->b()V

    const/4 v3, 0x5

    if-ne v4, v3, :cond_42a

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/tencent/smtt/sdk/o;->h(Landroid/content/Context;I)V

    return-void

    :cond_42a
    invoke-static {v14, v10}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v15}, Lcom/tencent/smtt/sdk/QbSdk;->setTBSInstallingStatus(Z)V

    return-void

    :catchall_431
    move-exception v0

    goto :goto_43b

    :catch_433
    move-exception v0

    goto :goto_446

    :catchall_435
    move-exception v0

    move-object v5, v8

    move-object/from16 v8, v16

    move-object/from16 v3, v17

    :goto_43b
    move-object v13, v0

    :goto_43c
    const/4 v0, 0x0

    :goto_43d
    const/4 v15, 0x2

    goto/16 :goto_4f6

    :catch_440
    move-exception v0

    move-object v5, v8

    move-object/from16 v8, v16

    move-object/from16 v3, v17

    :goto_446
    const/4 v15, 0x2

    :goto_447
    const/16 v18, 0x0

    :goto_449
    :try_start_449
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_44e
    .catchall {:try_start_449 .. :try_end_44e} :catchall_4f0

    move/from16 p2, v15

    :try_start_450
    const-string v15, "installLocalTbsCoreExInThread exception:"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_466
    .catchall {:try_start_450 .. :try_end_466} :catchall_4ec

    :try_start_466
    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v13

    const/16 v15, -0x21f

    invoke-virtual {v13, v15}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v13

    const/16 v15, 0xda

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v15, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V
    :try_end_47c
    .catchall {:try_start_466 .. :try_end_47c} :catchall_4e6

    sget-object v0, Lcom/tencent/smtt/sdk/o;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/o;->b()V

    const/4 v3, 0x5

    if-ne v4, v3, :cond_48c

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tencent/smtt/sdk/o;->h(Landroid/content/Context;I)V

    return-void

    :cond_48c
    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v3, -0x222

    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-static {v14, v9}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4c7

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xeb

    goto :goto_4dd

    :cond_4c7
    const/4 v3, 0x1

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd9

    :goto_4dd
    invoke-virtual {v0, v3, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/tencent/smtt/sdk/QbSdk;->setTBSInstallingStatus(Z)V

    goto/16 :goto_5b9

    :catchall_4e6
    move-exception v0

    move-object v13, v0

    move-object/from16 v0, v18

    :goto_4ea
    const/4 v15, 0x1

    goto :goto_4f6

    :catchall_4ec
    move-exception v0

    move/from16 v15, p2

    goto :goto_4f3

    :catchall_4f0
    move-exception v0

    move/from16 p2, v15

    :goto_4f3
    move-object v13, v0

    move-object/from16 v0, v18

    :goto_4f6
    sget-object v16, Lcom/tencent/smtt/sdk/o;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface/range {v16 .. v16}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/o;->b()V

    move-object/from16 p2, v13

    const/4 v13, 0x5

    if-ne v4, v13, :cond_507

    invoke-direct {v1, v2, v15}, Lcom/tencent/smtt/sdk/o;->h(Landroid/content/Context;I)V

    return-void

    :cond_507
    if-nez v15, :cond_54f

    invoke-static {v14, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v12, v5}, Lcom/tencent/smtt/sdk/m;->a(Ljava/lang/String;I)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    const/16 v6, -0x220

    invoke-virtual {v4, v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v4

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Lcom/tencent/smtt/sdk/m;->c(II)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/m;->c(I)V

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v2}, Lcom/tencent/smtt/sdk/l;->a(Ljava/io/File;Landroid/content/Context;)V

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Lcom/tencent/smtt/sdk/o;->b(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5a8

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/m;->c(I)V

    goto :goto_5a8

    :cond_54f
    const/4 v3, 0x2

    if-eq v15, v3, :cond_5a5

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v3, -0x222

    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-static {v14, v9}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mSyncMap:Ljava/util/Map;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_58c

    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xeb

    goto :goto_5a1

    :cond_58c
    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd9

    :goto_5a1
    invoke-virtual {v0, v3, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    goto :goto_5a8

    :cond_5a5
    invoke-static {v14, v10}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5a8
    :goto_5a8
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/tencent/smtt/sdk/QbSdk;->setTBSInstallingStatus(Z)V

    throw p2

    :cond_5ad
    invoke-static/range {p1 .. p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v2, -0x223

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setInstallInterruptCode(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/o;->b()V

    :cond_5b9
    :goto_5b9
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/io/File;I)V
    .registers 9

    const/4 v0, 0x1

    const-string v1, "core_unzip.lock"

    invoke-static {p1, v0, v1}, Lcom/tencent/smtt/utils/FileUtil;->b(Landroid/content/Context;ZLjava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/smtt/utils/FileUtil;->a(Landroid/content/Context;Ljava/io/FileOutputStream;)Ljava/nio/channels/FileLock;

    move-result-object v1

    const-string v2, "TbsInstaller"

    if-eqz v1, :cond_3a

    const-string v3, "unzipTbsCoreToThirdAppTmpInThread #1"

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, v3}, Lcom/tencent/smtt/sdk/o;->a(Landroid/content/Context;Ljava/io/File;Z)Z

    move-result p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unzipTbsCoreToThirdAppTmpInThread result is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_36

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/tencent/smtt/sdk/o;->a(Landroid/content/Context;I)V

    :cond_36
    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/nio/channels/FileLock;Ljava/io/FileOutputStream;)V

    goto :goto_3f

    :cond_3a
    const-string p1, "can not get Core unzip FileLock,skip!!!"

    invoke-static {v2, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3f
    return-void
.end method

.method b(Landroid/content/Context;Z)V
    .registers 8

    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->b:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    const-string v3, "TbsInstaller"

    if-ge v0, v1, :cond_14

    const-string p1, "android version < 2.1 no need install X5 core"

    invoke-static {v3, p1, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_14
    const-string v0, "Tbsinstaller installTbsCoreIfNeeded #1 "

    invoke-static {v3, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-static {p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v0

    const-string v1, "remove_old_core"

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/m;->b(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_4a

    if-eqz p2, :cond_4a

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/o;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    :try_start_35
    invoke-static {v0}, Lcom/tencent/smtt/utils/FileUtil;->b(Ljava/io/File;)V

    const-string v0, "thirdAPP success--> delete old core_share Directory"

    invoke-static {v3, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_3e

    goto :goto_42

    :catchall_3e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_42
    invoke-static {p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/tencent/smtt/sdk/m;->a(Ljava/lang/String;I)V

    :cond_4a
    invoke-static {p1}, Lcom/tencent/smtt/sdk/o;->v(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_51

    goto :goto_a1

    :cond_51
    const-string v0, "Tbsinstaller installTbsCoreIfNeeded #2 "

    invoke-static {v3, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "core_unzip_tmp"

    invoke-static {p1, v0}, Lcom/tencent/smtt/sdk/o;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5f

    goto :goto_6b

    :cond_5f
    invoke-direct {p0, p1, p2}, Lcom/tencent/smtt/sdk/o;->e(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_6b

    const-string p1, "TbsInstaller-installTbsCoreIfNeeded, enableTbsCoreFromUnzip!!"

    :goto_67
    invoke-static {v3, p1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_a1

    :cond_6b
    :goto_6b
    const-string v0, "core_share_backup_tmp"

    invoke-static {p1, v0}, Lcom/tencent/smtt/sdk/o;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_74

    goto :goto_7d

    :cond_74
    invoke-direct {p0, p1, p2}, Lcom/tencent/smtt/sdk/o;->f(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_7d

    const-string p1, "TbsInstaller-installTbsCoreIfNeeded, enableTbsCoreFromBackup!!"

    goto :goto_67

    :cond_7d
    :goto_7d
    const-string v0, "core_copy_tmp"

    invoke-static {p1, v0}, Lcom/tencent/smtt/sdk/o;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_86

    goto :goto_8f

    :cond_86
    invoke-direct {p0, p1, p2}, Lcom/tencent/smtt/sdk/o;->d(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_8f

    const-string p1, "TbsInstaller-installTbsCoreIfNeeded, enableTbsCoreFromCopy!!"

    goto :goto_67

    :cond_8f
    :goto_8f
    const-string v0, "tpatch_tmp"

    invoke-static {p1, v0}, Lcom/tencent/smtt/sdk/o;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_98

    goto :goto_a2

    :cond_98
    invoke-direct {p0, p1, p2}, Lcom/tencent/smtt/sdk/o;->c(Landroid/content/Context;Z)Z

    move-result p1

    if-eqz p1, :cond_a2

    const-string p1, "TbsInstaller-installTbsCoreIfNeeded, enableTbsCoreFromTpatch!!"

    goto :goto_67

    :goto_a1
    return-void

    :cond_a2
    :goto_a2
    const-string p1, "TbsInstaller-installTbsCoreIfNeeded, error !!"

    invoke-static {v3, p1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method b(Landroid/content/Context;I)Z
    .registers 7

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TbsInstaller-installLocalTbsCore targetTbsCoreVer="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TbsInstaller"

    invoke-static {v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TbsInstaller-continueInstallTbsCore currentProcessName="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TbsInstaller-installLocalTbsCore currentProcessId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TbsInstaller-installLocalTbsCore currentThreadName="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/tencent/smtt/sdk/o;->d(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_90

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v2, p2

    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    iput p2, p1, Landroid/os/Message;->what:I

    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object p2, Lcom/tencent/smtt/sdk/o;->m:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v0

    :cond_90
    const-string p1, "TbsInstaller--installLocalTbsCore copy from null"

    invoke-static {v2, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method c(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_e

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    return p1

    :cond_e
    return v0
.end method

.method c(Landroid/content/Context;Landroid/content/Context;)Ljava/io/File;
    .registers 5

    invoke-static {p2}, Lcom/tencent/smtt/sdk/QbSdk;->getTbsFolderDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    new-instance v0, Ljava/io/File;

    const-string v1, "core_share_decouple"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-nez p2, :cond_21

    if-eqz p1, :cond_19

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_21

    :cond_19
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result p1

    if-nez p1, :cond_21

    const/4 p1, 0x0

    return-object p1

    :cond_21
    return-object v0
.end method

.method c(Landroid/content/Context;I)V
    .registers 6

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller-installTbsCoreForThirdPartyApp"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz p2, :cond_a

    return-void

    :cond_a
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/o;->i(Landroid/content/Context;)I

    move-result v1

    if-ne v1, p2, :cond_11

    return-void

    :cond_11
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->e(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_2b

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getHostCorePathAppDefined()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    goto :goto_2b

    :cond_1e
    if-gtz v1, :cond_33

    const-string p2, "TbsInstaller--installTbsCoreForThirdPartyApp hostContext == null"

    invoke-static {v0, p2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "TbsInstaller::installTbsCoreForThirdPartyApp forceSysWebViewInner #2"

    invoke-static {p1, p2}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_33

    :cond_2b
    :goto_2b
    const-string v1, "TbsInstaller--quickDexOptForThirdPartyApp hostContext != null"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/tencent/smtt/sdk/o;->a(Landroid/content/Context;Landroid/content/Context;)Z

    :cond_33
    :goto_33
    return-void
.end method

.method c(Landroid/content/Context;)Z
    .registers 11

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/o;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    const-string v1, "tbs.conf"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_13

    return v1

    :cond_13
    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    const/4 v2, 0x0

    :try_start_19
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_7a

    :try_start_23
    invoke-virtual {p1, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v2, "tbs_local_installation"

    const-string v3, "false"

    invoke-virtual {p1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_36
    .catchall {:try_start_23 .. :try_end_36} :catchall_77

    const/4 v2, 0x1

    if-eqz p1, :cond_4a

    :try_start_39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/32 v7, 0xf731400

    cmp-long v0, v5, v7

    if-lez v0, :cond_4a

    const/4 v1, 0x1

    :cond_4a
    const-string v0, "TbsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TBS_LOCAL_INSTALLATION is:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " expired="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_39 .. :try_end_68} :catchall_74

    xor-int/lit8 v0, v1, 0x1

    and-int/2addr p1, v0

    :try_start_6b
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_6f

    goto :goto_89

    :catch_6f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_89

    :catchall_74
    move-exception v0

    move v1, p1

    goto :goto_78

    :catchall_77
    move-exception v0

    :goto_78
    move-object v2, v4

    goto :goto_7b

    :catchall_7a
    move-exception v0

    :goto_7b
    :try_start_7b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_8a

    if-eqz v2, :cond_88

    :try_start_80
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_84

    goto :goto_88

    :catch_84
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_88
    :goto_88
    move p1, v1

    :goto_89
    return p1

    :catchall_8a
    move-exception p1

    if-eqz v2, :cond_95

    :try_start_8d
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_91

    goto :goto_95

    :catch_91
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_95
    :goto_95
    throw p1
.end method

.method public d(Landroid/content/Context;I)Landroid/content/Context;
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TbsInstaller--getTbsCoreHostContext tbsCoreTargetVer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TbsInstaller"

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-gtz p2, :cond_1a

    return-object v0

    :cond_1a
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getCoreProviderAppList()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1f
    array-length v4, v2

    if-ge v3, v4, :cond_97

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    goto :goto_94

    :cond_2f
    aget-object v4, v2, v3

    invoke-direct {p0, p1, v4}, Lcom/tencent/smtt/sdk/o;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_94

    aget-object v4, v2, v3

    invoke-virtual {p0, p1, v4}, Lcom/tencent/smtt/sdk/o;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_94

    invoke-virtual {p0, v4}, Lcom/tencent/smtt/sdk/o;->f(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_61

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TbsInstaller--getTbsCoreHostContext "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " illegal signature go on next"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_94

    :cond_61
    invoke-virtual {p0, v4}, Lcom/tencent/smtt/sdk/o;->i(Landroid/content/Context;)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TbsInstaller-getTbsCoreHostContext hostTbsCoreVer="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_94

    if-ne v5, p2, :cond_94

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "TbsInstaller-getTbsCoreHostContext targetApp="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, v2, v3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_94
    :goto_94
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_97
    return-object v0
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/o;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    const-string v2, "tbs.conf"

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1a

    return-object v1

    :cond_1a
    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_29} :catch_43
    .catchall {:try_start_8 .. :try_end_29} :catchall_3c

    :try_start_29
    invoke-virtual {p1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_33} :catch_3a
    .catchall {:try_start_29 .. :try_end_33} :catchall_37

    :try_start_33
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_36

    :catch_36
    return-object p1

    :catchall_37
    move-exception p1

    move-object v1, v0

    goto :goto_3d

    :catch_3a
    nop

    goto :goto_44

    :catchall_3c
    move-exception p1

    :goto_3d
    if-eqz v1, :cond_42

    :try_start_3f
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_42

    :catch_42
    :cond_42
    throw p1

    :catch_43
    move-object v0, v1

    :goto_44
    if-eqz v0, :cond_49

    :try_start_46
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_49

    :catch_49
    :cond_49
    return-object v1
.end method

.method public d(Landroid/content/Context;)V
    .registers 7

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/o;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    const-string v1, "tbs.conf"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_48

    const/4 v1, 0x0

    :try_start_11
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_3d

    :try_start_1b
    invoke-virtual {p1, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_3b

    :try_start_28
    const-string v2, "tbs_local_installation"

    const-string v4, "false"

    invoke-virtual {p1, v2, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_39

    :try_start_32
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_48

    :catch_35
    :goto_35
    :try_start_35
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_48
    .catchall {:try_start_35 .. :try_end_38} :catchall_48

    goto :goto_48

    :catchall_39
    move-object v1, v0

    goto :goto_3e

    :catchall_3b
    nop

    goto :goto_3e

    :catchall_3d
    move-object v3, v1

    :goto_3e
    if-eqz v1, :cond_45

    :try_start_40
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44
    .catchall {:try_start_40 .. :try_end_43} :catchall_48

    goto :goto_45

    :catch_44
    nop

    :cond_45
    :goto_45
    if-eqz v3, :cond_48

    goto :goto_35

    :catch_48
    :catchall_48
    :cond_48
    :goto_48
    return-void
.end method

.method e(Landroid/content/Context;I)I
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/tencent/smtt/sdk/o;->f(Landroid/content/Context;I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/o;->a(Ljava/io/File;)I

    move-result p1

    return p1
.end method

.method public e(Landroid/content/Context;)Z
    .registers 11

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x4

    invoke-static {p1, v2}, Lcom/tencent/smtt/utils/FileUtil;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloader;->getBackupFileName(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, p1, v4}, Lcom/tencent/smtt/sdk/o;->f(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/io/File;)Z

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/io/File;Z)V

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/io/File;Ljava/io/File;)Z

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    :goto_27
    array-length v6, v1

    if-ge v5, v6, :cond_43

    new-instance v6, Ljava/io/File;

    aget-object v7, v1, v5

    invoke-direct {v6, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".dex"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_40

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_40
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    :cond_43
    invoke-direct {p0, p1, v4}, Lcom/tencent/smtt/sdk/o;->i(Landroid/content/Context;I)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_46} :catch_47

    return v3

    :catch_47
    return v0
.end method

.method f(Landroid/content/Context;I)Ljava/io/File;
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/smtt/sdk/o;->a(Landroid/content/Context;IZ)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method f(Landroid/content/Context;)Z
    .registers 8

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getHostCorePathAppDefined()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    :try_start_9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v2, v2, v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.tencent.mtt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_25} :catch_b0

    const-string v4, "3082023f308201a8a00302010202044c46914a300d06092a864886f70d01010505003064310b30090603550406130238363110300e060355040813074265696a696e673110300e060355040713074265696a696e673110300e060355040a130754656e63656e74310c300a060355040b13035753443111300f0603550403130873616d75656c6d6f301e170d3130303732313036313835305a170d3430303731333036313835305a3064310b30090603550406130238363110300e060355040813074265696a696e673110300e060355040713074265696a696e673110300e060355040a130754656e63656e74310c300a060355040b13035753443111300f0603550403130873616d75656c6d6f30819f300d06092a864886f70d010101050003818d0030818902818100c209077044bd0d63ea00ede5b839914cabcc912a87f0f8b390877e0f7a2583f0d5933443c40431c35a4433bc4c965800141961adc44c9625b1d321385221fd097e5bdc2f44a1840d643ab59dc070cf6c4b4b4d98bed5cbb8046e0a7078ae134da107cdf2bfc9b440fe5cb2f7549b44b73202cc6f7c2c55b8cfb0d333a021f01f0203010001300d06092a864886f70d010105050003818100b007db9922774ef4ccfee81ba514a8d57c410257e7a2eba64bfa17c9e690da08106d32f637ac41fbc9f205176c71bde238c872c3ee2f8313502bee44c80288ea4ef377a6f2cdfe4d3653c145c4acfedbfbadea23b559d41980cc3cdd35d79a68240693739aabf5c5ed26148756cf88264226de394c8a24ac35b712b120d4d23a"

    if-eqz v3, :cond_34

    :try_start_29
    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_af

    return v0

    :cond_34
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.tencent.mm"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "308202eb30820254a00302010202044d36f7a4300d06092a864886f70d01010505003081b9310b300906035504061302383631123010060355040813094775616e67646f6e673111300f060355040713085368656e7a68656e31353033060355040a132c54656e63656e7420546563686e6f6c6f6779285368656e7a68656e2920436f6d70616e79204c696d69746564313a3038060355040b133154656e63656e74204775616e677a686f7520526573656172636820616e6420446576656c6f706d656e742043656e7465723110300e0603550403130754656e63656e74301e170d3131303131393134333933325a170d3431303131313134333933325a3081b9310b300906035504061302383631123010060355040813094775616e67646f6e673111300f060355040713085368656e7a68656e31353033060355040a132c54656e63656e7420546563686e6f6c6f6779285368656e7a68656e2920436f6d70616e79204c696d69746564313a3038060355040b133154656e63656e74204775616e677a686f7520526573656172636820616e6420446576656c6f706d656e742043656e7465723110300e0603550403130754656e63656e7430819f300d06092a864886f70d010101050003818d0030818902818100c05f34b231b083fb1323670bfbe7bdab40c0c0a6efc87ef2072a1ff0d60cc67c8edb0d0847f210bea6cbfaa241be70c86daf56be08b723c859e52428a064555d80db448cdcacc1aea2501eba06f8bad12a4fa49d85cacd7abeb68945a5cb5e061629b52e3254c373550ee4e40cb7c8ae6f7a8151ccd8df582d446f39ae0c5e930203010001300d06092a864886f70d0101050500038181009c8d9d7f2f908c42081b4c764c377109a8b2c70582422125ce545842d5f520aea69550b6bd8bfd94e987b75a3077eb04ad341f481aac266e89d3864456e69fba13df018acdc168b9a19dfd7ad9d9cc6f6ace57c746515f71234df3a053e33ba93ece5cd0fc15f3e389a3f365588a9fcb439e069d3629cd7732a13fff7b891499"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_af

    return v0

    :cond_4d
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.tencent.mobileqq"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "30820253308201bca00302010202044bbb0361300d06092a864886f70d0101050500306d310e300c060355040613054368696e61310f300d06035504080c06e58c97e4baac310f300d06035504070c06e58c97e4baac310f300d060355040a0c06e885bee8aeaf311b3019060355040b0c12e697a0e7babfe4b89ae58aa1e7b3bbe7bb9f310b30090603550403130251513020170d3130303430363039343831375a180f32323834303132303039343831375a306d310e300c060355040613054368696e61310f300d06035504080c06e58c97e4baac310f300d06035504070c06e58c97e4baac310f300d060355040a0c06e885bee8aeaf311b3019060355040b0c12e697a0e7babfe4b89ae58aa1e7b3bbe7bb9f310b300906035504031302515130819f300d06092a864886f70d010101050003818d0030818902818100a15e9756216f694c5915e0b529095254367c4e64faeff07ae13488d946615a58ddc31a415f717d019edc6d30b9603d3e2a7b3de0ab7e0cf52dfee39373bc472fa997027d798d59f81d525a69ecf156e885fd1e2790924386b2230cc90e3b7adc95603ddcf4c40bdc72f22db0f216a99c371d3bf89cba6578c60699e8a0d536950203010001300d06092a864886f70d01010505000381810094a9b80e80691645dd42d6611775a855f71bcd4d77cb60a8e29404035a5e00b21bcc5d4a562482126bd91b6b0e50709377ceb9ef8c2efd12cc8b16afd9a159f350bb270b14204ff065d843832720702e28b41491fbc3a205f5f2f42526d67f17614d8a974de6487b2c866efede3b4e49a0f916baa3c1336fd2ee1b1629652049"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_af

    return v0

    :cond_66
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.tencent.tbs"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7d

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_af

    return v0

    :cond_7d
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.qzone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "308202ad30820216a00302010202044c26cea2300d06092a864886f70d010105050030819a310b3009060355040613023836311530130603550408130c4265696a696e672043697479311530130603550407130c4265696a696e67204369747931263024060355040a131d515a6f6e65205465616d206f662054656e63656e7420436f6d70616e7931183016060355040b130f54656e63656e7420436f6d70616e79311b301906035504031312416e64726f696420515a6f6e65205465616d301e170d3130303632373034303830325a170d3335303632313034303830325a30819a310b3009060355040613023836311530130603550408130c4265696a696e672043697479311530130603550407130c4265696a696e67204369747931263024060355040a131d515a6f6e65205465616d206f662054656e63656e7420436f6d70616e7931183016060355040b130f54656e63656e7420436f6d70616e79311b301906035504031312416e64726f696420515a6f6e65205465616d30819f300d06092a864886f70d010101050003818d003081890281810082d6aca037a9843fbbe88b6dd19f36e9c24ce174c1b398f3a529e2a7fe02de99c27539602c026edf96ad8d43df32a85458bca1e6fbf11958658a7d6751a1d9b782bf43a8c19bd1c06bdbfd94c0516326ae3cf638ac42bb470580e340c46e6f306a772c1ef98f10a559edf867f3f31fe492808776b7bd953b2cba2d2b2d66a44f0203010001300d06092a864886f70d0101050500038181006003b04a8a8c5be9650f350cda6896e57dd13e6e83e7f891fc70f6a3c2eaf75cfa4fc998365deabbd1b9092159edf4b90df5702a0d101f8840b5d4586eb92a1c3cd19d95fbc1c2ac956309eda8eef3944baf08c4a49d3b9b3ffb06bc13dab94ecb5b8eb74e8789aa0ba21cb567f538bbc59c2a11e6919924a24272eb79251677"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_af

    return v0

    :cond_96
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "com.tencent.qqpimsecure"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_af

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "30820239308201a2a00302010202044c96f48f300d06092a864886f70d01010505003060310b300906035504061302434e310b300906035504081302474431123010060355040713094775616e677a686f753110300e060355040a130754656e63656e74310b3009060355040b130233473111300f0603550403130857696c736f6e57753020170d3130303932303035343334335a180f32303635303632333035343334335a3060310b300906035504061302434e310b300906035504081302474431123010060355040713094775616e677a686f753110300e060355040a130754656e63656e74310b3009060355040b130233473111300f0603550403130857696c736f6e577530819f300d06092a864886f70d010101050003818d0030818902818100b56e79dbb1185a79e52d792bb3d0bb3da8010d9b87da92ec69f7dc5ad66ab6bfdff2a6a1ed285dd2358f28b72a468be7c10a2ce30c4c27323ed4edcc936080e5bedc2cbbca0b7e879c08a631182793f44bb3ea284179b263410c298e5f6831032c9702ba4a74e2ccfc9ef857f12201451602fc8e774ac59d6398511586c83d1d0203010001300d06092a864886f70d0101050500038181002475615bb65b8d8786b890535802948840387d06b1692ff3ea47ef4c435719ba1865b81e6bfa6293ce31747c3cd6b34595b485cc1563fd90107ba5845c28b95c79138f0dec288940395bc10f92f2b69d8dc410999deb38900974ce9984b678030edfba8816582f56160d87e38641288d8588d2a31e20b89f223d788dd35cc9c8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_ac} :catch_b0

    if-nez p1, :cond_af

    return v0

    :cond_af
    return v1

    :catch_b0
    const-string p1, "TbsInstaller"

    const-string v1, "TbsInstaller-installLocalTbsCore getPackageInfo fail"

    invoke-static {p1, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public g(Landroid/content/Context;)V
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance()Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getTbsCoreLoadRenameFileLockEnable()Z

    move-result v0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    goto :goto_a

    :catchall_9
    const/4 v0, 0x1

    :goto_a
    if-nez v0, :cond_d

    goto :goto_14

    :cond_d
    sget-object v0, Lcom/tencent/smtt/sdk/o;->l:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_14

    invoke-static {p1, v0}, Lcom/tencent/smtt/utils/FileUtil;->a(Landroid/content/Context;Ljava/nio/channels/FileLock;)V

    :cond_14
    :goto_14
    return-void
.end method

.method g(Landroid/content/Context;I)Z
    .registers 13

    const-string v0, "TbsInstaller"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2c

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->j(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_26

    new-instance v4, Ljava/io/File;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.tencent.tbs"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_30

    return v3

    :cond_26
    const-string p1, "321"

    invoke-static {v0, p1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2c
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/o;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    :cond_30
    if-eqz v4, :cond_97

    sget-object v5, Lcom/tencent/smtt/sdk/o;->n:[[Ljava/lang/Long;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_36
    if-ge v7, v6, :cond_95

    aget-object v8, v5, v7

    aget-object v9, v8, v1

    invoke-virtual {v9}, Ljava/lang/Long;->intValue()I

    move-result v9

    if-ne p2, v9, :cond_92

    new-instance v5, Ljava/io/File;

    const-string v6, "libmttwebview.so"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7a

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    aget-object v4, v8, v3

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-nez v4, :cond_7a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check so success: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; file: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/smtt/utils/TbsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_95

    :cond_7a
    if-nez v2, :cond_83

    invoke-static {p1}, Lcom/tencent/smtt/sdk/QbSdk;->getTbsFolderDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/smtt/utils/FileUtil;->b(Ljava/io/File;)V

    :cond_83
    sget-object p1, Lcom/tencent/smtt/sdk/o;->a:Ljava/lang/ThreadLocal;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const-string p1, "322"

    :goto_8e
    invoke-static {v0, p1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_cb

    :cond_92
    add-int/lit8 v7, v7, 0x1

    goto :goto_36

    :cond_95
    :goto_95
    const/4 v1, 0x1

    goto :goto_cb

    :cond_97
    const-string p1, "323"
    :try_end_99
    .catchall {:try_start_3 .. :try_end_99} :catchall_9a

    goto :goto_8e

    :catchall_9a
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISTBSCORELEGAL exception getMessage is "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISTBSCORELEGAL exception getCause is "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_cb
    return v1
.end method

.method h(Landroid/content/Context;)I
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/o;->p(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    new-instance v2, Ljava/io/File;

    const-string v3, "tbs.conf"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_14

    return v0

    :cond_14
    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_23} :catch_49
    .catchall {:try_start_2 .. :try_end_23} :catchall_42

    :try_start_23
    invoke-virtual {p1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    const-string v1, "tbs_core_version"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2f} :catch_40
    .catchall {:try_start_23 .. :try_end_2f} :catchall_3d

    if-nez p1, :cond_35

    :try_start_31
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_34

    :catch_34
    return v0

    :cond_35
    :try_start_35
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_39} :catch_40
    .catchall {:try_start_35 .. :try_end_39} :catchall_3d

    :try_start_39
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3c

    :catch_3c
    return p1

    :catchall_3d
    move-exception p1

    move-object v1, v2

    goto :goto_43

    :catch_40
    move-object v1, v2

    goto :goto_4a

    :catchall_42
    move-exception p1

    :goto_43
    if-eqz v1, :cond_48

    :try_start_45
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_48

    :catch_48
    :cond_48
    throw p1

    :catch_49
    nop

    :goto_4a
    if-eqz v1, :cond_4f

    :try_start_4c
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_4f

    :catch_4f
    :cond_4f
    return v0
.end method

.method i(Landroid/content/Context;)I
    .registers 8

    const-string v0, "TbsInstaller--getTbsCoreInstalledVerInNolock IOException="

    const-string v1, "TbsInstaller"

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_6
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/o;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    new-instance v4, Ljava/io/File;

    const-string v5, "tbs.conf"

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_18

    return v2

    :cond_18
    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_27} :catch_7f
    .catchall {:try_start_6 .. :try_end_27} :catchall_7d

    :try_start_27
    invoke-virtual {p1, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    const-string v3, "tbs_core_version"

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_33} :catch_7a
    .catchall {:try_start_27 .. :try_end_33} :catchall_77

    if-nez p1, :cond_51

    :try_start_35
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_50

    :catch_39
    move-exception p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_50
    return v2

    :cond_51
    :try_start_51
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sget v3, Lcom/tencent/smtt/sdk/o;->o:I

    if-nez v3, :cond_5b

    sput p1, Lcom/tencent/smtt/sdk/o;->o:I
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_5b} :catch_7a
    .catchall {:try_start_51 .. :try_end_5b} :catchall_77

    :cond_5b
    :try_start_5b
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f

    goto :goto_76

    :catch_5f
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_76
    return p1

    :catchall_77
    move-exception p1

    move-object v3, v4

    goto :goto_b6

    :catch_7a
    move-exception p1

    move-object v3, v4

    goto :goto_80

    :catchall_7d
    move-exception p1

    goto :goto_b6

    :catch_7f
    move-exception p1

    :goto_80
    :try_start_80
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TbsInstaller--getTbsCoreInstalledVerInNolock Exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_98
    .catchall {:try_start_80 .. :try_end_98} :catchall_7d

    if-eqz v3, :cond_b5

    :try_start_9a
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_9e

    goto :goto_b5

    :catch_9e
    move-exception p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b5
    :goto_b5
    return v2

    :goto_b6
    if-eqz v3, :cond_d3

    :try_start_b8
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_bc

    goto :goto_d3

    :catch_bc
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d3
    :goto_d3
    throw p1
.end method

.method j(Landroid/content/Context;)I
    .registers 3

    sget v0, Lcom/tencent/smtt/sdk/o;->o:I

    if-eqz v0, :cond_5

    return v0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/o;->i(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method k(Landroid/content/Context;)V
    .registers 3

    sget v0, Lcom/tencent/smtt/sdk/o;->o:I

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/o;->i(Landroid/content/Context;)I

    move-result p1

    sput p1, Lcom/tencent/smtt/sdk/o;->o:I

    return-void
.end method

.method l(Landroid/content/Context;)Z
    .registers 4

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/o;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    const-string v1, "tbs.conf"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_13

    const/4 p1, 0x0

    return p1

    :cond_13
    const/4 p1, 0x1

    return p1
.end method

.method m(Landroid/content/Context;)I
    .registers 10

    const-string v0, "TbsInstaller--getTbsCoreInstalledVerWithLock IOException="

    const-string v1, "TbsRenameLock.unlock exception: "

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/o;->t(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_c

    const/4 p1, -0x1

    return p1

    :cond_c
    sget-object v2, Lcom/tencent/smtt/sdk/o;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TbsInstaller--getTbsCoreInstalledVerWithLock locked="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TbsInstaller"

    invoke-static {v5, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    if-eqz v3, :cond_1b1

    const/4 v3, 0x0

    :try_start_2c
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/o;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    new-instance v6, Ljava/io/File;

    const-string v7, "tbs.conf"

    invoke-direct {v6, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_3b} :catch_118
    .catchall {:try_start_2c .. :try_end_3b} :catchall_116

    if-nez p1, :cond_5e

    :try_start_3d
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result p1

    if-eqz p1, :cond_5a

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_46
    .catchall {:try_start_3d .. :try_end_46} :catchall_47

    goto :goto_5a

    :catchall_47
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5a
    :goto_5a
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/o;->b()V

    return v4

    :cond_5e
    :try_start_5e
    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_6d} :catch_118
    .catchall {:try_start_5e .. :try_end_6d} :catchall_116

    :try_start_6d
    invoke-virtual {p1, v6}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    const-string v2, "tbs_core_version"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_79} :catch_113
    .catchall {:try_start_6d .. :try_end_79} :catchall_110

    if-nez p1, :cond_b9

    :try_start_7b
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_96

    :catch_7f
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_96
    :try_start_96
    sget-object p1, Lcom/tencent/smtt/sdk/o;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_b5

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_a1
    .catchall {:try_start_96 .. :try_end_a1} :catchall_a2

    goto :goto_b5

    :catchall_a2
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b5
    :goto_b5
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/o;->b()V

    return v4

    :cond_b9
    :try_start_b9
    sget-object v2, Lcom/tencent/smtt/sdk/o;->a:Ljava/lang/ThreadLocal;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object p1, Lcom/tencent/smtt/sdk/o;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_d2} :catch_113
    .catchall {:try_start_b9 .. :try_end_d2} :catchall_110

    :try_start_d2
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_d5} :catch_d6

    goto :goto_ed

    :catch_d6
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_ed
    :try_start_ed
    sget-object v0, Lcom/tencent/smtt/sdk/o;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    if-eqz v2, :cond_10c

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_f8
    .catchall {:try_start_ed .. :try_end_f8} :catchall_f9

    goto :goto_10c

    :catchall_f9
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10c
    :goto_10c
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/o;->b()V

    return p1

    :catchall_110
    move-exception p1

    move-object v3, v6

    goto :goto_171

    :catch_113
    move-exception p1

    move-object v3, v6

    goto :goto_119

    :catchall_116
    move-exception p1

    goto :goto_171

    :catch_118
    move-exception p1

    :goto_119
    :try_start_119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TbsInstaller--getTbsCoreInstalledVerWithLock Exception="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_131
    .catchall {:try_start_119 .. :try_end_131} :catchall_116

    if-eqz v3, :cond_14e

    :try_start_133
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_136
    .catch Ljava/io/IOException; {:try_start_133 .. :try_end_136} :catch_137

    goto :goto_14e

    :catch_137
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14e
    :goto_14e
    :try_start_14e
    sget-object p1, Lcom/tencent/smtt/sdk/o;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_16d

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_159
    .catchall {:try_start_14e .. :try_end_159} :catchall_15a

    goto :goto_16d

    :catchall_15a
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16d
    :goto_16d
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/o;->b()V

    return v4

    :goto_171
    if-eqz v3, :cond_18e

    :try_start_173
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_176
    .catch Ljava/io/IOException; {:try_start_173 .. :try_end_176} :catch_177

    goto :goto_18e

    :catch_177
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18e
    :goto_18e
    :try_start_18e
    sget-object v0, Lcom/tencent/smtt/sdk/o;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    if-eqz v2, :cond_1ad

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_199
    .catchall {:try_start_18e .. :try_end_199} :catchall_19a

    goto :goto_1ad

    :catchall_19a
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1ad
    :goto_1ad
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/o;->b()V

    throw p1

    :cond_1b1
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/o;->b()V

    return v4
.end method

.method public n(Landroid/content/Context;)Z
    .registers 7

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller--coreShareCopyToDecouple #0"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/o;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/o;->p(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x1

    :try_start_10
    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/io/File;Z)V

    new-instance v4, Lcom/tencent/smtt/sdk/o$5;

    invoke-direct {v4, p0}, Lcom/tencent/smtt/sdk/o$5;-><init>(Lcom/tencent/smtt/sdk/o;)V

    invoke-static {v1, v2, v4}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;)Z

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->b(Landroid/content/Context;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1e} :catch_24

    const-string p1, "TbsInstaller--coreShareCopyToDecouple success!!!"

    invoke-static {v0, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :catch_24
    const/4 p1, 0x0

    return p1
.end method

.method o(Landroid/content/Context;)V
    .registers 6

    const-string v0, "TbsInstaller"

    const-string v1, "TbsInstaller--cleanStatusAndTmpDir"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/m;->a(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/m;->b(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/m;->d(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v0

    const-string v2, "incrupdate_retry_num"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/smtt/sdk/m;->a(Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_63

    invoke-static {p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/m;->c(II)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/m;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v0

    const-string v3, "copy_retry_num"

    invoke-virtual {v0, v3, v1}, Lcom/tencent/smtt/sdk/m;->a(Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/m;->c(I)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/m;->a(II)V

    invoke-virtual {p0, p1, v1}, Lcom/tencent/smtt/sdk/o;->f(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/io/File;Z)V

    invoke-virtual {p0, p1, v1}, Lcom/tencent/smtt/sdk/o;->f(Landroid/content/Context;I)Ljava/io/File;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/io/File;Z)V

    :cond_63
    return-void
.end method

.method p(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    invoke-static {p1}, Lcom/tencent/smtt/sdk/QbSdk;->getTbsFolderDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    const-string v1, "core_share_decouple"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_19

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result p1

    if-nez p1, :cond_19

    const/4 p1, 0x0

    return-object p1

    :cond_19
    return-object v0
.end method

.method q(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/tencent/smtt/sdk/o;->b(Landroid/content/Context;Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method r(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    invoke-static {p1}, Lcom/tencent/smtt/sdk/QbSdk;->getTbsFolderDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    const-string v1, "share"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_19

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result p1

    if-nez p1, :cond_19

    const/4 p1, 0x0

    return-object p1

    :cond_19
    return-object v0
.end method

.method declared-synchronized t(Landroid/content/Context;)Z
    .registers 5

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/tencent/smtt/sdk/o;->e:I

    const/4 v1, 0x1

    if-lez v0, :cond_14

    const-string p1, "TbsInstaller"

    const-string v0, "getTbsInstallingFileLock success,is cached= true"

    invoke-static {p1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/tencent/smtt/sdk/o;->e:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/tencent/smtt/sdk/o;->e:I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_47

    monitor-exit p0

    return v1

    :cond_14
    :try_start_14
    const-string v0, "tbslock.txt"

    invoke-static {p1, v1, v0}, Lcom/tencent/smtt/utils/FileUtil;->b(Landroid/content/Context;ZLjava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/o;->g:Ljava/io/FileOutputStream;

    const/4 v2, 0x0

    if-eqz v0, :cond_3e

    invoke-static {p1, v0}, Lcom/tencent/smtt/utils/FileUtil;->a(Landroid/content/Context;Ljava/io/FileOutputStream;)Ljava/nio/channels/FileLock;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/smtt/sdk/o;->f:Ljava/nio/channels/FileLock;

    if-nez p1, :cond_30

    const-string p1, "TbsInstaller"

    const-string v0, "getTbsInstallingFileLock tbsFileLockFileLock == null"

    invoke-static {p1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_14 .. :try_end_2e} :catchall_47

    monitor-exit p0

    return v2

    :cond_30
    :try_start_30
    const-string p1, "TbsInstaller"

    const-string v0, "getTbsInstallingFileLock success,is cached= false"

    invoke-static {p1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/tencent/smtt/sdk/o;->e:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/tencent/smtt/sdk/o;->e:I
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_47

    monitor-exit p0

    return v1

    :cond_3e
    :try_start_3e
    const-string p1, "TbsInstaller"

    const-string v0, "getTbsInstallingFileLock get install fos failed"

    invoke-static {p1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_47

    monitor-exit p0

    return v2

    :catchall_47
    move-exception p1

    monitor-exit p0

    throw p1
.end method
