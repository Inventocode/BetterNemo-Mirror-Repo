.class Lcom/chuanglan/shanyan_sdk/c/a$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chuanglan/shanyan_sdk/c/a;->a(ILjava/lang/String;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/chuanglan/shanyan_sdk/c/a;


# direct methods
.method constructor <init>(Lcom/chuanglan/shanyan_sdk/c/a;IJJLjava/lang/String;)V
    .registers 8

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/c/a$10;->e:Lcom/chuanglan/shanyan_sdk/c/a;

    iput p2, p0, Lcom/chuanglan/shanyan_sdk/c/a$10;->a:I

    iput-wide p3, p0, Lcom/chuanglan/shanyan_sdk/c/a$10;->b:J

    iput-wide p5, p0, Lcom/chuanglan/shanyan_sdk/c/a$10;->c:J

    iput-object p7, p0, Lcom/chuanglan/shanyan_sdk/c/a$10;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 27

    move-object/from16 v1, p0

    const-string/jumbo v0, "用户被禁用"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    :try_start_8
    iget-object v5, v1, Lcom/chuanglan/shanyan_sdk/c/a$10;->e:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-static {v5}, Lcom/chuanglan/shanyan_sdk/c/a;->a(Lcom/chuanglan/shanyan_sdk/c/a;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/chuanglan/shanyan_sdk/c/a;->a(Lcom/chuanglan/shanyan_sdk/c/a;Landroid/content/Context;)V

    iget-object v5, v1, Lcom/chuanglan/shanyan_sdk/c/a$10;->e:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-static {v5}, Lcom/chuanglan/shanyan_sdk/c/a;->a(Lcom/chuanglan/shanyan_sdk/c/a;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "getPhoneInfoTimeOut"

    const/4 v7, 0x4

    invoke-static {v5, v6, v7}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    iget-object v6, v1, Lcom/chuanglan/shanyan_sdk/c/a$10;->e:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-static {v6}, Lcom/chuanglan/shanyan_sdk/c/a;->a(Lcom/chuanglan/shanyan_sdk/c/a;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/chuanglan/shanyan_sdk/utils/g;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v8, v5

    iget v10, v1, Lcom/chuanglan/shanyan_sdk/c/a$10;->a:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iget-wide v13, v1, Lcom/chuanglan/shanyan_sdk/c/a$10;->b:J

    iget-wide v5, v1, Lcom/chuanglan/shanyan_sdk/c/a$10;->c:J

    move-wide v15, v5

    invoke-static/range {v7 .. v16}, Lcom/chuanglan/shanyan_sdk/utils/y;->a(Ljava/lang/String;JIJJJ)V

    sget-object v5, Lcom/chuanglan/shanyan_sdk/b;->av:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-eqz v5, :cond_56

    if-eq v5, v4, :cond_45

    goto/16 :goto_106

    :cond_45
    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/k;->a()Lcom/chuanglan/shanyan_sdk/tool/k;

    move-result-object v6

    iget v7, v1, Lcom/chuanglan/shanyan_sdk/c/a$10;->a:I

    iget-object v8, v1, Lcom/chuanglan/shanyan_sdk/c/a$10;->d:Ljava/lang/String;

    iget-wide v9, v1, Lcom/chuanglan/shanyan_sdk/c/a$10;->b:J

    iget-wide v11, v1, Lcom/chuanglan/shanyan_sdk/c/a$10;->c:J

    invoke-virtual/range {v6 .. v12}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(ILjava/lang/String;JJ)V

    goto/16 :goto_106

    :cond_56
    iget-object v5, v1, Lcom/chuanglan/shanyan_sdk/c/a$10;->e:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-static {v5}, Lcom/chuanglan/shanyan_sdk/c/a;->a(Lcom/chuanglan/shanyan_sdk/c/a;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "accOff"

    invoke-static {v5, v6, v3}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    if-ne v2, v5, :cond_90

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/k;->a()Lcom/chuanglan/shanyan_sdk/tool/k;

    move-result-object v6

    const/16 v7, 0x408

    iget-object v5, v1, Lcom/chuanglan/shanyan_sdk/c/a$10;->e:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-static {v5}, Lcom/chuanglan/shanyan_sdk/c/a;->a(Lcom/chuanglan/shanyan_sdk/c/a;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/chuanglan/shanyan_sdk/utils/g;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const/16 v5, 0x408

    invoke-static {v5, v0, v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget v10, v1, Lcom/chuanglan/shanyan_sdk/c/a$10;->a:I

    const-string v11, "1032"

    const-string v12, "check_error"

    const-wide/16 v13, 0x0

    iget-wide v2, v1, Lcom/chuanglan/shanyan_sdk/c/a$10;->b:J

    iget-wide v4, v1, Lcom/chuanglan/shanyan_sdk/c/a$10;->c:J

    const/16 v19, 0x1

    move-wide v15, v2

    move-wide/from16 v17, v4

    invoke-virtual/range {v6 .. v19}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJZ)V

    goto/16 :goto_106

    :cond_90
    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/g;->a()Lcom/chuanglan/shanyan_sdk/tool/g;

    move-result-object v20

    iget v0, v1, Lcom/chuanglan/shanyan_sdk/c/a$10;->a:I

    iget-wide v2, v1, Lcom/chuanglan/shanyan_sdk/c/a$10;->b:J

    iget-wide v4, v1, Lcom/chuanglan/shanyan_sdk/c/a$10;->c:J

    move/from16 v21, v0

    move-wide/from16 v22, v2

    move-wide/from16 v24, v4

    invoke-virtual/range {v20 .. v25}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(IJJ)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_a3} :catch_a4

    goto :goto_106

    :catch_a4
    move-exception v0

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/utils/y;->a()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "getPhoneInfoMethod Exception_e="

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v3, "ExceptionShanYanTask"

    invoke-static {v3, v2}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/k;->a()Lcom/chuanglan/shanyan_sdk/tool/k;

    move-result-object v4

    const/16 v5, 0x3f6

    iget-object v2, v1, Lcom/chuanglan/shanyan_sdk/c/a$10;->e:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-static {v2}, Lcom/chuanglan/shanyan_sdk/c/a;->a(Lcom/chuanglan/shanyan_sdk/c/a;)Landroid/content/Context;

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

    const-string v8, "getPhoneInfoMethod--Exception_e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v3, v7}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget v8, v1, Lcom/chuanglan/shanyan_sdk/c/a$10;->a:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    const-wide/16 v11, 0x0

    iget-wide v13, v1, Lcom/chuanglan/shanyan_sdk/c/a$10;->b:J

    iget-wide v2, v1, Lcom/chuanglan/shanyan_sdk/c/a$10;->c:J

    const/16 v17, 0x0

    const-string v9, "1014"

    move-wide v15, v2

    invoke-virtual/range {v4 .. v17}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJZ)V

    :goto_106
    return-void
.end method
