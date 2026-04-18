.class Lcom/chuanglan/shanyan_sdk/c/a$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chuanglan/shanyan_sdk/c/a;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/chuanglan/shanyan_sdk/c/a;Landroid/content/Context;)V
    .registers 3

    iput-object p2, p0, Lcom/chuanglan/shanyan_sdk/c/a$9;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/c/a$9;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/g;->g(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/c/a$9;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/g;->h(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/c/a$9;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/g;->i(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/c/a$9;->a:Landroid/content/Context;

    sget-object v1, Lcom/chuanglan/shanyan_sdk/utils/w;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/b/i;->a()Lcom/chuanglan/shanyan_sdk/b/i;

    move-result-object v0

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/c/a$9;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/chuanglan/shanyan_sdk/b/i;->a(Landroid/content/Context;)V

    :cond_27
    return-void
.end method
