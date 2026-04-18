.class public Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "LoadMoreRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$DataObserver;,
        Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;,
        Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$LoadingListener;,
        Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$FooterViewBuilder;
    }
.end annotation


# instance fields
.field private LoadMoreEnabled:Z

.field private footerViewBuilder:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$FooterViewBuilder;

.field private isLoadingData:Z

.field private isNoMore:Z

.field private mAdapter:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;

.field private final mDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private mEmptyView:Landroid/view/View;

.field private mFooter:Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;

.field private mHeaderViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadingListener:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$LoadingListener;

.field private final sHeaderTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$PQ2KbNac1THdhZEXKcxsXxkcV68(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;Ljava/lang/String;)Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->lambda$init$0(Ljava/lang/String;)Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 31
    iput-boolean p3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->LoadMoreEnabled:Z

    const/4 p3, 0x0

    .line 32
    iput-boolean p3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->isLoadingData:Z

    .line 33
    iput-boolean p3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->isNoMore:Z

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->sHeaderTypes:Ljava/util/List;

    .line 46
    new-instance v0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$DataObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$DataObserver;-><init>(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$1;)V

    iput-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->mDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 47
    sget-object v0, Lcom/codemao/nemo/view/coordinaterecylerView/AppBarStateChangeListener$State;->EXPANDED:Lcom/codemao/nemo/view/coordinaterecylerView/AppBarStateChangeListener$State;

    .line 67
    sget-object v0, Lcom/codemao/nemo/R$styleable;->LoadMoreRecyclerView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 68
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 69
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    invoke-virtual {p0, p2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->init(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;)Ljava/util/ArrayList;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;)Landroid/view/View;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->mEmptyView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;)Ljava/util/List;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->sHeaderTypes:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;)Z
    .registers 1

    .line 25
    iget-boolean p0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->LoadMoreEnabled:Z

    return p0
.end method

.method static synthetic access$400(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;I)Z
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->isHeaderType(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;I)Landroid/view/View;
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->getHeaderViewByType(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;)Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$FooterViewBuilder;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->footerViewBuilder:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$FooterViewBuilder;

    return-object p0
.end method

.method static synthetic access$700(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;)Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->mFooter:Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;

    return-object p0
.end method

.method static synthetic access$702(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;)Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->mFooter:Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;

    return-object p1
.end method

.method static synthetic access$800(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;I)Z
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->isReservedItemViewType(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;)Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->mAdapter:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;

    return-object p0
.end method

