.class Lcom/chuanglan/shanyan_sdk/tool/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chuanglan/shanyan_sdk/tool/a;->a(Ljava/util/concurrent/ExecutorService;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/chuanglan/shanyan_sdk/tool/a;


# direct methods
.method constructor <init>(Lcom/chuanglan/shanyan_sdk/tool/a;JJ)V
    .registers 6

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/a$1;->c:Lcom/chuanglan/shanyan_sdk/tool/a;

    iput-wide p2, p0, Lcom/chuanglan/shanyan_sdk/tool/a$1;->a:J

    iput-wide p4, p0, Lcom/chuanglan/shanyan_sdk/tool/a$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 20

    move-object/from16 v1, p0

    const-string/jumbo v0, "用户被禁用"

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_8
    sget-object v5, Lcom/chuanglan/shanyan_sdk/b;->av:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-eq v5, v4, :cond_7a

    if-eq v5, v2, :cond_5e

    iget-object v5, v1, Lcom/chuanglan/shanyan_sdk/tool/a$1;->c:Lcom/chuanglan/shanyan_sdk/tool/a;

    invoke-static {v5}, Lcom/chuanglan/shanyan_sdk/tool/a;->a(Lcom/chuanglan/shanyan_sdk/tool/a;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "accOff"

    invoke-static {v5, v6, v3}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    if-ne v4, v5, :cond_49

    iget-object v6, v1, Lcom/chuanglan/shanyan_sdk/tool/a$1;->c:Lcom/chuanglan/shanyan_sdk/tool/a;

    const/16 v7, 0x408

    invoke-static {v6}, Lcom/chuanglan/shanyan_sdk/tool/a;->a(Lcom/chuanglan/shanyan_sdk/tool/a;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/chuanglan/shanyan_sdk/utils/g;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const/16 v5, 0x408

    invoke-static {v5, v0, v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xb

    const-string v11, "1032"

    const-string v12, "check_error"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    iget-wide v2, v1, Lcom/chuanglan/shanyan_sdk/tool/a$1;->a:J

    sub-long/2addr v13, v2

    iget-wide v4, v1, Lcom/chuanglan/shanyan_sdk/tool/a$1;->b:J

    move-wide v15, v2

    move-wide/from16 v17, v4

    invoke-virtual/range {v6 .. v18}, Lcom/chuanglan/shanyan_sdk/tool/a;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJ)V

    goto/16 :goto_de

    :cond_49
    sget-object v0, Lcom/chuanglan/shanyan_sdk/b;->ar:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/g;->a()Lcom/chuanglan/shanyan_sdk/tool/g;

    move-result-object v3

    const/16 v4, 0xb

    iget-wide v5, v1, Lcom/chuanglan/shanyan_sdk/tool/a$1;->a:J

    iget-wide v7, v1, Lcom/chuanglan/shanyan_sdk/tool/a$1;->b:J

    invoke-virtual/range {v3 .. v8}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(IJJ)V

    goto/16 :goto_de

    :cond_5e
    sget-object v0, Lcom/chuanglan/shanyan_sdk/b;->ar:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/a;->a()Lcom/chuanglan/shanyan_sdk/tool/a;

    move-result-object v3

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/a$1;->c:Lcom/chuanglan/shanyan_sdk/tool/a;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/a;->a(Lcom/chuanglan/shanyan_sdk/tool/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/g;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, v1, Lcom/chuanglan/shanyan_sdk/tool/a$1;->a:J

    iget-wide v7, v1, Lcom/chuanglan/shanyan_sdk/tool/a$1;->b:J

    invoke-virtual/range {v3 .. v8}, Lcom/chuanglan/shanyan_sdk/tool/a;->a(Ljava/lang/String;JJ)V

    goto :goto_de

    :cond_7a
    sget-object v0, Lcom/chuanglan/shanyan_sdk/b;->ar:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_80} :catch_81

    goto :goto_de

    :catch_81
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "authStart Exception_e="

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v3, "ExceptionShanYanTask"

    invoke-static {v3, v2}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/chuanglan/shanyan_sdk/tool/a$1;->c:Lcom/chuanglan/shanyan_sdk/tool/a;

    const/16 v5, 0x3f6

    invoke-static {v4}, Lcom/chuanglan/shanyan_sdk/tool/a;->a(Lcom/chuanglan/shanyan_sdk/tool/a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/chuanglan/shanyan_sdk/utils/g;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const/16 v2, 0x3f6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "authStart--Exception_e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v3, v7}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xb

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v13, v1, Lcom/chuanglan/shanyan_sdk/tool/a$1;->a:J

    sub-long v11, v2, v13

    iget-wide v2, v1, Lcom/chuanglan/shanyan_sdk/tool/a$1;->b:J

    const-string v9, "1014"

    move-wide v15, v2

    invoke-virtual/range {v4 .. v16}, Lcom/chuanglan/shanyan_sdk/tool/a;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJ)V

    :goto_de
    return-void
.end method
