.class public final Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;
.super Lcom/ljwx/baseactivity/BaseMVVMPadActivity;
.source "MineSearchMainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ljwx/baseactivity/BaseMVVMPadActivity<",
        "Lcom/codemao/nemo/databinding/FragmentMineSearchMainBinding;",
        "Lcom/codemao/nemo/databinding/FragmentMineSearchMainBinding;",
        "Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMineSearchMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MineSearchMainActivity.kt\ncom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 3 ViewClick.kt\ncom/ljwx/baseapp/extensions/ViewClickKt\n+ 4 View.kt\ncom/ljwx/baseapp/extensions/ViewKt\n*L\n1#1,170:1\n65#2,16:171\n93#2,3:187\n15#3,7:190\n15#3,7:197\n15#3,7:204\n6#4,2:211\n*S KotlinDebug\n*F\n+ 1 MineSearchMainActivity.kt\ncom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity\n*L\n61#1:171,16\n61#1:187,3\n76#1:190,7\n83#1:197,7\n86#1:204,7\n99#1:211,2\n*E\n"
.end annotation


# instance fields
.field private final backView$delegate:Lkotlin/Lazy;

.field private final clean$delegate:Lkotlin/Lazy;

.field private nemoViewModel:Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;

.field private final rootView$delegate:Lkotlin/Lazy;

.field private final searchView$delegate:Lkotlin/Lazy;

.field private final tabLayout$delegate:Lkotlin/Lazy;

.field private final tabLayoutClick$delegate:Lkotlin/Lazy;

