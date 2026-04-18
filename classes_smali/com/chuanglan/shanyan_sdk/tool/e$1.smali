.class Lcom/chuanglan/shanyan_sdk/tool/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/chuanglan/shanyan_sdk/utils/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chuanglan/shanyan_sdk/tool/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chuanglan/shanyan_sdk/tool/e;


# direct methods
.method constructor <init>(Lcom/chuanglan/shanyan_sdk/tool/e;)V
    .registers 2

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/e$1;->a:Lcom/chuanglan/shanyan_sdk/tool/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .registers 3

    :try_start_0
    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/e$1;->a:Lcom/chuanglan/shanyan_sdk/tool/e;

    invoke-static {p1}, Lcom/chuanglan/shanyan_sdk/tool/e;->e(Lcom/chuanglan/shanyan_sdk/tool/e;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/chuanglan/shanyan_sdk/tool/e$1$1;

    invoke-direct {v0, p0}, Lcom/chuanglan/shanyan_sdk/tool/e$1$1;-><init>(Lcom/chuanglan/shanyan_sdk/tool/e$1;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_13
    return-void
.end method
