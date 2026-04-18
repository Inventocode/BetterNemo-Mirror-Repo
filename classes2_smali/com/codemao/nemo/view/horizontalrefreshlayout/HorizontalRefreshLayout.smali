.class public Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;
.super Landroid/widget/FrameLayout;
.source "HorizontalRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout$RefreshCallBack;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private dragMarginPx:I

.field private dragMaxHeaderWidth:I

.field private headerState:I

.field private leftHeaderView:Landroid/view/View;

.field private leftHeaderWidth:I

.field private leftRefreshHeader:Lcom/codemao/nemo/view/horizontalrefreshlayout/RefreshHeader;

.field private mLastInterceptX:I

.field private mLastInterceptY:I

.field private mLastX:I

.field private mTargetTranslationX:F

.field private mTargetView:Landroid/view/View;

.field private refreshCallback:Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout$RefreshCallBack;

.field private refreshState:I

.field private rightHeaderView:Landroid/view/View;

.field private rightHeaderWidth:I

.field private rightRefreshHeader:Lcom/codemao/nemo/view/horizontalrefreshlayout/RefreshHeader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mTargetTranslationX:F

    const/4 p1, -0x1

    .line 38
    iput p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->headerState:I

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->refreshState:I

    .line 59
    invoke-direct {p0}, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mTargetTranslationX:F

    const/4 p1, -0x1

    .line 38
    iput p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->headerState:I

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->refreshState:I

    .line 65
    invoke-direct {p0}, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->init()V

    return-void
.end method

.method static synthetic access$002(Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;I)I
    .registers 2

    .line 16
    iput p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->refreshState:I

    return p1
.end method

.method static synthetic access$100(Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;)I
    .registers 1

    .line 16
    iget p0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->headerState:I

    return p0
.end method

.method static synthetic access$102(Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;I)I
    .registers 2

    .line 16
    iput p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->headerState:I

    return p1
.end method

.method static synthetic access$202(Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;F)F
    .registers 2

    .line 16
    iput p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mTargetTranslationX:F

    return p1
.end method

.method static synthetic access$300(Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;)I
    .registers 1

    .line 16
    iget p0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->leftHeaderWidth:I

    return p0
.end method

.method static synthetic access$400(Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;)Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout$RefreshCallBack;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->refreshCallback:Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout$RefreshCallBack;

    return-object p0
.end method

.method static synthetic access$500(Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;)I
    .registers 1

    .line 16
    iget p0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->rightHeaderWidth:I

    return p0
.end method

.method private findTargetView()V
    .registers 4

    .line 127
    iget-object v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mTargetView:Landroid/view/View;

    if-nez v0, :cond_25

    const/4 v0, 0x0

    .line 128
    :goto_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 129
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 130
    iget-object v2, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->leftHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    iget-object v2, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->rightHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 131
    iput-object v1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mTargetView:Landroid/view/View;

    goto :goto_25

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_25
    :goto_25
    return-void
.end method

.method private init()V
    .registers 2

    .line 73
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->context:Landroid/content/Context;

    .line 74
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    return-void
.end method

.method private setLeftHeadView(Landroid/view/View;)V
    .registers 3

    .line 380
    iput-object p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->leftHeaderView:Landroid/view/View;

    .line 381
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const v0, 0x800003

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 382
    iget-object p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->leftHeaderView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private setRightHeadView(Landroid/view/View;)V
    .registers 3

    .line 386
    iput-object p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->rightHeaderView:Landroid/view/View;

    .line 387
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const v0, 0x800005

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 388
    iget-object p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->rightHeaderView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private smoothLocateToRefresh()V
    .registers 6

    .line 306
    iget v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->headerState:I

    const/4 v1, 0x4

    const-wide/16 v2, 0x96

    if-nez v0, :cond_42

    iget-object v4, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->leftHeaderView:Landroid/view/View;

    if-eqz v4, :cond_42

    .line 307
    iput v1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->refreshState:I

    .line 309
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 311
    iget-object v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->leftRefreshHeader:Lcom/codemao/nemo/view/horizontalrefreshlayout/RefreshHeader;

    iget-object v1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->leftHeaderView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/codemao/nemo/view/horizontalrefreshlayout/RefreshHeader;->onRefreshing(Landroid/view/View;)V

    .line 313
    iget-object v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->leftHeaderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout$2;-><init>(Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;)V

    .line 314
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_86

    :cond_42
    const/4 v4, 0x1

    if-ne v0, v4, :cond_86

    .line 329
    iget-object v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->rightHeaderView:Landroid/view/View;

    if-eqz v0, :cond_86

    .line 330
    iput v1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->refreshState:I

    .line 332
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mTargetTranslationX:F

    neg-float v1, v1

    iget v4, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->rightHeaderWidth:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 334
    iget-object v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->rightRefreshHeader:Lcom/codemao/nemo/view/horizontalrefreshlayout/RefreshHeader;

    iget-object v1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->rightHeaderView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/codemao/nemo/view/horizontalrefreshlayout/RefreshHeader;->onRefreshing(Landroid/view/View;)V

    .line 336
    iget-object v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->rightHeaderWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout$3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout$3;-><init>(Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;)V

    .line 337
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_86
    :goto_86
    return-void
