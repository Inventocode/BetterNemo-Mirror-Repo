.class public Lcom/tencent/captchasdk/TCaptchaPopupActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/tencent/captchasdk/b;

.field private b:Landroid/widget/RelativeLayout;

.field private c:F

.field private d:Ljava/lang/String;

.field private e:Lcom/tencent/captchasdk/e;

.field private f:Ljava/lang/String;

.field private g:Lcom/tencent/captchasdk/e$a;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/tencent/captchasdk/TCaptchaPopupActivity$1;

    invoke-direct {v0, p0}, Lcom/tencent/captchasdk/TCaptchaPopupActivity$1;-><init>(Lcom/tencent/captchasdk/TCaptchaPopupActivity;)V

    iput-object v0, p0, Lcom/tencent/captchasdk/TCaptchaPopupActivity;->g:Lcom/tencent/captchasdk/e$a;

    return-void
.end method

.method static synthetic a(Lcom/tencent/captchasdk/TCaptchaPopupActivity;)Lcom/tencent/captchasdk/b;
    .registers 1

    iget-object p0, p0, Lcom/tencent/captchasdk/TCaptchaPopupActivity;->a:Lcom/tencent/captchasdk/b;

    return-object p0
.end method

.method static synthetic b(Lcom/tencent/captchasdk/TCaptchaPopupActivity;)F
    .registers 1

    iget p0, p0, Lcom/tencent/captchasdk/TCaptchaPopupActivity;->c:F

    return p0
.end method

.method static synthetic c(Lcom/tencent/captchasdk/TCaptchaPopupActivity;)Landroid/widget/RelativeLayout;
    .registers 1

    iget-object p0, p0, Lcom/tencent/captchasdk/TCaptchaPopupActivity;->b:Landroid/widget/RelativeLayout;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "appid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/captchasdk/TCaptchaPopupActivity;->d:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "map"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/captchasdk/TCaptchaPopupActivity;->f:Ljava/lang/String;

    sget p1, Lcom/tencent/captchasdk/R$layout;->tcaptcha_popup:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/tencent/captchasdk/TCaptchaPopupActivity;->c:F

    sget p1, Lcom/tencent/captchasdk/R$id;->tcaptcha_container:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/tencent/captchasdk/b;

    invoke-direct {v0, p0}, Lcom/tencent/captchasdk/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/captchasdk/TCaptchaPopupActivity;->a:Lcom/tencent/captchasdk/b;

    sget v0, Lcom/tencent/captchasdk/R$id;->tcaptcha_indicator_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tencent/captchasdk/TCaptchaPopupActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/captchasdk/TCaptchaPopupActivity;->b:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/tencent/captchasdk/TCaptchaPopupActivity;->a:Lcom/tencent/captchasdk/b;

    invoke-static {p0, v0, p1, v1, v2}, Lcom/tencent/captchasdk/c;->a(Landroid/content/Context;Landroid/view/Window;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Lcom/tencent/captchasdk/b;)I

    move-result v9

    new-instance p1, Lcom/tencent/captchasdk/e;

    iget-object v5, p0, Lcom/tencent/captchasdk/TCaptchaPopupActivity;->g:Lcom/tencent/captchasdk/e$a;

    iget-object v6, p0, Lcom/tencent/captchasdk/TCaptchaPopupActivity;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/tencent/captchasdk/TCaptchaPopupActivity;->a:Lcom/tencent/captchasdk/b;

    iget-object v8, p0, Lcom/tencent/captchasdk/TCaptchaPopupActivity;->f:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/tencent/captchasdk/e;-><init>(Landroid/content/Context;Lcom/tencent/captchasdk/e$a;Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/tencent/captchasdk/TCaptchaPopupActivity;->e:Lcom/tencent/captchasdk/e;

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    :try_start_3
    iget-object v0, p0, Lcom/tencent/captchasdk/TCaptchaPopupActivity;->e:Lcom/tencent/captchasdk/e;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/tencent/captchasdk/e;->a()V

    :cond_a
    iget-object v0, p0, Lcom/tencent/captchasdk/TCaptchaPopupActivity;->a:Lcom/tencent/captchasdk/b;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/tencent/captchasdk/TCaptchaPopupActivity;->a:Lcom/tencent/captchasdk/b;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/tencent/captchasdk/TCaptchaPopupActivity;->a:Lcom/tencent/captchasdk/b;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_21
    iget-object v0, p0, Lcom/tencent/captchasdk/TCaptchaPopupActivity;->a:Lcom/tencent/captchasdk/b;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcom/tencent/captchasdk/TCaptchaPopupActivity;->a:Lcom/tencent/captchasdk/b;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/captchasdk/TCaptchaPopupActivity;->a:Lcom/tencent/captchasdk/b;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2e} :catch_2f

    goto :goto_33

    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_33
    :goto_33
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_f

    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    :goto_f
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
