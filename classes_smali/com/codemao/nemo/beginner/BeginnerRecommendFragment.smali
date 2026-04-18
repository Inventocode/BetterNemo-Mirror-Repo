.class public final Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;
.super Lcom/codemao/nemo/fragment/BaseDiscoverFragment;
.source "BeginnerRecommendFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/fragment/BaseDiscoverFragment<",
        "Lcom/codemao/nemo/bean/RecommendListData<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$Companion;


# instance fields
.field public _$_findViewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSpanNum:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->Companion:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 34
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;-><init>()V

    const/4 v0, 0x1

    .line 48
    iput v0, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->mSpanNum:I

    return-void
.end method

.method public static final synthetic access$afterLoading(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)V
    .registers 1

    .line 34
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->afterLoading()V

    return-void
.end method

.method public static final synthetic access$getAdapter$p$s-1061460774(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    return-object p0
.end method

.method public static final synthetic access$getDatas$p$s-1061460774(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)Ljava/util/Vector;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    return-object p0
.end method

.method public static final synthetic access$getHasMore$p$s-1061460774(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)Z
    .registers 1

    .line 34
    iget-boolean p0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->hasMore:Z

    return p0
.end method

.method public static final synthetic access$getLoadView$p$s-1061460774(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)Lcom/codemao/nemo/view/LoadView;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    return-object p0
.end method

.method public static final synthetic access$getMSpanNum$p(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)I
    .registers 1

    .line 34
    iget p0, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->mSpanNum:I

    return p0
.end method

.method public static final synthetic access$getOffset$p$s-1061460774(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)I
    .registers 1

    .line 34
    iget p0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->offset:I

    return p0
.end method

.method public static final synthetic access$getRecyclerView$p$s-1061460774(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    return-object p0
.end method

.method public static final synthetic access$setLoadMore$p$s-1061460774(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;Z)V
    .registers 2

    .line 34
    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoadMore:Z

    return-void
.end method

.method public static final synthetic access$setLoading$p$s-1061460774(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;Z)V
    .registers 2

    .line 34
    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoading:Z

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_23

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :cond_23
    :goto_23
    return-object v1
.end method

.method protected contentViewId()I
    .registers 2

    .line 51
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    .line 52
    iput v0, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->mSpanNum:I

    :cond_9
    const v0, 0x7f0d0145

    return v0
.end method

.method protected getData()V
    .registers 3

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoading:Z

    .line 129
    sget v0, Lcom/codemao/nemo/R$id;->ll_no_net:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-nez v0, :cond_e

    goto :goto_13

    :cond_e
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 130
    :goto_13
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->discoveryFragmentNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    new-instance v1, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$getData$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$getData$1;-><init>(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->getBeginnerRecommendWorks(Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method public getViewName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "萌新必看页"

    return-object v0
.end method

.method protected initDelegate()V
    .registers 4

    .line 64
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    new-instance v1, Lcom/codemao/nemo/adapter/BeginnerRecommendDelegate;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Lcom/codemao/nemo/adapter/BeginnerRecommendDelegate;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 65
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    new-instance v1, Lcom/codemao/nemo/adapter/BeginnerFooterDelegate;

    new-instance v2, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$initDelegate$1;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$initDelegate$1;-><init>(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)V

    invoke-direct {v1, v2}, Lcom/codemao/nemo/adapter/BeginnerFooterDelegate;-><init>(Lcom/codemao/nemo/adapter/BeginnerFooterDelegate$FooterListener;)V

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    return-void
.end method

.method protected initLayoutManager()V
    .registers 4

    .line 80
    new-instance v0, Lcom/codemao/nemo/view/WrapGridLayoutmanager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->mSpanNum:I

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/view/WrapGridLayoutmanager;-><init>(Landroid/content/Context;I)V

    .line 81
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 82
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v2, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$initLayoutManager$1;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$initLayoutManager$1;-><init>(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 103
    new-instance v1, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$initLayoutManager$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$initLayoutManager$2;-><init>(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    return-void
.end method

.method public synthetic onDestroyView()V
    .registers 1

    invoke-super {p0}, Lcom/giu/xzz/LazyLoadFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onFragmentVisible()V
    .registers 1

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 59
    sget p1, Lcom/codemao/nemo/R$id;->header:I

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0600b8

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->setLineViewBgColor(I)V

    .line 60
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setLoadingMoreEnabled(Z)V

    return-void
.end method

.method protected showError()V
    .registers 3

    .line 176
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    if-nez v0, :cond_5

    return-void

    .line 179
    :cond_5
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->afterLoading()V

    .line 180
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_15

    .line 181
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showError()V

    .line 183
    :cond_15
    sget v0, Lcom/codemao/nemo/R$id;->ll_no_net:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-nez v0, :cond_20

    goto :goto_24

    :cond_20
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_24
    return-void
.end method
