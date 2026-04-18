.class public Lcom/tencent/smtt/utils/p;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static a()J
    .registers 4

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long v2, v2, v0

    return-wide v2
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    sget-object v1, Lcom/tencent/smtt/utils/p;->a:Ljava/io/File;

    const/4 v2, 0x1

    if-nez v1, :cond_45

    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v3, "com.tencent.mm"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    return v0

    :cond_18
    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->getTbsFolderDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3f

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_3f

    :cond_25
    new-instance v1, Ljava/io/File;

    const-string v3, "share"

    invoke-direct {v1, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_39

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result p0

    if-nez p0, :cond_39

    return v0

    :cond_39
    sput-object v1, Lcom/tencent/smtt/utils/p;->a:Ljava/io/File;

    invoke-virtual {v1, v2, v0}, Ljava/io/File;->setExecutable(ZZ)Z
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3e} :catch_40

    return v2

    :cond_3f
    :goto_3f
    return v0

    :catch_40
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :cond_45
    return v2
.end method
