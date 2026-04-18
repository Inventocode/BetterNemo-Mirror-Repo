.class public Lcom/codemao/nemo/activity/BoxPlayerActivity;
.super Lcom/giu/xzz/BaseActivity;
.source "BoxPlayerActivity.java"


# instance fields
.field ivLast:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivNext:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field progressBar:Lcom/codemao/nemo/view/WebViewProgressBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private shareDialog:Lcom/codemao/nemo/dialog/LocalWebShareDialog;

.field private shareModel:Lcom/codemao/nemo/bean/ShareModel;

.field private title:Ljava/lang/String;

.field tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private url:Ljava/lang/String;

.field wv_Game:Landroid/webkit/WebView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Lcom/giu/xzz/BaseActivity;-><init>()V

    const-string v0, ""

    .line 68
    iput-object v0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->title:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/activity/BoxPlayerActivity;)Ljava/lang/String;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/activity/BoxPlayerActivity;)Lcom/codemao/nemo/bean/ShareModel;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    return-object p0
.end method

.method private clearWebCookie()V
    .registers 4

    .line 113
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 115
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    const/4 v2, 0x1

    .line 116
    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 117
    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 118
    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 119
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    return-void
.end method

.method private evaluateJavascript(Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tencent/smtt/sdk/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->wv_Game:Landroid/webkit/WebView;

    if-nez p2, :cond_9

    new-instance p2, Lcom/codemao/nemo/activity/BoxPlayerActivity$5;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/activity/BoxPlayerActivity$5;-><init>(Lcom/codemao/nemo/activity/BoxPlayerActivity;)V

    :cond_9
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_12

    .line 416
    :catch_d
    iget-object p2, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->wv_Game:Landroid/webkit/WebView;

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_12
    return-void
.end method

.method private getTokenBaseKey()Ljava/lang/String;
    .registers 3

    .line 246
    sget-object v0, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dev"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "dev-authorization"

    return-object v0

    .line 248
    :cond_11
    sget-object v0, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    move-result-object v0

    const-string v1, "test"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "test-authorization"

    return-object v0

    .line 250
    :cond_22
    sget-object v0, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    move-result-object v0

    const-string v1, "staging"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "staging-authorization"

    return-object v0

    :cond_33
    const-string v0, "authorization"

    return-object v0
.end method

.method private initShareModel()V
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    if-nez v0, :cond_c

    .line 100
    new-instance v0, Lcom/codemao/nemo/bean/ShareModel;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/codemao/nemo/bean/ShareModel;-><init>(I)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    .line 102
    :cond_c
    iget-object v0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    iget-object v1, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/ShareModel;->setCopyLink(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    iget-object v1, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/ShareModel;->setTitle(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    iget-object v1, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/ShareModel;->setDescription(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/ShareModel;->setImgUrl(Ljava/lang/String;)V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v1, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/bean/ShareModel;->setImgUrls(Ljava/util/ArrayList;)V

    .line 109
    iget-object v0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/ShareModel;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private initWebview()V
    .registers 6

    .line 125
    invoke-direct {p0}, Lcom/codemao/nemo/activity/BoxPlayerActivity;->clearWebCookie()V

    .line 126
    iget-object v0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->wv_Game:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 127
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-le v1, v2, :cond_13

    const/4 v2, 0x0

    .line 128
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 130
    :cond_13
    new-instance v2, Lcom/codemao/nemo/bean/WebSettingBean;

    invoke-direct {v2}, Lcom/codemao/nemo/bean/WebSettingBean;-><init>()V

    .line 131
    iget-object v3, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->wv_Game:Landroid/webkit/WebView;

    new-instance v4, Landroid/webkit/WebChromeClient;

    invoke-direct {v4}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 132
    iget-object v3, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->wv_Game:Landroid/webkit/WebView;

    new-instance v4, Lcom/codemao/nemo/activity/BoxPlayerActivity$1;

    invoke-direct {v4, p0}, Lcom/codemao/nemo/activity/BoxPlayerActivity$1;-><init>(Lcom/codemao/nemo/activity/BoxPlayerActivity;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 140
    iget-boolean v3, v2, Lcom/codemao/nemo/bean/WebSettingBean;->AllowFileAccess:Z

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 142
    iget-boolean v3, v2, Lcom/codemao/nemo/bean/WebSettingBean;->AllowContentAccess:Z

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 143
    iget-boolean v3, v2, Lcom/codemao/nemo/bean/WebSettingBean;->AllowFileAccessFromFileURLs:Z

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 144
    iget-boolean v3, v2, Lcom/codemao/nemo/bean/WebSettingBean;->AllowUniversalAccessFromFileURLs:Z

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 146
    iget-boolean v3, v2, Lcom/codemao/nemo/bean/WebSettingBean;->JavaScriptEnabled:Z

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 147
    iget-boolean v3, v2, Lcom/codemao/nemo/bean/WebSettingBean;->BuiltInZoomControls:Z

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 148
    iget v3, v2, Lcom/codemao/nemo/bean/WebSettingBean;->CacheMode:I

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 149
    iget-boolean v3, v2, Lcom/codemao/nemo/bean/WebSettingBean;->SaveFormData:Z

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 150
    iget-boolean v3, v2, Lcom/codemao/nemo/bean/WebSettingBean;->DatabaseEnabled:Z

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 151
    iget-boolean v3, v2, Lcom/codemao/nemo/bean/WebSettingBean;->DisplayZoomControls:Z

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 152
    iget-boolean v3, v2, Lcom/codemao/nemo/bean/WebSettingBean;->DomStorageEnabled:Z

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 153
    iget-boolean v3, v2, Lcom/codemao/nemo/bean/WebSettingBean;->LoadsImagesAutomatically:Z

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 154
    iget-object v3, v2, Lcom/codemao/nemo/bean/WebSettingBean;->LayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 155
    iget-boolean v3, v2, Lcom/codemao/nemo/bean/WebSettingBean;->SupportZoom:Z

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 156
    iget-boolean v3, v2, Lcom/codemao/nemo/bean/WebSettingBean;->DisplayZoomControls:Z

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 157
    iget-boolean v3, v2, Lcom/codemao/nemo/bean/WebSettingBean;->BuiltInZoomControls:Z

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 158
    iget-boolean v3, v2, Lcom/codemao/nemo/bean/WebSettingBean;->UseWideViewPort:Z

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 159
    iget-boolean v3, v2, Lcom/codemao/nemo/bean/WebSettingBean;->SupportMultipleWindows:Z

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    const/16 v3, 0x17

    if-lt v1, v3, :cond_8f

    .line 161
    iget-boolean v1, v2, Lcom/codemao/nemo/bean/WebSettingBean;->OffscreenPreRaster:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setOffscreenPreRaster(Z)V

    .line 163
    :cond_8f
    iget-boolean v1, v2, Lcom/codemao/nemo/bean/WebSettingBean;->LoadWithOverviewMode:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 164
    iget-object v0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->wv_Game:Landroid/webkit/WebView;

    iget v1, v2, Lcom/codemao/nemo/bean/WebSettingBean;->LayerType:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 165
    iget-object v0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->wv_Game:Landroid/webkit/WebView;

    new-instance v1, Lcom/codemao/nemo/activity/BoxPlayerActivity$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/BoxPlayerActivity$2;-><init>(Lcom/codemao/nemo/activity/BoxPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 183
    iget-object v0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->wv_Game:Landroid/webkit/WebView;

    new-instance v1, Lcom/codemao/nemo/activity/BoxPlayerActivity$3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/BoxPlayerActivity$3;-><init>(Lcom/codemao/nemo/activity/BoxPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method


# virtual methods
.method back(Landroid/view/View;)V
    .registers 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 260
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    return-void
.end method

.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d007e

    return v0
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    const-string v0, "box作品player页"

    return-object v0
.end method

.method last(Landroid/view/View;)V
    .registers 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 302
    iget-object p1, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->wv_Game:Landroid/webkit/WebView;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 303
    iget-object p1, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->wv_Game:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    :cond_f
    return-void
.end method

.method next(Landroid/view/View;)V
    .registers 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 310
    iget-object p1, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->wv_Game:Landroid/webkit/WebView;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 311
    iget-object p1, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->wv_Game:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goForward()V

    :cond_f
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 375
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 376
    invoke-static {p1, p2, p3}, Lcn/codemao/android/share/CodeMaoShare;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1a

    const/16 p2, 0x2766

    if-ne p1, p2, :cond_1a

    .line 378
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/codemao/nemo/event/InstallPermissionResult;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lcom/codemao/nemo/event/InstallPermissionResult;-><init>(I)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .line 397
    iget-object v0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->wv_Game:Landroid/webkit/WebView;

    if-nez v0, :cond_8

    .line 398
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_17

    .line 399
    :cond_8
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 400
    iget-object v0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->wv_Game:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_17

    .line 402
    :cond_14
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_17
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->url:Ljava/lang/String;

    .line 83
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->url:Ljava/lang/String;

    const-string v1, "trainer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string/jumbo v0, "源码精灵"

    .line 84
    invoke-virtual {p0, v0}, Lcom/giu/xzz/BaseActivity;->setViewName(Ljava/lang/String;)V

    .line 86
    :cond_22
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_38

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x2400

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 90
    :cond_38
    iget-object p1, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->ivNext:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 91
    iget-object p1, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->ivLast:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 92
    invoke-direct {p0}, Lcom/codemao/nemo/activity/BoxPlayerActivity;->initShareModel()V

    .line 93
    invoke-direct {p0}, Lcom/codemao/nemo/activity/BoxPlayerActivity;->initWebview()V

    .line 94
    iget-object p1, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->url:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/BoxPlayerActivity;->synCookies(Ljava/lang/String;)V

    .line 95
    sget-object p1, Lcom/codemao/nemo/util/WebWhiteListUtils;->INSTANCE:Lcom/codemao/nemo/util/WebWhiteListUtils;

    iget-object v0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->wv_Game:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->url:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/codemao/nemo/util/WebWhiteListUtils;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)Z

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 348
    iget-object v0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->wv_Game:Landroid/webkit/WebView;

    if-eqz v0, :cond_34

    .line 349
    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_11

    .line 351
    iget-object v1, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->wv_Game:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 353
    :cond_11
    iget-object v0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->wv_Game:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 355
    iget-object v0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->wv_Game:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 356
    iget-object v0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->wv_Game:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 357
    iget-object v0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->wv_Game:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 358
    iget-object v0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->wv_Game:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 359
    iget-object v0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->wv_Game:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 361
    :cond_34
    iget-object v0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->shareDialog:Lcom/codemao/nemo/dialog/LocalWebShareDialog;

    if-eqz v0, :cond_3b

    .line 362
    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->onDestroy()V

    .line 364
    :cond_3b
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .registers 4

    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->wv_Game:Landroid/webkit/WebView;

    if-eqz v0, :cond_21

    .line 336
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onPause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->wv_Game:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    iget-object v0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->wv_Game:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception v0

    .line 340
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 343
    :cond_21
    :goto_21
    invoke-super {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 386
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 387
    invoke-static {p1, p2, p3, v0}, Lpub/devrel/easypermissions/EasyPermissions;->onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    const/16 p2, 0x65

    if-ne p1, p2, :cond_1e

    .line 389
    array-length p1, p3

    if-lez p1, :cond_1e

    aget p1, p3, v1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1e

    const/4 p1, 0x0

    const-string p2, "javascript:check_permission(0)"

    .line 390
    invoke-direct {p0, p2, p1}, Lcom/codemao/nemo/activity/BoxPlayerActivity;->evaluateJavascript(Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V

    :cond_1e
    return-void
.end method

.method public onResume()V
    .registers 4

    .line 317
    iget-object v0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->shareDialog:Lcom/codemao/nemo/dialog/LocalWebShareDialog;

    if-eqz v0, :cond_7

    .line 318
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 321
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->wv_Game:Landroid/webkit/WebView;

    if-eqz v0, :cond_28

    .line 322
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onResume"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->wv_Game:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-object v0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->wv_Game:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_23} :catch_24

    goto :goto_28

    :catch_24
    move-exception v0

    .line 326
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 329
    :cond_28
    :goto_28
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onResume()V

    return-void
.end method

.method share(Landroid/view/View;)V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 266
    iget-object p1, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->shareDialog:Lcom/codemao/nemo/dialog/LocalWebShareDialog;

    if-nez p1, :cond_16

    .line 267
    new-instance p1, Lcom/codemao/nemo/dialog/LocalWebShareDialog;

    iget-object v0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    invoke-direct {p1, p0, v0}, Lcom/codemao/nemo/dialog/LocalWebShareDialog;-><init>(Landroid/app/Activity;Lcom/codemao/nemo/bean/ShareModel;)V

    new-instance v0, Lcom/codemao/nemo/activity/BoxPlayerActivity$4;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/BoxPlayerActivity$4;-><init>(Lcom/codemao/nemo/activity/BoxPlayerActivity;)V

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->setShareListener(Lcn/codemao/android/share/interfaces/IshareResult;)Lcom/codemao/nemo/dialog/LocalWebShareDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->shareDialog:Lcom/codemao/nemo/dialog/LocalWebShareDialog;

    :cond_16
    const/4 p1, 0x0

    .line 285
    iget-object v0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->wv_Game:Landroid/webkit/WebView;

    if-eqz v0, :cond_1f

    .line 286
    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 288
    :cond_1f
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 289
    iget-object p1, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    iget-object v0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/ShareModel;->setCopyLink(Ljava/lang/String;)V

    goto :goto_32

    .line 291
    :cond_2d
    iget-object v0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/ShareModel;->setCopyLink(Ljava/lang/String;)V

    .line 294
    :goto_32
    iget-object p1, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    iget-object v0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/ShareModel;->setDescription(Ljava/lang/String;)V

    .line 295
    iget-object p1, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->shareDialog:Lcom/codemao/nemo/dialog/LocalWebShareDialog;

    iget-object v0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->setShareModel(Lcom/codemao/nemo/bean/ShareModel;)Lcom/codemao/nemo/dialog/LocalWebShareDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/LocalWebShareDialog;->show()V

    return-void
.end method

.method public synCookies(Ljava/lang/String;)V
    .registers 5

    .line 232
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 233
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getAccountToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/codemao/nemo/activity/BoxPlayerActivity;->getTokenBaseKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getAccountToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";Domain=.codemao.cn;Path = /"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_32
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    goto :goto_3e

    :catch_3a
    move-exception p1

    .line 238
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3e
    return-void
.end method
