.class public Lcom/codemao/nemo/dialog/pop/LevelUpGuidePop;
.super Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;
.source "LevelUpGuidePop.java"


# instance fields
.field flBody:Landroid/widget/FrameLayout;

.field ivGuide:Landroid/widget/ImageView;

.field private type:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 39
    iput p1, p0, Lcom/codemao/nemo/dialog/pop/LevelUpGuidePop;->type:I

    return-void
.end method

.method private change()V
    .registers 4

    .line 105
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/LevelUpGuidePop;->ivGuide:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    .line 106
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 107
    iget v1, p0, Lcom/codemao/nemo/dialog/pop/LevelUpGuidePop;->type:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_14

    const/4 v2, 0x4

    if-eq v1, v2, :cond_14

    goto :goto_33

    .line 110
    :cond_14
    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/LevelUpGuidePop;->ivGuide:Landroid/widget/ImageView;

    const v2, 0x7f0804e9

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v1, 0x50

    .line 111
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 112
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const v1, 0x3efae148  # 0.49f

    .line 113
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 116
    :goto_33
    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/LevelUpGuidePop;->ivGuide:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected applySize(Z)V
    .registers 8

    .line 84
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 85
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    .line 86
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x30

    .line 87
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 88
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "navigation_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    .line 91
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 92
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x0

    if-nez p1, :cond_4a

    .line 94
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->isNavBarVisible(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_49

    goto :goto_4a

    :cond_49
    const/4 v2, 0x0

    :cond_4a
    :goto_4a
    if-nez v0, :cond_5c

    .line 96
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v1, p1, v0, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_71

    :cond_5c
    const/4 p1, 0x1

    if-eq v0, p1, :cond_62

    const/4 p1, 0x3

    if-ne v0, p1, :cond_71

    .line 99
    :cond_62
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_71
    :goto_71
    return-void
.end method

.method protected getImplLayoutId()I
    .registers 2

    const v0, 0x7f0d02da

    return v0
.end method

.method protected onCreate()V
    .registers 3

    .line 64
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onCreate()V

    const v0, 0x7f0a03b4

    .line 65
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/nemo/dialog/pop/LevelUpGuidePop;->ivGuide:Landroid/widget/ImageView;

    const v0, 0x7f0a0629

    .line 66
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/codemao/nemo/dialog/pop/LevelUpGuidePop;->flBody:Landroid/widget/FrameLayout;

    .line 67
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/LevelUpGuidePop;->ivGuide:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/nemo/dialog/pop/LevelUpGuidePop$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/pop/LevelUpGuidePop$1;-><init>(Lcom/codemao/nemo/dialog/pop/LevelUpGuidePop;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/LevelUpGuidePop;->flBody:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/codemao/nemo/dialog/pop/LevelUpGuidePop$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/pop/LevelUpGuidePop$2;-><init>(Lcom/codemao/nemo/dialog/pop/LevelUpGuidePop;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/pop/LevelUpGuidePop;->change()V

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 42
    iput p1, p0, Lcom/codemao/nemo/dialog/pop/LevelUpGuidePop;->type:I

    .line 43
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/LevelUpGuidePop;->ivGuide:Landroid/widget/ImageView;

    if-eqz p1, :cond_9

    .line 44
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/pop/LevelUpGuidePop;->change()V

    :cond_9
    return-void
.end method
