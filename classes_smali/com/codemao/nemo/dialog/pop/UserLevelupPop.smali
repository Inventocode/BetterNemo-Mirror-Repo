.class public Lcom/codemao/nemo/dialog/pop/UserLevelupPop;
.super Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;
.source "UserLevelupPop.java"


# instance fields
.field authorLevel:I

.field confirmListener:Landroid/view/View$OnClickListener;

.field consumeLevel:I

.field private from:I

.field isAuthorLevelUp:Z

.field isConsumeLevelUp:Z

.field ivClose:Landroid/widget/ImageView;

.field private iv_foguang:Landroid/widget/ImageView;

.field llIndicator:Landroid/widget/LinearLayout;

.field private lottie:Landroid/widget/ImageView;

.field onPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private rl_content:Landroid/view/View;

.field viewPager:Landroidx/viewpager/widget/ViewPager;

.field private view_bg:Landroid/view/View;

.field views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/view/LevelUpView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 82
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance p1, Lcom/codemao/nemo/dialog/pop/UserLevelupPop$1;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/dialog/pop/UserLevelupPop$1;-><init>(Lcom/codemao/nemo/dialog/pop/UserLevelupPop;)V

    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->confirmListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private updateUI()V
    .registers 10

    .line 121
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->views:Ljava/util/List;

    if-eqz v0, :cond_8a

    .line 122
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 123
    iget-boolean v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->isAuthorLevelUp:Z

    if-eqz v0, :cond_23

    .line 124
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->views:Ljava/util/List;

    new-instance v8, Lcom/codemao/nemo/view/LevelUpView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    iget v4, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->from:I

    iget v5, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->authorLevel:I

    iget v6, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->consumeLevel:I

    iget-object v7, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->confirmListener:Landroid/view/View$OnClickListener;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/codemao/nemo/view/LevelUpView;-><init>(Landroid/content/Context;IIIILandroid/view/View$OnClickListener;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_23
    iget-boolean v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->isConsumeLevelUp:Z

    if-eqz v0, :cond_3f

    .line 127
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->views:Ljava/util/List;

    new-instance v8, Lcom/codemao/nemo/view/LevelUpView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    iget v4, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->from:I

    iget v5, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->authorLevel:I

    iget v6, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->consumeLevel:I

    iget-object v7, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->confirmListener:Landroid/view/View$OnClickListener;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/codemao/nemo/view/LevelUpView;-><init>(Landroid/content/Context;IIIILandroid/view/View$OnClickListener;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_3f
    iget v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->from:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_4c

    .line 130
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->ivClose:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_51

    .line 132
    :cond_4c
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->ivClose:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    :goto_51
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_8a

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_8a

    .line 135
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 136
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_7c

    .line 137
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->llIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->onPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_8a

    .line 139
    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    goto :goto_8a

    .line 142
    :cond_7c
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->onPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_85

    .line 143
    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 145
    :cond_85
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->llIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_8a
    :goto_8a
    return-void
.end method


# virtual methods
.method protected doAfterDismiss()V
    .registers 1

    .line 91
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->doAfterDismiss()V

    return-void
.end method

.method protected getImplLayoutId()I
    .registers 2

    const v0, 0x7f0d02e2

    return v0
.end method

.method protected onCreate()V
    .registers 4

    .line 159
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onCreate()V

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->views:Ljava/util/List;

    const v0, 0x7f0a04c3

    .line 161
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->llIndicator:Landroid/widget/LinearLayout;

    const v0, 0x7f0a037b

    .line 162
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->ivClose:Landroid/widget/ImageView;

    .line 163
    new-instance v1, Lcom/codemao/nemo/dialog/pop/UserLevelupPop$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/pop/UserLevelupPop$2;-><init>(Lcom/codemao/nemo/dialog/pop/UserLevelupPop;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a097c

    .line 170
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const v0, 0x7f0a0504

    .line 171
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->lottie:Landroid/widget/ImageView;

    const v0, 0x7f0a03ac

    .line 172
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->iv_foguang:Landroid/widget/ImageView;

    const v0, 0x7f0a062d

    .line 173
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->rl_content:Landroid/view/View;

    const v0, 0x7f0a097e

    .line 174
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->view_bg:Landroid/view/View;

    .line 176
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->rl_content:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 177
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->rl_content:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 178
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->rl_content:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 179
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->view_bg:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 181
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->iv_foguang:Landroid/widget/ImageView;

    const v1, 0x7f08037a

    invoke-static {v1, v0}, Lcom/codemao/nemo/util/GlideUtils;->loadGif(ILandroid/widget/ImageView;)V

    .line 183
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->lottie:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    const v1, 0x7f080379

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/dialog/pop/UserLevelupPop$3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/pop/UserLevelupPop$3;-><init>(Lcom/codemao/nemo/dialog/pop/UserLevelupPop;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->lottie:Landroid/widget/ImageView;

    .line 200
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 201
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/codemao/nemo/dialog/pop/UserLevelupPop$4;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/pop/UserLevelupPop$4;-><init>(Lcom/codemao/nemo/dialog/pop/UserLevelupPop;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 223
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    const/high16 v2, 0x42ce0000  # 103.0f

    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    .line 224
    new-instance v0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop$5;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/dialog/pop/UserLevelupPop$5;-><init>(Lcom/codemao/nemo/dialog/pop/UserLevelupPop;)V

    iput-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->onPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 246
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->updateUI()V

    return-void
.end method

.method protected onShow()V
    .registers 5

    .line 96
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onShow()V

    .line 97
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->rl_content:Landroid/view/View;

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz v0, :cond_2b

    .line 98
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    .line 99
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    .line 100
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 102
    :cond_2b
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->view_bg:Landroid/view/View;

    if-eqz v0, :cond_49

    .line 103
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    .line 104
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    .line 105
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_49
    return-void
.end method

.method public setConfirmListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->confirmListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setLevelInfo(IIIZZ)V
    .registers 6

    .line 112
    iput p2, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->authorLevel:I

    .line 113
    iput p3, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->consumeLevel:I

    .line 114
    iput-boolean p4, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->isAuthorLevelUp:Z

    .line 115
    iput p1, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->from:I

    .line 116
    iput-boolean p5, p0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->isConsumeLevelUp:Z

    .line 117
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->updateUI()V

    return-void
.end method
