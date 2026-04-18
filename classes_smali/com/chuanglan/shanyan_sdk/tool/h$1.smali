.class Lcom/chuanglan/shanyan_sdk/tool/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chuanglan/shanyan_sdk/tool/h;->a(Ljava/util/concurrent/ExecutorService;ZLjava/lang/String;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:J

.field final synthetic e:Lcom/chuanglan/shanyan_sdk/tool/h;


# direct methods
.method constructor <init>(Lcom/chuanglan/shanyan_sdk/tool/h;ZLjava/lang/String;JJ)V
    .registers 8

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/h$1;->e:Lcom/chuanglan/shanyan_sdk/tool/h;

    iput-boolean p2, p0, Lcom/chuanglan/shanyan_sdk/tool/h$1;->a:Z

    iput-object p3, p0, Lcom/chuanglan/shanyan_sdk/tool/h$1;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/chuanglan/shanyan_sdk/tool/h$1;->c:J

    iput-wide p6, p0, Lcom/chuanglan/shanyan_sdk/tool/h$1;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/chuanglan/shanyan_sdk/b;->ak:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    :try_start_d
    const-string v2, "ProcessShanYanLogger"

    new-array v3, v11, [Ljava/lang/Object;

    const-string v4, "startOpenLoginAuth isFinish"

    aput-object v4, v3, v12

    iget-boolean v4, p0, Lcom/chuanglan/shanyan_sdk/tool/h$1;->a:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v13

    invoke-static {v2, v3}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/tool/h$1;->e:Lcom/chuanglan/shanyan_sdk/tool/h;

    invoke-static {v2}, Lcom/chuanglan/shanyan_sdk/tool/h;->a(Lcom/chuanglan/shanyan_sdk/tool/h;)V

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/tool/h$1;->b:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x1fb891

    if-eq v4, v5, :cond_41

    const v5, 0x1fbc52

    if-eq v4, v5, :cond_37

    goto :goto_4a

    :cond_37
    const-string v4, "CUCC"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    const/4 v3, 0x0

    goto :goto_4a

    :cond_41
    const-string v4, "CTCC"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    const/4 v3, 0x1

    :cond_4a
    :goto_4a
    if-eqz v3, :cond_6d

    if-eq v3, v13, :cond_5e

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/tool/h$1;->e:Lcom/chuanglan/shanyan_sdk/tool/h;

    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/tool/h$1;->b:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/chuanglan/shanyan_sdk/tool/h$1;->a:Z

    iget-wide v7, p0, Lcom/chuanglan/shanyan_sdk/tool/h$1;->c:J

    iget-wide v9, p0, Lcom/chuanglan/shanyan_sdk/tool/h$1;->d:J

    move-wide v5, v0

    invoke-static/range {v2 .. v10}, Lcom/chuanglan/shanyan_sdk/tool/h;->c(Lcom/chuanglan/shanyan_sdk/tool/h;Ljava/lang/String;ZJJJ)V

    goto/16 :goto_d4

    :cond_5e
    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/tool/h$1;->e:Lcom/chuanglan/shanyan_sdk/tool/h;

    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/tool/h$1;->b:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/chuanglan/shanyan_sdk/tool/h$1;->a:Z

    iget-wide v7, p0, Lcom/chuanglan/shanyan_sdk/tool/h$1;->c:J

    iget-wide v9, p0, Lcom/chuanglan/shanyan_sdk/tool/h$1;->d:J

    move-wide v5, v0

    invoke-static/range {v2 .. v10}, Lcom/chuanglan/shanyan_sdk/tool/h;->b(Lcom/chuanglan/shanyan_sdk/tool/h;Ljava/lang/String;ZJJJ)V

    goto :goto_d4

    :cond_6d
    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/tool/h$1;->e:Lcom/chuanglan/shanyan_sdk/tool/h;

    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/tool/h$1;->b:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/chuanglan/shanyan_sdk/tool/h$1;->a:Z

    iget-wide v7, p0, Lcom/chuanglan/shanyan_sdk/tool/h$1;->c:J

    iget-wide v9, p0, Lcom/chuanglan/shanyan_sdk/tool/h$1;->d:J

    move-wide v5, v0

    invoke-static/range {v2 .. v10}, Lcom/chuanglan/shanyan_sdk/tool/h;->a(Lcom/chuanglan/shanyan_sdk/tool/h;Ljava/lang/String;ZJJJ)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_7b} :catch_7c

    goto :goto_d4

    :catch_7c
    move-exception v2

    sget-object v3, Lcom/chuanglan/shanyan_sdk/b;->ap:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-array v3, v11, [Ljava/lang/Object;

    const-string v4, "startOpenLoginAuth Exception_e="

    aput-object v4, v3, v12

    aput-object v2, v3, v13

    const-string v4, "ExceptionShanYanTask"

    invoke-static {v4, v3}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/tool/h$1;->e:Lcom/chuanglan/shanyan_sdk/tool/h;

    const/16 v4, 0x3f6

    iget-object v5, p0, Lcom/chuanglan/shanyan_sdk/tool/h$1;->b:Ljava/lang/String;

    const/16 v6, 0x3f6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startOpenLoginAuth--Exception_e="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    iget-wide v11, p0, Lcom/chuanglan/shanyan_sdk/tool/h$1;->c:J

    iget-wide v13, p0, Lcom/chuanglan/shanyan_sdk/tool/h$1;->d:J

    const-string v9, "1014"

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move-object v7, v9

    move-wide v9, v0

    invoke-virtual/range {v2 .. v14}, Lcom/chuanglan/shanyan_sdk/tool/h;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJ)V

    :goto_d4
    return-void
.end method
