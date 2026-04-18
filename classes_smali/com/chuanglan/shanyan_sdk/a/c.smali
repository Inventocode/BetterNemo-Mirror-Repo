.class Lcom/chuanglan/shanyan_sdk/a/c;
.super Ljava/lang/Object;


# static fields
.field private static final c:Ljava/lang/String;

.field private static d:Landroid/content/Context;

.field private static e:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sput-object v0, Lcom/chuanglan/shanyan_sdk/a/c;->c:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/chuanglan/shanyan_sdk/a/c;->e:Ljava/io/File;

    return-void
.end method

.method public static a()Ljava/io/File;
    .registers 3

    sget-object v0, Lcom/chuanglan/shanyan_sdk/a/c;->e:Ljava/io/File;

    if-nez v0, :cond_26

    sget-object v0, Lcom/chuanglan/shanyan_sdk/a/c;->d:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/a/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/chuanglan/shanyan_sdk/a/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "database"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chuanglan/shanyan_sdk/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/chuanglan/shanyan_sdk/a/c;->e:Ljava/io/File;

    :cond_26
    sget-object v0, Lcom/chuanglan/shanyan_sdk/a/c;->e:Ljava/io/File;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1f

    :cond_16
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_1f
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_28

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_28
    return-object v0
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_e

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_f

    :cond_e
    return-object v0

    :catch_f
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private static b()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/chuanglan/shanyan_sdk/a/c;->d:Landroid/content/Context;

    if-eqz v0, :cond_7

    const-string v0, "chuanglan"

    return-object v0

    :cond_7
    const-string v0, "chuanglan_shanyan"

    return-object v0
.end method
