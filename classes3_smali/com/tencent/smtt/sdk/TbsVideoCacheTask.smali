.class public Lcom/tencent/smtt/sdk/TbsVideoCacheTask;
.super Ljava/lang/Object;


# static fields
.field public static final KEY_VIDEO_CACHE_PARAM_FILENAME:Ljava/lang/String; = "filename"

.field public static final KEY_VIDEO_CACHE_PARAM_FOLDERPATH:Ljava/lang/String; = "folderPath"

.field public static final KEY_VIDEO_CACHE_PARAM_HEADER:Ljava/lang/String; = "header"

.field public static final KEY_VIDEO_CACHE_PARAM_URL:Ljava/lang/String; = "url"


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/tencent/smtt/sdk/TbsVideoCacheListener;

.field private c:Z

.field private d:Lcom/tencent/smtt/sdk/q;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/tencent/smtt/sdk/TbsVideoCacheListener;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->b:Lcom/tencent/smtt/sdk/TbsVideoCacheListener;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->c:Z

    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->d:Lcom/tencent/smtt/sdk/q;

    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->g:Ljava/lang/Object;

    iput-object p1, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->b:Lcom/tencent/smtt/sdk/TbsVideoCacheListener;

    if-eqz p2, :cond_25

    const-string p1, "taskId"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->e:Ljava/lang/String;

    const-string p1, "url"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->f:Ljava/lang/String;

    :cond_25
    invoke-direct {p0, p2}, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .registers 8

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->d:Lcom/tencent/smtt/sdk/q;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_39

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/smtt/sdk/f;->a(Z)Lcom/tencent/smtt/sdk/f;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->a:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v5}, Lcom/tencent/smtt/sdk/f;->a(Landroid/content/Context;ZZ)V

    invoke-static {v0}, Lcom/tencent/smtt/sdk/f;->a(Z)Lcom/tencent/smtt/sdk/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/f;->a()Lcom/tencent/smtt/sdk/u;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/u;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v0

    goto :goto_28

    :cond_20
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->b:Lcom/tencent/smtt/sdk/TbsVideoCacheListener;

    const-string v3, "init engine error!"

    invoke-interface {v0, p0, v1, v3, v2}, Lcom/tencent/smtt/sdk/TbsVideoCacheListener;->onVideoDownloadError(Lcom/tencent/smtt/sdk/TbsVideoCacheTask;ILjava/lang/String;Landroid/os/Bundle;)V

    move-object v0, v2

    :goto_28
    if-eqz v0, :cond_32

    new-instance v3, Lcom/tencent/smtt/sdk/q;

    invoke-direct {v3, v0}, Lcom/tencent/smtt/sdk/q;-><init>(Lcom/tencent/smtt/export/external/DexLoader;)V

    iput-object v3, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->d:Lcom/tencent/smtt/sdk/q;

    goto :goto_39

    :cond_32
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->b:Lcom/tencent/smtt/sdk/TbsVideoCacheListener;

    const-string v3, "Java dexloader invalid!"

    invoke-interface {v0, p0, v1, v3, v2}, Lcom/tencent/smtt/sdk/TbsVideoCacheListener;->onVideoDownloadError(Lcom/tencent/smtt/sdk/TbsVideoCacheTask;ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->d:Lcom/tencent/smtt/sdk/q;

    if-eqz v0, :cond_4c

    iget-object v3, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->a:Landroid/content/Context;

    invoke-virtual {v0, v3, p0, p1}, Lcom/tencent/smtt/sdk/q;->a(Landroid/content/Context;Ljava/lang/Object;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->g:Ljava/lang/Object;

    if-nez p1, :cond_55

    iget-object p1, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->b:Lcom/tencent/smtt/sdk/TbsVideoCacheListener;

    const-string v0, "init task error!"

    goto :goto_52

    :cond_4c
    iget-object p1, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->b:Lcom/tencent/smtt/sdk/TbsVideoCacheListener;

    if-eqz p1, :cond_55

    const-string v0, "init error!"

    :goto_52
    invoke-interface {p1, p0, v1, v0, v2}, Lcom/tencent/smtt/sdk/TbsVideoCacheListener;->onVideoDownloadError(Lcom/tencent/smtt/sdk/TbsVideoCacheTask;ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_55
    return-void
.end method


# virtual methods
.method public getContentLength()J
    .registers 5

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->d:Lcom/tencent/smtt/sdk/q;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->g:Ljava/lang/Object;

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/q;->d()J

    move-result-wide v0

    return-wide v0

    :cond_d
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->b:Lcom/tencent/smtt/sdk/TbsVideoCacheListener;

    if-eqz v0, :cond_18

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v3, "getContentLength failed, init uncompleted!"

    invoke-interface {v0, p0, v1, v3, v2}, Lcom/tencent/smtt/sdk/TbsVideoCacheListener;->onVideoDownloadError(Lcom/tencent/smtt/sdk/TbsVideoCacheTask;ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_18
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDownloadedSize()I
    .registers 5

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->d:Lcom/tencent/smtt/sdk/q;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->g:Ljava/lang/Object;

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/q;->e()I

    move-result v0

    return v0

    :cond_d
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->b:Lcom/tencent/smtt/sdk/TbsVideoCacheListener;

    if-eqz v0, :cond_18

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v3, "getDownloadedSize failed, init uncompleted!"

    invoke-interface {v0, p0, v1, v3, v2}, Lcom/tencent/smtt/sdk/TbsVideoCacheListener;->onVideoDownloadError(Lcom/tencent/smtt/sdk/TbsVideoCacheTask;ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public getProgress()I
    .registers 5

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->d:Lcom/tencent/smtt/sdk/q;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->g:Ljava/lang/Object;

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/q;->f()I

    move-result v0

    return v0

    :cond_d
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->b:Lcom/tencent/smtt/sdk/TbsVideoCacheListener;

    if-eqz v0, :cond_18

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v3, "getProgress failed, init uncompleted!"

    invoke-interface {v0, p0, v1, v3, v2}, Lcom/tencent/smtt/sdk/TbsVideoCacheListener;->onVideoDownloadError(Lcom/tencent/smtt/sdk/TbsVideoCacheTask;ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public getTaskID()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->f:Ljava/lang/String;

    return-object v0
.end method

.method public pauseTask()V
    .registers 5

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->d:Lcom/tencent/smtt/sdk/q;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->g:Ljava/lang/Object;

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/q;->a()V

    goto :goto_17

    :cond_c
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->b:Lcom/tencent/smtt/sdk/TbsVideoCacheListener;

    if-eqz v0, :cond_17

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v3, "pauseTask failed, init uncompleted!"

    invoke-interface {v0, p0, v1, v3, v2}, Lcom/tencent/smtt/sdk/TbsVideoCacheListener;->onVideoDownloadError(Lcom/tencent/smtt/sdk/TbsVideoCacheTask;ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_17
    :goto_17
    return-void
.end method

.method public removeTask(Z)V
    .registers 5

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->d:Lcom/tencent/smtt/sdk/q;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->g:Ljava/lang/Object;

    if-eqz v1, :cond_c

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/q;->a(Z)V

    goto :goto_17

    :cond_c
    iget-object p1, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->b:Lcom/tencent/smtt/sdk/TbsVideoCacheListener;

    if-eqz p1, :cond_17

    const/4 v0, -0x1

    const/4 v1, 0x0

    const-string v2, "removeTask failed, init uncompleted!"

    invoke-interface {p1, p0, v0, v2, v1}, Lcom/tencent/smtt/sdk/TbsVideoCacheListener;->onVideoDownloadError(Lcom/tencent/smtt/sdk/TbsVideoCacheTask;ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_17
    :goto_17
    return-void
.end method

.method public resumeTask()V
    .registers 5

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->d:Lcom/tencent/smtt/sdk/q;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->g:Ljava/lang/Object;

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/q;->b()V

    goto :goto_17

    :cond_c
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->b:Lcom/tencent/smtt/sdk/TbsVideoCacheListener;

    if-eqz v0, :cond_17

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v3, "resumeTask failed, init uncompleted!"

    invoke-interface {v0, p0, v1, v3, v2}, Lcom/tencent/smtt/sdk/TbsVideoCacheListener;->onVideoDownloadError(Lcom/tencent/smtt/sdk/TbsVideoCacheTask;ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_17
    :goto_17
    return-void
.end method

.method public stopTask()V
    .registers 5

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->d:Lcom/tencent/smtt/sdk/q;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->g:Ljava/lang/Object;

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/q;->c()V

    goto :goto_17

    :cond_c
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsVideoCacheTask;->b:Lcom/tencent/smtt/sdk/TbsVideoCacheListener;

    if-eqz v0, :cond_17

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v3, "stopTask failed, init uncompleted!"

    invoke-interface {v0, p0, v1, v3, v2}, Lcom/tencent/smtt/sdk/TbsVideoCacheListener;->onVideoDownloadError(Lcom/tencent/smtt/sdk/TbsVideoCacheTask;ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_17
    :goto_17
    return-void
.end method
