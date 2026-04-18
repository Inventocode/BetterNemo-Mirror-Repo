.class public final Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;
.super Lcom/ljwx/basefragment/BaseMVVMPadFragment;
.source "MineNemoPublishedFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ljwx/basefragment/BaseMVVMPadFragment<",
        "Lcom/codemao/nemo/databinding/FragmentMineNemoBinding;",
        "Lcom/codemao/nemo/databinding/FragmentMineNemoBinding;",
        "Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMineNemoPublishedFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MineNemoPublishedFragment.kt\ncom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,265:1\n1860#2,3:266\n*S KotlinDebug\n*F\n+ 1 MineNemoPublishedFragment.kt\ncom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment\n*L\n223#1:266,3\n*E\n"
.end annotation


# instance fields
.field private final DEFAULT_SPAN_NUM:I

.field private final PAD_SPAN_NUM:I

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

.field private final adapter$delegate:Lkotlin/Lazy;

.field private mSpanNum:I

.field private final recyclerView$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$XD9R_4TuuMJO8Yo8tjUNODkxZJs(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->commonStep3ObserveData$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YPRPJ84y-Cdp2fuk4R7kNL531jc(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->commonStep2InitView$lambda$0(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gyh194jwiaF-oWgxDtad-vThuHM(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->commonStep3ObserveData$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 44
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->_$_findViewCache:Ljava/util/Map;

    const v0, 0x7f0d0155

    .line 45
    invoke-direct {p0, v0, v0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;-><init>(II)V

    const/4 v0, 0x2

    .line 50
    iput v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->PAD_SPAN_NUM:I

    const/4 v0, 0x1

    .line 51
    iput v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->DEFAULT_SPAN_NUM:I

    .line 52
    iput v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->mSpanNum:I

    .line 54
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$recyclerView$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$recyclerView$2;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->recyclerView$delegate:Lkotlin/Lazy;

    .line 56
    sget-object v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$adapter$2;->INSTANCE:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$adapter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->adapter$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getAdapter(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;)Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;
    .registers 1

    .line 44
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->getAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDEFAULT_SPAN_NUM$p(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;)I
    .registers 1

    .line 44
    iget p0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->DEFAULT_SPAN_NUM:I

    return p0
.end method

.method public static final synthetic access$getMBinding(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;)Lcom/codemao/nemo/databinding/FragmentMineNemoBinding;
    .registers 1

    .line 44
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/codemao/nemo/databinding/FragmentMineNemoBinding;

    return-object p0
.end method

.method public static final synthetic access$getMBindingPad(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;)Lcom/codemao/nemo/databinding/FragmentMineNemoBinding;
    .registers 1

    .line 44
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBindingPad()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/codemao/nemo/databinding/FragmentMineNemoBinding;

    return-object p0
.end method

.method public static final synthetic access$getMSpanNum$p(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;)I
    .registers 1

    .line 44
    iget p0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->mSpanNum:I

    return p0
.end method

.method public static final synthetic access$getMViewModel(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;)Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;
    .registers 1

    .line 44
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object p0

    check-cast p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;

    return-object p0
.end method

.method public static final synthetic access$getRecyclerView(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    .line 44
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getStateLoadingDataSucceeded(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;)Z
    .registers 1

    .line 44
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->getStateLoadingDataSucceeded()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isPad(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;)Z
    .registers 1

    .line 44
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->isPad()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$resetAllMenuAndScrollTop(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;)V
    .registers 1

    .line 44
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->resetAllMenuAndScrollTop()V

    return-void
.end method

.method public static final synthetic access$setStateLoadingDataSucceeded(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;Z)V
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->setStateLoadingDataSucceeded(Z)V

    return-void
.end method

.method private static final commonStep2InitView$lambda$0(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->refreshViewOnRefresh()V

    return-void
.end method

.method private static final commonStep3ObserveData$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final commonStep3ObserveData$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final getAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter<",
            "Lcom/codemao/nemo/bean/NemoWorkPublishedListItem;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->adapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    return-object v0
.end method

.method private final getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->recyclerView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method private final recyclerCompatPad(Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter<",
            "Lcom/codemao/nemo/bean/NemoWorkPublishedListItem;",
            ">;)V"
        }
    .end annotation

    .line 174
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->isPad()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 175
    iget v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->PAD_SPAN_NUM:I

    iput v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->mSpanNum:I

    .line 177
    :cond_a
    new-instance v0, Lcom/codemao/nemo/view/WrapGridLayoutmanager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->mSpanNum:I

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/view/WrapGridLayoutmanager;-><init>(Landroid/content/Context;I)V

    .line 178
    new-instance v1, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$recyclerCompatPad$1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$recyclerCompatPad$1;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 185
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 187
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v1

    if-eqz v1, :cond_32

    const v1, 0x7f070244

    goto :goto_35

    :cond_32
    const v1, 0x7f07025b

    :goto_35
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 190
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$recyclerCompatPad$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$recyclerCompatPad$2;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method private final resetAllMenu()V
    .registers 7

    .line 222
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->getAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    if-nez v0, :cond_52

    .line 223
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->getAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    const-string v2, "adapter.currentList"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1861
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_3a

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 224
    :cond_3a
    instance-of v5, v3, Lcom/codemao/nemo/bean/KnWorkListItem;

    if-eqz v5, :cond_50

    check-cast v3, Lcom/codemao/nemo/bean/KnWorkListItem;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/KnWorkListItem;->getMenuOpen()Z

    move-result v5

    if-eqz v5, :cond_50

    .line 225
    invoke-virtual {v3, v1}, Lcom/codemao/nemo/bean/KnWorkListItem;->setMenuOpen(Z)V

    .line 226
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->getAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_50
    move v2, v4

    goto :goto_29

    :cond_52
    return-void
.end method

.method private final resetAllMenuAndScrollTop()V
    .registers 1

    .line 217
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->resetAllMenu()V

    .line 218
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->scrollToTop()V

    return-void
.end method

.method private final scrollToTop()V
    .registers 7

    .line 233
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$scrollToTop$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$scrollToTop$1;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public commonStep2InitView()V
    .registers 4

    .line 75
    invoke-super {p0}, Lcom/ljwx/basefragment/BaseFragment;->commonStep2InitView()V

    .line 76
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->getAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->recyclerCompatPad(Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;)V

    .line 77
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->getAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 78
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->getAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    const v1, 0x7f0d025e

    invoke-virtual {v0, v1}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->setLoadMoreLoadingView(I)V

    .line 79
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->getAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    const v1, 0x7f0d025d

    invoke-virtual {v0, v1}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->setLoadMoreCompleteView(I)V

    .line 80
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->getAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_66

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep2InitView$1;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep2InitView$1;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->setOnItemChildClick([ILkotlin/jvm/functions/Function3;)V

    .line 110
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->getAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    sget-object v1, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep2InitView$2;->INSTANCE:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep2InitView$2;

    invoke-virtual {v0, v1}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->setOnItemBind(Lkotlin/jvm/functions/Function2;)V

    .line 116
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->getAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    sget-object v1, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep2InitView$3;->INSTANCE:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep2InitView$3;

    invoke-virtual {v0, v1}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->setLoadMoreBind(Lkotlin/jvm/functions/Function2;)V

    .line 124
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->getAdapter()Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep2InitView$4;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep2InitView$4;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;)V

    invoke-virtual {v0, v1}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->setOnLoadMoreListener(Lkotlin/jvm/functions/Function0;)V

    .line 127
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;)V

    const/4 v1, 0x3

    const v2, 0x7f0a08bd

    invoke-virtual {p0, v1, v2, v0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->addStateLayoutClick(IILandroid/view/View$OnClickListener;)V

    return-void

    :array_66
    .array-data 4
        0x7f0a0717
        0x7f0a019c
    .end array-data
.end method

.method public commonStep3ObserveData()V
    .registers 5

    .line 133
    invoke-super {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->commonStep3ObserveData()V

    .line 134
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->getDraftsPublishedData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep3ObserveData$1;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep3ObserveData$1;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;)V

    new-instance v3, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 158
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->getClickTabIndexAgain()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep3ObserveData$2;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep3ObserveData$2;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;)V

    new-instance v3, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 64
    invoke-super {p0, p1}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 261
    invoke-super {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->onDestroy()V

    .line 262
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic onDestroyView()V
    .registers 1

    invoke-super {p0}, Lcom/ljwx/basefragment/BaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onRefreshEvent(Lcom/codemao/nemo/event/RefreshEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 247
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->refreshViewOnRefresh()V

    return-void
.end method

.method public final onUpdateWorkInfoEvent(Lcom/codemao/nemo/event/UpdateWorkInfoEvents;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getType()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_10

    .line 253
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->refreshViewOnRefresh()V

    .line 255
    :cond_10
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getType()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1a

    .line 256
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->refreshViewOnRefresh()V

    :cond_1a
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-super {p0, p1, p2}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment;->enableCommonSteps()V

    .line 71
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->refreshViewOnRefresh()V

    return-void
.end method

.method public refreshViewOnRefresh()V
    .registers 3

    .line 166
    invoke-super {p0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->refreshViewOnRefresh()V

    .line 167
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->getStateLoadingDataSucceeded()Z

    move-result v0

    if-nez v0, :cond_c

    .line 168
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->showStateLoading()V

    .line 170
    :cond_c
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->getPublishedData(Z)V

    return-void
.end method

.method public viewModelProviderFromFragment()Landroidx/fragment/app/Fragment;
    .registers 2

    .line 243
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method
