.class public Lcom/tencent/smtt/utils/n;
.super Ljava/lang/Object;


# static fields
.field private static e:Lcom/tencent/smtt/utils/n;


# instance fields
.field public a:Z

.field private b:Landroid/content/Context;

.field private c:Ljava/io/File;

.field private d:Z

.field private f:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/utils/n;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/tencent/smtt/utils/n;->c:Ljava/io/File;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/smtt/utils/n;->a:Z

    iput-boolean v1, p0, Lcom/tencent/smtt/utils/n;->d:Z

    iput-object v0, p0, Lcom/tencent/smtt/utils/n;->f:Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/smtt/utils/n;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/n;->b()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/smtt/utils/n;
    .registers 2

    const-class v0, Lcom/tencent/smtt/utils/n;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/tencent/smtt/utils/n;->e:Lcom/tencent/smtt/utils/n;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/smtt/utils/n;
    .registers 3

    const-class v0, Lcom/tencent/smtt/utils/n;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/tencent/smtt/utils/n;->e:Lcom/tencent/smtt/utils/n;

    if-nez v1, :cond_e

    new-instance v1, Lcom/tencent/smtt/utils/n;

    invoke-direct {v1, p0}, Lcom/tencent/smtt/utils/n;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/smtt/utils/n;->e:Lcom/tencent/smtt/utils/n;

    :cond_e
    sget-object p0, Lcom/tencent/smtt/utils/n;->e:Lcom/tencent/smtt/utils/n;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private d()Ljava/io/File;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/tencent/smtt/utils/n;->c:Ljava/io/File;

    if-nez v1, :cond_1b

    iget-object v1, p0, Lcom/tencent/smtt/utils/n;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/QbSdk;->getTbsFolderDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "core_private"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/tencent/smtt/utils/n;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1b

    return-object v0

    :cond_1b
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/smtt/utils/n;->c:Ljava/io/File;

    const-string v3, "debug.conf"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    :cond_2d
    move-object v0, v1

    goto :goto_33

    :catchall_2f
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_33
    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/tencent/smtt/utils/n;->d:Z

    invoke-virtual {p0}, Lcom/tencent/smtt/utils/n;->c()V

    return-void
.end method

.method public declared-synchronized b()V
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/tencent/smtt/utils/n;->f:Ljava/io/File;

    if-nez v1, :cond_c

    invoke-direct {p0}, Lcom/tencent/smtt/utils/n;->d()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/smtt/utils/n;->f:Ljava/io/File;

    :cond_c
    iget-object v1, p0, Lcom/tencent/smtt/utils/n;->f:Ljava/io/File;
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_48

    if-nez v1, :cond_12

    monitor-exit p0

    return-void

    :cond_12
    :try_start_12
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/tencent/smtt/utils/n;->f:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_48

    :try_start_1e
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v1, "setting_forceUseSystemWebview"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/smtt/utils/n;->a:Z
    :try_end_3c
    .catchall {:try_start_1e .. :try_end_3c} :catchall_45

    :cond_3c
    :try_start_3c
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_40
    .catchall {:try_start_3c .. :try_end_3f} :catchall_52

    goto :goto_56

    :catch_40
    move-exception v0

    :goto_41
    :try_start_41
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_52

    goto :goto_56

    :catchall_45
    move-exception v1

    move-object v0, v2

    goto :goto_49

    :catchall_48
    move-exception v1

    :goto_49
    :try_start_49
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_58

    if-eqz v0, :cond_56

    :try_start_4e
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_54
    .catchall {:try_start_4e .. :try_end_51} :catchall_52

    goto :goto_56

    :catchall_52
    move-exception v0

    goto :goto_64

    :catch_54
    move-exception v0

    goto :goto_41

    :cond_56
    :goto_56
    monitor-exit p0

    return-void

    :catchall_58
    move-exception v1

    if-eqz v0, :cond_63

    :try_start_5b
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_5f
    .catchall {:try_start_5b .. :try_end_5e} :catchall_52

    goto :goto_63

    :catch_5f
    move-exception v0

    :try_start_60
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_63
    :goto_63
    throw v1
    :try_end_64
    .catchall {:try_start_60 .. :try_end_64} :catchall_52

    :goto_64
    monitor-exit p0

    throw v0
.end method

.method public c()V
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/tencent/smtt/utils/n;->d()Ljava/io/File;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_50

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_8
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_50

    :try_start_12
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v4, "setting_forceUseSystemWebview"

    iget-boolean v5, p0, Lcom/tencent/smtt/utils/n;->a:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v4, "result_systemWebviewForceUsed"

    iget-boolean v5, p0, Lcom/tencent/smtt/utils/n;->d:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3a
    .catchall {:try_start_12 .. :try_end_3a} :catchall_4b

    :try_start_3a
    invoke-virtual {v2, v1, v0}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_49

    :try_start_3d
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_45

    :catch_41
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_45
    :try_start_45
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_63

    goto :goto_67

    :catchall_49
    move-exception v0

    goto :goto_54

    :catchall_4b
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_54

    :catchall_50
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_54
    :try_start_54
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_68

    :try_start_57
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_5f

    :catch_5b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5f
    :try_start_5f
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_62} :catch_63

    goto :goto_67

    :catch_63
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_67
    return-void

    :catchall_68
    move-exception v0

    :try_start_69
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_71

    :catch_6d
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_71
    :try_start_71
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_74} :catch_75

    goto :goto_79

    :catch_75
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_79
    throw v0
.end method
