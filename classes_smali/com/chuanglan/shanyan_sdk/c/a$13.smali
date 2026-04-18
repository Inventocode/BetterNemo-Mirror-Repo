.class Lcom/chuanglan/shanyan_sdk/c/a$13;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/chuanglan/shanyan_sdk/tool/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chuanglan/shanyan_sdk/c/a;->l()V
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

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/c/a$13;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJZ)V
    .registers 37

    move-object/from16 v0, p0

    move-object/from16 v15, p3

    move/from16 v14, p4

    move-wide/from16 v11, p11

    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/c/a$13;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-static {v1}, Lcom/chuanglan/shanyan_sdk/c/a;->a(Lcom/chuanglan/shanyan_sdk/c/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "preInitStatus"

    const/4 v13, 0x0

    invoke-static {v1, v2, v13}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    sget-object v1, Lcom/chuanglan/shanyan_sdk/b;->as:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long v17, v1, p9

    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/c/a$13;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-static {v1}, Lcom/chuanglan/shanyan_sdk/c/a;->a(Lcom/chuanglan/shanyan_sdk/c/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "preFailFlag"

    const-wide/16 v3, 0x3

    invoke-static {v1, v2, v3, v4}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "cache"

    move-object/from16 v9, p6

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    iget-object v3, v0, Lcom/chuanglan/shanyan_sdk/c/a$13;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-static {v3}, Lcom/chuanglan/shanyan_sdk/c/a;->a(Lcom/chuanglan/shanyan_sdk/c/a;)Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v1, v1, v6

    add-long/2addr v4, v1

    const-string v1, "timeend"

    invoke-static {v3, v1, v4, v5}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_4b
    const/4 v10, 0x4

    const/4 v8, 0x3

    const-string v7, ""

    if-eq v14, v8, :cond_107

    if-eq v14, v10, :cond_c6

    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/c/a$13;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x0

    const-string v5, "2"

    const-string v6, "0"

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v20, v7

    move-object/from16 v7, p3

    const/16 v21, 0x3

    move-object/from16 v8, v16

    const/16 v22, 0x4

    move-wide/from16 v9, p7

    move-wide/from16 v11, v17

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move/from16 v15, v19

    move/from16 v16, p13

    invoke-static/range {v1 .. v16}, Lcom/chuanglan/shanyan_sdk/c/a;->a(Lcom/chuanglan/shanyan_sdk/c/a;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v1, Lcom/chuanglan/shanyan_sdk/b;->aq:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_c2

    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/c/a$13;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    const/4 v4, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v5, p11

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v3, v20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v16, 0x0

    const-string v5, "2"

    const-string v6, "0"

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v7, p3

    move-wide/from16 v9, p7

    move-wide/from16 v11, v17

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    const/16 v19, 0x0

    move/from16 v15, v16

    goto/16 :goto_134

    :cond_c2
    const/16 v19, 0x0

    goto/16 :goto_139

    :cond_c6
    move-object v3, v7

    move-wide v5, v11

    const/16 v19, 0x0

    const/16 v21, 0x3

    const/16 v22, 0x4

    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/c/a$13;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    move/from16 v15, p1

    move-object/from16 v14, p3

    invoke-static {v1, v15, v14}, Lcom/chuanglan/shanyan_sdk/c/a;->c(Lcom/chuanglan/shanyan_sdk/c/a;ILjava/lang/String;)V

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/e;->a()Lcom/chuanglan/shanyan_sdk/tool/e;

    move-result-object v1

    const/4 v4, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v16, 0x0

    const-string v5, "2"

    const-string v6, "0"

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v7, p3

    move-wide/from16 v9, p7

    move-wide/from16 v11, v17

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move/from16 v15, v16

    move/from16 v16, p13

    invoke-virtual/range {v1 .. v16}, Lcom/chuanglan/shanyan_sdk/tool/e;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_139

    :cond_107
    move-object v3, v7

    move-wide v5, v11

    const/16 v19, 0x0

    const/16 v21, 0x3

    const/16 v22, 0x4

    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/c/a$13;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    const/4 v4, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v15, 0x0

    const-string v5, "2"

    const-string v6, "0"

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v7, p3

    move-wide/from16 v9, p7

    move-wide/from16 v11, v17

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    :goto_134
    move/from16 v16, p13

    invoke-virtual/range {v1 .. v16}, Lcom/chuanglan/shanyan_sdk/c/a;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ZZ)V

    :goto_139
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "PreInitialFailEnd code"

    aput-object v2, v1, v19

    const/4 v2, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "processName"

    aput-object v3, v1, v2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v21

    const-string v2, "result"

    aput-object v2, v1, v22

    const/4 v2, 0x5

    aput-object p3, v1, v2

    const-string v2, "ProcessShanYanLogger"

    invoke-static {v2, v1}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJJZLjava/lang/String;)V
    .registers 40

    move-object/from16 v0, p0

    move/from16 v15, p1

    move/from16 v14, p6

    move-wide/from16 v11, p11

    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/c/a$13;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-static {v1}, Lcom/chuanglan/shanyan_sdk/c/a;->a(Lcom/chuanglan/shanyan_sdk/c/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "preInitStatus"

    const/4 v13, 0x1

    invoke-static {v1, v2, v13}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long v16, v1, p9

    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/c/a$13;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-static {v1}, Lcom/chuanglan/shanyan_sdk/c/a;->a(Lcom/chuanglan/shanyan_sdk/c/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "preResult"

    invoke-static {v1, v2, v13}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/c/a$13;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-static {v1}, Lcom/chuanglan/shanyan_sdk/c/a;->a(Lcom/chuanglan/shanyan_sdk/c/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/chuanglan/shanyan_sdk/utils/i;->b(Landroid/content/Context;)I

    move-result v9

    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/c/a$13;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-static {v1}, Lcom/chuanglan/shanyan_sdk/c/a;->a(Lcom/chuanglan/shanyan_sdk/c/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "SIMDATAID"

    invoke-static {v1, v2, v9}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/c/a$13;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-static {v1}, Lcom/chuanglan/shanyan_sdk/c/a;->a(Lcom/chuanglan/shanyan_sdk/c/a;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/chuanglan/shanyan_sdk/c/a$13;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-static {v2}, Lcom/chuanglan/shanyan_sdk/c/a;->a(Lcom/chuanglan/shanyan_sdk/c/a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/chuanglan/shanyan_sdk/utils/g;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SIMOperator"

    invoke-static {v1, v3, v2}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x0

    const-string v5, ""

    if-eq v14, v7, :cond_160

    if-eq v14, v10, :cond_cb

    sget-object v1, Lcom/chuanglan/shanyan_sdk/b;->aq:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/utils/y;->a()V

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/h;->a()Lcom/chuanglan/shanyan_sdk/tool/h;

    move-result-object v1

    iget-object v2, v0, Lcom/chuanglan/shanyan_sdk/c/a$13;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-static {v2}, Lcom/chuanglan/shanyan_sdk/c/a;->c(Lcom/chuanglan/shanyan_sdk/c/a;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iget-object v3, v0, Lcom/chuanglan/shanyan_sdk/c/a$13;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-static {v3}, Lcom/chuanglan/shanyan_sdk/c/a;->d(Lcom/chuanglan/shanyan_sdk/c/a;)Z

    move-result v3

    move-object/from16 v4, p5

    move-object v10, v5

    move-wide/from16 v5, p9

    const/4 v14, 0x0

    move-wide/from16 v7, p11

    invoke-virtual/range {v1 .. v8}, Lcom/chuanglan/shanyan_sdk/tool/h;->a(Ljava/util/concurrent/ExecutorService;ZLjava/lang/String;JJ)V

    goto :goto_86

    :cond_7f
    move-object v10, v5

    const/4 v14, 0x0

    sget-object v1, Lcom/chuanglan/shanyan_sdk/b;->as:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_86
    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/c/a$13;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const-string v5, "2"

    const-string v6, "1"

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p6

    move-object/from16 v7, p3

    move/from16 v21, v9

    const/16 v22, 0x4

    move-wide/from16 v9, p7

    move-wide/from16 v11, v16

    const/16 v23, 0x1

    move-object/from16 v13, v19

    move-object/from16 v14, p14

    move/from16 v15, v20

    move/from16 v16, p13

    invoke-static/range {v1 .. v16}, Lcom/chuanglan/shanyan_sdk/c/a;->a(Lcom/chuanglan/shanyan_sdk/c/a;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_19b

    :cond_cb
    move-object v10, v5

    move/from16 v21, v9

    const/16 v22, 0x4

    const/16 v23, 0x1

    const-string v1, "CTCC"

    move-object/from16 v9, p2

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f9

    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/c/a$13;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-static {v1}, Lcom/chuanglan/shanyan_sdk/c/a;->a(Lcom/chuanglan/shanyan_sdk/c/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "ctcc_accessCode"

    invoke-static {v1, v2, v10}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/chuanglan/shanyan_sdk/c/a$13;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-static {v2}, Lcom/chuanglan/shanyan_sdk/c/a;->a(Lcom/chuanglan/shanyan_sdk/c/a;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "ctcc_gwAuth"

    invoke-static {v2, v3, v10}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    goto :goto_109

    :cond_f9
    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/c/a$13;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-static {v1}, Lcom/chuanglan/shanyan_sdk/c/a;->a(Lcom/chuanglan/shanyan_sdk/c/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "cucc_accessCode"

    invoke-static {v1, v2, v10}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v19, v1

    move-object/from16 v20, v10

    :goto_109
    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/e;->a()Lcom/chuanglan/shanyan_sdk/tool/e;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v15, p1

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v24, 0x0

    const-string v5, "2"

    const-string v6, "1"

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p6

    move-object/from16 v7, p3

    move-wide/from16 v9, p7

    move-wide/from16 v11, v16

    move-object/from16 v14, p14

    move/from16 v15, v24

    move/from16 v16, p13

    invoke-virtual/range {v1 .. v16}, Lcom/chuanglan/shanyan_sdk/tool/e;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ZZ)V

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/j;->a()Lcom/chuanglan/shanyan_sdk/tool/j;

    move-result-object v1

    iget-object v2, v0, Lcom/chuanglan/shanyan_sdk/c/a$13;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-static {v2}, Lcom/chuanglan/shanyan_sdk/c/a;->d(Lcom/chuanglan/shanyan_sdk/c/a;)Z

    move-result v5

    move-object/from16 v2, p5

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    move-wide/from16 v6, p9

    move-wide/from16 v8, p11

    invoke-virtual/range {v1 .. v9}, Lcom/chuanglan/shanyan_sdk/tool/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJ)V

    goto :goto_19b

    :cond_160
    move-object v10, v5

    move/from16 v21, v9

    const/16 v22, 0x4

    const/16 v23, 0x1

    move-object/from16 v9, p2

    sget-object v1, Lcom/chuanglan/shanyan_sdk/b;->aq:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/utils/y;->a()V

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/h;->a()Lcom/chuanglan/shanyan_sdk/tool/h;

    move-result-object v1

    iget-object v2, v0, Lcom/chuanglan/shanyan_sdk/c/a$13;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-static {v2}, Lcom/chuanglan/shanyan_sdk/c/a;->c(Lcom/chuanglan/shanyan_sdk/c/a;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iget-object v3, v0, Lcom/chuanglan/shanyan_sdk/c/a$13;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-static {v3}, Lcom/chuanglan/shanyan_sdk/c/a;->d(Lcom/chuanglan/shanyan_sdk/c/a;)Z

    move-result v3

    move-object/from16 v4, p5

    move-wide/from16 v5, p9

    move-wide/from16 v7, p11

    invoke-virtual/range {v1 .. v8}, Lcom/chuanglan/shanyan_sdk/tool/h;->a(Ljava/util/concurrent/ExecutorService;ZLjava/lang/String;JJ)V

    const-string v1, "cache"

    move-object/from16 v14, p14

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move/from16 v13, p6

    const/4 v11, 0x3

    if-eqz v1, :cond_1a0

    if-eq v11, v13, :cond_19b

    goto :goto_1a0

    :cond_19b
    :goto_19b
    const/16 v17, 0x0

    const/16 v20, 0x3

    goto :goto_1e7

    :cond_1a0
    :goto_1a0
    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/e;->a()Lcom/chuanglan/shanyan_sdk/tool/e;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v3, p11

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v12, p1

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const-string v5, "2"

    const-string v6, "1"

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p6

    move-object/from16 v7, p3

    move-wide/from16 v9, p7

    const/16 v20, 0x3

    move-wide/from16 v11, v16

    move-object/from16 v13, v18

    move-object/from16 v14, p14

    const/16 v17, 0x0

    move/from16 v15, v19

    move/from16 v16, p13

    invoke-virtual/range {v1 .. v16}, Lcom/chuanglan/shanyan_sdk/tool/e;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ZZ)V

    :goto_1e7
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "preInitialCheck code"

    aput-object v2, v1, v17

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v23

    const/4 v2, 0x2

    const-string v3, "processName"

    aput-object v3, v1, v2

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v20

    const-string v2, "result"

    aput-object v2, v1, v22

    const/4 v2, 0x5

    aput-object p3, v1, v2

    const/4 v2, 0x6

    const-string v3, "dataId"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "ProcessShanYanLogger"

    invoke-static {v2, v1}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
