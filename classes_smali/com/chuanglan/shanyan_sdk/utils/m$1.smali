.class Lcom/chuanglan/shanyan_sdk/utils/m$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chuanglan/shanyan_sdk/utils/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chuanglan/shanyan_sdk/utils/m;


# direct methods
.method constructor <init>(Lcom/chuanglan/shanyan_sdk/utils/m;)V
    .registers 2

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/utils/m$1;->a:Lcom/chuanglan/shanyan_sdk/utils/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/utils/m$1;->a:Lcom/chuanglan/shanyan_sdk/utils/m;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/m;->a(Lcom/chuanglan/shanyan_sdk/utils/m;)V

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/utils/m$1;->a:Lcom/chuanglan/shanyan_sdk/utils/m;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/m;->b(Lcom/chuanglan/shanyan_sdk/utils/m;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/utils/m$1;->a:Lcom/chuanglan/shanyan_sdk/utils/m;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/m;->d(Lcom/chuanglan/shanyan_sdk/utils/m;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/utils/m$1;->a:Lcom/chuanglan/shanyan_sdk/utils/m;

    invoke-static {v1}, Lcom/chuanglan/shanyan_sdk/utils/m;->c(Lcom/chuanglan/shanyan_sdk/utils/m;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    goto :goto_33

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "GifDecoder  Exception_e="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "ExceptionShanYanTask"

    invoke-static {v0, v1}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_33
    :goto_33
    return-void
.end method
