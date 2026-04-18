.class Lcom/chuanglan/shanyan_sdk/tool/e$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chuanglan/shanyan_sdk/tool/e;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:J

.field final synthetic g:J

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:I

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Ljava/lang/String;

.field final synthetic m:Z

.field final synthetic n:Lcom/chuanglan/shanyan_sdk/tool/e;


# direct methods
.method constructor <init>(Lcom/chuanglan/shanyan_sdk/tool/e;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 20

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->n:Lcom/chuanglan/shanyan_sdk/tool/e;

    move-object v1, p2

    iput-object v1, v0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->a:Ljava/lang/String;

    move v1, p3

    iput-boolean v1, v0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->b:Z

    move v1, p4

    iput v1, v0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->c:I

    move-object v1, p5

    iput-object v1, v0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->d:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->e:Ljava/lang/String;

    move-wide v1, p7

    iput-wide v1, v0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->f:J

    move-wide v1, p9

    iput-wide v1, v0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->g:J

    move-object v1, p11

    iput-object v1, v0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->h:Ljava/lang/String;

    move v1, p12

    iput v1, v0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->i:I

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->j:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->k:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->l:Ljava/lang/String;

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->m:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    :try_start_0
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->n:Lcom/chuanglan/shanyan_sdk/tool/e;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/e;->a(Lcom/chuanglan/shanyan_sdk/tool/e;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "reportFlag"

    const-wide/16 v2, 0x258

    invoke-static {v0, v1, v2, v3}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_167

    sget-boolean v2, Lcom/chuanglan/shanyan_sdk/b;->ac:Z

    if-nez v2, :cond_1a

    goto/16 :goto_167

    :cond_1a
    new-instance v2, Lcom/chuanglan/shanyan_sdk/tool/c;

    invoke-direct {v2}, Lcom/chuanglan/shanyan_sdk/tool/c;-><init>()V

    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->a:Ljava/lang/String;

    iput-object v3, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->b:Ljava/lang/String;

    const-string v3, "JC"

    iput-object v3, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->c:Ljava/lang/String;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v3, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->d:Ljava/lang/String;

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/utils/v;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_38

    :goto_35
    iput-object v3, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->e:Ljava/lang/String;

    goto :goto_3d

    :cond_38
    invoke-static {}, Lcom/chuanglan/shanyan_sdk/utils/g;->d()Ljava/lang/String;

    move-result-object v3

    goto :goto_35

    :goto_3d
    const-string v3, "2.3.3.9"

    iput-object v3, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->f:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->b:Z
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_168

    const-string v5, ""

    if-eqz v3, :cond_4a

    :try_start_47
    iput-object v5, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->g:Ljava/lang/String;

    goto :goto_58

    :cond_4a
    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->n:Lcom/chuanglan/shanyan_sdk/tool/e;

    invoke-static {v3}, Lcom/chuanglan/shanyan_sdk/tool/e;->a(Lcom/chuanglan/shanyan_sdk/tool/e;)Landroid/content/Context;

    move-result-object v3

    const-string v6, "uuid"

    invoke-static {v3, v6, v5}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->g:Ljava/lang/String;

    :goto_58
    invoke-static {}, Lcom/chuanglan/shanyan_sdk/utils/g;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->n:Lcom/chuanglan/shanyan_sdk/tool/e;

    invoke-static {v3}, Lcom/chuanglan/shanyan_sdk/tool/e;->a(Lcom/chuanglan/shanyan_sdk/tool/e;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/chuanglan/shanyan_sdk/utils/i;->d(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->n:Lcom/chuanglan/shanyan_sdk/tool/e;

    invoke-static {v3}, Lcom/chuanglan/shanyan_sdk/tool/e;->a(Lcom/chuanglan/shanyan_sdk/tool/e;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/chuanglan/shanyan_sdk/utils/i;->f(Landroid/content/Context;)Z

    move-result v3
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_78} :catch_168

    const-string v5, "-1"

    const-string v6, "0"

    if-eqz v3, :cond_81

    :try_start_7e
    iput-object v6, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->j:Ljava/lang/String;

    goto :goto_83

    :cond_81
    iput-object v5, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->j:Ljava/lang/String;

    :goto_83
    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->n:Lcom/chuanglan/shanyan_sdk/tool/e;

    invoke-static {v3}, Lcom/chuanglan/shanyan_sdk/tool/e;->a(Lcom/chuanglan/shanyan_sdk/tool/e;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/chuanglan/shanyan_sdk/utils/i;->e(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_92

    iput-object v6, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->k:Ljava/lang/String;

    goto :goto_94

    :cond_92
    iput-object v5, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->k:Ljava/lang/String;

    :goto_94
    iget v3, p0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->c:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->d:Ljava/lang/String;

    iput-object v3, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->e:Ljava/lang/String;

    iput-object v3, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->n:Ljava/lang/String;

    iget-wide v7, p0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->f:J

    iput-wide v7, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->o:J

    iget-wide v7, p0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->g:J

    iput-wide v7, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->p:J

    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->h:Ljava/lang/String;

    iput-object v3, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->q:Ljava/lang/String;

    iget v3, p0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->i:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->r:Ljava/lang/String;

    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->j:Ljava/lang/String;

    invoke-static {v3}, Lcom/chuanglan/shanyan_sdk/utils/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->s:Ljava/lang/String;

    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->k:Ljava/lang/String;

    iput-object v3, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->t:Ljava/lang/String;

    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->l:Ljava/lang/String;

    iput-object v3, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->u:Ljava/lang/String;

    const/4 v5, 0x1

    iput v5, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->v:I

    const-string v7, "check_error"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ef

    const-string v3, "cache"

    iget-object v7, p0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->l:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ef

    iget v3, p0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->i:I

    const/16 v7, 0x3f3

    if-eq v3, v7, :cond_ef

    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->j:Ljava/lang/String;

    invoke-static {v3}, Lcom/chuanglan/shanyan_sdk/utils/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->u:Ljava/lang/String;

    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->l:Ljava/lang/String;

    iput-object v3, v2, Lcom/chuanglan/shanyan_sdk/tool/c;->s:Ljava/lang/String;

    :cond_ef
    iget v3, p0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->i:I

    const/16 v7, 0x408

    if-eq v3, v7, :cond_119

    const-string v3, "1"

    iget-object v7, p0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->d:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_112

    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->h:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_112

    iget v3, p0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->c:I

    const/4 v6, 0x3

    if-eq v3, v6, :cond_112

    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->n:Lcom/chuanglan/shanyan_sdk/tool/e;

    invoke-static {v3, v2, v5}, Lcom/chuanglan/shanyan_sdk/tool/e;->a(Lcom/chuanglan/shanyan_sdk/tool/e;Lcom/chuanglan/shanyan_sdk/tool/c;Z)V

    goto :goto_119

    :cond_112
    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->n:Lcom/chuanglan/shanyan_sdk/tool/e;

    iget-boolean v6, p0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->m:Z

    invoke-static {v3, v2, v6}, Lcom/chuanglan/shanyan_sdk/tool/e;->a(Lcom/chuanglan/shanyan_sdk/tool/e;Lcom/chuanglan/shanyan_sdk/tool/c;Z)V

    :cond_119
    :goto_119
    iget v2, p0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->c:I

    if-ne v5, v2, :cond_16c

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->n:Lcom/chuanglan/shanyan_sdk/tool/e;

    invoke-static {v2}, Lcom/chuanglan/shanyan_sdk/tool/e;->f(Lcom/chuanglan/shanyan_sdk/tool/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-nez v2, :cond_16c

    if-eqz v4, :cond_16c

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_16c

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/e$2;->n:Lcom/chuanglan/shanyan_sdk/tool/e;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/e;->a(Lcom/chuanglan/shanyan_sdk/tool/e;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "rptDly"

    const-string v4, "120"

    invoke-static {v0, v1, v4}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_16c

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "HandlerThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/chuanglan/shanyan_sdk/tool/e$2$1;

    invoke-direct {v2, p0}, Lcom/chuanglan/shanyan_sdk/tool/e$2$1;-><init>(Lcom/chuanglan/shanyan_sdk/tool/e$2;)V

    const-wide/16 v4, 0x3e8

    mul-long v0, v0, v4

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_166
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_166} :catch_168

    goto :goto_16c

    :cond_167
    :goto_167
    return-void

    :catch_168
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_16c
    :goto_16c
    return-void
.end method
