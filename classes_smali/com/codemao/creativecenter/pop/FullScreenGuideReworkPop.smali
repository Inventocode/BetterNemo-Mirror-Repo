.class public Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;
.super Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;
.source "FullScreenGuideReworkPop.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private isOtherTouchEnable:Z

.field private ishasClose:Z

.field private ivRun:Landroid/widget/ImageView;

.field private noticeStr:Ljava/lang/String;

.field private onRunClickListener:Landroid/view/View$OnClickListener;

.field private tvNotice:Landroid/widget/TextView;

.field private vBg:Landroid/view/View;

.field private vRight:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;ZZ)V
    .registers 5

    .line 39
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;->isOtherTouchEnable:Z

    .line 36
    iput-boolean p1, p0, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;->ishasClose:Z

    .line 40
    iput-object p2, p0, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;->onRunClickListener:Landroid/view/View$OnClickListener;

    .line 41
    iput-boolean p3, p0, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;->isOtherTouchEnable:Z

    .line 42
    iput-boolean p4, p0, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;->ishasClose:Z

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;)Landroid/view/View$OnClickListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;->onRunClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private initSize()V
    .registers 5

    .line 73
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;->ivRun:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 74
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    if-eqz v1, :cond_8d

    .line 75
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42480000  # 50.0f

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 76
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 77
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41800000  # 16.0f

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 78
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x41300000  # 11.0f

    invoke-static {v1, v3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 79
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;->ivRun:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000  # 10.0f

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    .line 81
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;->ivRun:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 82
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;->vBg:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 83
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;->vBg:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x41c80000  # 25.0f

    invoke-static {v1, v3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 84
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;->vRight:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_107

    .line 86
    :cond_8d
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42200000  # 40.0f

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 87
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 88
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41400000  # 12.0f

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 89
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 90
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;->ivRun:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41000000  # 8.0f

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    .line 92
    iget-object v3, p0, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;->ivRun:Landroid/widget/ImageView;

    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 93
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;->vBg:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 94
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;->vBg:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 95
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;->vRight:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40800000  # 4.0f

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_107
    return-void
.end method


# virtual methods
.method protected getImplLayoutId()I
    .registers 2

    .line 116
    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_pop_fullscreen_guide_rework:I

    return v0
.end method

.method protected initPopupContent()V
    .registers 2

    .line 109
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;->initPopupContent()V

    .line 110
    sget v0, Lcom/codemao/creativecenter/R$id;->cl_root:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    sget v0, Lcom/codemao/creativecenter/R$id;->close:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 122
    iget-boolean p1, p0, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;->isOtherTouchEnable:Z

    if-eqz p1, :cond_7

    .line 123
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    :cond_7
    return-void
.end method

.method protected onCreate()V
    .registers 3

    .line 47
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onCreate()V

    .line 48
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_content:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;->tvNotice:Landroid/widget/TextView;

    .line 49
    sget v0, Lcom/codemao/creativecenter/R$id;->iv2:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;->vBg:Landroid/view/View;

    .line 50
    sget v0, Lcom/codemao/creativecenter/R$id;->imageView2:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;->vRight:Landroid/view/View;

    .line 51
    sget v0, Lcom/codemao/creativecenter/R$id;->iv1:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;->ivRun:Landroid/widget/ImageView;

    .line 52
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;->onRunClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_33

    .line 53
    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop$1;-><init>(Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    :cond_33
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;->noticeStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 64
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;->tvNotice:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;->noticeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :cond_42
    iget-boolean v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;->ishasClose:Z

    if-nez v0, :cond_51

    .line 67
    sget v0, Lcom/codemao/creativecenter/R$id;->close:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    :cond_51
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;->initSize()V

    return-void
.end method

.method public setNoticeContent(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;
    .registers 3

    .line 100
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;->noticeStr:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;->tvNotice:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 102
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-object p0
.end method
