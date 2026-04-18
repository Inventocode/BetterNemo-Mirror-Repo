.class Lcom/chuanglan/shanyan_sdk/tool/e$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chuanglan/shanyan_sdk/tool/e$1;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chuanglan/shanyan_sdk/tool/e$1;


# direct methods
.method constructor <init>(Lcom/chuanglan/shanyan_sdk/tool/e$1;)V
    .registers 2

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/e$1$1;->a:Lcom/chuanglan/shanyan_sdk/tool/e$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/e$1$1;->a:Lcom/chuanglan/shanyan_sdk/tool/e$1;

    iget-object v0, v0, Lcom/chuanglan/shanyan_sdk/tool/e$1;->a:Lcom/chuanglan/shanyan_sdk/tool/e;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/e;->a(Lcom/chuanglan/shanyan_sdk/tool/e;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "reportCount"

    const-wide/16 v3, 0x64

    invoke-static {v1, v2, v3, v4}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/chuanglan/shanyan_sdk/tool/e;->a(Lcom/chuanglan/shanyan_sdk/tool/e;J)J

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/e$1$1;->a:Lcom/chuanglan/shanyan_sdk/tool/e$1;

    iget-object v0, v0, Lcom/chuanglan/shanyan_sdk/tool/e$1;->a:Lcom/chuanglan/shanyan_sdk/tool/e;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/e;->b(Lcom/chuanglan/shanyan_sdk/tool/e;)Lcom/chuanglan/shanyan_sdk/a/e;

    move-result-object v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/e$1$1;->a:Lcom/chuanglan/shanyan_sdk/tool/e$1;

    iget-object v0, v0, Lcom/chuanglan/shanyan_sdk/tool/e$1;->a:Lcom/chuanglan/shanyan_sdk/tool/e;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/e;->b(Lcom/chuanglan/shanyan_sdk/tool/e;)Lcom/chuanglan/shanyan_sdk/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/a/e;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_5e

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/e$1$1;->a:Lcom/chuanglan/shanyan_sdk/tool/e$1;

    iget-object v0, v0, Lcom/chuanglan/shanyan_sdk/tool/e$1;->a:Lcom/chuanglan/shanyan_sdk/tool/e;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/e;->b(Lcom/chuanglan/shanyan_sdk/tool/e;)Lcom/chuanglan/shanyan_sdk/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chuanglan/shanyan_sdk/a/e;->b()J

    move-result-wide v1

    long-to-float v1, v1

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/tool/e$1$1;->a:Lcom/chuanglan/shanyan_sdk/tool/e$1;

    iget-object v2, v2, Lcom/chuanglan/shanyan_sdk/tool/e$1;->a:Lcom/chuanglan/shanyan_sdk/tool/e;

    invoke-static {v2}, Lcom/chuanglan/shanyan_sdk/tool/e;->c(Lcom/chuanglan/shanyan_sdk/tool/e;)J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v0, v1}, Lcom/chuanglan/shanyan_sdk/tool/e;->a(Lcom/chuanglan/shanyan_sdk/tool/e;I)I

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/e$1$1;->a:Lcom/chuanglan/shanyan_sdk/tool/e$1;

    iget-object v0, v0, Lcom/chuanglan/shanyan_sdk/tool/e$1;->a:Lcom/chuanglan/shanyan_sdk/tool/e;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/e;->d(Lcom/chuanglan/shanyan_sdk/tool/e;)V

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/e$1$1;->a:Lcom/chuanglan/shanyan_sdk/tool/e$1;

    iget-object v0, v0, Lcom/chuanglan/shanyan_sdk/tool/e$1;->a:Lcom/chuanglan/shanyan_sdk/tool/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chuanglan/shanyan_sdk/tool/e;->a(Lcom/chuanglan/shanyan_sdk/tool/e;Z)Z

    :cond_5e
    return-void
.end method
