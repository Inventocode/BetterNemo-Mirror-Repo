.class public Lcom/codemao/nemo/view/LatestCmHorLayout;
.super Landroid/widget/RelativeLayout;
.source "LatestCmHorLayout.java"


# instance fields
.field private datas:Ljava/util/List;

.field private hasInit:Z

.field private ll_more:Landroid/widget/LinearLayout;

.field private onScrollCallback:Lcom/codemao/nemo/listener/OnScrollCallback;

.field private rv_content:Landroidx/recyclerview/widget/RecyclerView;

.field private scrollEnd:I

.field private scrollStart:I

.field private tv_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/view/LatestCmHorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->datas:Ljava/util/List;

    const/4 p2, -0x1

    .line 43
    iput p2, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->scrollStart:I

    .line 44
    iput p2, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->scrollEnd:I

    .line 59
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/LatestCmHorLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/view/LatestCmHorLayout;)I
    .registers 1

    .line 37
    iget p0, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->scrollStart:I

    return p0
.end method

.method static synthetic access$002(Lcom/codemao/nemo/view/LatestCmHorLayout;I)I
    .registers 2

    .line 37
    iput p1, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->scrollStart:I

    return p1
.end method

.method static synthetic access$100(Lcom/codemao/nemo/view/LatestCmHorLayout;)I
    .registers 1

    .line 37
    iget p0, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->scrollEnd:I

    return p0
.end method

.method static synthetic access$102(Lcom/codemao/nemo/view/LatestCmHorLayout;I)I
    .registers 2

    .line 37
    iput p1, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->scrollEnd:I

    return p1
.end method

.method static synthetic access$200(Lcom/codemao/nemo/view/LatestCmHorLayout;)Lcom/codemao/nemo/listener/OnScrollCallback;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->onScrollCallback:Lcom/codemao/nemo/listener/OnScrollCallback;

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .registers 4

    .line 63
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d01c5

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0a08fa

    .line 65
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->tv_title:Landroid/widget/TextView;

    const p1, 0x7f0a04cb

    .line 66
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->ll_more:Landroid/widget/LinearLayout;

    const p1, 0x7f0a068c

    .line 67
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->rv_content:Landroidx/recyclerview/widget/RecyclerView;

    .line 68
    new-instance v0, Lcom/codemao/nemo/view/LatestCmHorLayout$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/view/LatestCmHorLayout$1;-><init>(Lcom/codemao/nemo/view/LatestCmHorLayout;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method


# virtual methods
.method public getDatas()Ljava/util/List;
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->datas:Ljava/util/List;

    return-object v0
.end method

.method public getLl_more()Landroid/view/View;
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->ll_more:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getRv()Landroidx/recyclerview/widget/RecyclerView;
    .registers 2

    .line 195
    iget-object v0, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->rv_content:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public getRv_content()Landroidx/recyclerview/widget/RecyclerView;
    .registers 2

    .line 204
    iget-object v0, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->rv_content:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public getScrollEnd()I
    .registers 3

    .line 106
    iget-object v0, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->rv_content:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 107
    iget v1, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->scrollEnd:I

    if-ge v1, v0, :cond_12

    .line 108
    iput v0, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->scrollEnd:I

    .line 110
    :cond_12
    iget v0, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->scrollEnd:I

    const/4 v1, -0x1

    .line 111
    iput v1, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->scrollEnd:I

    return v0
.end method

.method public getScrollStart()I
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->rv_content:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 97
    iget v1, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->scrollStart:I

    if-ltz v1, :cond_12

    if-le v1, v0, :cond_14

    .line 98
    :cond_12
    iput v0, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->scrollStart:I

    .line 100
    :cond_14
    iget v0, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->scrollStart:I

    const/4 v1, -0x1

    .line 101
    iput v1, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->scrollStart:I

    return v0
.end method

.method public hasInit()Z
    .registers 2

    .line 200
    iget-boolean v0, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->hasInit:Z

    return v0
.end method

.method public resetScroll()V
    .registers 2

    const/4 v0, -0x1

    .line 116
    iput v0, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->scrollEnd:I

    .line 117
    iput v0, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->scrollStart:I

    return-void
.end method

.method public setDatas(Ljava/util/List;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 169
    iget-object v0, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->datas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setHasInit(Z)V
    .registers 2

    .line 208
    iput-boolean p1, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->hasInit:Z

    return-void
.end method

.method public setIsTitleBold(Z)V
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->tv_title:Landroid/widget/TextView;

    if-eqz v0, :cond_17

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    .line 123
    invoke-static {p1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_17

    :cond_f
    const/4 p1, 0x0

    .line 125
    invoke-static {p1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_17
    :goto_17
    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .registers 3

    .line 190
    iget-object v0, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->rv_content:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 191
    iget-object p1, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->rv_content:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    return-void
.end method

.method public setMorePaddingEnd(I)V
    .registers 6

    .line 163
    iget-object v0, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->ll_more:Landroid/widget/LinearLayout;

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

.method public setOnScrollCallback(Lcom/codemao/nemo/listener/OnScrollCallback;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->onScrollCallback:Lcom/codemao/nemo/listener/OnScrollCallback;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3

    .line 177
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 178
    iget-object p1, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->tv_title:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 180
    :cond_e
    iget-object v0, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_13
    return-void
.end method

.method public setTitleMargin(I)V
    .registers 4

    .line 155
    iget-object v0, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-lez p1, :cond_15

    .line 157
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    int-to-float p1, p1

    invoke-static {v1, p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :cond_15
    return-void
.end method

.method public setTitleMarginVer(II)V
    .registers 6

    .line 141
    iget-object v0, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 142
    iget-object v1, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->ll_more:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-lez p1, :cond_27

    .line 144
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    int-to-float p1, p1

    invoke-static {v2, p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 145
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :cond_27
    if-lez p2, :cond_3e

    .line 149
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 150
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :cond_3e
    return-void
.end method

.method public showMore(Z)V
    .registers 3

    .line 185
    iget-object v0, p0, Lcom/codemao/nemo/view/LatestCmHorLayout;->ll_more:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    const/16 p1, 0x8

    :goto_8
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
