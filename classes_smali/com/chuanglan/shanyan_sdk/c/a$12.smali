.class Lcom/chuanglan/shanyan_sdk/c/a$12;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/chuanglan/shanyan_sdk/tool/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chuanglan/shanyan_sdk/c/a;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chuanglan/shanyan_sdk/c/a;


# direct methods
.method constructor <init>(Lcom/chuanglan/shanyan_sdk/c/a;)V
    .registers 2

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/c/a$12;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3

    sget-object p1, Lcom/chuanglan/shanyan_sdk/b;->av:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 32

    move-object/from16 v0, p0

    move/from16 v15, p1

    move/from16 v14, p2

    move-object/from16 v13, p3

    move-wide/from16 v11, p8

    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/c/a$12;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-static {v1}, Lcom/chuanglan/shanyan_sdk/c/a;->a(Lcom/chuanglan/shanyan_sdk/c/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/chuanglan/shanyan_sdk/utils/g;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    sget-object v1, Lcom/chuanglan/shanyan_sdk/b;->av:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v10, 0x3

    const/4 v8, 0x2

    const-string v7, ""

    if-eq v14, v8, :cond_134

    if-eq v14, v10, :cond_ed

    const/16 v1, 0xb

    if-eq v14, v1, :cond_a6

    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/c/a$12;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-static {v1, v15, v13}, Lcom/chuanglan/shanyan_sdk/c/a;->b(Lcom/chuanglan/shanyan_sdk/c/a;ILjava/lang/String;)V

    sget-object v1, Lcom/chuanglan/shanyan_sdk/b;->ar:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_73

    sget-object v1, Lcom/chuanglan/shanyan_sdk/b;->at:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/c/a$12;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-static {v1, v15, v13}, Lcom/chuanglan/shanyan_sdk/c/a;->a(Lcom/chuanglan/shanyan_sdk/c/a;ILjava/lang/String;)V

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/e;->a()Lcom/chuanglan/shanyan_sdk/tool/e;

    move-result-object v1

    const/16 v4, 0xb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v16, 0x1

    const/16 v18, 0x0

    const-string v5, "1"

    const-string v6, "0"

    move/from16 v2, p1

    move-object/from16 v3, v17

    move-object/from16 v7, p3

    const/16 v19, 0x2

    move-object v8, v11

    const/4 v11, 0x0

    const/16 v20, 0x3

    move-wide/from16 v9, p6

    move-wide/from16 v11, p6

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move/from16 v15, v16

    move/from16 v16, v18

    goto :goto_a1

    :cond_73
    const/16 v19, 0x2

    const/16 v20, 0x3

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/e;->a()Lcom/chuanglan/shanyan_sdk/tool/e;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v15, 0x1

    const-string v5, "1"

    const-string v6, "0"

    const/16 v16, 0x1

    move/from16 v2, p1

    move-object/from16 v3, v17

    move/from16 v4, p2

    move-object/from16 v7, p3

    move-wide/from16 v9, p6

    move-wide/from16 v11, p6

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    :goto_a1
    invoke-virtual/range {v1 .. v16}, Lcom/chuanglan/shanyan_sdk/tool/e;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_1b3

    :cond_a6
    const/16 v19, 0x2

    const/16 v20, 0x3

    sget-object v1, Lcom/chuanglan/shanyan_sdk/b;->at:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/c/a$12;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    move/from16 v14, p1

    move-object/from16 v13, p3

    invoke-static {v1, v14, v13}, Lcom/chuanglan/shanyan_sdk/c/a;->a(Lcom/chuanglan/shanyan_sdk/c/a;ILjava/lang/String;)V

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/e;->a()Lcom/chuanglan/shanyan_sdk/tool/e;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v16, 0x1

    const/16 v18, 0x0

    const-string v5, "1"

    const-string v6, "0"

    move/from16 v2, p1

    move-object/from16 v3, v17

    move/from16 v4, p2

    move-object/from16 v7, p3

    move-wide/from16 v9, p6

    move-wide/from16 v11, p6

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    const/4 v0, 0x0

    move/from16 v15, v16

    move/from16 v16, v18

    invoke-virtual/range {v1 .. v16}, Lcom/chuanglan/shanyan_sdk/tool/e;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_130

    :cond_ed
    const/4 v0, 0x0

    const/16 v19, 0x2

    const/16 v20, 0x3

    sget-object v1, Lcom/chuanglan/shanyan_sdk/b;->aq:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v1, Lcom/chuanglan/shanyan_sdk/b;->as:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/c/a$12;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v16, 0x1

    const/16 v18, 0x0

    const-string v5, "1"

    const-string v6, "0"

    move/from16 v2, p1

    move-object/from16 v3, v17

    move/from16 v4, p2

    move-object/from16 v7, p3

    move-wide/from16 v9, p6

    move-wide/from16 v11, p6

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    const/4 v0, 0x0

    move/from16 v15, v16

    move/from16 v16, v18

    invoke-virtual/range {v1 .. v16}, Lcom/chuanglan/shanyan_sdk/c/a;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ZZ)V

    :goto_130
    move-object/from16 v0, p0

    goto/16 :goto_1b3

    :cond_134
    const/4 v0, 0x0

    const/16 v19, 0x2

    const/16 v20, 0x3

    sget-object v1, Lcom/chuanglan/shanyan_sdk/b;->as:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/c/a$12;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v16, 0x1

    const/16 v18, 0x1

    const-string v5, "1"

    const-string v6, "0"

    move/from16 v2, p1

    move-object/from16 v3, v17

    move/from16 v4, p2

    move-object v14, v7

    move-object/from16 v7, p3

    move-wide/from16 v9, p6

    move-wide/from16 v11, p6

    move-object/from16 v13, p4

    move-object/from16 v21, v14

    move-object/from16 v14, p5

    const/4 v0, 0x0

    move/from16 v15, v16

    move/from16 v16, v18

    invoke-static/range {v1 .. v16}, Lcom/chuanglan/shanyan_sdk/c/a;->a(Lcom/chuanglan/shanyan_sdk/c/a;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v1, Lcom/chuanglan/shanyan_sdk/b;->aq:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    move-object/from16 v0, p0

    if-eqz v1, :cond_1b3

    const/4 v15, 0x0

    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/c/a$12;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    const/4 v4, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v5, p8

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v3, v21

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v16, 0x1

    const/16 v18, 0x0

    const-string v5, "1"

    const-string v6, "0"

    move/from16 v2, p1

    move-object/from16 v3, v17

    move-object/from16 v7, p3

    move-wide/from16 v9, p6

    move-wide/from16 v11, p6

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move/from16 v15, v16

    move/from16 v16, v18

    invoke-virtual/range {v1 .. v16}, Lcom/chuanglan/shanyan_sdk/c/a;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ZZ)V

    :cond_1b3
    :goto_1b3
    sget-object v1, Lcom/chuanglan/shanyan_sdk/b;->au:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "InitFailEnd processName"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "code"

    aput-object v2, v1, v19

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v20

    const/4 v2, 0x4

    const-string v3, "_result"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p3, v1, v2

    const-string v2, "ProcessShanYanLogger"

    invoke-static {v2, v1}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(IILjava/lang/String;Ljava/lang/String;ZJJ)V
    .registers 39

    move-object/from16 v1, p0

    move/from16 v15, p1

    move/from16 v14, p2

    move-object/from16 v12, p3

    move-wide/from16 v9, p8

    const-string v13, "ProcessShanYanLogger"

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/e;->a()Lcom/chuanglan/shanyan_sdk/tool/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/e;->b()V

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/c/a$12;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/c/a;->a(Lcom/chuanglan/shanyan_sdk/c/a;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "ctccAppid"

    const-string v11, ""

    invoke-static {v0, v2, v11}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/chuanglan/shanyan_sdk/c/a$12;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-static {v2}, Lcom/chuanglan/shanyan_sdk/c/a;->a(Lcom/chuanglan/shanyan_sdk/c/a;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "ctccAppkey"

    invoke-static {v2, v3, v11}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    const/4 v7, 0x0

    :try_start_2f
    sget-boolean v3, Lcom/chuanglan/shanyan_sdk/b;->Z:Z

    if-eqz v3, :cond_46

    invoke-static {}, Lcn/com/chinatelecom/account/api/CtAuth;->getInstance()Lcn/com/chinatelecom/account/api/CtAuth;

    move-result-object v3

    iget-object v4, v1, Lcom/chuanglan/shanyan_sdk/c/a$12;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-static {v4}, Lcom/chuanglan/shanyan_sdk/c/a;->a(Lcom/chuanglan/shanyan_sdk/c/a;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/chuanglan/shanyan_sdk/c/a$12$1;

    invoke-direct {v5, v1}, Lcom/chuanglan/shanyan_sdk/c/a$12$1;-><init>(Lcom/chuanglan/shanyan_sdk/c/a$12;)V

    invoke-virtual {v3, v4, v0, v2, v5}, Lcn/com/chinatelecom/account/api/CtAuth;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/com/chinatelecom/account/api/TraceLogger;)V

    goto :goto_62

    :cond_46
    invoke-static {}, Lcn/com/chinatelecom/account/api/CtAuth;->getInstance()Lcn/com/chinatelecom/account/api/CtAuth;

    move-result-object v3

    iget-object v4, v1, Lcom/chuanglan/shanyan_sdk/c/a$12;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-static {v4}, Lcom/chuanglan/shanyan_sdk/c/a;->a(Lcom/chuanglan/shanyan_sdk/c/a;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v2, v5}, Lcn/com/chinatelecom/account/api/CtAuth;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/com/chinatelecom/account/api/TraceLogger;)V

    new-array v0, v8, [Ljava/lang/Object;

    const-string v2, "CtAuth init"

    aput-object v2, v0, v7

    invoke-static {v13, v0}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5d
    .catchall {:try_start_2f .. :try_end_5d} :catchall_5e

    goto :goto_62

    :catchall_5e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_62
    sget-object v0, Lcom/chuanglan/shanyan_sdk/b;->av:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v0, -0x1

    if-ne v0, v14, :cond_71

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/c/a$12;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-static {v0, v15, v12}, Lcom/chuanglan/shanyan_sdk/c/a;->b(Lcom/chuanglan/shanyan_sdk/c/a;ILjava/lang/String;)V

    return-void

    :cond_71
    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/c/a$12;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/c/a;->a(Lcom/chuanglan/shanyan_sdk/c/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/g;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x3

    if-eq v14, v6, :cond_17c

    if-eq v14, v5, :cond_148

    const/16 v2, 0xb

    if-eq v14, v2, :cond_f3

    iget-object v2, v1, Lcom/chuanglan/shanyan_sdk/c/a$12;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-static {v2, v15, v12}, Lcom/chuanglan/shanyan_sdk/c/a;->b(Lcom/chuanglan/shanyan_sdk/c/a;ILjava/lang/String;)V

    sget-object v2, Lcom/chuanglan/shanyan_sdk/b;->ar:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-eqz v2, :cond_a6

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/a;->a()Lcom/chuanglan/shanyan_sdk/tool/a;

    move-result-object v16

    iget-object v2, v1, Lcom/chuanglan/shanyan_sdk/c/a$12;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-static {v2}, Lcom/chuanglan/shanyan_sdk/c/a;->c(Lcom/chuanglan/shanyan_sdk/c/a;)Ljava/util/concurrent/ExecutorService;

    move-result-object v17

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-virtual/range {v16 .. v21}, Lcom/chuanglan/shanyan_sdk/tool/a;->a(Ljava/util/concurrent/ExecutorService;JJ)V

    :cond_a6
    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/e;->a()Lcom/chuanglan/shanyan_sdk/tool/e;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    const-string v10, "1"

    const-string v11, "1"

    move/from16 v3, p1

    move-object v4, v0

    const/16 v18, 0x3

    move/from16 v5, p2

    const/16 v19, 0x2

    move-object v6, v10

    const/4 v10, 0x0

    move-object v7, v11

    const/16 v20, 0x1

    move-object/from16 v8, p3

    move-wide/from16 v10, p6

    move-object/from16 v22, v13

    move-wide/from16 v12, p6

    move-object/from16 v14, v16

    move-object/from16 v15, p4

    move/from16 v16, v17

    move/from16 v17, p5

    invoke-virtual/range {v2 .. v17}, Lcom/chuanglan/shanyan_sdk/tool/e;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ZZ)V

    move/from16 v1, p1

    goto/16 :goto_1d1

    :cond_f3
    move-object/from16 v22, v13

    const/16 v18, 0x3

    const/16 v19, 0x2

    const/16 v20, 0x1

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/a;->a()Lcom/chuanglan/shanyan_sdk/tool/a;

    move-result-object v23

    iget-object v2, v1, Lcom/chuanglan/shanyan_sdk/c/a$12;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-static {v2}, Lcom/chuanglan/shanyan_sdk/c/a;->c(Lcom/chuanglan/shanyan_sdk/c/a;)Ljava/util/concurrent/ExecutorService;

    move-result-object v24

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    invoke-virtual/range {v23 .. v28}, Lcom/chuanglan/shanyan_sdk/tool/a;->a(Ljava/util/concurrent/ExecutorService;JJ)V

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/e;->a()Lcom/chuanglan/shanyan_sdk/tool/e;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v15, p1

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x1

    const-string v6, "1"

    const-string v7, "1"

    move/from16 v3, p1

    move-object v4, v0

    move/from16 v5, p2

    move-object/from16 v8, p3

    move-wide/from16 v10, p6

    move-wide/from16 v12, p6

    move v1, v15

    goto/16 :goto_1ca

    :cond_148
    move-object/from16 v22, v13

    move v1, v15

    const/16 v18, 0x3

    const/16 v19, 0x2

    const/16 v20, 0x1

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/k;->a()Lcom/chuanglan/shanyan_sdk/tool/k;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move/from16 v3, p2

    invoke-virtual/range {v2 .. v8}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(ILjava/lang/String;JJ)V

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/e;->a()Lcom/chuanglan/shanyan_sdk/tool/e;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1af

    :cond_17c
    move-object/from16 v22, v13

    move v1, v15

    const/16 v18, 0x3

    const/16 v19, 0x2

    const/16 v20, 0x1

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/k;->a()Lcom/chuanglan/shanyan_sdk/tool/k;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move/from16 v3, p2

    invoke-virtual/range {v2 .. v8}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(ILjava/lang/String;JJ)V

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/e;->a()Lcom/chuanglan/shanyan_sdk/tool/e;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1af
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x1

    const-string v6, "1"

    const-string v7, "1"

    move/from16 v3, p1

    move-object v4, v0

    move/from16 v5, p2

    move-object/from16 v8, p3

    move-wide/from16 v10, p6

    move-wide/from16 v12, p6

    :goto_1ca
    move-object/from16 v15, p4

    move/from16 v17, p5

    invoke-virtual/range {v2 .. v17}, Lcom/chuanglan/shanyan_sdk/tool/e;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ZZ)V

    :goto_1d1
    sget-object v0, Lcom/chuanglan/shanyan_sdk/b;->au:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "InitSuccessEnd code"

    aput-object v3, v0, v2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v20

    const-string v1, "processName"

    aput-object v1, v0, v19

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v18

    const/4 v1, 0x4

    const-string v2, "result"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p3, v0, v1

    move-object/from16 v1, v22

    invoke-static {v1, v0}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
