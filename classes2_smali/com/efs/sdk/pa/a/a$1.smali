.class final Lcom/efs/sdk/pa/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/efs/sdk/pa/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/efs/sdk/pa/a/a;


# direct methods
.method constructor <init>(Lcom/efs/sdk/pa/a/a;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 57
    iget-object v0, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    .line 1027
    iget-boolean v0, v0, Lcom/efs/sdk/pa/a/a;->f:Z

    if-eqz v0, :cond_7

    return-void

    .line 61
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    .line 2027
    iget-wide v3, v2, Lcom/efs/sdk/pa/a/a;->j:J

    sub-long/2addr v0, v3

    .line 3027
    iget-wide v3, v2, Lcom/efs/sdk/pa/a/a;->k:J

    cmp-long v5, v0, v3

    if-lez v5, :cond_21

    .line 4027
    iget-object v2, v2, Lcom/efs/sdk/pa/a/a;->h:Lcom/efs/sdk/pa/PAANRListener;

    if-eqz v2, :cond_21

    .line 64
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/efs/sdk/pa/PAANRListener;->unexcept(Ljava/lang/Object;)V

    .line 68
    :cond_21
    iget-object v0, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    .line 6027
    iget-boolean v0, v0, Lcom/efs/sdk/pa/a/a;->a:Z

    if-eqz v0, :cond_3a

    .line 69
    iget-object v0, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    const-wide/16 v1, 0x0

    .line 7027
    iput-wide v1, v0, Lcom/efs/sdk/pa/a/a;->i:J

    const/4 v1, 0x0

    .line 8027
    iput-boolean v1, v0, Lcom/efs/sdk/pa/a/a;->a:Z

    .line 71
    iget-object v0, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    .line 9027
    iget-object v1, v0, Lcom/efs/sdk/pa/a/a;->b:Landroid/os/Handler;

    .line 10027
    iget-object v0, v0, Lcom/efs/sdk/pa/a/a;->n:Ljava/lang/Runnable;

    .line 71
    invoke-virtual {v1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_81

    .line 74
    :cond_3a
    iget-object v0, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    .line 11027
    iget-wide v1, v0, Lcom/efs/sdk/pa/a/a;->i:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/efs/sdk/pa/a/a;->i:J

    .line 12027
    iget-boolean v0, v0, Lcom/efs/sdk/pa/a/a;->a:Z

    if-nez v0, :cond_81

    .line 75
    iget-object v0, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    .line 13027
    iget-wide v1, v0, Lcom/efs/sdk/pa/a/a;->i:J

    .line 14027
    iget-wide v3, v0, Lcom/efs/sdk/pa/a/a;->e:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_81

    cmp-long v5, v1, v3

    if-nez v5, :cond_81

    .line 17224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17225
    iget-boolean v2, v0, Lcom/efs/sdk/pa/a/a;->l:Z

    if-eqz v2, :cond_68

    .line 17226
    iget-object v2, v0, Lcom/efs/sdk/pa/a/a;->c:Ljava/lang/Thread;

    invoke-static {v2}, Lcom/efs/sdk/pa/a/a;->a(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6e

    .line 17228
    :cond_68
    invoke-static {v1}, Lcom/efs/sdk/pa/a/a;->a(Ljava/lang/StringBuilder;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 17233
    :goto_6e
    iget-object v2, v0, Lcom/efs/sdk/pa/a/a;->h:Lcom/efs/sdk/pa/PAANRListener;

    if-eqz v2, :cond_81

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_81

    .line 17234
    iget-object v0, v0, Lcom/efs/sdk/pa/a/a;->h:Lcom/efs/sdk/pa/PAANRListener;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/efs/sdk/pa/PAANRListener;->anrStack(Ljava/lang/String;)V

    .line 83
    :cond_81
    :goto_81
    iget-object v0, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 18027
    iput-wide v1, v0, Lcom/efs/sdk/pa/a/a;->j:J

    .line 84
    iget-object v0, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    .line 19027
    iget-object v1, v0, Lcom/efs/sdk/pa/a/a;->g:Landroid/os/Handler;

    .line 20027
    iget-object v2, v0, Lcom/efs/sdk/pa/a/a;->m:Ljava/lang/Runnable;

    .line 21027
    iget-wide v3, v0, Lcom/efs/sdk/pa/a/a;->d:J

    .line 84
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
