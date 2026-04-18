.class public Lcom/codemao/nemo/view/CmHorLayoutWithFooter;
.super Landroid/widget/RelativeLayout;
.source "CmHorLayoutWithFooter.java"


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
.method public static synthetic $r8$lambda$1Mg6uuHs6-id2t3TQodJ2-GLq1w(Lcom/codemao/nemo/view/CmHorLayoutWithFooter;)V
    .registers 1

    invoke-direct {p0}, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->lambda$init$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->datas:Ljava/util/List;

    const/4 p2, -0x1

    .line 51
    iput p2, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->scrollStart:I

    .line 52
    iput p2, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->scrollEnd:I

    .line 66
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/view/CmHorLayoutWithFooter;)I
    .registers 1

    .line 39
    iget p0, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->scrollStart:I

    return p0
.end method

.method static synthetic access$002(Lcom/codemao/nemo/view/CmHorLayoutWithFooter;I)I
    .registers 2

    .line 39
    iput p1, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->scrollStart:I

    return p1
.end method

.method static synthetic access$100(Lcom/codemao/nemo/view/CmHorLayoutWithFooter;)I
    .registers 1

    .line 39
    iget p0, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->scrollEnd:I

    return p0
.end method

.method static synthetic access$102(Lcom/codemao/nemo/view/CmHorLayoutWithFooter;I)I
    .registers 2

    .line 39
    iput p1, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->scrollEnd:I

    return p1
.end method

