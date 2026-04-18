.class public Lcom/cmic/sso/sdk/view/c;
.super Landroid/app/Dialog;


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    :try_start_3
    iput-object p3, p0, Lcom/cmic/sso/sdk/view/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/cmic/sso/sdk/view/c;->b:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_c
    return-void
.end method

.method static synthetic a(Lcom/cmic/sso/sdk/view/c;)Landroid/webkit/WebView;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/view/c;->a:Landroid/webkit/WebView;

    return-object p0
.end method

.method private c()Landroid/view/ViewGroup;
    .registers 11

    :try_start_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/c;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/c;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getInstance(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getAuthThemeConfig()Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getClauseLayoutResID()I

    move-result v2

    iget-object v3, p0, Lcom/cmic/sso/sdk/view/c;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3b

    sget-object v3, Lcom/cmic/sso/sdk/c;->d:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getAppLanguageType()I

    move-result v4

    aget-object v3, v3, v4

    goto :goto_3d

    :cond_3b
    iget-object v3, p0, Lcom/cmic/sso/sdk/view/c;->c:Ljava/lang/String;

    :goto_3d
    move-object v8, v3

    if-eq v2, v1, :cond_7e

    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v3, p0, Lcom/cmic/sso/sdk/view/c;->d:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x111111

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;Landroid/view/View;IILjava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getClauseLayoutReturnID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_78

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/cmic/sso/sdk/view/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_78

    new-instance v2, Lcom/cmic/sso/sdk/view/c$1;

    invoke-direct {v2, p0}, Lcom/cmic/sso/sdk/view/c$1;-><init>(Lcom/cmic/sso/sdk/view/c;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_78
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/c;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_9c

    :cond_7e
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x111111

    const v7, 0x222222

    new-instance v9, Lcom/cmic/sso/sdk/view/c$2;

    invoke-direct {v9, p0}, Lcom/cmic/sso/sdk/view/c$2;-><init>(Lcom/cmic/sso/sdk/view/c;)V

    invoke-static/range {v4 .. v9}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;Landroid/view/View;IILjava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/c;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_97} :catch_98

    goto :goto_9c

    :catch_98
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_9c
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/c;->d:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private d()V
    .registers 4

    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/c;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/c;->d:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/c;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_45

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/c;->a:Landroid/webkit/WebView;

    const-string v1, "searchBoxJavaBridge_"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/c;->a:Landroid/webkit/WebView;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/c;->a:Landroid/webkit/WebView;

    const-string v1, "accessibilityTraversal"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_45
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/c;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/cmic/sso/sdk/view/c$3;

    invoke-direct {v1, p0}, Lcom/cmic/sso/sdk/view/c$3;-><init>(Lcom/cmic/sso/sdk/view/c;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/c;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFeatureDrawableAlpha(II)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getInstance(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getAuthThemeConfig()Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    move-result-object v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_4c

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getStatusBarColor()I

    move-result v3

    if-eqz v3, :cond_4c

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getStatusBarColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getStatusBarColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_4c
    const/16 v3, 0x17

    if-lt v2, v3, :cond_6c

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->isLightColor()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    goto :goto_69

    :cond_61
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    :goto_69
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_6c
    invoke-direct {p0}, Lcom/cmic/sso/sdk/view/c;->c()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/c;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/c;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_11

    :cond_e
    invoke-virtual {p0}, Lcom/cmic/sso/sdk/view/c;->dismiss()V

    :goto_11
    return-void
.end method

.method public dismiss()V
    .registers 2

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/c;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    :cond_a
    return-void
.end method

.method public show()V
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/c;->d:Landroid/widget/LinearLayout;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/cmic/sso/sdk/view/c;->a()V

    :cond_7
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/c;->a:Landroid/webkit/WebView;

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/cmic/sso/sdk/view/c;->d()V

    :cond_e
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
