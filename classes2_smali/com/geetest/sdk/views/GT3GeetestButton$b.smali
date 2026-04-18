.class Lcom/geetest/sdk/views/GT3GeetestButton$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/geetest/sdk/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geetest/sdk/views/GT3GeetestButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/geetest/sdk/views/GT3GeetestButton;


# direct methods
.method constructor <init>(Lcom/geetest/sdk/views/GT3GeetestButton;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$902(Lcom/geetest/sdk/views/GT3GeetestButton;Z)Z

    .line 2
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$300(Lcom/geetest/sdk/views/GT3GeetestButton;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$400(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$300(Lcom/geetest/sdk/views/GT3GeetestButton;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 3
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$300(Lcom/geetest/sdk/views/GT3GeetestButton;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$400(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/geetest/sdk/views/GT3GeetestButton$b$e;

    invoke-direct {v1, p0}, Lcom/geetest/sdk/views/GT3GeetestButton$b$e;-><init>(Lcom/geetest/sdk/views/GT3GeetestButton$b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_30
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 4
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$002(Lcom/geetest/sdk/views/GT3GeetestButton;Z)Z

    .line 5
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0, v1}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$902(Lcom/geetest/sdk/views/GT3GeetestButton;Z)Z

    .line 6
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$300(Lcom/geetest/sdk/views/GT3GeetestButton;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$400(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$300(Lcom/geetest/sdk/views/GT3GeetestButton;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 7
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$300(Lcom/geetest/sdk/views/GT3GeetestButton;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$400(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/geetest/sdk/views/GT3GeetestButton$b$g;

    invoke-direct {v1, p0, p2, p1}, Lcom/geetest/sdk/views/GT3GeetestButton$b$g;-><init>(Lcom/geetest/sdk/views/GT3GeetestButton$b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_35
    return-void
.end method

.method public b()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$602(Lcom/geetest/sdk/views/GT3GeetestButton;Z)Z

    .line 2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v0, v2, :cond_3b

    .line 3
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$300(Lcom/geetest/sdk/views/GT3GeetestButton;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$400(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$300(Lcom/geetest/sdk/views/GT3GeetestButton;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 4
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$300(Lcom/geetest/sdk/views/GT3GeetestButton;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$400(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/geetest/sdk/views/GT3GeetestButton$b$h;

    invoke-direct {v1, p0}, Lcom/geetest/sdk/views/GT3GeetestButton$b$h;-><init>(Lcom/geetest/sdk/views/GT3GeetestButton$b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_44

    .line 12
    :cond_3b
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$700(Lcom/geetest/sdk/views/GT3GeetestButton;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_44
    :goto_44
    return-void
.end method

.method public c()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$300(Lcom/geetest/sdk/views/GT3GeetestButton;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$400(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$300(Lcom/geetest/sdk/views/GT3GeetestButton;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 2
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$300(Lcom/geetest/sdk/views/GT3GeetestButton;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$400(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/geetest/sdk/views/GT3GeetestButton$b$d;

    invoke-direct {v1, p0}, Lcom/geetest/sdk/views/GT3GeetestButton$b$d;-><init>(Lcom/geetest/sdk/views/GT3GeetestButton$b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2a
    return-void
.end method

.method public d()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$902(Lcom/geetest/sdk/views/GT3GeetestButton;Z)Z

    .line 2
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0, v1}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$202(Lcom/geetest/sdk/views/GT3GeetestButton;Z)Z

    .line 3
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$300(Lcom/geetest/sdk/views/GT3GeetestButton;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$400(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$300(Lcom/geetest/sdk/views/GT3GeetestButton;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 4
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$300(Lcom/geetest/sdk/views/GT3GeetestButton;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$400(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/geetest/sdk/views/GT3GeetestButton$b$c;

    invoke-direct {v1, p0}, Lcom/geetest/sdk/views/GT3GeetestButton$b$c;-><init>(Lcom/geetest/sdk/views/GT3GeetestButton$b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_35
    return-void
.end method

.method public e()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$602(Lcom/geetest/sdk/views/GT3GeetestButton;Z)Z

    .line 2
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$300(Lcom/geetest/sdk/views/GT3GeetestButton;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$400(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$300(Lcom/geetest/sdk/views/GT3GeetestButton;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 3
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$300(Lcom/geetest/sdk/views/GT3GeetestButton;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$400(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/geetest/sdk/views/GT3GeetestButton$b$i;

    invoke-direct {v1, p0}, Lcom/geetest/sdk/views/GT3GeetestButton$b$i;-><init>(Lcom/geetest/sdk/views/GT3GeetestButton$b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_30
    return-void
.end method

.method public f()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$002(Lcom/geetest/sdk/views/GT3GeetestButton;Z)Z

    .line 2
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0, v1}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$202(Lcom/geetest/sdk/views/GT3GeetestButton;Z)Z

    .line 3
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0, v1}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$1202(Lcom/geetest/sdk/views/GT3GeetestButton;Z)Z

    return-void
.end method

.method public g()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$002(Lcom/geetest/sdk/views/GT3GeetestButton;Z)Z

    .line 2
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0, v1}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$902(Lcom/geetest/sdk/views/GT3GeetestButton;Z)Z

    return-void
.end method

.method public h()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$300(Lcom/geetest/sdk/views/GT3GeetestButton;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$400(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$300(Lcom/geetest/sdk/views/GT3GeetestButton;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 2
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$300(Lcom/geetest/sdk/views/GT3GeetestButton;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$400(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/geetest/sdk/views/GT3GeetestButton$b$f;

    invoke-direct {v1, p0}, Lcom/geetest/sdk/views/GT3GeetestButton$b$f;-><init>(Lcom/geetest/sdk/views/GT3GeetestButton$b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2a
    return-void
.end method

.method public i()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$002(Lcom/geetest/sdk/views/GT3GeetestButton;Z)Z

    return-void
.end method

.method public j()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$002(Lcom/geetest/sdk/views/GT3GeetestButton;Z)Z

    .line 2
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$100(Lcom/geetest/sdk/views/GT3GeetestButton;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    .line 3
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0, v1}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$202(Lcom/geetest/sdk/views/GT3GeetestButton;Z)Z

    .line 4
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$300(Lcom/geetest/sdk/views/GT3GeetestButton;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$400(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_6e

    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$300(Lcom/geetest/sdk/views/GT3GeetestButton;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 5
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$300(Lcom/geetest/sdk/views/GT3GeetestButton;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$400(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/geetest/sdk/views/GT3GeetestButton$b$a;

    invoke-direct {v1, p0}, Lcom/geetest/sdk/views/GT3GeetestButton$b$a;-><init>(Lcom/geetest/sdk/views/GT3GeetestButton$b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_6e

    .line 30
    :cond_3f
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0, v1}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$202(Lcom/geetest/sdk/views/GT3GeetestButton;Z)Z

    .line 31
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$300(Lcom/geetest/sdk/views/GT3GeetestButton;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$400(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_6e

    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$300(Lcom/geetest/sdk/views/GT3GeetestButton;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 32
    iget-object v0, p0, Lcom/geetest/sdk/views/GT3GeetestButton$b;->a:Lcom/geetest/sdk/views/GT3GeetestButton;

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$300(Lcom/geetest/sdk/views/GT3GeetestButton;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/geetest/sdk/views/GT3GeetestButton;->access$400(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/geetest/sdk/views/GT3GeetestButton$b$b;

    invoke-direct {v1, p0}, Lcom/geetest/sdk/views/GT3GeetestButton$b$b;-><init>(Lcom/geetest/sdk/views/GT3GeetestButton$b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_6e
    :goto_6e
    return-void
.end method
