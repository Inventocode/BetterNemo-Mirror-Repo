.class public Lcom/codemao/nemo/view/CourseListSlipeLayout;
.super Landroid/widget/RelativeLayout;
.source "CourseListSlipeLayout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/RelativeLayout;"
    }
.end annotation


# instance fields
.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private dot:Landroid/view/View;

.field private handleLoadMoreListener:Landroid/view/View$OnClickListener;

.field private hasInit:Z

.field private horizontalScrollBehavior:Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;

.field private iv_more:Landroid/widget/ImageView;

.field private ll_more:Landroid/widget/LinearLayout;

.field private loadMoreView:Landroid/view/View;

.field private onScrollCallback:Lcom/codemao/nemo/listener/OnScrollCallback;

.field private preX:F

.field private preY:F

.field private rv_content:Landroidx/recyclerview/widget/RecyclerView;

.field private scrollEnd:I

.field private scrollStart:I

.field private tv_more:Landroid/widget/TextView;

.field private tv_title:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$NfVzQfr8azE0AVRzwimLJHuEJpk(Lcom/codemao/nemo/view/CourseListSlipeLayout;)V
    .registers 1

    invoke-direct {p0}, Lcom/codemao/nemo/view/CourseListSlipeLayout;->lambda$init$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/view/CourseListSlipeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->datas:Ljava/util/List;

    const/4 p2, -0x1

    .line 45
    iput p2, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->scrollStart:I

    .line 46
    iput p2, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->scrollEnd:I

    .line 60
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/CourseListSlipeLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/view/CourseListSlipeLayout;)I
    .registers 1

    .line 32
    iget p0, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->scrollStart:I

    return p0
.end method

.method static synthetic access$002(Lcom/codemao/nemo/view/CourseListSlipeLayout;I)I
    .registers 2

    .line 32
    iput p1, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->scrollStart:I

    return p1
.end method

.method static synthetic access$100(Lcom/codemao/nemo/view/CourseListSlipeLayout;)I
    .registers 1

    .line 32
    iget p0, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->scrollEnd:I

    return p0
.end method

.method static synthetic access$102(Lcom/codemao/nemo/view/CourseListSlipeLayout;I)I
    .registers 2

    .line 32
    iput p1, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->scrollEnd:I

    return p1
.end method