.field private final viewPager$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$GaLLVDA0pMOXTx1i_FL3T0G96Wo(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;[Ljava/lang/String;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->initViewPagerAndTabLayout$lambda$2(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;[Ljava/lang/String;Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$SZ02bFS863-Mk1lLPjCYl9ORnls(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->commonStep4SetViewListener$lambda$1(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 34
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const v0, 0x7f0d015c

    .line 35
    invoke-direct {p0, v0, v0}, Lcom/ljwx/baseactivity/BaseMVVMPadActivity;-><init>(II)V

    .line 42
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$rootView$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$rootView$2;-><init>(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->rootView$delegate:Lkotlin/Lazy;

    .line 43
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$backView$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$backView$2;-><init>(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->backView$delegate:Lkotlin/Lazy;

    .line 44
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$searchView$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$searchView$2;-><init>(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->searchView$delegate:Lkotlin/Lazy;

    .line 45
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$clean$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$clean$2;-><init>(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->clean$delegate:Lkotlin/Lazy;

    .line 46
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$tabLayout$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$tabLayout$2;-><init>(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->tabLayout$delegate:Lkotlin/Lazy;

    .line 47
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$tabLayoutClick$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$tabLayoutClick$2;-><init>(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->tabLayoutClick$delegate:Lkotlin/Lazy;

    .line 48
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$viewPager$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$viewPager$2;-><init>(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->viewPager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getMBinding(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;)Lcom/codemao/nemo/databinding/FragmentMineSearchMainBinding;
    .registers 1

    .line 34
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseBindingPadActivity;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/codemao/nemo/databinding/FragmentMineSearchMainBinding;

    return-object p0
.end method

.method public static final synthetic access$getMBindingPad(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;)Lcom/codemao/nemo/databinding/FragmentMineSearchMainBinding;
    .registers 1

    .line 34
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseBindingPadActivity;->getMBindingPad()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/codemao/nemo/databinding/FragmentMineSearchMainBinding;

    return-object p0
.end method

.method public static final synthetic access$getRootView(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;)Landroid/widget/LinearLayout;
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->getRootView()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSearchView(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;)Landroid/widget/EditText;
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->getSearchView()Landroid/widget/EditText;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTabLayout(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;)Lcom/google/android/material/tabs/TabLayout;
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getViewPager(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;)Landroidx/viewpager2/widget/ViewPager2;
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isPad(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;)Z
    .registers 1

    .line 34
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseBindingPadActivity;->isPad()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$search(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;Ljava/lang/String;)V
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->search(Ljava/lang/String;)V

    return-void
.end method

.method private static final commonStep4SetViewListener$lambda$1(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x3

    if-ne p2, p1, :cond_19

    .line 91
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->getSearchView()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->search(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method private final getBackView()Landroid/widget/ImageView;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->backView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getClean()Landroid/widget/ImageView;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->clean$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getRootView()Landroid/widget/LinearLayout;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->rootView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getSearchView()Landroid/widget/EditText;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->searchView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method private final getTabLayout()Lcom/google/android/material/tabs/TabLayout;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->tabLayout$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    return-object v0
.end method

.method private final getTabLayoutClick()Landroid/view/View;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->tabLayoutClick$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getViewPager()Landroidx/viewpager2/widget/ViewPager2;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->viewPager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    return-object v0
.end method

.method private final initViewPagerAndTabLayout()V
    .registers 6

    const-string v0, "KittenN"

    const-string v1, "Nemo"

    .line 105
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/ljwx/basefragment/BaseMVVMPadFragment;

    .line 107
    sget-object v2, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->Companion:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$Companion;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$Companion;->getInstance(ZZ)Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    move-result-object v2

    aput-object v2, v1, v3

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment;

    invoke-direct {v2}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchNemoFragment;-><init>()V

    aput-object v2, v1, v4

    .line 108
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v2

    new-instance v4, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$initViewPagerAndTabLayout$1;

    invoke-direct {v4, p0, v1}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$initViewPagerAndTabLayout$1;-><init>(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;[Lcom/ljwx/basefragment/BaseMVVMPadFragment;)V

    invoke-virtual {v2, v4}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 118
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$initViewPagerAndTabLayout$2;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$initViewPagerAndTabLayout$2;-><init>(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;)V

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 133
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v1

    sget-object v2, Lcom/codemao/nemo/constant/AppConfig;->INSTANCE:Lcom/codemao/nemo/constant/AppConfig;

    invoke-virtual {v2}, Lcom/codemao/nemo/constant/AppConfig;->getMINE_PAGE_TAB_INDEX()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 134
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 135
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$initViewPagerAndTabLayout$3;

    invoke-direct {v2}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$initViewPagerAndTabLayout$3;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 152
    new-instance v1, Lcom/google/android/material/tabs/TabLayoutMediator;

    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v2

    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v3

    .line 157
    new-instance v4, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;[Ljava/lang/String;)V

    .line 152
    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 157
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    return-void
.end method

.method private static final initViewPagerAndTabLayout$lambda$2(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;[Ljava/lang/String;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .registers 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$titles"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tab"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 154
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object p0

    const v1, 0x7f0d02fb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0a07af

    .line 155
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aget-object p1, p1, p3

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {p2, p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    return-void
.end method

.method private final search(Ljava/lang/String;)V
    .registers 5

    .line 99
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->getClean()Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "clean"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    if-eqz v1, :cond_16

    goto :goto_18

    :cond_16
    const/16 v2, 0x8

    .line 6
    :goto_18
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 100
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseMVVMPadActivity;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;->getSearchKey()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->nemoViewModel:Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;

    if-nez v0, :cond_32

    const-string v0, "nemoViewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_32
    invoke-virtual {v0}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->getSearchKey()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public commonStep2InitView()V
    .registers 3

    .line 59
    invoke-super {p0}, Lcom/ljwx/baseactivity/BaseActivity;->commonStep2InitView()V

    .line 60
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->initViewPagerAndTabLayout()V

    .line 61
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->getSearchView()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "searchView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v1, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$commonStep2InitView$$inlined$addTextChangedListener$default$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$commonStep2InitView$$inlined$addTextChangedListener$default$1;-><init>(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;)V

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 64
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->getSearchView()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 65
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->getSearchView()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->showSoftInput(Landroid/view/View;)V

    return-void
.end method

.method public commonStep3ObserveData()V
    .registers 3

    .line 161
    invoke-super {p0}, Lcom/ljwx/baseactivity/BaseMVVMPadActivity;->commonStep3ObserveData()V

    .line 162
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$commonStep3ObserveData$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$commonStep3ObserveData$1;-><init>(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;)V

    const-string v1, "mine_tab_change"

    invoke-virtual {p0, v1, v0}, Lcom/ljwx/baseactivity/BaseActivity;->registerLocalEvent(Ljava/lang/String;Lkotlin/jvm/functions/Function4;)V

    return-void
.end method

.method public commonStep4SetViewListener()V
    .registers 7

    .line 75
    invoke-super {p0}, Lcom/ljwx/baseactivity/BaseActivity;->commonStep4SetViewListener()V

    .line 76
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->getTabLayoutClick()Landroid/view/View;

    move-result-object v0

    const-string v1, "tabLayoutClick"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$commonStep4SetViewListener$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$commonStep4SetViewListener$1;-><init>(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;)V

    .line 20
    new-instance v2, Lcom/ljwx/baseapp/extensions/SingleClickListener;

    const-wide/16 v3, 0x50

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/ljwx/baseapp/extensions/SingleClickListener;-><init>(JZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->getBackView()Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "backView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$commonStep4SetViewListener$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$commonStep4SetViewListener$2;-><init>(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;)V

    .line 20
    new-instance v2, Lcom/ljwx/baseapp/extensions/SingleClickListener;

    const-wide/16 v3, 0x1f4

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/ljwx/baseapp/extensions/SingleClickListener;-><init>(JZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->getClean()Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "clean"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$commonStep4SetViewListener$3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$commonStep4SetViewListener$3;-><init>(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;)V

    .line 20
    new-instance v2, Lcom/ljwx/baseapp/extensions/SingleClickListener;

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/ljwx/baseapp/extensions/SingleClickListener;-><init>(JZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->getSearchView()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 51
    invoke-super {p0, p1}, Lcom/ljwx/baseactivity/BaseMVVMPadActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 52
    invoke-virtual {p0, p1}, Lcom/ljwx/baseactivity/BaseActivity;->setStatusBarTransparent(Z)V

    const p1, 0x7f01006b

    const v0, 0x7f01006c

    .line 53
    invoke-virtual {p0, p1, v0}, Lcom/ljwx/baseactivity/BaseActivity;->overridePendingTransition(II)V

    .line 54
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    const-string v0, "ViewModelProvider(this)[MineNemoVM::class.java]"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->nemoViewModel:Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;

    .line 55
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseActivity;->enableCommonSteps()V

    return-void
.end method
