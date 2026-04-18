.class public Lcom/codemao/creativecenter/pop/FullScreenBlockHelpPop;
.super Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;
.source "FullScreenBlockHelpPop.java"


# instance fields
.field private blur:Landroid/widget/ImageView;

.field private volatile show:Z

.field private type:Ljava/lang/String;

.field private web:Landroid/webkit/WebView;


# direct methods
.method public static synthetic $r8$lambda$5imZR7dJZ_TzCLUT6yI8SPLgI88(Lcom/codemao/creativecenter/pop/FullScreenBlockHelpPop;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/pop/FullScreenBlockHelpPop;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 45
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/codemao/creativecenter/pop/FullScreenBlockHelpPop;->show:Z

    .line 46
    iput-object p2, p0, Lcom/codemao/creativecenter/pop/FullScreenBlockHelpPop;->type:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .registers 2

    .line 70
    iget-boolean p1, p0, Lcom/codemao/creativecenter/pop/FullScreenBlockHelpPop;->show:Z

    if-eqz p1, :cond_7

    .line 71
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/FullScreenBlockHelpPop;->quite()V

    :cond_7
    return-void
.end method

.method private quite()V
    .registers 1

    .line 113
    invoke-virtual {p0}, Lcom/codemao/creativecenter/pop/FullScreenBlockHelpPop;->dismiss()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 57
    iget-boolean v0, p0, Lcom/codemao/creativecenter/pop/FullScreenBlockHelpPop;->show:Z

    if-eqz v0, :cond_7

    .line 58
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    :cond_7
    return-void
.end method

.method protected doAfterDismiss()V
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenBlockHelpPop;->web:Landroid/webkit/WebView;

    if-eqz v0, :cond_7

    .line 106
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 108
    :cond_7
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenBlockHelpPop;->blur:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/CreativeImageUtils;->recycleImageBitmap(Landroid/widget/ImageView;)V

    .line 109
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->doAfterDismiss()V

    return-void
.end method

.method protected doAfterShow()V
    .registers 3

    .line 94
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;->doAfterShow()V

    .line 96
    sget-object v0, Lcom/nemo/commonui/NemoUIConfigManager;->INSTANCE:Lcom/nemo/commonui/NemoUIConfigManager;

    invoke-virtual {v0}, Lcom/nemo/commonui/NemoUIConfigManager;->getLowAnimationLevel()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 97
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenBlockHelpPop;->blur:Landroid/widget/ImageView;

    const-string v1, "#FF161334"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_22

    .line 99
    :cond_17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenBlockHelpPop;->blur:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeImageUtils;->takeBlurScreenShot(Landroid/app/Activity;Landroid/widget/ImageView;)V

    :goto_22
    return-void
.end method

.method protected getImplLayoutId()I
    .registers 2

    .line 123
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    if-eqz v0, :cond_b

    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_pop_fullscreen_block_help_pad_v22:I

    goto :goto_d

    :cond_b
    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_pop_fullscreen_block_help_v22:I

    :goto_d
    return v0
.end method

.method protected onCreate()V
    .registers 4

    .line 64
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onCreate()V

    .line 66
    sget v0, Lcom/codemao/creativecenter/R$id;->blur:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenBlockHelpPop;->blur:Landroid/widget/ImageView;

    .line 67
    sget v0, Lcom/codemao/creativecenter/R$id;->web:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenBlockHelpPop;->web:Landroid/webkit/WebView;

    .line 68
    sget v0, Lcom/codemao/creativecenter/R$id;->fl_content:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 69
    sget v1, Lcom/codemao/creativecenter/R$id;->iv_close:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/codemao/creativecenter/pop/FullScreenBlockHelpPop$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/codemao/creativecenter/pop/FullScreenBlockHelpPop$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/creativecenter/pop/FullScreenBlockHelpPop;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_3b

    .line 74
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenBlockHelpPop;->web:Landroid/webkit/WebView;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->clipViewCornerByDp(Landroid/view/View;I)V

    goto :goto_40

    .line 76
    :cond_3b
    sget v1, Lcom/codemao/creativecenter/R$drawable;->creative_bg_rectangle_block_helper:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 79
    :goto_40
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenBlockHelpPop;->web:Landroid/webkit/WebView;

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/WebUtil;->initBcmWeb(Landroid/app/Activity;Landroid/webkit/WebView;)V

    const-string v0, "file:///android_asset/webview/helps.html"

    .line 82
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenBlockHelpPop;->type:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6b

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?type="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenBlockHelpPop;->type:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    :cond_6b
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenBlockHelpPop;->web:Landroid/webkit/WebView;

    const v2, -0xb6e37d

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 88
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenBlockHelpPop;->web:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 89
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenBlockHelpPop;->web:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected onDismiss()V
    .registers 1

    .line 118
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onDismiss()V

    return-void
.end method

.method protected onShow()V
    .registers 2

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/codemao/creativecenter/pop/FullScreenBlockHelpPop;->show:Z

    .line 52
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onShow()V

    return-void
.end method
