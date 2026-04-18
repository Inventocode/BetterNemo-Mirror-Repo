.class public final Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;
.super Lcom/ljwx/basefragment/BaseBindingPadFragment;
.source "MineFragmentV3.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ljwx/basefragment/BaseBindingPadFragment<",
        "Lcom/codemao/nemo/databinding/FragmentMineV3Binding;",
        "Lcom/codemao/nemo/databinding/FragmentMineV3Binding;",
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

.field private final viewPager$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;->_$_findViewCache:Ljava/util/Map;

    const v0, 0x7f0d0160

    .line 20
    invoke-direct {p0, v0, v0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;-><init>(II)V

    .line 26
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3$viewPager$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3$viewPager$2;-><init>(Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;->viewPager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getMBinding(Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;)Lcom/codemao/nemo/databinding/FragmentMineV3Binding;
    .registers 1

    .line 19
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/codemao/nemo/databinding/FragmentMineV3Binding;

    return-object p0
.end method

.method public static final synthetic access$getMBindingPad(Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;)Lcom/codemao/nemo/databinding/FragmentMineV3Binding;
    .registers 1

    .line 19
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBindingPad()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/codemao/nemo/databinding/FragmentMineV3Binding;

    return-object p0
.end method

.method public static final synthetic access$getViewPager(Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;)Landroidx/viewpager2/widget/ViewPager2;
    .registers 1

    .line 19
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isPad(Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;)Z
    .registers 1

    .line 19
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->isPad()Z

    move-result p0

    return p0
.end method

.method private final getViewPager()Landroidx/viewpager2/widget/ViewPager2;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;->viewPager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    return-object v0
.end method

.method private final initViewPagerAndTabLayout()V
    .registers 6

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;

    .line 54
    new-instance v2, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;

    invoke-direct {v2}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 55
    new-instance v2, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;

    invoke-direct {v2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;-><init>()V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 53
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 57
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v2

    new-instance v4, Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3$initViewPagerAndTabLayout$1;

    invoke-direct {v4, p0, v1}, Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3$initViewPagerAndTabLayout$1;-><init>(Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;Ljava/util/List;)V

    invoke-virtual {v2, v4}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 67
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 68
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public commonStep2InitView()V
    .registers 1

    .line 48
    invoke-super {p0}, Lcom/ljwx/basefragment/BaseFragment;->commonStep2InitView()V

    .line 49
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;->initViewPagerAndTabLayout()V

    return-void
.end method

.method public enableKeyboardHeightListener()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final getCurrentViewName()Ljava/lang/String;
    .registers 2

    const-string v0, "todo"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 29
    invoke-super {p0, p1}, Lcom/ljwx/basefragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 30
    sget-object p1, Lcom/ljwx/basedialog/dialog/BaseDialog;->Companion:Lcom/ljwx/basedialog/dialog/BaseDialog$Companion;

    const v0, 0x7f0d011f

    invoke-virtual {p1, v0}, Lcom/ljwx/basedialog/dialog/BaseDialog$Companion;->setCommonLayout(I)V

    .line 31
    sget-object p1, Lcom/ljwx/baseapp/BasePopupLoading;->Companion:Lcom/ljwx/baseapp/BasePopupLoading$Companion;

    const v0, 0x7f0d0127

    invoke-virtual {p1, v0}, Lcom/ljwx/baseapp/BasePopupLoading$Companion;->setLayout(I)V

    return-void
.end method

.method public synthetic onDestroyView()V
    .registers 1

    invoke-super {p0}, Lcom/ljwx/basefragment/BaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onKeyboardHeightChange(ZI)V
    .registers 11

    .line 94
    invoke-super {p0, p1, p2}, Lcom/ljwx/basefragment/BaseFragment;->onKeyboardHeightChange(ZI)V

    int-to-long v0, p2

    .line 95
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v3, "keyboard_height_change"

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/ljwx/baseapp/event/ISendLocalEvent$DefaultImpls;->sendLocalEvent$default(Lcom/ljwx/baseapp/event/ISendLocalEvent;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)V

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mineFragment,高度:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "键盘高度"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-super {p0, p1, p2}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment;->enableCommonSteps()V

    .line 38
    new-instance p1, Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3$onViewCreated$1;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3$onViewCreated$1;-><init>(Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;)V

    const-string p2, "mine_tab_change"

    invoke-virtual {p0, p2, p1}, Lcom/ljwx/basefragment/BaseFragment;->registerLocalEvent(Ljava/lang/String;Lkotlin/jvm/functions/Function4;)V

    return-void
.end method

.method public final setCurrentItem(I)V
    .registers 10

    const/4 v0, 0x2

    if-ge p1, v0, :cond_11

    int-to-long v0, p1

    .line 87
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "mine_tab_change"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/ljwx/baseapp/event/ISendLocalEvent$DefaultImpls;->sendLocalEvent$default(Lcom/ljwx/baseapp/event/ISendLocalEvent;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_11
    return-void
.end method
