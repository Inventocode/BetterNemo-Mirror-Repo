.class public Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/widget/ImageView;

.field private f:I

.field private g:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

.field private h:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;)Landroid/webkit/WebView;
    .registers 1

    iget-object p0, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->a:Landroid/webkit/WebView;

    return-object p0
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->d:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity$1;

    invoke-direct {v1, p0}, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity$1;-><init>(Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private b()V
    .registers 8

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->g:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyEnterAnim()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->g:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyExitAnim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_37

    :cond_10
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/n;->a(Landroid/content/Context;)Lcom/chuanglan/shanyan_sdk/utils/n;

    move-result-object v0

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->g:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v1}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyEnterAnim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chuanglan/shanyan_sdk/utils/n;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/chuanglan/shanyan_sdk/utils/n;->a(Landroid/content/Context;)Lcom/chuanglan/shanyan_sdk/utils/n;

    move-result-object v1

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->g:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v2}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyExitAnim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chuanglan/shanyan_sdk/utils/n;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_37
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/n;->a(Landroid/content/Context;)Lcom/chuanglan/shanyan_sdk/utils/n;

    move-result-object v2

    const-string v3, "shanyan_view_navigationbar_include"

    invoke-virtual {v2, v3}, Lcom/chuanglan/shanyan_sdk/utils/n;->d(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->c:Landroid/view/View;

    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/n;->a(Landroid/content/Context;)Lcom/chuanglan/shanyan_sdk/utils/n;

    move-result-object v2

    const-string v3, "shanyan_view_navigationbar_back_root"

    invoke-virtual {v2, v3}, Lcom/chuanglan/shanyan_sdk/utils/n;->d(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->d:Landroid/widget/RelativeLayout;

    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/n;->a(Landroid/content/Context;)Lcom/chuanglan/shanyan_sdk/utils/n;

    move-result-object v2

    const-string v3, "shanyan_view_navigationbar_title"

    invoke-virtual {v2, v3}, Lcom/chuanglan/shanyan_sdk/utils/n;->d(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->b:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/n;->a(Landroid/content/Context;)Lcom/chuanglan/shanyan_sdk/utils/n;

    move-result-object v2

    const-string v3, "shanyan_view_navigationbar_back"

    invoke-virtual {v2, v3}, Lcom/chuanglan/shanyan_sdk/utils/n;->d(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->e:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/n;->a(Landroid/content/Context;)Lcom/chuanglan/shanyan_sdk/utils/n;

    move-result-object v2

    const-string v3, "shanyan_view_baseweb_webview"

    invoke-virtual {v2, v3}, Lcom/chuanglan/shanyan_sdk/utils/n;->d(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->a:Landroid/webkit/WebView;

    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/n;->a(Landroid/content/Context;)Lcom/chuanglan/shanyan_sdk/utils/n;

    move-result-object v2

    const-string v3, "shanyan_view_privacy_layout"

    invoke-virtual {v2, v3}, Lcom/chuanglan/shanyan_sdk/utils/n;->d(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->h:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    if-eqz v2, :cond_b7

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    :cond_b7
    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-static {v1}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_d3

    const-string v4, "file://"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d3

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    goto :goto_df

    :cond_d3
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    :goto_df
    iget-object v4, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->g:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v4}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getViewPortEnabled()Z

    move-result v4

    if-eqz v4, :cond_ed

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    :cond_ed
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-ge v4, v6, :cond_108

    iget-object v4, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->a:Landroid/webkit/WebView;

    const-string v6, "searchBoxJavaBridge_"

    invoke-virtual {v4, v6}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->a:Landroid/webkit/WebView;

    const-string v6, "accessibility"

    invoke-virtual {v4, v6}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->a:Landroid/webkit/WebView;

    const-string v6, "accessibilityTraversal"

    invoke-virtual {v4, v6}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_108
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    sget-object v3, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->a:Landroid/webkit/WebView;

    new-instance v3, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity$a;

    invoke-direct {v3, p0}, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity$a;-><init>(Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_141

    invoke-direct {p0, v1}, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->a(Ljava/lang/String;)V

    :cond_141
    return-void
.end method

.method private c()V
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/n;->a()Lcom/chuanglan/shanyan_sdk/tool/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chuanglan/shanyan_sdk/tool/n;->c()Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    move-result-object v2

    if-eqz v2, :cond_24

    iget v2, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->f:I

    if-ne v2, v1, :cond_1b

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/n;->a()Lcom/chuanglan/shanyan_sdk/tool/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chuanglan/shanyan_sdk/tool/n;->b()Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    move-result-object v2

    :goto_18
    iput-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->g:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    goto :goto_24

    :cond_1b
    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/n;->a()Lcom/chuanglan/shanyan_sdk/tool/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chuanglan/shanyan_sdk/tool/n;->c()Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    move-result-object v2

    goto :goto_18

    :cond_24
    :goto_24
    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->g:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v2}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->isPrivacyFullScreen()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/tool/o;->a(Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->h:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_40

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    goto :goto_40

    :cond_37
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->g:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-static {v2, v3}, Lcom/chuanglan/shanyan_sdk/tool/o;->a(Landroid/view/Window;Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;)V

    :cond_40
    :goto_40
    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->c:Landroid/view/View;

    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->g:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v3}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyNavColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->g:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v3}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyNavTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->g:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v2}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getTextSizeIsdp()Z

    move-result v2

    if-eqz v2, :cond_6b

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->g:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v3}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyNavTextSize()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_77

    :cond_6b
    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->g:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v3}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyNavTextSize()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_77
    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->g:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v2}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyNavTextBold()Z

    move-result v2

    if-eqz v2, :cond_88

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->b:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_88
    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->g:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v2}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyNavReturnImgPath()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_9b

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->e:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->g:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v3}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyNavReturnImgPath()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_9b
    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->g:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v2}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->isPrivacyNavReturnImgHidden()Z

    move-result v2

    if-eqz v2, :cond_ab

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->d:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_ec

    :cond_ab
    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->d:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->g:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v2}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyNavReturnBtnOffsetX()I

    move-result v5

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->g:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v2}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyNavReturnBtnOffsetY()I

    move-result v6

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->g:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v2}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyNavReturnBtnOffsetRightX()I

    move-result v7

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->g:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v2}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyReturnBtnWidth()I

    move-result v8

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->g:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v2}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyReturnBtnHeight()I

    move-result v9

    iget-object v10, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->e:Landroid/widget/ImageView;

    invoke-static/range {v3 .. v10}, Lcom/chuanglan/shanyan_sdk/tool/o;->a(Landroid/content/Context;Landroid/view/View;IIIIILandroid/widget/ImageView;)V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d9} :catch_da

    goto :goto_ec

    :catch_da
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "CTCCPrivacyProtocolActivity setViews Exception="

    aput-object v4, v3, v0

    aput-object v2, v3, v1

    const-string v0, "ExceptionShanYanTask"

    invoke-static {v0, v3}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_ec
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 5

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    :try_start_3
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->g:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyEnterAnim()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->g:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyExitAnim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4f

    :cond_13
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/n;->a(Landroid/content/Context;)Lcom/chuanglan/shanyan_sdk/utils/n;

    move-result-object v0

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->g:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v1}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyEnterAnim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chuanglan/shanyan_sdk/utils/n;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/chuanglan/shanyan_sdk/utils/n;->a(Landroid/content/Context;)Lcom/chuanglan/shanyan_sdk/utils/n;

    move-result-object v1

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->g:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v2}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyExitAnim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chuanglan/shanyan_sdk/utils/n;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3a} :catch_3b

    goto :goto_4f

    :catch_3b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "CTCCPrivacyProtocolActivity finish Exception="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "ExceptionShanYanTask"

    invoke-static {v0, v1}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4f
    :goto_4f
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CTCCPrivacyProtocolActivity onConfigurationChanged orientation"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "newConfig.orientation"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "ProcessShanYanLogger"

    invoke-static {v1, v0}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_27
    iget v0, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->f:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_44

    iput p1, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->f:I

    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->c()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_32} :catch_33

    goto :goto_44

    :catch_33
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "CTCCPrivacyProtocolActivity onConfigurationChanged Exception="

    aput-object v1, v0, v2

    aput-object p1, v0, v3

    const-string p1, "ExceptionShanYanTask"

    invoke-static {p1, v0}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_44
    :goto_44
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/n;->a(Landroid/content/Context;)Lcom/chuanglan/shanyan_sdk/utils/n;

    move-result-object p1

    const-string v0, "layout_shanyan_privacy"

    invoke-virtual {p1, v0}, Lcom/chuanglan/shanyan_sdk/utils/n;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    :try_start_10
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->f:I

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/n;->a()Lcom/chuanglan/shanyan_sdk/tool/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chuanglan/shanyan_sdk/tool/n;->b()Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->g:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->g:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-static {p1, v0}, Lcom/chuanglan/shanyan_sdk/tool/o;->a(Landroid/view/Window;Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;)V

    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->b()V

    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->c()V

    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->a()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_38} :catch_39

    goto :goto_50

    :catch_39
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "CTCCPrivacyProtocolActivity onCreate Exception="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "ExceptionShanYanTask"

    invoke-static {p1, v0}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->finish()V

    :goto_50
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_12

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    return v0

    :cond_12
    if-ne p1, v1, :cond_1e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1e

    invoke-virtual {p0}, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->finish()V

    return v0

    :cond_1e
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
