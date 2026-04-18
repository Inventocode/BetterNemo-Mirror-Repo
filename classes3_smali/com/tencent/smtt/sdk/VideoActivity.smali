.class public Lcom/tencent/smtt/sdk/VideoActivity;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-static {p0}, Lcom/tencent/smtt/sdk/r;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/r;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/smtt/sdk/r;->a(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-super {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    const-string v2, "extraData"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1e

    :cond_1d
    move-object v0, v1

    :goto_1e
    if-eqz v0, :cond_30

    const-string v2, "callMode"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/smtt/sdk/r;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/r;

    move-result-object p1

    invoke-virtual {p1, v1, v0, v1}, Lcom/tencent/smtt/sdk/r;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tbs/video/interfaces/a;)Z

    :cond_30
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {p0}, Lcom/tencent/smtt/sdk/r;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/r;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1}, Lcom/tencent/smtt/sdk/r;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method protected onPause()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {p0}, Lcom/tencent/smtt/sdk/r;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/r;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/tencent/smtt/sdk/r;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {p0}, Lcom/tencent/smtt/sdk/r;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/r;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/tencent/smtt/sdk/r;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method protected onStop()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {p0}, Lcom/tencent/smtt/sdk/r;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/r;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/tencent/smtt/sdk/r;->a(Landroid/app/Activity;I)V

    return-void
.end method
