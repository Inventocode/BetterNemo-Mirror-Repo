.class Lcom/chuanglan/shanyan_sdk/c/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chuanglan/shanyan_sdk/c/a;->b(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:J

.field final synthetic i:J

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Z

.field final synthetic m:Z

.field final synthetic n:Lcom/chuanglan/shanyan_sdk/c/a;


# direct methods
.method constructor <init>(Lcom/chuanglan/shanyan_sdk/c/a;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ZZ)V
    .registers 20

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/chuanglan/shanyan_sdk/c/a$3;->n:Lcom/chuanglan/shanyan_sdk/c/a;

    move v1, p2

    iput v1, v0, Lcom/chuanglan/shanyan_sdk/c/a$3;->a:I

    move-object v1, p3

    iput-object v1, v0, Lcom/chuanglan/shanyan_sdk/c/a$3;->b:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/chuanglan/shanyan_sdk/c/a$3;->c:Ljava/lang/String;

    move v1, p5

    iput v1, v0, Lcom/chuanglan/shanyan_sdk/c/a$3;->d:I

    move-object v1, p6

    iput-object v1, v0, Lcom/chuanglan/shanyan_sdk/c/a$3;->e:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/chuanglan/shanyan_sdk/c/a$3;->f:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/chuanglan/shanyan_sdk/c/a$3;->g:Ljava/lang/String;

    move-wide v1, p9

    iput-wide v1, v0, Lcom/chuanglan/shanyan_sdk/c/a$3;->h:J

    move-wide v1, p11

    iput-wide v1, v0, Lcom/chuanglan/shanyan_sdk/c/a$3;->i:J

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/chuanglan/shanyan_sdk/c/a$3;->j:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/chuanglan/shanyan_sdk/c/a$3;->k:Ljava/lang/String;

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/chuanglan/shanyan_sdk/c/a$3;->l:Z

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/chuanglan/shanyan_sdk/c/a$3;->m:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/c/a$3;->n:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-static {v1}, Lcom/chuanglan/shanyan_sdk/c/a;->f(Lcom/chuanglan/shanyan_sdk/c/a;)Lcom/chuanglan/shanyan_sdk/listener/GetPhoneInfoListener;

    move-result-object v1

    if-eqz v1, :cond_44

    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/c/a$3;->n:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-static {v1}, Lcom/chuanglan/shanyan_sdk/c/a;->f(Lcom/chuanglan/shanyan_sdk/c/a;)Lcom/chuanglan/shanyan_sdk/listener/GetPhoneInfoListener;

    move-result-object v1

    iget v2, v0, Lcom/chuanglan/shanyan_sdk/c/a$3;->a:I

    iget-object v3, v0, Lcom/chuanglan/shanyan_sdk/c/a$3;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/chuanglan/shanyan_sdk/listener/GetPhoneInfoListener;->getPhoneInfoStatus(ILjava/lang/String;)V

    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/c/a$3;->n:Lcom/chuanglan/shanyan_sdk/c/a;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/chuanglan/shanyan_sdk/c/a;->a(Lcom/chuanglan/shanyan_sdk/c/a;Lcom/chuanglan/shanyan_sdk/listener/GetPhoneInfoListener;)Lcom/chuanglan/shanyan_sdk/listener/GetPhoneInfoListener;

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/e;->a()Lcom/chuanglan/shanyan_sdk/tool/e;

    move-result-object v3

    iget v4, v0, Lcom/chuanglan/shanyan_sdk/c/a$3;->a:I

    iget-object v5, v0, Lcom/chuanglan/shanyan_sdk/c/a$3;->c:Ljava/lang/String;

    iget v6, v0, Lcom/chuanglan/shanyan_sdk/c/a$3;->d:I

    iget-object v7, v0, Lcom/chuanglan/shanyan_sdk/c/a$3;->e:Ljava/lang/String;

    iget-object v8, v0, Lcom/chuanglan/shanyan_sdk/c/a$3;->f:Ljava/lang/String;

    iget-object v9, v0, Lcom/chuanglan/shanyan_sdk/c/a$3;->b:Ljava/lang/String;

    iget-object v10, v0, Lcom/chuanglan/shanyan_sdk/c/a$3;->g:Ljava/lang/String;

    iget-wide v11, v0, Lcom/chuanglan/shanyan_sdk/c/a$3;->h:J

    iget-wide v13, v0, Lcom/chuanglan/shanyan_sdk/c/a$3;->i:J

    iget-object v15, v0, Lcom/chuanglan/shanyan_sdk/c/a$3;->j:Ljava/lang/String;

    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/c/a$3;->k:Ljava/lang/String;

    iget-boolean v2, v0, Lcom/chuanglan/shanyan_sdk/c/a$3;->l:Z

    move/from16 v17, v2

    iget-boolean v2, v0, Lcom/chuanglan/shanyan_sdk/c/a$3;->m:Z

    move-object/from16 v16, v1

    move/from16 v18, v2

    invoke-virtual/range {v3 .. v18}, Lcom/chuanglan/shanyan_sdk/tool/e;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ZZ)V

    :cond_44
    return-void
.end method
