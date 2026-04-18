.class Lcom/tencent/smtt/sdk/m;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tencent/smtt/sdk/m;

.field private static b:Landroid/content/Context;


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

.method static a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/m;
    .registers 3

    sget-object v0, Lcom/tencent/smtt/sdk/m;->a:Lcom/tencent/smtt/sdk/m;

    if-nez v0, :cond_17

    const-class v0, Lcom/tencent/smtt/sdk/m;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/tencent/smtt/sdk/m;->a:Lcom/tencent/smtt/sdk/m;

    if-nez v1, :cond_12

    new-instance v1, Lcom/tencent/smtt/sdk/m;

    invoke-direct {v1}, Lcom/tencent/smtt/sdk/m;-><init>()V

    sput-object v1, Lcom/tencent/smtt/sdk/m;->a:Lcom/tencent/smtt/sdk/m;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/tencent/smtt/sdk/m;->b:Landroid/content/Context;

    sget-object p0, Lcom/tencent/smtt/sdk/m;->a:Lcom/tencent/smtt/sdk/m;

    return-object p0
.end method

.method private e()Ljava/util/Properties;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/m;->a()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_32
    .catchall {:try_start_1 .. :try_end_a} :catchall_2d

    if-eqz v1, :cond_22

    :try_start_c
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_16} :catch_1d
    .catchall {:try_start_c .. :try_end_16} :catchall_2d

    :try_start_16
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_1b
    .catchall {:try_start_16 .. :try_end_19} :catchall_44

    move-object v0, v1

    goto :goto_22

    :catch_1b
    move-exception v0

    goto :goto_36

    :catch_1d
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_36

    :cond_22
    :goto_22
    if-eqz v0, :cond_2c

    :try_start_24
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_2c

    :catch_28
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2c
    :goto_2c
    return-object v2

    :catchall_2d
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_45

    :catch_32
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    :goto_36
    :try_start_36
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_44

    if-eqz v1, :cond_43

    :try_start_3b
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_43

    :catch_3f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_43
    :goto_43
    return-object v2

    :catchall_44
    move-exception v0

    :goto_45
    if-eqz v1, :cond_4f

    :try_start_47
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_4f

    :catch_4b
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4f
    :goto_4f
    throw v0
.end method


# virtual methods
.method a()Ljava/io/File;
    .registers 4

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    sget-object v0, Lcom/tencent/smtt/sdk/m;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/o;->s(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "tbscoreinstall.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_20

    :try_start_16
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_20

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    :cond_20
    :goto_20
    return-object v1
.end method

.method a(I)V
    .registers 3

    const-string v0, "dexopt_retry_num"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/smtt/sdk/m;->a(Ljava/lang/String;I)V

    return-void
.end method

.method a(II)V
    .registers 4

    const-string v0, "copy_core_ver"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/smtt/sdk/m;->a(Ljava/lang/String;I)V

    const-string p1, "copy_status"

    invoke-virtual {p0, p1, p2}, Lcom/tencent/smtt/sdk/m;->a(Ljava/lang/String;I)V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 3

    const-string v0, "install_apk_path"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/smtt/sdk/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;I)V
    .registers 3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/tencent/smtt/sdk/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/m;->e()Ljava/util/Properties;

    move-result-object v1

    if-eqz v1, :cond_36

    invoke-virtual {v1, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/m;->a()Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_36

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_43
    .catchall {:try_start_1 .. :try_end_15} :catchall_41

    :try_start_15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "update "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and status!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2e} :catch_33
    .catchall {:try_start_15 .. :try_end_2e} :catchall_30

    move-object v0, v2

    goto :goto_36

    :catchall_30
    move-exception p1

    move-object v0, v2

    goto :goto_4d

    :catch_33
    move-exception p1

    move-object v0, v2

    goto :goto_44

    :cond_36
    :goto_36
    if-eqz v0, :cond_4c

    :try_start_38
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_4c

    :catch_3c
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4c

    :catchall_41
    move-exception p1

    goto :goto_4d

    :catch_43
    move-exception p1

    :goto_44
    :try_start_44
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_41

    if-eqz v0, :cond_4c

    :try_start_49
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_3c

    :cond_4c
    :goto_4c
    return-void

    :goto_4d
    if-eqz v0, :cond_57

    :try_start_4f
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_57

    :catch_53
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_57
    :goto_57
    throw p1
.end method

.method b()I
    .registers 2

    const-string v0, "install_core_ver"

    invoke-virtual {p0, v0}, Lcom/tencent/smtt/sdk/m;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method b(Ljava/lang/String;)I
    .registers 4

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/m;->e()Ljava/util/Properties;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_15
    const/4 p1, -0x1

    return p1
.end method

.method b(I)V
    .registers 3

    const-string v0, "unzip_retry_num"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/smtt/sdk/m;->a(Ljava/lang/String;I)V

    return-void
.end method

.method b(II)V
    .registers 4

    const-string v0, "tpatch_ver"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/smtt/sdk/m;->a(Ljava/lang/String;I)V

    const-string p1, "tpatch_status"

    invoke-virtual {p0, p1, p2}, Lcom/tencent/smtt/sdk/m;->a(Ljava/lang/String;I)V

    return-void
.end method

.method c()I
    .registers 2

    const-string v0, "install_status"

    invoke-virtual {p0, v0}, Lcom/tencent/smtt/sdk/m;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method c(Ljava/lang/String;)I
    .registers 4

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/m;->e()Ljava/util/Properties;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method c(I)V
    .registers 3

    const-string v0, "incrupdate_status"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/smtt/sdk/m;->a(Ljava/lang/String;I)V

    return-void
.end method

.method c(II)V
    .registers 4

    const-string v0, "install_core_ver"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/smtt/sdk/m;->a(Ljava/lang/String;I)V

    const-string p1, "install_status"

    invoke-virtual {p0, p1, p2}, Lcom/tencent/smtt/sdk/m;->a(Ljava/lang/String;I)V

    return-void
.end method

.method d()I
    .registers 2

    const-string v0, "incrupdate_status"

    invoke-virtual {p0, v0}, Lcom/tencent/smtt/sdk/m;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method d(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/m;->e()Ljava/util/Properties;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method d(I)V
    .registers 3

    const-string v0, "unlzma_status"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/smtt/sdk/m;->a(Ljava/lang/String;I)V

    return-void
.end method