.end method

.method private smoothRelease()V
    .registers 6

    .line 277
    iget-object v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v3, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout$1;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout$1;-><init>(Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;)V

    .line 278
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 289
    iget v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->headerState:I

    const/4 v3, 0x0

    if-nez v0, :cond_41

    .line 290
    iget-object v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->leftHeaderView:Landroid/view/View;

    if-eqz v0, :cond_61

    .line 291
    iget-object v4, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->leftRefreshHeader:Lcom/codemao/nemo/view/horizontalrefreshlayout/RefreshHeader;

    invoke-interface {v4, v3, v0}, Lcom/codemao/nemo/view/horizontalrefreshlayout/RefreshHeader;->onStart(ILandroid/view/View;)V

    .line 292
    iget-object v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->leftHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v3, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->leftHeaderWidth:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_61

    :cond_41
    const/4 v4, 0x1

    if-ne v0, v4, :cond_61

    .line 295
    iget-object v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->rightHeaderView:Landroid/view/View;

    if-eqz v0, :cond_61

    .line 296
    iget-object v4, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->rightRefreshHeader:Lcom/codemao/nemo/view/horizontalrefreshlayout/RefreshHeader;

    invoke-interface {v4, v3, v0}, Lcom/codemao/nemo/view/horizontalrefreshlayout/RefreshHeader;->onStart(ILandroid/view/View;)V

    .line 297
    iget-object v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->rightHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v3, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->rightHeaderWidth:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_61
    :goto_61
    return-void
.end method