.method static synthetic access$200(Lcom/codemao/nemo/view/CourseListSlipeLayout;)Lcom/codemao/nemo/listener/OnScrollCallback;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->onScrollCallback:Lcom/codemao/nemo/listener/OnScrollCallback;

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .registers 10

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d01c0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0a08fa

    .line 65
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->tv_title:Landroid/widget/TextView;

    const p1, 0x7f0a04cb

    .line 66
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->ll_more:Landroid/widget/LinearLayout;

    const p1, 0x7f0a088f

    .line 67
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->tv_more:Landroid/widget/TextView;

    const p1, 0x7f0a03e2

    .line 68
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->iv_more:Landroid/widget/ImageView;

    const p1, 0x7f0a01e5

    .line 69
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->dot:Landroid/view/View;

    const p1, 0x7f0a068c

    .line 70
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->rv_content:Landroidx/recyclerview/widget/RecyclerView;

    const p1, 0x7f0a087d

    .line 71
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->loadMoreView:Landroid/view/View;

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 73
    new-instance v0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;

    iget-object v2, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->rv_content:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/codemao/nemo/view/CourseListSlipeLayout$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/view/CourseListSlipeLayout$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/view/CourseListSlipeLayout;)V

    invoke-direct {v0, v2, v3}, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;-><init>(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->horizontalScrollBehavior:Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;

    .line 78
    invoke-virtual {p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    .line 80
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    const/high16 v2, 0x41f00000  # 30.0f

    .line 81
    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41a00000  # 20.0f

    .line 82
    invoke-static {v3}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41400000  # 12.0f

    .line 83
    invoke-static {v4}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x41200000  # 10.0f

    .line 84
    invoke-static {v5}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v6

    int-to-float v6, v6

    .line 85
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result v7

    .line 87
    invoke-static {v5}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v5

    if-eqz v0, :cond_af

    int-to-float v0, v7

    sub-float/2addr v0, v2

    const/high16 v2, 0x40800000  # 4.0f

    mul-float v4, v4, v2

    sub-float/2addr v0, v4

    float-to-double v2, v0

    const-wide v6, 0x4011ae147ae147aeL  # 4.42

    div-double/2addr v2, v6

    const-wide v6, 0x3fe6906906906907L  # 0.7051282051282052

    mul-double v2, v2, v6

    double-to-int v0, v2

    add-int/2addr v0, v5

    .line 90
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_c8

    :cond_af
    int-to-float v0, v7

    sub-float/2addr v0, v3

    const/high16 v2, 0x40000000  # 2.0f

    mul-float v6, v6, v2

    sub-float/2addr v0, v6

    float-to-double v2, v0

    const-wide v6, 0x4002e147ae147ae1L  # 2.36

    div-double/2addr v2, v6

    const-wide v6, 0x3fe689039b0ad120L  # 0.704225352112676

    mul-double v2, v2, v6

    double-to-int v0, v2

    add-int/2addr v0, v5

    .line 93
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 96
    :goto_c8
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->horizontalScrollBehavior:Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->setChildVerticalMarginEnable(Z)V

    .line 97
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->rv_content:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/codemao/nemo/view/CourseListSlipeLayout$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/view/CourseListSlipeLayout$1;-><init>(Lcom/codemao/nemo/view/CourseListSlipeLayout;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private synthetic lambda$init$0()V
    .registers 3

    .line 74
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->handleLoadMoreListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_9

    .line 75
    iget-object v1, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->loadMoreView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public getDatas()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->datas:Ljava/util/List;

    return-object v0
.end method

.method public getLl_more()Landroid/view/View;
    .registers 2

    .line 201
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->ll_more:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getRv_content()Landroidx/recyclerview/widget/RecyclerView;
    .registers 2

    .line 294
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->rv_content:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public getScrollEnd()I
    .registers 3

    .line 141
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->rv_content:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 145
    :cond_a
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 146
    iget v1, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->scrollEnd:I

    if-ge v1, v0, :cond_16

    .line 147
    iput v0, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->scrollEnd:I

    .line 149
    :cond_16
    iget v0, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->scrollEnd:I

    const/4 v1, -0x1

    .line 150
    iput v1, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->scrollEnd:I

    return v0
.end method

.method public getScrollStart()I
    .registers 3

    .line 127
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->rv_content:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 131
    :cond_a
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 132
    iget v1, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->scrollStart:I

    if-ltz v1, :cond_16

    if-le v1, v0, :cond_18

    .line 133
    :cond_16
    iput v0, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->scrollStart:I

    .line 135
    :cond_18
    iget v0, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->scrollStart:I

    const/4 v1, -0x1

    .line 136
    iput v1, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->scrollStart:I

    return v0
.end method

.method public hasInit()Z
    .registers 2

    .line 290
    iget-boolean v0, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->hasInit:Z

    return v0
.end method

.method public hightLightMore()V
    .registers 3

    .line 222
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->ll_more:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "#ff6F60DD"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 223
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->ll_more:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f08042c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_5a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    goto :goto_66

    .line 167
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->preX:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->preY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_66

    .line 168
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->rv_content:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_52

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v4, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->preX:F

    sub-float/2addr v0, v4

    const/4 v4, 0x0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_52

    .line 169
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_4a

    .line 170
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_66

    .line 172
    :cond_4a
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_66

    .line 175
    :cond_52
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_66

    .line 163
    :cond_5a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->preX:F

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->preY:F

    .line 182
    :cond_66
    :goto_66
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public resetScroll()V
    .registers 2

    const/4 v0, -0x1

    .line 155
    iput v0, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->scrollEnd:I

    .line 156
    iput v0, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->scrollStart:I

    return-void
.end method

.method public setDatas(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 260
    :cond_3
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 261
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->datas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setDotVisible(Z)V
    .registers 3

    .line 205
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->dot:Landroid/view/View;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    const/16 p1, 0x8

    :goto_8
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setHandleLoadMoreListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 186
    iput-object p1, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->handleLoadMoreListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setHasInit(Z)V
    .registers 2

    .line 298
    iput-boolean p1, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->hasInit:Z

    return-void
.end method

.method public setIsTitleBold(Z)V
    .registers 3

    .line 191
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->tv_title:Landroid/widget/TextView;

    if-eqz v0, :cond_17

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    .line 193
    invoke-static {p1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_17

    :cond_f
    const/4 p1, 0x0

    .line 195
    invoke-static {p1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_17
    :goto_17
    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .registers 3

    .line 285
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->rv_content:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 286
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->rv_content:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    return-void
.end method

.method public setLoadMoreScrollEnable(Z)V
    .registers 3

    .line 302
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->horizontalScrollBehavior:Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;

    if-eqz v0, :cond_7

    .line 303
    invoke-virtual {v0, p1}, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->setScrollEnable(Z)V

    :cond_7
    return-void
.end method

.method public setMoreIvSize(I)V
    .registers 4

    .line 217
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->iv_more:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 218
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->iv_more:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public setMorePaddingEnd(I)V
    .registers 6

    .line 255
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->ll_more:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41a00000  # 20.0f

    invoke-static {v1, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    invoke-static {v2, p1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {v0, v1, v3, p1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method public setMoreText(Ljava/lang/String;)V
    .registers 3

    .line 276
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->tv_more:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMoreTvSize(I)V
    .registers 4

    .line 213
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->tv_more:Landroid/widget/TextView;

    int-to-float p1, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setOnScrollCallback(Lcom/codemao/nemo/listener/OnScrollCallback;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->onScrollCallback:Lcom/codemao/nemo/listener/OnScrollCallback;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3

    .line 269
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 270
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->tv_title:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 272
    :cond_e
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_13
    return-void
.end method

.method public setTitleMargin(I)V
    .registers 4

    .line 246
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-lez p1, :cond_15

    .line 248
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    int-to-float p1, p1

    invoke-static {v1, p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :cond_15
    return-void
.end method

.method public setTitleMarginVer(III)V
    .registers 7

    .line 227
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 228
    iget-object v1, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->ll_more:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-lez p1, :cond_27

    .line 230
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    int-to-float p1, p1

    invoke-static {v2, p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 231
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :cond_27
    if-lez p2, :cond_3e

    .line 235
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 236
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :cond_3e
    if-lez p3, :cond_4b

    .line 240
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    int-to-float p2, p3

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :cond_4b
    return-void
.end method

.method public setTitleTvSize(I)V
    .registers 4

    .line 209
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->tv_title:Landroid/widget/TextView;

    int-to-float p1, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public showMore(Z)V
    .registers 3

    .line 280
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseListSlipeLayout;->ll_more:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    const/16 p1, 0x8

    :goto_8
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