.method static synthetic access$200(Lcom/codemao/nemo/view/CmHorLayoutWithFooter;)Lcom/codemao/nemo/listener/OnScrollCallback;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->onScrollCallback:Lcom/codemao/nemo/listener/OnScrollCallback;

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .registers 5

    .line 70
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d01c6

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0a08fa

    .line 71
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->tv_title:Landroid/widget/TextView;

    const p1, 0x7f0a04cb

    .line 72
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->ll_more:Landroid/widget/LinearLayout;

    const p1, 0x7f0a088f

    .line 73
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->tv_more:Landroid/widget/TextView;

    const p1, 0x7f0a03e2

    .line 74
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->iv_more:Landroid/widget/ImageView;

    const p1, 0x7f0a068c

    .line 75
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->rv_content:Landroidx/recyclerview/widget/RecyclerView;

    const p1, 0x7f0a087d

    .line 76
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->loadMoreView:Landroid/view/View;

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 78
    new-instance v0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;

    iget-object v1, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->rv_content:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/codemao/nemo/view/CmHorLayoutWithFooter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/view/CmHorLayoutWithFooter$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/view/CmHorLayoutWithFooter;)V

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;-><init>(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->horizontalScrollBehavior:Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;

    .line 83
    invoke-virtual {p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    .line 84
    iget-object p1, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->rv_content:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/view/CmHorLayoutWithFooter$1;-><init>(Lcom/codemao/nemo/view/CmHorLayoutWithFooter;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private synthetic lambda$init$0()V
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->handleLoadMoreListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_9

    .line 80
    iget-object v1, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->loadMoreView:Landroid/view/View;

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

    .line 244
    iget-object v0, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->datas:Ljava/util/List;

    return-object v0
.end method

.method public getLl_more()Landroid/view/View;
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->ll_more:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getRv_content()Landroidx/recyclerview/widget/RecyclerView;
    .registers 2

    .line 273
    iget-object v0, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->rv_content:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public getScrollEnd()I
    .registers 3

    .line 128
    iget-object v0, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->rv_content:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 132
    :cond_a
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 133
    iget v1, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->scrollEnd:I

    if-ge v1, v0, :cond_16

    .line 134
    iput v0, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->scrollEnd:I

    .line 136
    :cond_16
    iget v0, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->scrollEnd:I

    const/4 v1, -0x1

    .line 137
    iput v1, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->scrollEnd:I

    return v0
.end method

.method public getScrollStart()I
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->rv_content:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 118
    :cond_a
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 119
    iget v1, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->scrollStart:I

    if-ltz v1, :cond_16

    if-le v1, v0, :cond_18

    .line 120
    :cond_16
    iput v0, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->scrollStart:I

    .line 122
    :cond_18
    iget v0, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->scrollStart:I

    const/4 v1, -0x1

    .line 123
    iput v1, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->scrollStart:I

    return v0
.end method

.method public hasInit()Z
    .registers 2

    .line 269
    iget-boolean v0, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->hasInit:Z

    return v0
.end method

.method public hightLightMore()V
    .registers 3

    .line 205
    iget-object v0, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->ll_more:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "#ff6F60DD"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    iget-object v0, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->ll_more:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f08042c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_5a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    goto :goto_66

    .line 154
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->preX:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->preY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_66

    .line 155
    iget-object v0, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->rv_content:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_52

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v4, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->preX:F

    sub-float/2addr v0, v4

    const/4 v4, 0x0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_52

    .line 156
    iget-object v0, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_4a

    .line 157
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_66

    .line 159
    :cond_4a
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_66

    .line 162
    :cond_52
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_66

    .line 150
    :cond_5a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->preX:F

    .line 151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->preY:F

    .line 169
    :cond_66
    :goto_66
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public resetScroll()V
    .registers 2

    const/4 v0, -0x1

    .line 142
    iput v0, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->scrollEnd:I

    .line 143
    iput v0, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->scrollStart:I

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

    .line 239
    :cond_3
    iget-object v0, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 240
    iget-object v0, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->datas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setHandleLoadMoreListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 173
    iput-object p1, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->handleLoadMoreListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setHasInit(Z)V
    .registers 2

    .line 277
    iput-boolean p1, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->hasInit:Z

    return-void
.end method

.method public setIsTitleBold(Z)V
    .registers 3

    .line 178
    iget-object v0, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->tv_title:Landroid/widget/TextView;

    if-eqz v0, :cond_17

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    .line 180
    invoke-static {p1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_17

    :cond_f
    const/4 p1, 0x0

    .line 182
    invoke-static {p1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_17
    :goto_17
    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .registers 3

    .line 264
    iget-object v0, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->rv_content:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 265
    iget-object p1, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->rv_content:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    return-void
.end method

.method public setLoadMoreScrollEnable(Z)V
    .registers 3

    .line 281
    iget-object v0, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->horizontalScrollBehavior:Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;

    if-eqz v0, :cond_7

    .line 282
    invoke-virtual {v0, p1}, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->setScrollEnable(Z)V

    :cond_7
    return-void
.end method

.method public setMoreIvSize(I)V
    .registers 4

    .line 200
    iget-object v0, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->iv_more:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 201
    iget-object v0, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->iv_more:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public setMorePaddingEnd(I)V
    .registers 6

    .line 234
    iget-object v0, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->ll_more:Landroid/widget/LinearLayout;

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

    .line 255
    iget-object v0, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->tv_more:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMoreTvSize(I)V
    .registers 4

    .line 196
    iget-object v0, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->tv_more:Landroid/widget/TextView;

    int-to-float p1, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setOnScrollCallback(Lcom/codemao/nemo/listener/OnScrollCallback;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->onScrollCallback:Lcom/codemao/nemo/listener/OnScrollCallback;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3

    .line 248
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 249
    iget-object p1, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->tv_title:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 251
    :cond_e
    iget-object v0, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_13
    return-void
.end method

.method public setTitleMargin(I)V
    .registers 4

    .line 225
    iget-object v0, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-lez p1, :cond_16

    .line 227
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    int-to-float p1, p1

    invoke-static {v1, p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    :cond_16
    return-void
.end method

.method public setTitleMarginVer(II)V
    .registers 6

    .line 210
    iget-object v0, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 211
    iget-object v1, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->ll_more:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-lez p1, :cond_27

    .line 213
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    int-to-float p1, p1

    invoke-static {v2, p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 214
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :cond_27
    if-lez p2, :cond_3e

    .line 218
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 219
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :cond_3e
    return-void
.end method

.method public setTitleTvSize(I)V
    .registers 4

    .line 192
    iget-object v0, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->tv_title:Landroid/widget/TextView;

    int-to-float p1, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public showMore(Z)V
    .registers 3

    .line 259
    iget-object v0, p0, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->ll_more:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    const/16 p1, 0x8

    :goto_8
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