.method private findMax([I)I
    .registers 6

    const/4 v0, 0x0

    .line 262
    aget v1, p1, v0

    .line 263
    array-length v2, p1

    :goto_4
    if-ge v0, v2, :cond_e

    aget v3, p1, v0

    if-le v3, v1, :cond_b

    move v1, v3

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    return v1
.end method

.method private getHeaderViewByType(I)Landroid/view/View;
    .registers 3

    .line 305
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->isHeaderType(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 307
    :cond_8
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    add-int/lit16 p1, p1, -0x2712

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method private isHeaderType(I)Z
    .registers 3

    .line 301
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_16

    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->sHeaderTypes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method private isReservedItemViewType(I)Z
    .registers 3

    const/16 v0, 0x2711

    if-eq p1, v0, :cond_13

    .line 317
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->sHeaderTypes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method

.method private synthetic lambda$init$0(Ljava/lang/String;)Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;
    .registers 4

    .line 88
    new-instance v0, Lcom/codemao/nemo/view/footer/LoadMoreFooter;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/codemao/nemo/view/footer/LoadMoreFooter;-><init>(Landroid/content/Context;)V

    .line 89
    invoke-virtual {v0, p1}, Lcom/codemao/nemo/view/footer/LoadMoreFooter;->setNoMoreStr(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addHeadView(Landroid/view/View;)V
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->sHeaderTypes:Ljava/util/List;

    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit16 v0, v0, 0x2712

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public cleanHeadView()V
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 109
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->sHeaderTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 110
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .registers 2

    .line 282
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->mAdapter:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;

    if-eqz v0, :cond_9

    .line 283
    invoke-virtual {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->getOriginalAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNoMore()Z
    .registers 2

    .line 146
    iget-boolean v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->isNoMore:Z

    return v0
.end method

.method public getRAdapter()Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->mAdapter:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->mFooter:Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;

    if-nez v0, :cond_d

    .line 87
    new-instance v0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setFootView(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$FooterViewBuilder;)V

    goto :goto_11

    :cond_d
    const/4 p1, 0x0

    .line 93
    invoke-interface {v0, p1}, Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;->setVisible(Z)V

    :goto_11
    return-void
.end method

.method public loadMore()V
    .registers 4

    const/4 v0, 0x1

    .line 210
    iput-boolean v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->isLoadingData:Z

    .line 211
    iget-object v1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->mFooter:Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;

    if-eqz v1, :cond_13

    .line 212
    instance-of v2, v1, Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;

    if-eqz v2, :cond_10

    const/4 v0, 0x0

    .line 213
    invoke-interface {v1, v0}, Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;->changeState(I)V

    goto :goto_13

    .line 215
    :cond_10
    invoke-interface {v1, v0}, Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;->setVisible(Z)V

    .line 218
    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->mLoadingListener:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$LoadingListener;

    if-eqz v0, :cond_1a

    .line 219
    invoke-interface {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$LoadingListener;->onLoadMore()V

    :cond_1a
    return-void
.end method

.method public loadMoreComplete()V
    .registers 4

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->isLoadingData:Z

    .line 115
    iget-object v1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->mFooter:Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;

    if-eqz v1, :cond_13

    .line 116
    instance-of v2, v1, Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;

    if-eqz v2, :cond_10

    const/4 v0, 0x1

    .line 117
    invoke-interface {v1, v0}, Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;->changeState(I)V

    goto :goto_13

    .line 119
    :cond_10
    invoke-interface {v1, v0}, Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;->setVisible(Z)V

    :cond_13
    :goto_13
    return-void
.end method

.method public onScrolled(II)V
    .registers 4

    .line 228
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onScrolled(II)V

    if-gtz p2, :cond_c

    .line 229
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result p1

    if-nez p1, :cond_c

    return-void

    .line 232
    :cond_c
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->mLoadingListener:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$LoadingListener;

    if-eqz p1, :cond_71

    iget-boolean p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->isLoadingData:Z

    if-nez p1, :cond_71

    iget-boolean p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->LoadMoreEnabled:Z

    if-eqz p1, :cond_71

    .line 233
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 235
    instance-of p2, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz p2, :cond_28

    .line 236
    move-object p2, p1

    check-cast p2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    goto :goto_44

    .line 237
    :cond_28
    instance-of p2, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p2, :cond_3d

    .line 238
    move-object p2, p1

    check-cast p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v0

    new-array v0, v0, [I

    .line 239
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    .line 240
    invoke-direct {p0, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->findMax([I)I

    move-result p2

    goto :goto_44

    .line 242
    :cond_3d
    move-object p2, p1

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    .line 245
    :goto_44
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    if-lez v0, :cond_71

    if-ltz p2, :cond_71

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    if-lt p2, p1, :cond_71

    iget-boolean p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->isNoMore:Z

    if-nez p1, :cond_71

    .line 246
    iput-boolean v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->isLoadingData:Z

    .line 247
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->mFooter:Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;

    if-eqz p1, :cond_6a

    .line 248
    instance-of p2, p1, Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;

    if-eqz p2, :cond_67

    const/4 p2, 0x0

    .line 249
    invoke-interface {p1, p2}, Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;->changeState(I)V

    goto :goto_6a

    .line 251
    :cond_67
    invoke-interface {p1, v0}, Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;->setVisible(Z)V

    .line 254
    :cond_6a
    :goto_6a
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->mLoadingListener:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$LoadingListener;

    if-eqz p1, :cond_71

    .line 255
    invoke-interface {p1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$LoadingListener;->onLoadMore()V

    :cond_71
    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 3

    .line 273
    new-instance v0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;-><init>(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->mAdapter:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;

    .line 274
    invoke-super {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 275
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->mDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 276
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->mDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    return-void
.end method

.method public setFootView(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$FooterViewBuilder;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->footerViewBuilder:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$FooterViewBuilder;

    return-void
.end method

.method public setLoadingImgWhenScrolling(Z)V
    .registers 2

    return-void
.end method

.method public setLoadingListener(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$LoadingListener;)V
    .registers 2

    .line 290
    iput-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->mLoadingListener:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$LoadingListener;

    return-void
.end method

.method public setLoadingMoreEnabled(Z)V
    .registers 3

    .line 150
    iput-boolean p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->LoadMoreEnabled:Z

    if-nez p1, :cond_10

    .line 152
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->mFooter:Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;

    if-eqz p1, :cond_10

    .line 153
    instance-of v0, p1, Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    .line 154
    invoke-interface {p1, v0}, Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;->changeState(I)V

    :cond_10
    return-void
.end method

.method public setNoMore(Z)V
    .registers 5

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->isLoadingData:Z

    .line 126
    iput-boolean p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->isNoMore:Z

    .line 127
    iget-object v1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->mFooter:Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;

    if-eqz v1, :cond_19

    .line 128
    instance-of v2, v1, Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;

    if-eqz v2, :cond_16

    if-eqz p1, :cond_11

    const/4 p1, 0x2

    goto :goto_12

    :cond_11
    const/4 p1, 0x1

    .line 129
    :goto_12
    invoke-interface {v1, p1}, Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;->changeState(I)V

    goto :goto_19

    .line 131
    :cond_16
    invoke-interface {v1, v0}, Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;->setVisible(Z)V

    :cond_19
    :goto_19
    return-void
.end method

.method public setNoMoreWithoutFooter(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->isLoadingData:Z

    .line 138
    iput-boolean p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->isNoMore:Z

    xor-int/lit8 p1, p1, 0x1

    .line 139
    iput-boolean p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->LoadMoreEnabled:Z

    .line 140
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->mFooter:Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;

    if-eqz p1, :cond_10

    .line 141
    invoke-interface {p1, v0}, Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;->setVisible(Z)V

    :cond_10
    return-void
.end method
