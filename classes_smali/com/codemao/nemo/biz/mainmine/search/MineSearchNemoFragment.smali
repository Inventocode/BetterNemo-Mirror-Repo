.class public final Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment;
.super Lcom/ljwx/basefragment/BaseMVVMPadFragment;
.source "MineSearchNemoFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ljwx/basefragment/BaseMVVMPadFragment<",
        "Lcom/codemao/nemo/databinding/FragmentMineSearchNemoBinding;",
        "Lcom/codemao/nemo/databinding/FragmentMineSearchNemoBinding;",
        "Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;",
        ">;"
    }
.end annotation


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

.field private final tabLayout$delegate:Lkotlin/Lazy;

.field private final viewPager$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$EH44olNC5Zlh2NeOVQOAI5BkZR8(Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment;ILandroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment;->commonStep2InitView$lambda$1$lambda$0(Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UD4oq_f6VTA8iApKh-tb7RwNxOU(Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment;->commonStep2InitView$lambda$1(Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 17
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment;->_$_findViewCache:Ljava/util/Map;

    const v0, 0x7f0d015d

    .line 18
    invoke-direct {p0, v0, v0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;-><init>(II)V

    .line 22
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment$tabLayout$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment$tabLayout$2;-><init>(Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment;->tabLayout$delegate:Lkotlin/Lazy;

    .line 23
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment$viewPager$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment$viewPager$2;-><init>(Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment;->viewPager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getMBinding(Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment;)Lcom/codemao/nemo/databinding/FragmentMineSearchNemoBinding;
    .registers 1

    .line 17
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/codemao/nemo/databinding/FragmentMineSearchNemoBinding;

    return-object p0
.end method

.method public static final synthetic access$getMBindingPad(Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment;)Lcom/codemao/nemo/databinding/FragmentMineSearchNemoBinding;
    .registers 1

    .line 17
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBindingPad()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/codemao/nemo/databinding/FragmentMineSearchNemoBinding;

    return-object p0
.end method

.method public static final synthetic access$isPad(Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment;)Z
    .registers 1

    .line 17
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->isPad()Z

    move-result p0

    return p0
.end method

.method private static final commonStep2InitView$lambda$1(Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .registers 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 52
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v1

    const v2, 0x7f0d02fa

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 53
    new-instance v1, Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    if-lez p2, :cond_30

    const/4 v3, 0x1

    .line 60
    :cond_30
    invoke-direct {p0, p1, v3}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment;->setTabText(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    return-void
.end method

.method private static final commonStep2InitView$lambda$1$lambda$0(Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment;ILandroid/view/View;)V
    .registers 5

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_18

    invoke-virtual {p2}, Lcom/google/android/material/tabs/TabLayout$Tab;->isSelected()Z

    move-result p2

    if-ne p2, v0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    if-eqz v0, :cond_2c

    .line 55
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;

    invoke-virtual {p2}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->getClickTabIndexAgain()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 57
    :cond_2c
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p0

    if-eqz p0, :cond_39

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    :cond_39
    return-void
.end method

.method private final getTabLayout()Lcom/google/android/material/tabs/TabLayout;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment;->tabLayout$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    return-object v0
.end method

.method private final getViewPager()Landroidx/viewpager2/widget/ViewPager2;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment;->viewPager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    return-object v0
.end method

.method private final setTabText(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V
    .registers 4

    .line 65
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_10

    const v0, 0x7f0a07af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    if-eqz p2, :cond_1c

    if-eqz p1, :cond_24

    const-string/jumbo p2, "已发布"

    .line 67
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_24

    :cond_1c
    if-eqz p1, :cond_24

    const-string/jumbo p2, "草稿箱"

    .line 69
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_24
    :goto_24
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public commonStep2InitView()V
    .registers 6

    .line 33
    invoke-super {p0}, Lcom/ljwx/basefragment/BaseFragment;->commonStep2InitView()V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    .line 35
    sget-object v1, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->Companion:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$Companion;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$Companion;->getInstance(ZZ)Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    move-result-object v4

    aput-object v4, v0, v3

    .line 36
    invoke-virtual {v1, v2, v2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$Companion;->getInstance(ZZ)Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    move-result-object v1

    aput-object v1, v0, v2

    .line 34
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 38
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment$commonStep2InitView$1;

    invoke-direct {v2, p0, v0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment$commonStep2InitView$1;-><init>(Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 48
    new-instance v0, Lcom/google/android/material/tabs/TabLayoutMediator;

    .line 49
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v1

    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment;)V

    .line 48
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 61
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    return-void
.end method

.method public synthetic onDestroyView()V
    .registers 1

    invoke-super {p0}, Lcom/ljwx/basefragment/BaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-super {p0, p1, p2}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment;->enableCommonSteps()V

    return-void
.end method

.method public viewModelProviderFromActivity()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
