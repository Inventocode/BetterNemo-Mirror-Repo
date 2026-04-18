.class public abstract Lcom/geetest/sdk/e;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geetest/sdk/e$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/content/Context;

.field private c:Lcom/geetest/sdk/e$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lcom/geetest/sdk/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geetest/sdk/e;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "gt3_dialog_style"

    .line 1
    invoke-static {p1, v0}, Lcom/geetest/sdk/utils/o;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 3
    iput-object p1, p0, Lcom/geetest/sdk/e;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/view/LayoutInflater;)Landroid/view/View;
.end method

.method protected abstract a()V
.end method

.method protected a(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public a(Lcom/geetest/sdk/e$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/e;->c:Lcom/geetest/sdk/e$a;

    return-void
.end method

.method public b(Landroid/view/View;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/e;->a:Landroid/view/View;

    return-void
.end method

.method public dismiss()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 2
    iget-object v0, p0, Lcom/geetest/sdk/e;->b:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_34

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_28

    .line 6
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/geetest/sdk/e;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_37

    .line 7
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_37

    .line 12
    :cond_28
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_37

    .line 13
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_37

    .line 18
    :cond_34
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_37
    :goto_37
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_f

    const/high16 v0, 0x1000000

    .line 5
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    goto :goto_16

    .line 8
    :cond_f
    sget-object p1, Lcom/geetest/sdk/e;->d:Ljava/lang/String;

    const-string v0, "getWindow为null，硬件加速开启失败！"

    invoke-static {p1, v0}, Lcom/geetest/sdk/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :goto_16
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/geetest/sdk/e;->a(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/geetest/sdk/e;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 14
    iget-object v0, p0, Lcom/geetest/sdk/e;->a:Landroid/view/View;

    instance-of v1, v0, Lcom/geetest/sdk/dialog/views/GtWebView;

    if-eqz v1, :cond_48

    if-eqz v0, :cond_48

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 17
    iget-object v0, p0, Lcom/geetest/sdk/e;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 18
    sget v1, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->n:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 19
    sget v1, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->o:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 20
    iget-object v1, p0, Lcom/geetest/sdk/e;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    :cond_48
    invoke-virtual {p0, p1}, Lcom/geetest/sdk/e;->a(Landroid/view/View;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/e;->c:Lcom/geetest/sdk/e$a;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p1}, Lcom/geetest/sdk/e$a;->onWindowFocusChanged(Z)V

    :cond_7
    return-void
.end method

.method public show()V
    .registers 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/geetest/sdk/e;->c:Lcom/geetest/sdk/e$a;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Lcom/geetest/sdk/e$a;->a()V

    .line 4
    :cond_7
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 5
    iget-object v0, p0, Lcom/geetest/sdk/e;->c:Lcom/geetest/sdk/e$a;

    if-eqz v0, :cond_11

    .line 6
    invoke-interface {v0}, Lcom/geetest/sdk/e$a;->b()V

    .line 8
    :cond_11
    invoke-virtual {p0}, Lcom/geetest/sdk/e;->a()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_19
    return-void
.end method