# virtual methods
.method public canChildScrollLeft()Z
    .registers 3

    .line 422
    iget-object v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mTargetView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public canChildScrollRight()Z
    .registers 3

    .line 413
    iget-object v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mTargetView:Landroid/view/View;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_71

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_6c

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1b

    const/4 v0, 0x3

    if-eq v2, v0, :cond_6c

    goto :goto_77

    .line 149
    :cond_1b
    iget v2, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mLastInterceptX:I

    sub-int v2, v0, v2

    .line 150
    iget v5, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mLastInterceptY:I

    sub-int v5, v1, v5

    .line 152
    iput v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mLastInterceptX:I

    iput v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mLastX:I

    .line 153
    iput v1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mLastInterceptY:I

    .line 159
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v0, v1, :cond_77

    .line 160
    iget-object v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->leftHeaderView:Landroid/view/View;

    const/4 v1, 0x4

    if-eqz v0, :cond_50

    if-lez v2, :cond_50

    invoke-virtual {p0}, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->canChildScrollRight()Z

    move-result v0

    if-nez v0, :cond_50

    iget v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->refreshState:I

    if-eq v0, v1, :cond_50

    .line 161
    iput v3, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->headerState:I

    .line 162
    iput v4, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->refreshState:I

    .line 163
    iget-object p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->leftRefreshHeader:Lcom/codemao/nemo/view/horizontalrefreshlayout/RefreshHeader;

    iget-object v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->leftHeaderView:Landroid/view/View;

    invoke-interface {p1, v3, v0}, Lcom/codemao/nemo/view/horizontalrefreshlayout/RefreshHeader;->onStart(ILandroid/view/View;)V

    return v4

    .line 166
    :cond_50
    iget-object v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->rightHeaderView:Landroid/view/View;

    if-eqz v0, :cond_77

    if-gez v2, :cond_77

    invoke-virtual {p0}, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->canChildScrollLeft()Z

    move-result v0

    if-nez v0, :cond_77

    iget v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->refreshState:I

    if-eq v0, v1, :cond_77

    .line 167
    iput v4, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->headerState:I

    .line 168
    iput v4, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->refreshState:I

    .line 169
    iget-object p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->rightRefreshHeader:Lcom/codemao/nemo/view/horizontalrefreshlayout/RefreshHeader;

    iget-object v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->rightHeaderView:Landroid/view/View;

    invoke-interface {p1, v4, v0}, Lcom/codemao/nemo/view/horizontalrefreshlayout/RefreshHeader;->onStart(ILandroid/view/View;)V

    return v4

    .line 177
    :cond_6c
    iput v3, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mLastInterceptX:I

    .line 178
    iput v3, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mLastInterceptY:I

    goto :goto_77

    .line 145
    :cond_71
    iput v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mLastInterceptX:I

    iput v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mLastX:I

    .line 146
    iput v1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mLastInterceptY:I

    .line 182
    :cond_77
    :goto_77
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .registers 8

    .line 98
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 102
    :cond_7
    iget-object v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mTargetView:Landroid/view/View;

    if-nez v0, :cond_13

    .line 103
    invoke-direct {p0}, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->findTargetView()V

    .line 104
    iget-object v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mTargetView:Landroid/view/View;

    if-nez v0, :cond_13

    return-void

    .line 113
    :cond_13
    iget v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->refreshState:I

    if-nez v0, :cond_2c

    .line 114
    iget-object v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->leftHeaderView:Landroid/view/View;

    if-eqz v0, :cond_22

    .line 115
    iget v1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->leftHeaderWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 118
    :cond_22
    iget-object v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->rightHeaderView:Landroid/view/View;

    if-eqz v0, :cond_2c

    .line 119
    iget v1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->rightHeaderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 123
    :cond_2c
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    .line 79
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 81
    iget-object p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->leftHeaderView:Landroid/view/View;

    const-wide v0, 0x3fe3333333333333L  # 0.6

    if-eqz p1, :cond_1b

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->leftHeaderWidth:I

    int-to-double v2, p1

    mul-double v2, v2, v0

    double-to-int p2, v2

    .line 83
    iput p2, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->dragMarginPx:I

    add-int/2addr p1, p2

    .line 84
    iput p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->dragMaxHeaderWidth:I

    .line 87
    :cond_1b
    iget-object p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->rightHeaderView:Landroid/view/View;

    if-eqz p1, :cond_32

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->rightHeaderWidth:I

    .line 89
    iget p2, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->dragMarginPx:I

    if-nez p2, :cond_32

    int-to-double v2, p1

    mul-double v2, v2, v0

    double-to-int p2, v2

    .line 90
    iput p2, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->dragMarginPx:I

    add-int/2addr p1, p2

    .line 91
    iput p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->dragMaxHeaderWidth:I

    :cond_32
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_12f

    if-eq p1, v1, :cond_f8

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eq p1, v2, :cond_19

    if-eq p1, v3, :cond_f8

    goto/16 :goto_138

    .line 196
    :cond_19
    iget p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mLastX:I

    sub-int p1, v0, p1

    .line 197
    iput v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mLastX:I

    int-to-float p1, p1

    const/high16 v0, 0x3f800000  # 1.0f

    .line 199
    iget v4, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mTargetTranslationX:F

    iget v5, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->dragMaxHeaderWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v0, v4

    mul-float p1, p1, v0

    .line 200
    iget v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mTargetTranslationX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mTargetTranslationX:F

    .line 202
    iget p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->headerState:I

    const/4 v4, 0x0

    if-nez p1, :cond_93

    cmpg-float p1, v0, v4

    if-gtz p1, :cond_45

    .line 204
    iput v4, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mTargetTranslationX:F

    .line 205
    iget-object p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mTargetView:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_86

    .line 206
    :cond_45
    iget p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->dragMaxHeaderWidth:I

    int-to-float v4, p1

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_55

    int-to-float p1, p1

    .line 207
    iput p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mTargetTranslationX:F

    .line 208
    iget-object v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_86

    .line 210
    :cond_55
    iget-object p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mTargetView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 211
    iget p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->refreshState:I

    if-eq p1, v3, :cond_71

    iget p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mTargetTranslationX:F

    iget v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->leftHeaderWidth:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_71

    .line 212
    iput v3, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->refreshState:I

    .line 213
    iget-object p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->leftRefreshHeader:Lcom/codemao/nemo/view/horizontalrefreshlayout/RefreshHeader;

    iget-object v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->leftHeaderView:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/codemao/nemo/view/horizontalrefreshlayout/RefreshHeader;->onReadyToRelease(Landroid/view/View;)V

    goto :goto_86

    .line 215
    :cond_71
    iput v2, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->refreshState:I

    .line 217
    iget p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mTargetTranslationX:F

    iget v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->leftHeaderWidth:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 218
    iget-object v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->leftRefreshHeader:Lcom/codemao/nemo/view/horizontalrefreshlayout/RefreshHeader;

    iget v2, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mTargetTranslationX:F

    iget-object v3, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->leftHeaderView:Landroid/view/View;

    invoke-interface {v0, v2, p1, v3}, Lcom/codemao/nemo/view/horizontalrefreshlayout/RefreshHeader;->onDragging(FFLandroid/view/View;)V

    .line 222
    :goto_86
    iget-object p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->leftHeaderView:Landroid/view/View;

    iget v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->leftHeaderWidth:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v2, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mTargetTranslationX:F

    add-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_f0

    :cond_93
    if-ne p1, v1, :cond_f0

    cmpl-float p1, v0, v4

    if-ltz p1, :cond_a1

    .line 225
    iput v4, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mTargetTranslationX:F

    .line 226
    iget-object p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mTargetView:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_e5

    .line 227
    :cond_a1
    iget p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->dragMaxHeaderWidth:I

    neg-int v4, p1

    int-to-float v4, v4

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_b3

    neg-int p1, p1

    int-to-float p1, p1

    .line 228
    iput p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mTargetTranslationX:F

    .line 229
    iget-object v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_e5

    .line 231
    :cond_b3
    iget-object p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mTargetView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 233
    iget p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->refreshState:I

    if-eq p1, v3, :cond_d0

    iget p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mTargetTranslationX:F

    iget v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->rightHeaderWidth:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_d0

    .line 234
    iput v3, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->refreshState:I

    .line 235
    iget-object p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->rightRefreshHeader:Lcom/codemao/nemo/view/horizontalrefreshlayout/RefreshHeader;

    iget-object v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->rightHeaderView:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/codemao/nemo/view/horizontalrefreshlayout/RefreshHeader;->onReadyToRelease(Landroid/view/View;)V

    goto :goto_e5

    .line 237
    :cond_d0
    iput v2, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->refreshState:I

    .line 239
    iget p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mTargetTranslationX:F

    iget v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->rightHeaderWidth:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 240
    iget-object v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->rightRefreshHeader:Lcom/codemao/nemo/view/horizontalrefreshlayout/RefreshHeader;

    iget v2, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mTargetTranslationX:F

    iget-object v3, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->rightHeaderView:Landroid/view/View;

    invoke-interface {v0, v2, p1, v3}, Lcom/codemao/nemo/view/horizontalrefreshlayout/RefreshHeader;->onDragging(FFLandroid/view/View;)V

    .line 244
    :goto_e5
    iget-object p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->rightHeaderView:Landroid/view/View;

    iget v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->rightHeaderWidth:I

    int-to-float v0, v0

    iget v2, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mTargetTranslationX:F

    add-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 246
    :cond_f0
    :goto_f0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v1

    :cond_f8
    const/4 p1, 0x0

    .line 250
    iput p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mLastInterceptX:I

    iput p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mLastX:I

    .line 251
    iput p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mLastInterceptY:I

    .line 253
    iget p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->headerState:I

    if-nez p1, :cond_114

    .line 254
    iget p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mTargetTranslationX:F

    iget v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->leftHeaderWidth:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_110

    .line 255
    invoke-direct {p0}, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->smoothRelease()V

    goto :goto_127

    .line 257
    :cond_110
    invoke-direct {p0}, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->smoothLocateToRefresh()V

    goto :goto_127

    :cond_114
    if-ne p1, v1, :cond_127

    .line 260
    iget p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mTargetTranslationX:F

    iget v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->rightHeaderWidth:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_124

    .line 261
    invoke-direct {p0}, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->smoothRelease()V

    goto :goto_127

    .line 263
    :cond_124
    invoke-direct {p0}, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->smoothLocateToRefresh()V

    .line 266
    :cond_127
    :goto_127
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v1

    .line 191
    :cond_12f
    iput v0, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->mLastX:I

    .line 193
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 269
    :goto_138
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v1
.end method

.method public setRefreshCallback(Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout$RefreshCallBack;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout;->refreshCallback:Lcom/codemao/nemo/view/horizontalrefreshlayout/HorizontalRefreshLayout$RefreshCallBack;

    return-void
.end method
