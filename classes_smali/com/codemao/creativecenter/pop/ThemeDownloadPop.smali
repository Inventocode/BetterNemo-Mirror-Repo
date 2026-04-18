.class public Lcom/codemao/creativecenter/pop/ThemeDownloadPop;
.super Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;
.source "ThemeDownloadPop.java"


# instance fields
.field private countDownTimer:Landroid/os/CountDownTimer;

.field private iconH:F

.field private iconW:F

.field private isFormDetail:Z

.field private isInCenter:Z

.field private offsetX:I

.field private offsetY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIFFZZ)V
    .registers 8

    .line 31
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    .line 32
    iput p4, p0, Lcom/codemao/creativecenter/pop/ThemeDownloadPop;->iconW:F

    .line 33
    iput p2, p0, Lcom/codemao/creativecenter/pop/ThemeDownloadPop;->offsetX:I

    .line 34
    iput p3, p0, Lcom/codemao/creativecenter/pop/ThemeDownloadPop;->offsetY:I

    .line 35
    iput p5, p0, Lcom/codemao/creativecenter/pop/ThemeDownloadPop;->iconH:F

    .line 36
    iput-boolean p6, p0, Lcom/codemao/creativecenter/pop/ThemeDownloadPop;->isInCenter:Z

    .line 37
    iput-boolean p7, p0, Lcom/codemao/creativecenter/pop/ThemeDownloadPop;->isFormDetail:Z

    return-void
.end method

.method static synthetic access$002(Lcom/codemao/creativecenter/pop/ThemeDownloadPop;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/ThemeDownloadPop;->countDownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method private startDissmissCountDown()V
    .registers 8

    .line 89
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDownloadPop;->countDownTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_11

    .line 90
    new-instance v0, Lcom/codemao/creativecenter/pop/ThemeDownloadPop$3;

    const-wide/16 v3, 0x1388

    const-wide/16 v5, 0x1388

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/codemao/creativecenter/pop/ThemeDownloadPop$3;-><init>(Lcom/codemao/creativecenter/pop/ThemeDownloadPop;JJ)V

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDownloadPop;->countDownTimer:Landroid/os/CountDownTimer;

    .line 104
    :cond_11
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDownloadPop;->countDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDownloadPop;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_a

    .line 110
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDownloadPop;->countDownTimer:Landroid/os/CountDownTimer;

    .line 113
    :cond_a
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method

.method protected getImplLayoutId()I
    .registers 2

    .line 42
    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_pw_theme_download:I

    return v0
.end method

.method protected onCreate()V
    .registers 4

    .line 47
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onCreate()V

    .line 48
    sget v0, Lcom/codemao/creativecenter/R$id;->iv:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 49
    iget v1, p0, Lcom/codemao/creativecenter/pop/ThemeDownloadPop;->iconW:F

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 50
    iget v1, p0, Lcom/codemao/creativecenter/pop/ThemeDownloadPop;->iconH:F

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 51
    new-instance v1, Lcom/codemao/creativecenter/pop/ThemeDownloadPop$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/pop/ThemeDownloadPop$1;-><init>(Lcom/codemao/creativecenter/pop/ThemeDownloadPop;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    sget v1, Lcom/codemao/creativecenter/R$id;->root:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/codemao/creativecenter/pop/ThemeDownloadPop$2;

    invoke-direct {v2, p0}, Lcom/codemao/creativecenter/pop/ThemeDownloadPop$2;-><init>(Lcom/codemao/creativecenter/pop/ThemeDownloadPop;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-boolean v1, p0, Lcom/codemao/creativecenter/pop/ThemeDownloadPop;->isFormDetail:Z

    if-eqz v1, :cond_4a

    .line 64
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Lcom/codemao/creativecenter/pop/ThemeDownloadPop;->offsetX:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 65
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Lcom/codemao/creativecenter/pop/ThemeDownloadPop;->offsetY:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 66
    sget v1, Lcom/codemao/creativecenter/R$drawable;->icon_remind_dwonload_anchor_detail:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7f

    .line 68
    :cond_4a
    iget-boolean v1, p0, Lcom/codemao/creativecenter/pop/ThemeDownloadPop;->isInCenter:Z

    if-eqz v1, :cond_65

    .line 69
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 70
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 71
    sget v1, Lcom/codemao/creativecenter/R$drawable;->icon_remind_download_center:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7f

    .line 73
    :cond_65
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Lcom/codemao/creativecenter/pop/ThemeDownloadPop;->offsetX:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 74
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Lcom/codemao/creativecenter/pop/ThemeDownloadPop;->offsetY:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 75
    sget v1, Lcom/codemao/creativecenter/R$drawable;->icon_remind_download_anchor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_7f
    return-void
.end method

.method protected onShow()V
    .registers 1

    .line 84
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onShow()V

    .line 85
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/ThemeDownloadPop;->startDissmissCountDown()V

    return-void
.end method
