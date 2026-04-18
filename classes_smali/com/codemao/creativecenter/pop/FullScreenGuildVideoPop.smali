.class public Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;
.super Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;
.source "FullScreenGuildVideoPop.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private cl_root:Landroid/view/View;

.field private close:Landroid/view/View;

.field private content:Ljava/lang/String;

.field private ivRun:Landroid/widget/ImageView;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private textView:Landroid/widget/TextView;

.field private type:I

.field private vBg:Landroid/view/View;

.field private vRight:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 49
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 37
    iput p1, p0, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;->type:I

    .line 50
    iput-object p2, p0, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;->onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .registers 5

    .line 42
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 37
    iput p1, p0, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;->type:I

    .line 43
    iput p4, p0, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;->type:I

    .line 44
    iput-object p2, p0, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;->content:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;->onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;)Landroid/view/View$OnClickListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;->onClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private initSize()V
    .registers 5

    .line 88
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    const/high16 v1, 0x41600000  # 14.0f

    if-eqz v0, :cond_92

    .line 89
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;->ivRun:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 90
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42300000  # 44.0f

    invoke-static {v2, v3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 91
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 92
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x433a0000  # 186.0f

    invoke-static {v2, v3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 93
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 94
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;->ivRun:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000  # 10.0f

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    .line 96
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;->ivRun:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 97
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;->vBg:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41700000  # 15.0f

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 98
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;->vBg:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x433c0000  # 188.0f

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 99
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;->vRight:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x43310000  # 177.0f

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto/16 :goto_118

    .line 101
    :cond_92
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;->ivRun:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 102
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42100000  # 36.0f

    invoke-static {v2, v3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 103
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 104
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x430b0000  # 139.0f

    invoke-static {v2, v3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 105
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 106
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;->ivRun:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40e00000  # 7.0f

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    .line 108
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;->ivRun:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 109
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;->vBg:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41000000  # 8.0f

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 110
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;->vBg:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x430c0000  # 140.0f

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 111
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;->vRight:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x43040000  # 132.0f

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_118
    return-void
.end method


# virtual methods
.method protected getImplLayoutId()I
    .registers 2

    .line 117
    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_pop_fullscreen_guide_video:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 123
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method

.method protected onCreate()V
    .registers 3

    .line 55
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onCreate()V

    .line 56
    sget v0, Lcom/codemao/creativecenter/R$id;->iv2:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;->vBg:Landroid/view/View;

    .line 57
    sget v0, Lcom/codemao/creativecenter/R$id;->imageView2:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;->vRight:Landroid/view/View;

    .line 58
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_content:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;->textView:Landroid/widget/TextView;

    .line 59
    sget v0, Lcom/codemao/creativecenter/R$id;->cl_root:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;->cl_root:Landroid/view/View;

    .line 60
    sget v0, Lcom/codemao/creativecenter/R$id;->iv1:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;->ivRun:Landroid/widget/ImageView;

    .line 61
    sget v0, Lcom/codemao/creativecenter/R$id;->close:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;->close:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;->cl_root:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;->close:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;->ivRun:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop$1;-><init>(Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 76
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :cond_5a
    iget v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_70

    .line 79
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;->cl_root:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 80
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;->ivRun:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;->ivRun:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 84
    :cond_70
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;->initSize()V

    return-void
.end method
