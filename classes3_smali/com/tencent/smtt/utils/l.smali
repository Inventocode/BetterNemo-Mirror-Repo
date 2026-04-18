.class public Lcom/tencent/smtt/utils/l;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Z
    .registers 3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_f

    invoke-static {p0}, Lcom/tencent/smtt/utils/l;->b(Landroid/content/Context;)Z

    move-result p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method private static a(Ljava/io/File;)Z
    .registers 3

    :try_start_0
    invoke-static {p0}, Lcom/tencent/smtt/utils/e;->b(Ljava/io/File;)Z

    move-result p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_8

    if-nez p0, :cond_1f

    const/4 p0, 0x1

    return p0

    :catchall_8
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isOatFileBroken exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TbsCheckUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 9

    const-string v0, "TbsCheckUtils"

    const/4 v1, 0x1

    :try_start_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_6f

    const/16 v3, 0x19

    if-le v2, v3, :cond_e

    goto :goto_6f

    :cond_e
    invoke-static {p0}, Lcom/tencent/smtt/utils/l;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_15

    return v1

    :cond_15
    new-instance v2, Lcom/tencent/smtt/utils/l$1;

    invoke-direct {v2}, Lcom/tencent/smtt/utils/l$1;-><init>()V

    invoke-virtual {p0, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_21
    if-ge v4, v2, :cond_74

    aget-object v5, p0, v4

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_6c

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_32

    goto :goto_6c

    :cond_32
    invoke-static {v5}, Lcom/tencent/smtt/utils/l;->a(Ljava/io/File;)Z

    move-result v6
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_70

    const-string v7, ""

    if-eqz v6, :cond_55

    :try_start_3a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is invalid --> check failed!"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/smtt/utils/TbsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    return v3

    :cond_55
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " #4 check success!"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_3a .. :try_end_6c} :catchall_70

    :cond_6c
    :goto_6c
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_6f
    :goto_6f
    return v1

    :catchall_70
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_74
    const-string p0, "checkTbsValidity -->#5 check ok!"

    invoke-static {v0, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static c(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->getTbsFolderDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    const-string v1, "core_share"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_19

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_19

    :cond_18
    return-object v0

    :cond_19
    :goto_19
    const/4 p0, 0x0

    return-object p0
.end method
