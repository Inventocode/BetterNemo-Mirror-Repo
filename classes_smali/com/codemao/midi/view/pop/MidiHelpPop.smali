.class public Lcom/codemao/midi/view/pop/MidiHelpPop;
.super Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;
.source "MidiHelpPop.java"


# static fields
.field private static BLOACK_HELP_URL:Ljava/lang/String; = "file:///android_asset/webview/helps.html"


# instance fields
.field private blur:Landroid/widget/ImageView;

.field private flContent:Landroid/widget/FrameLayout;

.field private volatile show:Z

.field private type:Ljava/lang/String;

.field private web:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 39
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/codemao/midi/view/pop/MidiHelpPop;->show:Z

    .line 40
    iput-object p2, p0, Lcom/codemao/midi/view/pop/MidiHelpPop;->type:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/midi/view/pop/MidiHelpPop;)Z
    .registers 1

    .line 28
    iget-boolean p0, p0, Lcom/codemao/midi/view/pop/MidiHelpPop;->show:Z

    return p0
.end method

.method static synthetic access$100(Lcom/codemao/midi/view/pop/MidiHelpPop;)V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/codemao/midi/view/pop/MidiHelpPop;->quite()V

    return-void
.end method

.method private quite()V
    .registers 1

    .line 149
    invoke-virtual {p0}, Lcom/codemao/midi/view/pop/MidiHelpPop;->dismiss()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 52
    iget-boolean v0, p0, Lcom/codemao/midi/view/pop/MidiHelpPop;->show:Z

    if-eqz v0, :cond_7

    .line 53
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    :cond_7
    return-void
.end method

.method protected doAfterDismiss()V
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiHelpPop;->web:Landroid/webkit/WebView;

    if-eqz v0, :cond_7

    .line 140
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 142
    :cond_7
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiHelpPop;->blur:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/codemao/midi/util/MidiImageUtils;->recycleImageBitmap(Landroid/widget/ImageView;)V

    .line 143
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->doAfterDismiss()V

    return-void
.end method

.method protected doAfterShow()V
    .registers 3

    .line 127
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;->doAfterShow()V

    .line 131
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/codemao/midi/view/pop/MidiHelpPop;->blur:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/codemao/midi/util/MidiImageUtils;->takeBlurScreenShot(Landroid/app/Activity;Landroid/widget/ImageView;)V

    return-void
.end method

.method protected getImplLayoutId()I
    .registers 2

    .line 161
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/midi/util/MidiScreenUtils;->isPad(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget v0, Lcom/codemao/midi/R$layout;->midi_pop_fullscreen_block_help_pad_v22:I

    goto :goto_f

    :cond_d
    sget v0, Lcom/codemao/midi/R$layout;->midi_pop_fullscreen_block_help_v22:I

    :goto_f
    return v0
.end method

.method protected onCreate()V
    .registers 4

    .line 59
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onCreate()V

    .line 62
    sget v0, Lcom/codemao/midi/R$id;->blur:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/midi/view/pop/MidiHelpPop;->blur:Landroid/widget/ImageView;

    .line 63
    sget v0, Lcom/codemao/midi/R$id;->web:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/codemao/midi/view/pop/MidiHelpPop;->web:Landroid/webkit/WebView;

    .line 64
    sget v0, Lcom/codemao/midi/R$id;->fl_content:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/codemao/midi/view/pop/MidiHelpPop;->flContent:Landroid/widget/FrameLayout;

    .line 66
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2f

    .line 67
    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiHelpPop;->web:Landroid/webkit/WebView;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/codemao/midi/util/MidiScreenUtils;->clipViewCornerByDp(Landroid/view/View;I)V

    goto :goto_34

    .line 69
    :cond_2f
    sget v1, Lcom/codemao/midi/R$drawable;->midi_bg_rectangle_block_helper:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 71
    :goto_34
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/codemao/midi/view/pop/MidiHelpPop;->web:Landroid/webkit/WebView;

    invoke-static {v0, v1}, Lcom/codemao/midi/util/MidiWebUtil;->initBcmWeb(Landroid/app/Activity;Landroid/webkit/WebView;)V

    .line 104
    sget v0, Lcom/codemao/midi/R$id;->iv_close:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/codemao/midi/view/pop/MidiHelpPop$1;

    invoke-direct {v1, p0}, Lcom/codemao/midi/view/pop/MidiHelpPop$1;-><init>(Lcom/codemao/midi/view/pop/MidiHelpPop;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    sget-object v0, Lcom/codemao/midi/view/pop/MidiHelpPop;->BLOACK_HELP_URL:Ljava/lang/String;

    .line 112
    iget-object v1, p0, Lcom/codemao/midi/view/pop/MidiHelpPop;->type:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6d

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?type="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/codemao/midi/view/pop/MidiHelpPop;->type:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    :cond_6d
    iget-object v1, p0, Lcom/codemao/midi/view/pop/MidiHelpPop;->web:Landroid/webkit/WebView;

    const v2, -0xb6e37d

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 119
    iget-object v1, p0, Lcom/codemao/midi/view/pop/MidiHelpPop;->web:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 120
    iget-object v1, p0, Lcom/codemao/midi/view/pop/MidiHelpPop;->web:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected onDismiss()V
    .registers 1

    .line 155
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onDismiss()V

    return-void
.end method

.method protected onShow()V
    .registers 2

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/codemao/midi/view/pop/MidiHelpPop;->show:Z

    .line 47
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onShow()V

    return-void
.end method
