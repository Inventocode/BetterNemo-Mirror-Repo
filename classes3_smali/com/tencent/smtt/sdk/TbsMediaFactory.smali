.class public Lcom/tencent/smtt/sdk/TbsMediaFactory;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/tencent/smtt/sdk/u;

.field private c:Lcom/tencent/smtt/export/external/DexLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsMediaFactory;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsMediaFactory;->b:Lcom/tencent/smtt/sdk/u;

    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsMediaFactory;->c:Lcom/tencent/smtt/export/external/DexLoader;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/smtt/sdk/TbsMediaFactory;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/TbsMediaFactory;->a()V

    return-void
.end method

.method private a()V
    .registers 5

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsMediaFactory;->a:Landroid/content/Context;

    if-nez v0, :cond_c

    const-string v0, "TbsVideo"

    const-string v1, "TbsVideo needs context !!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsMediaFactory;->b:Lcom/tencent/smtt/sdk/u;

    if-nez v0, :cond_2d

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/smtt/sdk/f;->a(Z)Lcom/tencent/smtt/sdk/f;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/smtt/sdk/TbsMediaFactory;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/tencent/smtt/sdk/f;->a(Landroid/content/Context;ZZ)V

    invoke-static {v0}, Lcom/tencent/smtt/sdk/f;->a(Z)Lcom/tencent/smtt/sdk/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/f;->a()Lcom/tencent/smtt/sdk/u;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsMediaFactory;->b:Lcom/tencent/smtt/sdk/u;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/u;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsMediaFactory;->c:Lcom/tencent/smtt/export/external/DexLoader;

    :cond_2d
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsMediaFactory;->b:Lcom/tencent/smtt/sdk/u;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsMediaFactory;->c:Lcom/tencent/smtt/export/external/DexLoader;

    if-eqz v0, :cond_36

    return-void

    :cond_36
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "tbs core dex(s) load failure !!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createPlayer()Lcom/tencent/smtt/sdk/TbsMediaPlayer;
    .registers 5

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsMediaFactory;->b:Lcom/tencent/smtt/sdk/u;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsMediaFactory;->c:Lcom/tencent/smtt/export/external/DexLoader;

    if-eqz v0, :cond_15

    new-instance v1, Lcom/tencent/smtt/sdk/TbsMediaPlayer;

    new-instance v2, Lcom/tencent/smtt/sdk/p;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/TbsMediaFactory;->a:Landroid/content/Context;

    invoke-direct {v2, v0, v3}, Lcom/tencent/smtt/sdk/p;-><init>(Lcom/tencent/smtt/export/external/DexLoader;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/tencent/smtt/sdk/TbsMediaPlayer;-><init>(Lcom/tencent/smtt/sdk/p;)V

    return-object v1

    :cond_15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "tbs core dex(s) did not loaded !!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
