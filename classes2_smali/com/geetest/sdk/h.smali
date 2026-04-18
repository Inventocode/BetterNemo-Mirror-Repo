.class public Lcom/geetest/sdk/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geetest/sdk/h$h;,
        Lcom/geetest/sdk/h$i;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/geetest/sdk/GT3ConfigBean;

.field private c:Lcom/geetest/sdk/g;

.field private d:Lcom/geetest/sdk/g;

.field private e:Lcom/geetest/sdk/dialog/views/LoadingView;

.field private f:Lcom/geetest/sdk/dialog/views/GtWebView;

.field private g:Lcom/geetest/sdk/h$h;

.field private h:Lcom/geetest/sdk/dialog/views/WebviewBuilder;

.field private i:Lcom/geetest/sdk/b$b;

.field private j:I

.field private k:Z

.field public l:Lcom/geetest/sdk/h$i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/geetest/sdk/GT3ConfigBean;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/geetest/sdk/h;->j:I

    .line 13
    sget-object v0, Lcom/geetest/sdk/h$i;->INIT:Lcom/geetest/sdk/h$i;

    iput-object v0, p0, Lcom/geetest/sdk/h;->l:Lcom/geetest/sdk/h$i;

    .line 25
    iput-object p1, p0, Lcom/geetest/sdk/h;->a:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/geetest/sdk/h;->b:Lcom/geetest/sdk/GT3ConfigBean;

    .line 27
    new-instance v0, Lcom/geetest/sdk/g;

    invoke-direct {v0, p1}, Lcom/geetest/sdk/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/geetest/sdk/h;->c:Lcom/geetest/sdk/g;

    .line 28
    invoke-virtual {p2}, Lcom/geetest/sdk/GT3ConfigBean;->getDialogOffsetY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/f;->a(I)V

    .line 29
    iget-object v0, p0, Lcom/geetest/sdk/h;->c:Lcom/geetest/sdk/g;

    invoke-virtual {p2}, Lcom/geetest/sdk/GT3ConfigBean;->isCanceledOnTouchOutside()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 30
    new-instance v0, Lcom/geetest/sdk/g;

    invoke-direct {v0, p1}, Lcom/geetest/sdk/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/geetest/sdk/h;->d:Lcom/geetest/sdk/g;

    .line 31
    invoke-virtual {p2}, Lcom/geetest/sdk/GT3ConfigBean;->getDialogOffsetY()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/geetest/sdk/f;->a(I)V

    .line 32
    iget-object p1, p0, Lcom/geetest/sdk/h;->d:Lcom/geetest/sdk/g;

    invoke-virtual {p2}, Lcom/geetest/sdk/GT3ConfigBean;->isCanceledOnTouchOutside()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 33
    iget-object p1, p0, Lcom/geetest/sdk/h;->d:Lcom/geetest/sdk/g;

    new-instance v0, Lcom/geetest/sdk/h$a;

    invoke-direct {v0, p0, p2}, Lcom/geetest/sdk/h$a;-><init>(Lcom/geetest/sdk/h;Lcom/geetest/sdk/GT3ConfigBean;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 47
    iget-object p1, p0, Lcom/geetest/sdk/h;->c:Lcom/geetest/sdk/g;

    new-instance v0, Lcom/geetest/sdk/h$b;

    invoke-direct {v0, p0, p2}, Lcom/geetest/sdk/h$b;-><init>(Lcom/geetest/sdk/h;Lcom/geetest/sdk/GT3ConfigBean;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 60
    iget-object p1, p0, Lcom/geetest/sdk/h;->c:Lcom/geetest/sdk/g;

    new-instance v0, Lcom/geetest/sdk/h$c;

    invoke-direct {v0, p0, p2}, Lcom/geetest/sdk/h$c;-><init>(Lcom/geetest/sdk/h;Lcom/geetest/sdk/GT3ConfigBean;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 77
    iget-object p1, p0, Lcom/geetest/sdk/h;->c:Lcom/geetest/sdk/g;

    new-instance v0, Lcom/geetest/sdk/h$d;

    invoke-direct {v0, p0, p2}, Lcom/geetest/sdk/h$d;-><init>(Lcom/geetest/sdk/h;Lcom/geetest/sdk/GT3ConfigBean;)V

    invoke-virtual {p1, v0}, Lcom/geetest/sdk/e;->a(Lcom/geetest/sdk/e$a;)V

    .line 103
    iget-object p1, p0, Lcom/geetest/sdk/h;->d:Lcom/geetest/sdk/g;

    new-instance v0, Lcom/geetest/sdk/h$e;

    invoke-direct {v0, p0, p2}, Lcom/geetest/sdk/h$e;-><init>(Lcom/geetest/sdk/h;Lcom/geetest/sdk/GT3ConfigBean;)V

    invoke-virtual {p1, v0}, Lcom/geetest/sdk/e;->a(Lcom/geetest/sdk/e$a;)V

    return-void
.end method

.method static synthetic a(Lcom/geetest/sdk/h;)Lcom/geetest/sdk/g;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/geetest/sdk/h;->c:Lcom/geetest/sdk/g;

    return-object p0
.end method

.method static synthetic b(Lcom/geetest/sdk/h;)Lcom/geetest/sdk/b$b;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/geetest/sdk/h;->i:Lcom/geetest/sdk/b$b;

    return-object p0
.end method

.method static synthetic c(Lcom/geetest/sdk/h;)Lcom/geetest/sdk/g;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/geetest/sdk/h;->d:Lcom/geetest/sdk/g;

    return-object p0
.end method

.method static synthetic d(Lcom/geetest/sdk/h;)Lcom/geetest/sdk/GT3ConfigBean;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/geetest/sdk/h;->b:Lcom/geetest/sdk/GT3ConfigBean;

    return-object p0
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/geetest/sdk/h;->h:Lcom/geetest/sdk/dialog/views/WebviewBuilder;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/geetest/sdk/h;->c:Lcom/geetest/sdk/g;

    if-eqz v1, :cond_12

    .line 86
    invoke-virtual {v0}, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->d()V

    .line 87
    iget-object v0, p0, Lcom/geetest/sdk/h;->c:Lcom/geetest/sdk/g;

    iget-object v1, p0, Lcom/geetest/sdk/h;->f:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/g;->c(Landroid/view/View;)V

    :cond_12
    return-void
.end method

.method public a(I)V
    .registers 2

    .line 3
    iput p1, p0, Lcom/geetest/sdk/h;->j:I

    return-void
.end method

.method public a(Lcom/geetest/sdk/GT3ErrorBean;)V
    .registers 9

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/geetest/sdk/h;->d:Lcom/geetest/sdk/g;

    new-instance v1, Lcom/geetest/sdk/h$f;

    invoke-direct {v1, p0, p1}, Lcom/geetest/sdk/h$f;-><init>(Lcom/geetest/sdk/h;Lcom/geetest/sdk/GT3ErrorBean;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 25
    sget-object v0, Lcom/geetest/sdk/h$i;->DISMISS:Lcom/geetest/sdk/h$i;

    iput-object v0, p0, Lcom/geetest/sdk/h;->l:Lcom/geetest/sdk/h$i;

    .line 27
    invoke-virtual {p0}, Lcom/geetest/sdk/h;->f()I

    move-result v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_79

    const/4 v1, 0x2

    if-eq v0, v1, :cond_57

    const/4 v1, 0x3

    if-eq v0, v1, :cond_40

    .line 46
    :try_start_18
    new-instance v0, Lcom/geetest/sdk/h$h;

    invoke-direct {v0, p0}, Lcom/geetest/sdk/h$h;-><init>(Lcom/geetest/sdk/h;)V

    iput-object v0, p0, Lcom/geetest/sdk/h;->g:Lcom/geetest/sdk/h$h;

    .line 47
    new-instance v0, Lcom/geetest/sdk/dialog/views/FailedView;

    iget-object v2, p0, Lcom/geetest/sdk/h;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/geetest/sdk/h;->g:Lcom/geetest/sdk/h$h;

    iget-object v6, p0, Lcom/geetest/sdk/h;->b:Lcom/geetest/sdk/GT3ConfigBean;

    move-object v1, v0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/geetest/sdk/dialog/views/FailedView;-><init>(Landroid/content/Context;Lcom/geetest/sdk/h;Lcom/geetest/sdk/GT3ErrorBean;Lcom/geetest/sdk/h$h;Lcom/geetest/sdk/GT3ConfigBean;)V

    .line 48
    iget-object p1, p0, Lcom/geetest/sdk/h;->d:Lcom/geetest/sdk/g;

    invoke-virtual {p1, v0}, Lcom/geetest/sdk/g;->c(Landroid/view/View;)V

    .line 49
    iget-object p1, p0, Lcom/geetest/sdk/h;->d:Lcom/geetest/sdk/g;

    invoke-virtual {p1}, Lcom/geetest/sdk/e;->show()V

    .line 50
    invoke-virtual {p0}, Lcom/geetest/sdk/h;->b()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_3a} :catch_3b

    goto :goto_7d

    :catch_3b
    move-exception p1

    .line 52
    :try_start_3c
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7d

    .line 53
    :cond_40
    invoke-virtual {p0}, Lcom/geetest/sdk/h;->b()V

    .line 54
    iget-object v0, p0, Lcom/geetest/sdk/h;->b:Lcom/geetest/sdk/GT3ConfigBean;

    if-eqz v0, :cond_7d

    invoke-virtual {v0}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 55
    iget-object v0, p0, Lcom/geetest/sdk/h;->b:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {v0}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/geetest/sdk/GT3BaseListener;->onFailed(Lcom/geetest/sdk/GT3ErrorBean;)V

    goto :goto_7d

    .line 56
    :cond_57
    invoke-virtual {p0}, Lcom/geetest/sdk/h;->b()V

    .line 57
    iget-object v0, p0, Lcom/geetest/sdk/h;->i:Lcom/geetest/sdk/b$b;

    if-eqz v0, :cond_65

    .line 58
    iget-object v1, p1, Lcom/geetest/sdk/GT3ErrorBean;->errorDesc:Ljava/lang/String;

    iget-object v2, p1, Lcom/geetest/sdk/GT3ErrorBean;->errorCode:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/geetest/sdk/b$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_65
    iget-object v0, p0, Lcom/geetest/sdk/h;->b:Lcom/geetest/sdk/GT3ConfigBean;

    if-eqz v0, :cond_7d

    invoke-virtual {v0}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 61
    iget-object v0, p0, Lcom/geetest/sdk/h;->b:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {v0}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/geetest/sdk/GT3BaseListener;->onFailed(Lcom/geetest/sdk/GT3ErrorBean;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_78} :catch_79

    goto :goto_7d

    :catch_79
    move-exception p1

    .line 84
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7d
    :goto_7d
    return-void
.end method

.method public a(Lcom/geetest/sdk/b$b;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/geetest/sdk/h;->i:Lcom/geetest/sdk/b$b;

    return-void
.end method

.method public a(Lcom/geetest/sdk/h$i;)V
    .registers 2

    .line 5
    iput-object p1, p0, Lcom/geetest/sdk/h;->l:Lcom/geetest/sdk/h$i;

    return-void
.end method

.method public a(Lcom/geetest/sdk/model/beans/b;Lcom/geetest/sdk/ab;)V
    .registers 6

    .line 6
    new-instance v0, Lcom/geetest/sdk/dialog/views/WebviewBuilder;

    iget-object v1, p0, Lcom/geetest/sdk/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/geetest/sdk/h;->c:Lcom/geetest/sdk/g;

    invoke-direct {v0, v1, v2}, Lcom/geetest/sdk/dialog/views/WebviewBuilder;-><init>(Landroid/content/Context;Lcom/geetest/sdk/g;)V

    iput-object v0, p0, Lcom/geetest/sdk/h;->h:Lcom/geetest/sdk/dialog/views/WebviewBuilder;

    .line 7
    invoke-virtual {v0, p1}, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->a(Lcom/geetest/sdk/model/beans/b;)V

    .line 8
    iget-object p1, p0, Lcom/geetest/sdk/h;->h:Lcom/geetest/sdk/dialog/views/WebviewBuilder;

    iget-object v0, p0, Lcom/geetest/sdk/h;->b:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {p1, v0}, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->a(Lcom/geetest/sdk/GT3ConfigBean;)V

    .line 9
    iget-object p1, p0, Lcom/geetest/sdk/h;->h:Lcom/geetest/sdk/dialog/views/WebviewBuilder;

    invoke-virtual {p1, p2}, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->a(Lcom/geetest/sdk/ab;)V

    .line 10
    iget-object p1, p0, Lcom/geetest/sdk/h;->h:Lcom/geetest/sdk/dialog/views/WebviewBuilder;

    invoke-virtual {p1}, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->a()Lcom/geetest/sdk/dialog/views/GtWebView;

    move-result-object p1

    iput-object p1, p0, Lcom/geetest/sdk/h;->f:Lcom/geetest/sdk/dialog/views/GtWebView;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 4
    iput-boolean p1, p0, Lcom/geetest/sdk/h;->k:Z

    return-void
.end method

.method public b()V
    .registers 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/geetest/sdk/h;->c:Lcom/geetest/sdk/g;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3
    iget-object v0, p0, Lcom/geetest/sdk/h;->c:Lcom/geetest/sdk/g;

    invoke-virtual {v0}, Lcom/geetest/sdk/e;->dismiss()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_14
    :goto_14
    return-void
.end method

.method public c()V
    .registers 3

    .line 2
    :try_start_0
    sget-object v0, Lcom/geetest/sdk/h$i;->DISMISS:Lcom/geetest/sdk/h$i;

    iput-object v0, p0, Lcom/geetest/sdk/h;->l:Lcom/geetest/sdk/h$i;

    .line 4
    invoke-virtual {p0}, Lcom/geetest/sdk/h;->b()V

    .line 5
    invoke-virtual {p0}, Lcom/geetest/sdk/h;->f()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    goto :goto_22

    .line 7
    :cond_12
    iget-object v0, p0, Lcom/geetest/sdk/h;->i:Lcom/geetest/sdk/b$b;

    if-eqz v0, :cond_22

    .line 8
    invoke-interface {v0}, Lcom/geetest/sdk/b$b;->h()V

    goto :goto_22

    .line 12
    :cond_1a
    invoke-virtual {p0}, Lcom/geetest/sdk/h;->d()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_22

    :catch_1e
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_22
    :goto_22
    return-void
.end method

.method public d()V
    .registers 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/geetest/sdk/h;->d:Lcom/geetest/sdk/g;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3
    iget-object v0, p0, Lcom/geetest/sdk/h;->d:Lcom/geetest/sdk/g;

    invoke-virtual {v0}, Lcom/geetest/sdk/e;->dismiss()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_14
    :goto_14
    return-void
.end method

.method public e()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/h;->f:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-virtual {v0}, Lcom/geetest/sdk/dialog/views/GtWebView;->b()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public f()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/geetest/sdk/h;->j:I

    return v0
.end method

.method public g()Lcom/geetest/sdk/g;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/h;->c:Lcom/geetest/sdk/g;

    return-object v0
.end method

.method public h()Lcom/geetest/sdk/h$i;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/h;->l:Lcom/geetest/sdk/h$i;

    return-object v0
.end method

.method public i()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/geetest/sdk/h;->k:Z

    return v0
.end method

.method public j()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/geetest/sdk/h;->b()V

    .line 2
    iget-object v0, p0, Lcom/geetest/sdk/h;->h:Lcom/geetest/sdk/dialog/views/WebviewBuilder;

    if-eqz v0, :cond_d

    .line 3
    invoke-virtual {v0}, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->b()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/geetest/sdk/h;->h:Lcom/geetest/sdk/dialog/views/WebviewBuilder;

    :cond_d
    return-void
.end method

.method public k()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/geetest/sdk/h;->f()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4b

    .line 7
    new-instance v0, Lcom/geetest/sdk/dialog/views/LoadingView;

    iget-object v1, p0, Lcom/geetest/sdk/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/geetest/sdk/h;->b:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {v2}, Lcom/geetest/sdk/GT3ConfigBean;->getLoadImageView()Lcom/geetest/sdk/GT3LoadImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/geetest/sdk/h;->b:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-direct {v0, v1, v2, v3}, Lcom/geetest/sdk/dialog/views/LoadingView;-><init>(Landroid/content/Context;Lcom/geetest/sdk/GT3LoadImageView;Lcom/geetest/sdk/GT3ConfigBean;)V

    iput-object v0, p0, Lcom/geetest/sdk/h;->e:Lcom/geetest/sdk/dialog/views/LoadingView;

    .line 8
    iget-object v1, p0, Lcom/geetest/sdk/h;->d:Lcom/geetest/sdk/g;

    invoke-virtual {v1, v0}, Lcom/geetest/sdk/e;->b(Landroid/view/View;)V

    .line 9
    iget-object v0, p0, Lcom/geetest/sdk/h;->a:Landroid/content/Context;

    const-string v1, "DialogController"

    if-eqz v0, :cond_46

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_46

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_46

    const-string v0, "showLoading-->Success !"

    .line 10
    invoke-static {v1, v0}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :try_start_37
    iget-object v0, p0, Lcom/geetest/sdk/h;->d:Lcom/geetest/sdk/g;

    invoke-virtual {v0}, Lcom/geetest/sdk/e;->show()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3c} :catch_3d

    goto :goto_41

    :catch_3d
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    :goto_41
    sget-object v0, Lcom/geetest/sdk/h$i;->SHOW_LOADING:Lcom/geetest/sdk/h$i;

    iput-object v0, p0, Lcom/geetest/sdk/h;->l:Lcom/geetest/sdk/h$i;

    goto :goto_4b

    :cond_46
    const-string v0, "showLoading-->error"

    .line 19
    invoke-static {v1, v0}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    :goto_4b
    return-void
.end method

.method public l()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/geetest/sdk/h;->f()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_53

    const/4 v4, 0x3

    if-eq v0, v4, :cond_53

    .line 27
    iget-object v0, p0, Lcom/geetest/sdk/h;->c:Lcom/geetest/sdk/g;

    iget-object v3, p0, Lcom/geetest/sdk/h;->f:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-virtual {v0, v3}, Lcom/geetest/sdk/e;->b(Landroid/view/View;)V

    .line 28
    iget-object v0, p0, Lcom/geetest/sdk/h;->a:Landroid/content/Context;

    if-eqz v0, :cond_4d

    instance-of v3, v0, Landroid/app/Activity;

    if-eqz v3, :cond_4d

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 29
    iget-object v0, p0, Lcom/geetest/sdk/h;->c:Lcom/geetest/sdk/g;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_46

    .line 30
    sput-boolean v1, Lcom/geetest/sdk/utils/d;->c:Z

    .line 31
    iget-object v0, p0, Lcom/geetest/sdk/h;->d:Lcom/geetest/sdk/g;

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 33
    :try_start_37
    iget-object v0, p0, Lcom/geetest/sdk/h;->c:Lcom/geetest/sdk/g;

    invoke-virtual {v0}, Lcom/geetest/sdk/e;->show()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3c} :catch_3d

    goto :goto_41

    :catch_3d
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    :cond_41
    :goto_41
    sget-object v0, Lcom/geetest/sdk/h$i;->SHOW_WEB:Lcom/geetest/sdk/h$i;

    iput-object v0, p0, Lcom/geetest/sdk/h;->l:Lcom/geetest/sdk/h$i;

    goto :goto_4d

    .line 41
    :cond_46
    iget-object v0, p0, Lcom/geetest/sdk/h;->c:Lcom/geetest/sdk/g;

    iget-object v1, p0, Lcom/geetest/sdk/h;->f:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/g;->c(Landroid/view/View;)V

    .line 44
    :cond_4d
    :goto_4d
    sput-boolean v2, Lcom/geetest/sdk/utils/d;->c:Z

    .line 48
    invoke-virtual {p0}, Lcom/geetest/sdk/h;->d()V

    goto :goto_a1

    .line 49
    :cond_53
    invoke-virtual {p0}, Lcom/geetest/sdk/h;->f()I

    move-result v0

    if-ne v0, v3, :cond_68

    invoke-virtual {p0}, Lcom/geetest/sdk/h;->i()Z

    move-result v0

    if-eqz v0, :cond_60

    goto :goto_68

    .line 50
    :cond_60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mode configuration error !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_68
    :goto_68
    iget-object v0, p0, Lcom/geetest/sdk/h;->c:Lcom/geetest/sdk/g;

    iget-object v3, p0, Lcom/geetest/sdk/h;->f:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-virtual {v0, v3}, Lcom/geetest/sdk/e;->b(Landroid/view/View;)V

    .line 53
    iget-object v0, p0, Lcom/geetest/sdk/h;->a:Landroid/content/Context;

    if-eqz v0, :cond_9f

    instance-of v3, v0, Landroid/app/Activity;

    if-eqz v3, :cond_9f

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_9f

    .line 54
    iget-object v0, p0, Lcom/geetest/sdk/h;->c:Lcom/geetest/sdk/g;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_98

    .line 55
    sput-boolean v1, Lcom/geetest/sdk/utils/d;->c:Z

    .line 57
    :try_start_89
    iget-object v0, p0, Lcom/geetest/sdk/h;->c:Lcom/geetest/sdk/g;

    invoke-virtual {v0}, Lcom/geetest/sdk/e;->show()V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8e} :catch_8f

    goto :goto_93

    :catch_8f
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    :goto_93
    sget-object v0, Lcom/geetest/sdk/h$i;->SHOW_WEB:Lcom/geetest/sdk/h$i;

    iput-object v0, p0, Lcom/geetest/sdk/h;->l:Lcom/geetest/sdk/h$i;

    goto :goto_9f

    .line 64
    :cond_98
    iget-object v0, p0, Lcom/geetest/sdk/h;->c:Lcom/geetest/sdk/g;

    iget-object v1, p0, Lcom/geetest/sdk/h;->f:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/g;->c(Landroid/view/View;)V

    .line 67
    :cond_9f
    :goto_9f
    sput-boolean v2, Lcom/geetest/sdk/utils/d;->c:Z

    :goto_a1
    return-void
.end method

.method public m()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/geetest/sdk/h;->d:Lcom/geetest/sdk/g;

    new-instance v1, Lcom/geetest/sdk/h$g;

    invoke-direct {v1, p0}, Lcom/geetest/sdk/h$g;-><init>(Lcom/geetest/sdk/h;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 14
    sget-object v0, Lcom/geetest/sdk/h$i;->DISMISS:Lcom/geetest/sdk/h$i;

    iput-object v0, p0, Lcom/geetest/sdk/h;->l:Lcom/geetest/sdk/h$i;

    .line 16
    invoke-virtual {p0}, Lcom/geetest/sdk/h;->f()I

    move-result v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_6b

    const/4 v1, 0x2

    const-string v2, ""

    if-eq v0, v1, :cond_4d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_36

    .line 35
    :try_start_1a
    new-instance v0, Lcom/geetest/sdk/dialog/views/SuccessView;

    iget-object v1, p0, Lcom/geetest/sdk/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/geetest/sdk/h;->b:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-direct {v0, v1, p0, v2}, Lcom/geetest/sdk/dialog/views/SuccessView;-><init>(Landroid/content/Context;Lcom/geetest/sdk/h;Lcom/geetest/sdk/GT3ConfigBean;)V

    .line 36
    iget-object v1, p0, Lcom/geetest/sdk/h;->d:Lcom/geetest/sdk/g;

    invoke-virtual {v1, v0}, Lcom/geetest/sdk/g;->c(Landroid/view/View;)V

    .line 37
    iget-object v0, p0, Lcom/geetest/sdk/h;->d:Lcom/geetest/sdk/g;

    invoke-virtual {v0}, Lcom/geetest/sdk/e;->show()V

    .line 38
    invoke-virtual {p0}, Lcom/geetest/sdk/h;->b()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_30} :catch_31

    goto :goto_6f

    :catch_31
    move-exception v0

    .line 41
    :try_start_32
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6f

    .line 42
    :cond_36
    invoke-virtual {p0}, Lcom/geetest/sdk/h;->b()V

    .line 43
    iget-object v0, p0, Lcom/geetest/sdk/h;->b:Lcom/geetest/sdk/GT3ConfigBean;

    if-eqz v0, :cond_6f

    invoke-virtual {v0}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 44
    iget-object v0, p0, Lcom/geetest/sdk/h;->b:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {v0}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/geetest/sdk/GT3BaseListener;->onSuccess(Ljava/lang/String;)V

    goto :goto_6f

    .line 45
    :cond_4d
    invoke-virtual {p0}, Lcom/geetest/sdk/h;->b()V

    .line 46
    iget-object v0, p0, Lcom/geetest/sdk/h;->i:Lcom/geetest/sdk/b$b;

    if-eqz v0, :cond_57

    .line 47
    invoke-interface {v0}, Lcom/geetest/sdk/b$b;->a()V

    .line 49
    :cond_57
    iget-object v0, p0, Lcom/geetest/sdk/h;->b:Lcom/geetest/sdk/GT3ConfigBean;

    if-eqz v0, :cond_6f

    invoke-virtual {v0}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 50
    iget-object v0, p0, Lcom/geetest/sdk/h;->b:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {v0}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/geetest/sdk/GT3BaseListener;->onSuccess(Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_6a} :catch_6b

    goto :goto_6f

    :catch_6b
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6f
    :goto_6f
    return-void
.end method
