.class public Lcom/tencent/smtt/sdk/TbsShareManager;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context; = null

.field private static b:Z = false

.field private static c:Ljava/lang/String; = null

.field private static d:Ljava/lang/String; = null

.field private static e:I = 0x0

.field private static f:Ljava/lang/String; = null

.field private static g:Z = false

.field private static h:Z = false

.field private static i:Z = false

.field private static j:Ljava/lang/String; = null

.field private static k:Z = false

.field private static l:Z = false

.field public static mHasQueryed:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;Z)I
    .registers 2

    invoke-static {p0, p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->b(Landroid/content/Context;Z)Z

    sget p0, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    return p0
.end method

.method static a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/tencent/smtt/sdk/TbsShareManager;->d:Ljava/lang/String;

    return-object v0
.end method

.method static a(Landroid/content/Context;)V
    .registers 5

    const-string v0, "TbsShareManager"

    const-string v1, "shareTbsCore #1"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    new-instance v1, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;

    invoke-direct {v1, p0}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/tencent/smtt/sdk/o;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/tencent/smtt/sdk/TbsShareManager;->a(Landroid/content/Context;Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;Ljava/io/File;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/tencent/smtt/sdk/o;->r(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shareTbsCore tbsShareDir is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string v2, "755"

    invoke-virtual {v1, p0, v2}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_7 .. :try_end_40} :catchall_41

    goto :goto_69

    :catchall_41
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shareTbsCore tbsShareDir error is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_69
    return-void
.end method

.method private static a(Landroid/content/Context;I)V
    .registers 13

    sget-object v0, Lcom/tencent/smtt/sdk/TbsShareManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsPVConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsPVConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsPVConfig;->isDisableHostBackupCore()Z

    move-result v0

    if-nez v0, :cond_d0

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/o;->t(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d0

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "com.tencent.tbs"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "com.tencent.mm"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v4, "com.tencent.mobileqq"

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-string v4, "com.qzone"

    aput-object v4, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "find host backup core to unzip #1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "TbsShareManager"

    invoke-static {v4, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_54
    if-ge v2, v0, :cond_c9

    aget-object v5, v1, v2

    invoke-static {p0, v5}, Lcom/tencent/smtt/sdk/TbsShareManager;->getBackupCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    const-string v7, " packageName is "

    const-wide/16 v8, 0x0

    if-ne p1, v6, :cond_9e

    invoke-static {p0, v5, v3}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v6

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/tencent/smtt/sdk/o;->f(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_71

    goto :goto_c6

    :cond_71
    invoke-static {p0, v5}, Lcom/tencent/smtt/sdk/TbsShareManager;->getBackupCoreFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-static {p0, v6, v8, v9, p1}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;JI)Z

    move-result v8

    if-nez v8, :cond_7c

    goto :goto_c6

    :cond_7c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "find host backup core to unzip normal coreVersion is "

    :goto_83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    invoke-virtual {v0, p0, v6, p1}, Lcom/tencent/smtt/sdk/o;->b(Landroid/content/Context;Ljava/io/File;I)V

    goto :goto_c9

    :cond_9e
    invoke-static {p0, v5}, Lcom/tencent/smtt/sdk/TbsShareManager;->getBackupDecoupleCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-ne p1, v6, :cond_c6

    invoke-static {p0, v5, v3}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v6

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/tencent/smtt/sdk/o;->f(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_b3

    goto :goto_c6

    :cond_b3
    invoke-static {p0, v5}, Lcom/tencent/smtt/sdk/TbsShareManager;->getBackupDecoupleCoreFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-static {p0, v6, v8, v9, p1}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;JI)Z

    move-result v8

    if-nez v8, :cond_be

    goto :goto_c6

    :cond_be
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "find host backup core to unzip decouple coreVersion is "

    goto :goto_83

    :cond_c6
    :goto_c6
    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    :cond_c9
    :goto_c9
    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/o;->b()V

    :cond_d0
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;Ljava/io/File;)V
    .registers 10

    const-string v0, "TbsShareManager"

    const-string v1, "shareAllDirsAndFiles #1"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_74

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_74

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_74

    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shareAllDirsAndFiles dir is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "755"

    invoke-virtual {p1, v1, v2}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    array-length v1, p2

    const/4 v3, 0x0

    :goto_3d
    if-ge v3, v1, :cond_74

    aget-object v4, p2, v3

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".so"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    if-lez v5, :cond_5b

    invoke-virtual {p1, v4, v2}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71

    :cond_5b
    const-string v5, "644"

    invoke-virtual {p1, v4, v5}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71

    :cond_61
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_6b

    invoke-static {p0, p1, v4}, Lcom/tencent/smtt/sdk/TbsShareManager;->a(Landroid/content/Context;Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;Ljava/io/File;)V

    goto :goto_71

    :cond_6b
    const-string v4, "unknown file type."

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_71
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    :cond_74
    :goto_74
    return-void
.end method

.method static b(Landroid/content/Context;)V
    .registers 3

    :try_start_0
    new-instance v0, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;

    invoke-direct {v0, p0}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tencent/smtt/sdk/o;->p(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/tencent/smtt/sdk/TbsShareManager;->a(Landroid/content/Context;Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;Ljava/io/File;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    goto :goto_15

    :catchall_11
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_15
    return-void
.end method

.method static b(Landroid/content/Context;Z)Z
    .registers 3

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    if-eqz p1, :cond_f

    const-string p1, "TbsShareManager::isShareTbsCoreAvailable forceSysWebViewInner!"

    invoke-static {p0, p1}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->j(Landroid/content/Context;)Z

    sget-object p0, Lcom/tencent/smtt/sdk/TbsShareManager;->d:Ljava/lang/String;

    return-object p0
.end method

.method private static c(Landroid/content/Context;Z)V
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "core_info"

    invoke-static {p0, v1}, Lcom/tencent/smtt/sdk/TbsShareManager;->getTbsShareFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_a

    return-void

    :cond_a
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_6d

    :try_start_14
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v4, "core_disabled"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p1, :cond_53

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/tencent/smtt/sdk/o;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/tencent/smtt/utils/b;->d(Landroid/content/Context;)I

    move-result p0

    const-string v5, "core_packagename"

    invoke-virtual {v2, v5, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v4, "core_path"

    invoke-virtual {v2, v4, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "app_version"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p1, p0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_53
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance p1, Ljava/io/BufferedOutputStream;

    invoke-direct {p1, p0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5d
    .catchall {:try_start_14 .. :try_end_5d} :catchall_69

    :try_start_5d
    invoke-virtual {v2, p1, v0}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_67

    :try_start_60
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_63

    :catch_63
    :goto_63
    :try_start_63
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_66} :catch_7c

    goto :goto_7c

    :catchall_67
    move-exception p0

    goto :goto_6b

    :catchall_69
    move-exception p0

    move-object p1, v0

    :goto_6b
    move-object v0, v3

    goto :goto_6f

    :catchall_6d
    move-exception p0

    move-object p1, v0

    :goto_6f
    :try_start_6f
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_7d

    if-eqz v0, :cond_79

    :try_start_74
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_78

    goto :goto_79

    :catch_78
    nop

    :cond_79
    :goto_79
    if-eqz p1, :cond_7c

    goto :goto_63

    :catch_7c
    :cond_7c
    :goto_7c
    return-void

    :catchall_7d
    move-exception p0

    if-eqz v0, :cond_85

    :try_start_80
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_83} :catch_84

    goto :goto_85

    :catch_84
    nop

    :cond_85
    :goto_85
    if-eqz p1, :cond_8a

    :try_start_87
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8a} :catch_8a

    :catch_8a
    :cond_8a
    throw p0
.end method

.method static d(Landroid/content/Context;)I
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->a(Landroid/content/Context;Z)I

    move-result p0

    return p0
.end method

.method private static d(Landroid/content/Context;Z)[Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getOnlyDownload()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    new-array p1, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    goto :goto_29

    :cond_15
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getCoreProviderAppList()[Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_28

    new-array p1, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    goto :goto_29

    :cond_28
    move-object p1, v0

    :goto_29
    return-object p1
.end method

.method static e(Landroid/content/Context;)Landroid/content/Context;
    .registers 4

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->j(Landroid/content/Context;)Z

    sget-object v0, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/o;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_19

    :cond_18
    move-object v1, p0

    :cond_19
    :goto_19
    sget-object p0, Lcom/tencent/smtt/sdk/TbsShareManager;->c:Ljava/lang/String;

    if-eqz p0, :cond_20

    sget-object p0, Lcom/tencent/smtt/sdk/TbsShareManager;->a:Landroid/content/Context;

    return-object p0

    :cond_20
    return-object v1
.end method

.method static declared-synchronized f(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-class v0, Lcom/tencent/smtt/sdk/TbsShareManager;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    const-string v2, "core_info"

    invoke-static {p0, v2}, Lcom/tencent/smtt/sdk/TbsShareManager;->getTbsShareFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_3c

    if-nez p0, :cond_e

    monitor-exit v0

    return-object v1

    :cond_e
    :try_start_e
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance p0, Ljava/io/BufferedInputStream;

    invoke-direct {p0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_3c

    :try_start_18
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v2, p0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v3, "core_packagename"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_3a

    if-nez v3, :cond_35

    :try_start_30
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_47

    :catch_33
    monitor-exit v0

    return-object v2

    :cond_35
    :try_start_35
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_47

    :catch_38
    monitor-exit v0

    return-object v1

    :catchall_3a
    move-exception v2

    goto :goto_3e

    :catchall_3c
    move-exception v2

    move-object p0, v1

    :goto_3e
    :try_start_3e
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_4b

    if-eqz p0, :cond_49

    :try_start_43
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_49
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    goto :goto_49

    :catchall_47
    move-exception p0

    goto :goto_52

    :catch_49
    :cond_49
    :goto_49
    monitor-exit v0

    return-object v1

    :catchall_4b
    move-exception v1

    if-eqz p0, :cond_51

    :try_start_4e
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_47

    :catch_51
    :cond_51
    :try_start_51
    throw v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_47

    :goto_52
    monitor-exit v0

    throw p0
.end method

.method public static findCoreForThirdPartyApp(Landroid/content/Context;)I
    .registers 7

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->n(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "core_info mAvailableCoreVersion is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mAvailableCorePath is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tencent/smtt/sdk/TbsShareManager;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mSrcPackageName is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TbsShareManager"

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    if-nez v0, :cond_38

    const-string v0, "mSrcPackageName is null !!!"

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    sget-object v0, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_80

    const-string v4, "AppDefined"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    sget v0, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v4

    sget-object v5, Lcom/tencent/smtt/sdk/TbsShareManager;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/o;->a(Ljava/lang/String;)I

    move-result v4

    if-eq v0, v4, :cond_97

    sput v2, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    sput-object v3, Lcom/tencent/smtt/sdk/TbsShareManager;->d:Ljava/lang/String;

    sput-object v3, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check AppDefined core is error src is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " dest is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v4

    sget-object v5, Lcom/tencent/smtt/sdk/TbsShareManager;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/o;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_94

    :cond_80
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_97

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->l(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_97

    sput v2, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    sput-object v3, Lcom/tencent/smtt/sdk/TbsShareManager;->d:Ljava/lang/String;

    sput-object v3, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    const-string v0, "core_info error checkCoreInfo is false and checkCoreInOthers is false "

    :goto_94
    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_97
    sget v0, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    if-lez v0, :cond_d2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.tencent.android.qqdownloader"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b6

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.jd.jrapp"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    goto :goto_b6

    :cond_b4
    const/4 v0, 0x0

    goto :goto_b7

    :cond_b6
    :goto_b6
    const/4 v0, 0x1

    :goto_b7
    if-nez v0, :cond_c0

    sget v0, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;I)Z

    move-result p0

    goto :goto_c1

    :cond_c0
    const/4 p0, 0x0

    :goto_c1
    if-nez p0, :cond_c7

    sget-boolean p0, Lcom/tencent/smtt/sdk/TbsShareManager;->g:Z

    if-eqz p0, :cond_d2

    :cond_c7
    sput v2, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    sput-object v3, Lcom/tencent/smtt/sdk/TbsShareManager;->d:Ljava/lang/String;

    sput-object v3, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    const-string p0, "core_info error QbSdk.isX5Disabled "

    invoke-static {v1, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d2
    sget p0, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    return p0
.end method

.method public static forceLoadX5FromTBSDemo(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_31

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/tencent/smtt/sdk/o;->a(Landroid/content/Context;[Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_31

    :cond_f
    const-string v1, "com.tencent.tbs"

    invoke-static {p0, v1}, Lcom/tencent/smtt/sdk/TbsShareManager;->getSharedTbsCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_31

    const/4 v0, 0x1

    invoke-static {p0, v1, v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/tencent/smtt/sdk/o;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-static {p0, v2, v1, v3, v4}, Lcom/tencent/smtt/sdk/TbsShareManager;->writeProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    :goto_31
    return v0
.end method

.method public static forceToLoadX5ForThirdApp(Landroid/content/Context;Z)V
    .registers 16

    :try_start_0
    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->isNeedInitX5FirstTime()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getOnlyDownload()Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    :cond_15
    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/o;->r(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_20

    return-void

    :cond_20
    if-eqz p1, :cond_30

    new-instance p1, Ljava/io/File;

    const-string v1, "core_info"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_30

    return-void

    :cond_30
    sget-object p1, Lcom/tencent/smtt/sdk/TbsShareManager;->c:Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_243

    const-string v0, "#"

    const-string v1, " "

    const/4 v2, 0x1

    const-string v3, "TbsShareManager"

    if-eqz p1, :cond_88

    :try_start_3b
    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object p1

    sget-object v4, Lcom/tencent/smtt/sdk/TbsShareManager;->c:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/tencent/smtt/sdk/o;->a(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_88

    sget-object v4, Lcom/tencent/smtt/sdk/TbsShareManager;->c:Ljava/lang/String;

    sput-object v4, Lcom/tencent/smtt/sdk/TbsShareManager;->d:Ljava/lang/String;

    const-string v4, "AppDefined"

    sput-object v4, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    sput p1, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forceToLoadX5ForThirdApp #1 -- mAvailableCoreVersion: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    sget-object v1, Lcom/tencent/smtt/sdk/TbsShareManager;->d:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v0, v1, v2}, Lcom/tencent/smtt/sdk/TbsShareManager;->writeProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_88
    const-string p1, "forceToLoadX5ForThirdApp #1"

    invoke-static {v3, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->h(Landroid/content/Context;)I

    move-result p1

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/tencent/smtt/sdk/o;->i(Landroid/content/Context;)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "forceToLoadX5ForThirdApp coreVersionFromConfig is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "forceToLoadX5ForThirdApp coreVersionFromCoreShare is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getCoreProviderAppList()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_c8
    const/4 v9, 0x0

    if-ge v8, v6, :cond_13d

    aget-object v10, v5, v8

    invoke-static {p0, v10}, Lcom/tencent/smtt/sdk/TbsShareManager;->getCoreShareDecoupleCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    if-lt v11, p1, :cond_13a

    if-ge v11, v4, :cond_d6

    goto :goto_13a

    :cond_d6
    if-lez v11, :cond_13a

    invoke-static {p0, v10, v2}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v12

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v13

    invoke-virtual {v13, p0, v12}, Lcom/tencent/smtt/sdk/o;->c(Landroid/content/Context;Landroid/content/Context;)Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/tencent/smtt/sdk/TbsShareManager;->d:Ljava/lang/String;

    sput-object v10, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    sput v11, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "forceToLoadX5ForThirdApp #2 -- mAvailableCoreVersion: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v11, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/Throwable;

    invoke-direct {v11, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->canLoadX5FirstTimeThirdApp(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_134

    invoke-static {p0}, Lcom/tencent/smtt/utils/b;->d(Landroid/content/Context;)I

    move-result p1

    const-string v0, "forceToLoadX5ForThirdApp #2"

    invoke-static {v3, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    sget-object v2, Lcom/tencent/smtt/sdk/TbsShareManager;->d:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, v1, v2, p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->writeProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_134
    sput v7, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    sput-object v9, Lcom/tencent/smtt/sdk/TbsShareManager;->d:Ljava/lang/String;

    sput-object v9, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    :cond_13a
    :goto_13a
    add-int/lit8 v8, v8, 0x1

    goto :goto_c8

    :cond_13d
    array-length v6, v5

    const/4 v8, 0x0

    :goto_13f
    if-ge v8, v6, :cond_1ae

    aget-object v10, v5, v8

    invoke-static {p0, v10}, Lcom/tencent/smtt/sdk/TbsShareManager;->getSharedTbsCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    if-lt v11, p1, :cond_1ab

    if-ge v11, v4, :cond_14c

    goto :goto_1ab

    :cond_14c
    if-lez v11, :cond_1ab

    invoke-static {p0, v10, v2}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v12

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v13

    invoke-virtual {v13, p0, v12}, Lcom/tencent/smtt/sdk/o;->b(Landroid/content/Context;Landroid/content/Context;)Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/tencent/smtt/sdk/TbsShareManager;->d:Ljava/lang/String;

    sput-object v10, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    sput v11, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "forceToLoadX5ForThirdApp #3 -- mAvailableCoreVersion: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v11, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/Throwable;

    invoke-direct {v11, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->canLoadX5FirstTimeThirdApp(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1a5

    invoke-static {p0}, Lcom/tencent/smtt/utils/b;->d(Landroid/content/Context;)I

    move-result p1

    sget v0, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    sget-object v2, Lcom/tencent/smtt/sdk/TbsShareManager;->d:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, v1, v2, p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->writeProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1a5
    sput v7, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    sput-object v9, Lcom/tencent/smtt/sdk/TbsShareManager;->d:Ljava/lang/String;

    sput-object v9, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    :cond_1ab
    :goto_1ab
    add-int/lit8 v8, v8, 0x1

    goto :goto_13f

    :cond_1ae
    sget-object v0, Lcom/tencent/smtt/sdk/TbsShareManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsPVConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsPVConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsPVConfig;->isDisableHostBackupCore()Z

    move-result v0

    if-nez v0, :cond_243

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_23e

    array-length v0, v5

    :goto_1c9
    if-ge v7, v0, :cond_243

    aget-object v1, v5, v7

    invoke-static {p0, v1}, Lcom/tencent/smtt/sdk/TbsShareManager;->getBackupCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2
    :try_end_1d1
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_1d1} :catch_243

    const-string v6, " packageName is "

    if-lt v2, p1, :cond_205

    if-ge v2, v4, :cond_1d8

    goto :goto_205

    :cond_1d8
    if-lez v2, :cond_205

    :try_start_1da
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "find host backup core to unzip forceload coreVersion is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/tencent/smtt/sdk/TbsShareManager;->getBackupCoreFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    invoke-virtual {v0, p0, p1, v2}, Lcom/tencent/smtt/sdk/o;->a(Landroid/content/Context;Ljava/io/File;I)V

    const-string p0, "find host backup core to unzip forceload after unzip "

    invoke-static {v3, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_205
    :goto_205
    invoke-static {p0, v1}, Lcom/tencent/smtt/sdk/TbsShareManager;->getBackupDecoupleCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-lt v2, p1, :cond_23b

    if-ge v2, v4, :cond_20e

    goto :goto_23b

    :cond_20e
    if-lez v2, :cond_23b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "find host backup core to unzip forceload decouple coreVersion is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/tencent/smtt/sdk/TbsShareManager;->getBackupCoreFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    invoke-virtual {v0, p0, p1, v2}, Lcom/tencent/smtt/sdk/o;->a(Landroid/content/Context;Ljava/io/File;I)V

    const-string p0, "find host backup decouple core to unzip forceload after unzip "

    invoke-static {v3, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_23b
    :goto_23b
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c9

    :cond_23e
    const-string p0, "in mainthread so do not find host backup core to install "

    invoke-static {v3, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_243
    .catch Ljava/lang/Exception; {:try_start_1da .. :try_end_243} :catch_243

    :catch_243
    :cond_243
    return-void
.end method

.method static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->n(Landroid/content/Context;)V

    sget-object p0, Lcom/tencent/smtt/sdk/TbsShareManager;->d:Ljava/lang/String;

    if-eqz p0, :cond_25

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_25

    :cond_f
    new-instance p0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tencent/smtt/sdk/TbsShareManager;->d:Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "res.apk"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_26

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_25
    :goto_25
    return-object v0

    :catchall_26
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTbsResourcesPath exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getBackupCoreFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1, v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/tencent/smtt/utils/FileUtil;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->getBackupFileName(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1f

    if-eqz p1, :cond_1f

    return-object p0

    :catchall_1f
    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBackupCoreVersion(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1, v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/tencent/smtt/utils/FileUtil;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->getBackupFileName(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-static {p0}, Lcom/tencent/smtt/utils/a;->b(Ljava/io/File;)I

    move-result p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_23

    return p0

    :catchall_23
    :cond_23
    return v0
.end method

.method public static getBackupDecoupleCoreFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0, p1, v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/tencent/smtt/utils/FileUtil;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->getBackupFileName(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1f

    if-eqz p1, :cond_1f

    return-object p0

    :catchall_1f
    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBackupDecoupleCoreVersion(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1, v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/tencent/smtt/utils/FileUtil;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsDownloader;->getBackupFileName(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_24

    invoke-static {p0}, Lcom/tencent/smtt/utils/a;->b(Ljava/io/File;)I

    move-result p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_24

    return p0

    :catchall_24
    :cond_24
    return v0
.end method

.method public static getCoreDisabled()Z
    .registers 1

    sget-boolean v0, Lcom/tencent/smtt/sdk/TbsShareManager;->g:Z

    return v0
.end method

.method public static getCoreFormOwn()Z
    .registers 1

    sget-boolean v0, Lcom/tencent/smtt/sdk/TbsShareManager;->k:Z

    return v0
.end method

.method public static getCoreProviderAppList()[Ljava/lang/String;
    .registers 5

    const-string v0, "com.tencent.tbs"

    const-string v1, "com.tencent.mm"

    const-string v2, "com.tencent.mobileqq"

    const-string v3, "com.qzone"

    const-string v4, "com.tencent.qqlite"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCoreShareDecoupleCoreVersion(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/tencent/smtt/sdk/o;->h(Landroid/content/Context;)I

    move-result p0

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static getHostCorePathAppDefined()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/tencent/smtt/sdk/TbsShareManager;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static getHostCoreVersions(Landroid/content/Context;)J
    .registers 10

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getCoreProviderAppList()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v1, :cond_44

    aget-object v5, v0, v4

    const-string v6, "com.tencent.mm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_22

    invoke-static {p0, v5}, Lcom/tencent/smtt/sdk/TbsShareManager;->getSharedTbsCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    const-wide v7, 0x2540be400L

    :goto_1e
    mul-long v5, v5, v7

    :goto_20
    add-long/2addr v2, v5

    goto :goto_41

    :cond_22
    const-string v6, "com.tencent.mobileqq"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_33

    invoke-static {p0, v5}, Lcom/tencent/smtt/sdk/TbsShareManager;->getSharedTbsCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    const-wide/32 v7, 0x186a0

    goto :goto_1e

    :cond_33
    const-string v6, "com.qzone"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_41

    invoke-static {p0, v5}, Lcom/tencent/smtt/sdk/TbsShareManager;->getSharedTbsCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    goto :goto_20

    :cond_41
    :goto_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_44
    return-wide v2
.end method

.method public static getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;
    .registers 5

    const/4 v0, 0x0

    if-eqz p2, :cond_25

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_25

    const-string p2, "TbsShareManager"

    const-string v1, "gray no core app,skip get context"

    invoke-static {p2, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsPVConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsPVConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/smtt/sdk/TbsPVConfig;->isEnableNoCoreGray()Z

    move-result p2

    if-nez p2, :cond_24

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt p2, v1, :cond_25

    :cond_24
    return-object v0

    :cond_25
    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_2a} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2a} :catch_2b

    return-object p0

    :catch_2b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :catch_2f
    return-object v0
.end method

.method public static getSharedTbsCoreVersion(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/tencent/smtt/sdk/o;->i(Landroid/content/Context;)I

    move-result p0

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static getTbsShareFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/o;->r(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_c

    return-object v0

    :cond_c
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_18

    return-object v1

    :cond_18
    :try_start_18
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_1c

    return-object v1

    :catch_1c
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v0
.end method

.method static declared-synchronized h(Landroid/content/Context;)I
    .registers 7

    const-class v0, Lcom/tencent/smtt/sdk/TbsShareManager;

    monitor-enter v0

    :try_start_3
    const-string v1, "TbsShareManager"

    const-string v2, "readCoreVersionFromConfig #1"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_92

    const/4 v1, 0x0

    :try_start_b
    const-string v2, "core_info"

    invoke-static {p0, v2}, Lcom/tencent/smtt/sdk/TbsShareManager;->getTbsShareFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v2, 0x0

    if-nez p0, :cond_1d

    const-string p0, "TbsShareManager"

    const-string v3, "readCoreVersionFromConfig #2"

    invoke-static {p0, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_6e

    monitor-exit v0

    return v2

    :cond_1d
    :try_start_1d
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance p0, Ljava/io/BufferedInputStream;

    invoke-direct {p0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_6e

    :try_start_27
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v1, p0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v3, "core_version"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58

    const-string v3, "TbsShareManager"

    const-string v4, "readCoreVersionFromConfig #3"

    invoke-static {v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1
    :try_end_4e
    .catchall {:try_start_27 .. :try_end_4e} :catchall_69

    :try_start_4e
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_52
    .catchall {:try_start_4e .. :try_end_51} :catchall_92

    goto :goto_56

    :catch_52
    move-exception p0

    :try_start_53
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_92

    :goto_56
    monitor-exit v0

    return v1

    :cond_58
    :try_start_58
    const-string v1, "TbsShareManager"

    const-string v3, "readCoreVersionFromConfig #4"

    invoke-static {v1, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_58 .. :try_end_5f} :catchall_69

    :try_start_5f
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_62} :catch_63
    .catchall {:try_start_5f .. :try_end_62} :catchall_92

    goto :goto_67

    :catch_63
    move-exception p0

    :try_start_64
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_92

    :goto_67
    monitor-exit v0

    return v2

    :catchall_69
    move-exception v1

    move-object v5, v1

    move-object v1, p0

    move-object p0, v5

    goto :goto_6f

    :catchall_6e
    move-exception p0

    :goto_6f
    :try_start_6f
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_86

    if-eqz v1, :cond_7c

    :try_start_74
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_78
    .catchall {:try_start_74 .. :try_end_77} :catchall_92

    goto :goto_7c

    :catch_78
    move-exception p0

    :try_start_79
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7c
    :goto_7c
    const-string p0, "TbsShareManager"

    const-string v1, "readCoreVersionFromConfig #5"

    invoke-static {p0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_83
    .catchall {:try_start_79 .. :try_end_83} :catchall_92

    const/4 p0, -0x2

    monitor-exit v0

    return p0

    :catchall_86
    move-exception p0

    if-eqz v1, :cond_91

    :try_start_89
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8c} :catch_8d
    .catchall {:try_start_89 .. :try_end_8c} :catchall_92

    goto :goto_91

    :catch_8d
    move-exception v1

    :try_start_8e
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_91
    :goto_91
    throw p0
    :try_end_92
    .catchall {:try_start_8e .. :try_end_92} :catchall_92

    :catchall_92
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static i(Landroid/content/Context;)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    sget v2, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    if-nez v2, :cond_9

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->findCoreForThirdPartyApp(Landroid/content/Context;)I

    :cond_9
    sget v2, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    if-nez v2, :cond_15

    const/16 p0, 0x3e2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->addLog(ILjava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_15
    sget-object v3, Lcom/tencent/smtt/sdk/TbsShareManager;->c:Ljava/lang/String;

    const/4 v4, 0x1

    if-nez v3, :cond_27

    if-eqz v2, :cond_38

    sget-object v2, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/tencent/smtt/sdk/TbsShareManager;->getSharedTbsCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    sget v3, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    if-ne v2, v3, :cond_38

    return v4

    :cond_27
    if-eqz v2, :cond_38

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v2

    sget-object v3, Lcom/tencent/smtt/sdk/TbsShareManager;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/o;->a(Ljava/lang/String;)I

    move-result v2

    sget v3, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    if-ne v2, v3, :cond_38

    return v4

    :cond_38
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->l(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3f

    return v4

    :cond_3f
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v2

    const/16 v3, 0x1a2

    new-instance v4, Ljava/lang/Throwable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAvailableCoreVersion="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; mSrcPackageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; getSharedTbsCoreVersion(ctx, mSrcPackageName) is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/tencent/smtt/sdk/TbsShareManager;->getSharedTbsCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; getHostCoreVersions is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->getHostCoreVersions(Landroid/content/Context;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, v3, v4}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    sput-object v0, Lcom/tencent/smtt/sdk/TbsShareManager;->d:Ljava/lang/String;

    sput v1, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    const/16 v2, 0x3e1

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/tencent/smtt/utils/TbsLog;->addLog(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "TbsShareManager::isShareTbsCoreAvailableInner forceSysWebViewInner!"

    invoke-static {p0, v2}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_94
    .catchall {:try_start_2 .. :try_end_94} :catchall_95

    return v1

    :catchall_95
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 p0, 0x3e0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->addLog(ILjava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public static isThirdPartyApp(Landroid/content/Context;)Z
    .registers 6

    :try_start_0
    sget-object v0, Lcom/tencent/smtt/sdk/TbsShareManager;->a:Landroid/content/Context;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-boolean p0, Lcom/tencent/smtt/sdk/TbsShareManager;->b:Z

    return p0

    :cond_11
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/tencent/smtt/sdk/TbsShareManager;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getCoreProviderAppList()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_22
    if-ge v3, v1, :cond_36

    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    sput-boolean v2, Lcom/tencent/smtt/sdk/TbsShareManager;->b:Z
    :try_end_2e
    .catchall {:try_start_0 .. :try_end_2e} :catchall_32

    return v2

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :catchall_32
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_36
    const/4 p0, 0x1

    sput-boolean p0, Lcom/tencent/smtt/sdk/TbsShareManager;->b:Z

    return p0
.end method

.method static j(Landroid/content/Context;)Z
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->b(Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method private static k(Landroid/content/Context;)Z
    .registers 5

    sget-object v0, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    sget v2, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->getSharedTbsCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x1

    if-ne v2, v0, :cond_10

    return v3

    :cond_10
    sget v0, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    sget-object v2, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/tencent/smtt/sdk/TbsShareManager;->getCoreShareDecoupleCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-ne v0, p0, :cond_1b

    return v3

    :cond_1b
    return v1
.end method

.method private static l(Landroid/content/Context;)Z
    .registers 9

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getOnlyDownload()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getCoreProviderAppList()[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_e
    const/4 v4, 0x1

    if-ge v3, v2, :cond_3f

    aget-object v5, v0, v3

    sget v6, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    if-lez v6, :cond_3c

    invoke-static {p0, v5}, Lcom/tencent/smtt/sdk/TbsShareManager;->getSharedTbsCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-ne v6, v7, :cond_3c

    invoke-static {p0, v5, v4}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v6

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/tencent/smtt/sdk/o;->f(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3c

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    invoke-virtual {v0, p0, v6}, Lcom/tencent/smtt/sdk/o;->b(Landroid/content/Context;Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    :goto_33
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tencent/smtt/sdk/TbsShareManager;->d:Ljava/lang/String;

    sput-object v5, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    return v4

    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_3f
    array-length v2, v0

    const/4 v3, 0x0

    :goto_41
    if-ge v3, v2, :cond_69

    aget-object v5, v0, v3

    sget v6, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    if-lez v6, :cond_66

    invoke-static {p0, v5}, Lcom/tencent/smtt/sdk/TbsShareManager;->getCoreShareDecoupleCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-ne v6, v7, :cond_66

    invoke-static {p0, v5, v4}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v6

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/tencent/smtt/sdk/o;->f(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_66

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    invoke-virtual {v0, p0, v6}, Lcom/tencent/smtt/sdk/o;->c(Landroid/content/Context;Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    goto :goto_33

    :cond_66
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    :cond_69
    return v1
.end method

.method private static m(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {p0, v1, v2, v2, v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->writeProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static n(Landroid/content/Context;)V
    .registers 9

    sget-boolean v0, Lcom/tencent/smtt/sdk/TbsShareManager;->l:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const-class v0, Lcom/tencent/smtt/sdk/TbsShareManager;

    monitor-enter v0

    :try_start_8
    sget-boolean v1, Lcom/tencent/smtt/sdk/TbsShareManager;->l:Z

    if-eqz v1, :cond_e

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_f7

    return-void

    :cond_e
    const/4 v1, 0x0

    :try_start_f
    const-string v2, "core_info"

    invoke-static {p0, v2}, Lcom/tencent/smtt/sdk/TbsShareManager;->getTbsShareFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_da

    if-nez p0, :cond_19

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_f7

    return-void

    :cond_19
    :try_start_19
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance p0, Ljava/io/BufferedInputStream;

    invoke-direct {p0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_da

    :try_start_23
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v1, p0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v2, "core_version"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_71

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    sput v2, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    const-string v2, "TbsShareManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadProperties -- mAvailableCoreVersion: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "#"

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_71
    const-string v2, "core_packagename"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_83

    sput-object v2, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    :cond_83
    sget-object v2, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz v2, :cond_9b

    sget-object v5, Lcom/tencent/smtt/sdk/TbsShareManager;->a:Landroid/content/Context;

    if-eqz v5, :cond_9b

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_99

    sput-boolean v3, Lcom/tencent/smtt/sdk/TbsShareManager;->k:Z

    goto :goto_9b

    :cond_99
    sput-boolean v4, Lcom/tencent/smtt/sdk/TbsShareManager;->k:Z

    :cond_9b
    :goto_9b
    const-string v2, "core_path"

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ad

    sput-object v2, Lcom/tencent/smtt/sdk/TbsShareManager;->d:Ljava/lang/String;

    :cond_ad
    const-string v2, "app_version"

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_bf

    sput-object v2, Lcom/tencent/smtt/sdk/TbsShareManager;->j:Ljava/lang/String;

    :cond_bf
    const-string v2, "core_disabled"

    const-string v4, "false"

    invoke-virtual {v1, v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/tencent/smtt/sdk/TbsShareManager;->g:Z

    sput-boolean v3, Lcom/tencent/smtt/sdk/TbsShareManager;->l:Z
    :try_end_cf
    .catchall {:try_start_23 .. :try_end_cf} :catchall_d8

    :try_start_cf
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_d2} :catch_d3
    .catchall {:try_start_cf .. :try_end_d2} :catchall_f7

    goto :goto_e9

    :catch_d3
    move-exception p0

    :goto_d4
    :try_start_d4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d7
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_f7

    goto :goto_e9

    :catchall_d8
    move-exception v1

    goto :goto_de

    :catchall_da
    move-exception p0

    move-object v7, v1

    move-object v1, p0

    move-object p0, v7

    :goto_de
    :try_start_de
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_e1
    .catchall {:try_start_de .. :try_end_e1} :catchall_eb

    if-eqz p0, :cond_e9

    :try_start_e3
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_e6} :catch_e7
    .catchall {:try_start_e3 .. :try_end_e6} :catchall_f7

    goto :goto_e9

    :catch_e7
    move-exception p0

    goto :goto_d4

    :cond_e9
    :goto_e9
    :try_start_e9
    monitor-exit v0
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_f7

    return-void

    :catchall_eb
    move-exception v1

    if-eqz p0, :cond_f6

    :try_start_ee
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_f1} :catch_f2
    .catchall {:try_start_ee .. :try_end_f1} :catchall_f7

    goto :goto_f6

    :catch_f2
    move-exception p0

    :try_start_f3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f6
    :goto_f6
    throw v1

    :catchall_f7
    move-exception p0

    monitor-exit v0
    :try_end_f9
    .catchall {:try_start_f3 .. :try_end_f9} :catchall_f7

    throw p0
.end method

.method public static setHostCorePathAppDefined(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/tencent/smtt/sdk/TbsShareManager;->c:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized writeCoreInfoForThirdPartyApp(Landroid/content/Context;IZ)V
    .registers 15

    const-class v0, Lcom/tencent/smtt/sdk/TbsShareManager;

    monitor-enter v0

    :try_start_3
    const-string v1, "TbsShareManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeCoreInfoForThirdPartyApp coreVersion is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2b

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->m(Landroid/content/Context;)Z

    sget-object p0, Lcom/tencent/smtt/sdk/TbsShareManager;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object p0

    const/16 p1, -0x191

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2f1

    monitor-exit v0

    return-void

    :cond_2b
    :try_start_2b
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->h(Landroid/content/Context;)I

    move-result v1

    const-string v2, "TbsShareManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeCoreInfoForThirdPartyApp coreVersionFromConfig is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-gez v1, :cond_54

    sget-object p0, Lcom/tencent/smtt/sdk/TbsShareManager;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object p0

    const/16 p1, -0x192

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_52
    .catchall {:try_start_2b .. :try_end_52} :catchall_2f1

    monitor-exit v0

    return-void

    :cond_54
    if-ne p1, v1, :cond_71

    :try_start_56
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->d(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_61

    if-nez p2, :cond_61

    invoke-static {p0, p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->a(Landroid/content/Context;I)V

    :cond_61
    invoke-static {p0, p2}, Lcom/tencent/smtt/sdk/TbsShareManager;->c(Landroid/content/Context;Z)V

    sget-object p0, Lcom/tencent/smtt/sdk/TbsShareManager;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object p0

    const/16 p1, -0x193

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_6f
    .catchall {:try_start_56 .. :try_end_6f} :catchall_2f1

    monitor-exit v0

    return-void

    :cond_71
    const/16 v2, -0x194

    if-ge p1, v1, :cond_83

    :try_start_75
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->m(Landroid/content/Context;)Z

    sget-object p0, Lcom/tencent/smtt/sdk/TbsShareManager;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_81
    .catchall {:try_start_75 .. :try_end_81} :catchall_2f1

    monitor-exit v0

    return-void

    :cond_83
    :try_start_83
    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tencent/smtt/sdk/o;->i(Landroid/content/Context;)I

    move-result v1

    const-string v3, "TbsShareManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeCoreInfoForThirdPartyApp coreVersionFromCoreShare is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ge p1, v1, :cond_b1

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->m(Landroid/content/Context;)Z

    sget-object p0, Lcom/tencent/smtt/sdk/TbsShareManager;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_af
    .catchall {:try_start_83 .. :try_end_af} :catchall_2f1

    monitor-exit v0

    return-void

    :cond_b1
    :try_start_b1
    invoke-static {p0, p2}, Lcom/tencent/smtt/sdk/TbsShareManager;->d(Landroid/content/Context;Z)[Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tencent/smtt/sdk/TbsShareManager;->c:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_19f

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v2

    sget-object v5, Lcom/tencent/smtt/sdk/TbsShareManager;->c:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/tencent/smtt/sdk/o;->a(Ljava/lang/String;)I

    move-result v2

    if-ne p1, v2, :cond_10c

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppDefined"

    sget-object v1, Lcom/tencent/smtt/sdk/TbsShareManager;->c:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, p2, v1, v2}, Lcom/tencent/smtt/sdk/TbsShareManager;->writeProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d6
    .catchall {:try_start_b1 .. :try_end_d6} :catchall_2f1

    :try_start_d6
    const-string p1, "core_info"

    invoke-static {p0, p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->getTbsShareFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    sget-boolean p2, Lcom/tencent/smtt/sdk/TbsShareManager;->i:Z

    if-nez p2, :cond_10a

    if-eqz p1, :cond_10a

    new-instance p2, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;

    sget-object v1, Lcom/tencent/smtt/sdk/TbsShareManager;->a:Landroid/content/Context;

    invoke-direct {p2, v1}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "644"

    invoke-virtual {p2, p1, v1}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/tencent/smtt/sdk/o;->r(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string p1, "755"

    invoke-virtual {p2, p0, p1}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->a(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v4, Lcom/tencent/smtt/sdk/TbsShareManager;->i:Z
    :try_end_105
    .catchall {:try_start_d6 .. :try_end_105} :catchall_106

    goto :goto_10a

    :catchall_106
    move-exception p0

    :try_start_107
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_10a
    .catchall {:try_start_107 .. :try_end_10a} :catchall_2f1

    :cond_10a
    :goto_10a
    monitor-exit v0

    return-void

    :cond_10c
    :try_start_10c
    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v2

    sget-object v5, Lcom/tencent/smtt/sdk/TbsShareManager;->c:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/tencent/smtt/sdk/o;->a(Ljava/lang/String;)I

    move-result v2

    if-le p1, v2, :cond_19f

    array-length v2, v1

    const/4 v5, 0x0

    :goto_11a
    if-ge v5, v2, :cond_19f

    aget-object v6, v1, v5

    invoke-static {p0, v6}, Lcom/tencent/smtt/sdk/TbsShareManager;->getSharedTbsCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-ne p1, v7, :cond_19b

    invoke-static {p0, v6, v4}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v6

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/tencent/smtt/sdk/o;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0}, Lcom/tencent/smtt/utils/b;->d(Landroid/content/Context;)I

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/tencent/smtt/sdk/o;->f(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_142

    goto :goto_19b

    :cond_142
    new-instance p2, Ljava/io/File;

    sget-object v1, Lcom/tencent/smtt/sdk/TbsShareManager;->c:Ljava/lang/String;

    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/tencent/smtt/sdk/TbsShareManager$1;

    invoke-direct {v2}, Lcom/tencent/smtt/sdk/TbsShareManager$1;-><init>()V
    :try_end_153
    .catchall {:try_start_10c .. :try_end_153} :catchall_2f1

    :try_start_153
    invoke-static {v1, p2, v2}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;)Z

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppDefined"

    sget-object v1, Lcom/tencent/smtt/sdk/TbsShareManager;->c:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, p2, v1, v2}, Lcom/tencent/smtt/sdk/TbsShareManager;->writeProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "core_info"

    invoke-static {p0, p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->getTbsShareFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    sget-boolean p2, Lcom/tencent/smtt/sdk/TbsShareManager;->i:Z

    if-nez p2, :cond_199

    if-eqz p1, :cond_199

    new-instance p2, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;

    sget-object v1, Lcom/tencent/smtt/sdk/TbsShareManager;->a:Landroid/content/Context;

    invoke-direct {p2, v1}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "644"

    invoke-virtual {p2, p1, v1}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/tencent/smtt/sdk/o;->r(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string p1, "755"

    invoke-virtual {p2, p0, p1}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->a(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v4, Lcom/tencent/smtt/sdk/TbsShareManager;->i:Z
    :try_end_194
    .catchall {:try_start_153 .. :try_end_194} :catchall_195

    goto :goto_199

    :catchall_195
    move-exception p0

    :try_start_196
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_199
    .catchall {:try_start_196 .. :try_end_199} :catchall_2f1

    :cond_199
    :goto_199
    monitor-exit v0

    return-void

    :cond_19b
    :goto_19b
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_11a

    :cond_19f
    :try_start_19f
    array-length v2, v1

    const/4 v5, 0x0

    :goto_1a1
    if-ge v5, v2, :cond_2e8

    aget-object v6, v1, v5
    :try_end_1a5
    .catchall {:try_start_19f .. :try_end_1a5} :catchall_2f1

    :try_start_1a5
    invoke-static {p0, v6}, Lcom/tencent/smtt/sdk/TbsShareManager;->getSharedTbsCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-ne p1, v7, :cond_240

    invoke-static {p0, v6, v4}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v7

    if-nez v7, :cond_1b3

    goto/16 :goto_2e4

    :cond_1b3
    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/tencent/smtt/sdk/o;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0}, Lcom/tencent/smtt/utils/b;->d(Landroid/content/Context;)I

    move-result v9

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/tencent/smtt/sdk/o;->f(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1cf

    goto/16 :goto_2e4

    :cond_1cf
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1fe

    const-string v7, "TbsShareManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "thirdAPP pre--> delete old core_share Directory:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/tencent/smtt/sdk/TbsShareManager;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/m;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;

    move-result-object v7

    const-string v10, "remove_old_core"

    invoke-virtual {v7, v10, v4}, Lcom/tencent/smtt/sdk/m;->a(Ljava/lang/String;I)V

    :cond_1fe
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v7, v6, v8, v9}, Lcom/tencent/smtt/sdk/TbsShareManager;->writeProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_209
    .catch Ljava/lang/Exception; {:try_start_1a5 .. :try_end_209} :catch_2e0
    .catchall {:try_start_1a5 .. :try_end_209} :catchall_2f1

    :try_start_209
    const-string v6, "core_info"

    invoke-static {p0, v6}, Lcom/tencent/smtt/sdk/TbsShareManager;->getTbsShareFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    sget-boolean v7, Lcom/tencent/smtt/sdk/TbsShareManager;->i:Z

    if-nez v7, :cond_23d

    if-eqz v6, :cond_23d

    new-instance v7, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;

    sget-object v8, Lcom/tencent/smtt/sdk/TbsShareManager;->a:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v8, "644"

    invoke-virtual {v7, v6, v8}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/tencent/smtt/sdk/o;->r(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v8, "755"

    invoke-virtual {v7, v6, v8}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->a(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v4, Lcom/tencent/smtt/sdk/TbsShareManager;->i:Z
    :try_end_238
    .catchall {:try_start_209 .. :try_end_238} :catchall_239

    goto :goto_23d

    :catchall_239
    move-exception v6

    :goto_23a
    :try_start_23a
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_23d
    :goto_23d
    const/4 v3, 0x1

    goto/16 :goto_2e8

    :cond_240
    invoke-static {p0, v6}, Lcom/tencent/smtt/sdk/TbsShareManager;->getCoreShareDecoupleCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-ne p1, v7, :cond_2e4

    invoke-static {p0, v6, v4}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v7

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/tencent/smtt/sdk/o;->p(Landroid/content/Context;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0}, Lcom/tencent/smtt/utils/b;->d(Landroid/content/Context;)I

    move-result v9

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/tencent/smtt/sdk/o;->f(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_266

    goto/16 :goto_2e4

    :cond_266
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2a1

    const-string v7, "TbsShareManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "thirdAPP pre--> delete old core_share Directory:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/tencent/smtt/sdk/o;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7
    :try_end_292
    .catch Ljava/lang/Exception; {:try_start_23a .. :try_end_292} :catch_2e0
    .catchall {:try_start_23a .. :try_end_292} :catchall_2f1

    :try_start_292
    invoke-static {v7}, Lcom/tencent/smtt/utils/FileUtil;->b(Ljava/io/File;)V

    const-string v7, "TbsShareManager"

    const-string v10, "thirdAPP success--> delete old core_share Directory"

    invoke-static {v7, v10}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29c
    .catchall {:try_start_292 .. :try_end_29c} :catchall_29d

    goto :goto_2a1

    :catchall_29d
    move-exception v7

    :try_start_29e
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2a1
    :goto_2a1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v7, v6, v8, v9}, Lcom/tencent/smtt/sdk/TbsShareManager;->writeProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2ac
    .catch Ljava/lang/Exception; {:try_start_29e .. :try_end_2ac} :catch_2e0
    .catchall {:try_start_29e .. :try_end_2ac} :catchall_2f1

    :try_start_2ac
    const-string v6, "core_info"

    invoke-static {p0, v6}, Lcom/tencent/smtt/sdk/TbsShareManager;->getTbsShareFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    sget-boolean v7, Lcom/tencent/smtt/sdk/TbsShareManager;->i:Z

    if-nez v7, :cond_23d

    if-eqz v6, :cond_23d

    new-instance v7, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;

    sget-object v8, Lcom/tencent/smtt/sdk/TbsShareManager;->a:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v8, "644"

    invoke-virtual {v7, v6, v8}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/tencent/smtt/sdk/o;->r(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v8, "755"

    invoke-virtual {v7, v6, v8}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->a(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v4, Lcom/tencent/smtt/sdk/TbsShareManager;->i:Z
    :try_end_2db
    .catchall {:try_start_2ac .. :try_end_2db} :catchall_2dd

    goto/16 :goto_23d

    :catchall_2dd
    move-exception v6

    goto/16 :goto_23a

    :catch_2e0
    move-exception v6

    :try_start_2e1
    invoke-static {v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/Throwable;)V

    :cond_2e4
    :goto_2e4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1a1

    :cond_2e8
    :goto_2e8
    if-nez v3, :cond_2ef

    if-nez p2, :cond_2ef

    invoke-static {p0, p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->a(Landroid/content/Context;I)V
    :try_end_2ef
    .catchall {:try_start_2e1 .. :try_end_2ef} :catchall_2f1

    :cond_2ef
    monitor-exit v0

    return-void

    :catchall_2f1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static writeProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writeProperties coreVersion is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " corePackageName is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " corePath is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TbsShareManager"

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeProperties -- stack: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "#"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_46
    const-string v1, "core_info"

    invoke-static {p0, v1}, Lcom/tencent/smtt/sdk/TbsShareManager;->getTbsShareFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_5a

    sget-object p0, Lcom/tencent/smtt/sdk/TbsShareManager;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object p0

    const/16 p1, -0x195

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    return-void

    :cond_5a
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_64
    .catchall {:try_start_46 .. :try_end_64} :catchall_cb

    :try_start_64
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_6c
    .catchall {:try_start_64 .. :try_end_6c} :catchall_c7

    const/4 v3, 0x0

    :try_start_6d
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_71} :catch_72
    .catchall {:try_start_6d .. :try_end_71} :catchall_c7

    goto :goto_73

    :catch_72
    const/4 v4, 0x0

    :goto_73
    const-string v5, "core_disabled"

    if-eqz v4, :cond_93

    :try_start_77
    const-string v4, "core_version"

    invoke-virtual {v1, v4, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v5, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "core_packagename"

    invoke-virtual {v1, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "core_path"

    invoke-virtual {v1, p1, p3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "app_version"

    invoke-virtual {v1, p1, p4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_9b

    :cond_93
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v5, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :goto_9b
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance p0, Ljava/io/BufferedOutputStream;

    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a5
    .catchall {:try_start_77 .. :try_end_a5} :catchall_c7

    :try_start_a5
    invoke-virtual {v1, p0, v0}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    sput-boolean v3, Lcom/tencent/smtt/sdk/TbsShareManager;->l:Z

    sget-object p1, Lcom/tencent/smtt/sdk/TbsShareManager;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object p1

    const/16 p2, -0x196

    invoke-virtual {p1, p2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_b5
    .catchall {:try_start_a5 .. :try_end_b5} :catchall_c1

    :try_start_b5
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_b8} :catch_b9

    goto :goto_bd

    :catch_b9
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_bd
    :try_start_bd
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_c0} :catch_e0

    goto :goto_e4

    :catchall_c1
    move-exception p1

    move-object v0, v2

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    goto :goto_cd

    :catchall_c7
    move-exception p0

    move-object p1, v0

    move-object v0, v2

    goto :goto_cd

    :catchall_cb
    move-exception p0

    move-object p1, v0

    :goto_cd
    :try_start_cd
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_d0
    .catchall {:try_start_cd .. :try_end_d0} :catchall_e5

    if-eqz v0, :cond_da

    :try_start_d2
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_d5} :catch_d6

    goto :goto_da

    :catch_d6
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_da
    :goto_da
    if-eqz p1, :cond_e4

    :try_start_dc
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_df} :catch_e0

    goto :goto_e4

    :catch_e0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e4
    :goto_e4
    return-void

    :catchall_e5
    move-exception p0

    if-eqz v0, :cond_f0

    :try_start_e8
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_eb} :catch_ec

    goto :goto_f0

    :catch_ec
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f0
    :goto_f0
    if-eqz p1, :cond_fa

    :try_start_f2
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_f5} :catch_f6

    goto :goto_fa

    :catch_f6
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_fa
    :goto_fa
    throw p0
.end method
