.class public Lcom/tencent/captchasdk/TCaptchaDialog;
.super Landroid/app/Dialog;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:F

.field private d:Lcom/tencent/captchasdk/b;

.field private e:Ljava/lang/String;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Lcom/tencent/captchasdk/TCaptchaVerifyListener;

.field private h:Lcom/tencent/captchasdk/e;

.field private i:Lcom/tencent/captchasdk/e$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Lcom/tencent/captchasdk/TCaptchaVerifyListener;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance p2, Lcom/tencent/captchasdk/TCaptchaDialog$1;

    invoke-direct {p2, p0}, Lcom/tencent/captchasdk/TCaptchaDialog$1;-><init>(Lcom/tencent/captchasdk/TCaptchaDialog;)V

    iput-object p2, p0, Lcom/tencent/captchasdk/TCaptchaDialog;->i:Lcom/tencent/captchasdk/e$a;

    invoke-direct {p0, p1, p3, p4, p5}, Lcom/tencent/captchasdk/TCaptchaDialog;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/captchasdk/TCaptchaVerifyListener;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/captchasdk/TCaptchaVerifyListener;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/tencent/captchasdk/TCaptchaDialog$1;

    invoke-direct {v0, p0}, Lcom/tencent/captchasdk/TCaptchaDialog$1;-><init>(Lcom/tencent/captchasdk/TCaptchaDialog;)V

    iput-object v0, p0, Lcom/tencent/captchasdk/TCaptchaDialog;->i:Lcom/tencent/captchasdk/e$a;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/captchasdk/TCaptchaDialog;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/captchasdk/TCaptchaVerifyListener;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;Ljava/lang/String;Lcom/tencent/captchasdk/TCaptchaVerifyListener;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    new-instance p2, Lcom/tencent/captchasdk/TCaptchaDialog$1;

    invoke-direct {p2, p0}, Lcom/tencent/captchasdk/TCaptchaDialog$1;-><init>(Lcom/tencent/captchasdk/TCaptchaDialog;)V

    iput-object p2, p0, Lcom/tencent/captchasdk/TCaptchaDialog;->i:Lcom/tencent/captchasdk/e$a;

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/tencent/captchasdk/TCaptchaDialog;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/captchasdk/TCaptchaVerifyListener;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/captchasdk/TCaptchaDialog;)Lcom/tencent/captchasdk/TCaptchaVerifyListener;
    .registers 1

    iget-object p0, p0, Lcom/tencent/captchasdk/TCaptchaDialog;->g:Lcom/tencent/captchasdk/TCaptchaVerifyListener;

    return-object p0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/captchasdk/TCaptchaVerifyListener;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/tencent/captchasdk/TCaptchaDialog;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/captchasdk/TCaptchaDialog;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/captchasdk/TCaptchaDialog;->g:Lcom/tencent/captchasdk/TCaptchaVerifyListener;

    iput-object p4, p0, Lcom/tencent/captchasdk/TCaptchaDialog;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/tencent/captchasdk/TCaptchaDialog;)Lcom/tencent/captchasdk/b;
    .registers 1

    iget-object p0, p0, Lcom/tencent/captchasdk/TCaptchaDialog;->d:Lcom/tencent/captchasdk/b;

    return-object p0
.end method

.method static synthetic c(Lcom/tencent/captchasdk/TCaptchaDialog;)F
    .registers 1

    iget p0, p0, Lcom/tencent/captchasdk/TCaptchaDialog;->c:F

    return p0
.end method

.method static synthetic d(Lcom/tencent/captchasdk/TCaptchaDialog;)Landroid/widget/RelativeLayout;
    .registers 1

    iget-object p0, p0, Lcom/tencent/captchasdk/TCaptchaDialog;->f:Landroid/widget/RelativeLayout;

    return-object p0
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/tencent/captchasdk/TCaptchaDialog;->h:Lcom/tencent/captchasdk/e;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/tencent/captchasdk/e;->a()V

    :cond_7
    iget-object v0, p0, Lcom/tencent/captchasdk/TCaptchaDialog;->d:Lcom/tencent/captchasdk/b;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/tencent/captchasdk/TCaptchaDialog;->d:Lcom/tencent/captchasdk/b;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/tencent/captchasdk/TCaptchaDialog;->d:Lcom/tencent/captchasdk/b;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1e
    iget-object v0, p0, Lcom/tencent/captchasdk/TCaptchaDialog;->d:Lcom/tencent/captchasdk/b;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcom/tencent/captchasdk/TCaptchaDialog;->d:Lcom/tencent/captchasdk/b;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/captchasdk/TCaptchaDialog;->d:Lcom/tencent/captchasdk/b;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_30

    :catch_2c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_30
    :goto_30
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    sget p1, Lcom/tencent/captchasdk/R$layout;->tcaptcha_popup:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    iget-object p1, p0, Lcom/tencent/captchasdk/TCaptchaDialog;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/tencent/captchasdk/TCaptchaDialog;->c:F

    sget p1, Lcom/tencent/captchasdk/R$id;->tcaptcha_container:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/tencent/captchasdk/b;

    iget-object v1, p0, Lcom/tencent/captchasdk/TCaptchaDialog;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/captchasdk/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/captchasdk/TCaptchaDialog;->d:Lcom/tencent/captchasdk/b;

    sget v0, Lcom/tencent/captchasdk/R$id;->tcaptcha_indicator_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tencent/captchasdk/TCaptchaDialog;->f:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/tencent/captchasdk/TCaptchaDialog;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/captchasdk/TCaptchaDialog;->f:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/tencent/captchasdk/TCaptchaDialog;->d:Lcom/tencent/captchasdk/b;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/tencent/captchasdk/c;->a(Landroid/content/Context;Landroid/view/Window;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Lcom/tencent/captchasdk/b;)I

    move-result v10

    new-instance p1, Lcom/tencent/captchasdk/e;

    iget-object v5, p0, Lcom/tencent/captchasdk/TCaptchaDialog;->a:Landroid/content/Context;

    iget-object v6, p0, Lcom/tencent/captchasdk/TCaptchaDialog;->i:Lcom/tencent/captchasdk/e$a;

    iget-object v7, p0, Lcom/tencent/captchasdk/TCaptchaDialog;->b:Ljava/lang/String;

    iget-object v8, p0, Lcom/tencent/captchasdk/TCaptchaDialog;->d:Lcom/tencent/captchasdk/b;

    iget-object v9, p0, Lcom/tencent/captchasdk/TCaptchaDialog;->e:Ljava/lang/String;

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Lcom/tencent/captchasdk/e;-><init>(Landroid/content/Context;Lcom/tencent/captchasdk/e$a;Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/tencent/captchasdk/TCaptchaDialog;->h:Lcom/tencent/captchasdk/e;

    return-void
.end method
