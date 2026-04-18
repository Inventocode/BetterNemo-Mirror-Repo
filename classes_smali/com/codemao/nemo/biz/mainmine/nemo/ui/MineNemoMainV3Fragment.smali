.class public final Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;
.super Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;
.source "MineNemoMainV3Fragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment<",
        "Lcom/codemao/nemo/databinding/FragmentMineNemoMainV3Binding;",
        "Lcom/codemao/nemo/databinding/FragmentMineNemoMainV3Binding;",
        "Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMineNemoMainV3Fragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MineNemoMainV3Fragment.kt\ncom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment\n+ 2 View.kt\ncom/ljwx/baseapp/extensions/ViewKt\n+ 3 ViewClick.kt\ncom/ljwx/baseapp/extensions/ViewClickKt\n*L\n1#1,275:1\n6#2,2:276\n6#2,2:278\n15#3,7:280\n15#3,7:287\n*S KotlinDebug\n*F\n+ 1 MineNemoMainV3Fragment.kt\ncom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment\n*L\n102#1:276,2\n103#1:278,2\n115#1:280,7\n173#1:287,7\n*E\n"
.end annotation


# instance fields
.field private final MOULDNUM:I

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

.field private final downloadServer$delegate:Lkotlin/Lazy;

.field private enableUserInfoChangeListener:Z

.field private final searchView$delegate:Lkotlin/Lazy;

.field private final tabLayout$delegate:Lkotlin/Lazy;

.field private final toolbar$delegate:Lkotlin/Lazy;

.field private final topAnimaView$delegate:Lkotlin/Lazy;

.field private final topContainer$delegate:Lkotlin/Lazy;

.field private final topMenuContainer$delegate:Lkotlin/Lazy;

.field private final topTabLayout$delegate:Lkotlin/Lazy;

.field private final topTabLayoutClick$delegate:Lkotlin/Lazy;

.field private final userInfoClick$delegate:Lkotlin/Lazy;

.field private final viewPager$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$4M-X_-cef0UlKMZkXX0gebfPamI(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;ILandroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->commonStep2InitView$lambda$1$lambda$0(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FUl_w2W1KXW6y7f59uGCr2qoboo(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->commonStep3ObserveData$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Tn7gnOPsC-H31crBPCvTug_oAeI(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->commonStep4SetViewListener$lambda$2(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X87aqMM93lna_MAXZEyxq5BVeHw(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->commonStep3ObserveData$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r0Pa3Bceqkm2mzjWfFE8EDKbWeY(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->commonStep2InitView$lambda$1(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 39
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->_$_findViewCache:Ljava/util/Map;

    const v0, 0x7f0d0157

    .line 40
    invoke-direct {p0, v0, v0}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;-><init>(II)V

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->enableUserInfoChangeListener:Z

    .line 47
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$toolbar$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$toolbar$2;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->toolbar$delegate:Lkotlin/Lazy;

    .line 48
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$topContainer$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$topContainer$2;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->topContainer$delegate:Lkotlin/Lazy;

    .line 49
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$topTabLayout$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$topTabLayout$2;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->topTabLayout$delegate:Lkotlin/Lazy;

    .line 50
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$topTabLayoutClick$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$topTabLayoutClick$2;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->topTabLayoutClick$delegate:Lkotlin/Lazy;

    .line 51
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$topAnimaView$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$topAnimaView$2;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->topAnimaView$delegate:Lkotlin/Lazy;

    .line 53
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$userInfoClick$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$userInfoClick$2;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->userInfoClick$delegate:Lkotlin/Lazy;

    .line 55
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$searchView$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$searchView$2;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->searchView$delegate:Lkotlin/Lazy;

    .line 57
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$tabLayout$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$tabLayout$2;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->tabLayout$delegate:Lkotlin/Lazy;

    .line 58
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$viewPager$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$viewPager$2;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->viewPager$delegate:Lkotlin/Lazy;

    .line 59
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$topMenuContainer$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$topMenuContainer$2;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->topMenuContainer$delegate:Lkotlin/Lazy;

    .line 60
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$downloadServer$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$downloadServer$2;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->downloadServer$delegate:Lkotlin/Lazy;

    const/4 v0, 0x3

    .line 62
    iput v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->MOULDNUM:I

    return-void
.end method

.method public static final synthetic access$getAvatarUrl(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;)Ljava/lang/String;
    .registers 1

    .line 39
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->getAvatarUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMBinding(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;)Lcom/codemao/nemo/databinding/FragmentMineNemoMainV3Binding;
    .registers 1

    .line 39
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/codemao/nemo/databinding/FragmentMineNemoMainV3Binding;

    return-object p0
.end method

.method public static final synthetic access$getMBindingPad(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;)Lcom/codemao/nemo/databinding/FragmentMineNemoMainV3Binding;
    .registers 1

    .line 39
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBindingPad()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/codemao/nemo/databinding/FragmentMineNemoMainV3Binding;

    return-object p0
.end method

.method public static final synthetic access$getTabLayout(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;)Lcom/google/android/material/tabs/TabLayout;
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTopTabLayout(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;)Lcom/google/android/material/tabs/TabLayout;
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->getTopTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isPad(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;)Z
    .registers 1

    .line 39
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->isPad()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setTabText(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;Lcom/google/android/material/tabs/TabLayout$Tab;ZLjava/lang/Integer;)V
    .registers 4

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->setTabText(Lcom/google/android/material/tabs/TabLayout$Tab;ZLjava/lang/Integer;)V

    return-void
.end method

.method private static final commonStep2InitView$lambda$1(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .registers 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 154
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v1

    const v2, 0x7f0d02fa

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 155
    new-instance v1, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    if-lez p2, :cond_30

    const/4 v3, 0x1

    :cond_30
    const/4 p2, 0x0

    .line 162
    invoke-direct {p0, p1, v3, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->setTabText(Lcom/google/android/material/tabs/TabLayout$Tab;ZLjava/lang/Integer;)V

    return-void
.end method

.method private static final commonStep2InitView$lambda$1$lambda$0(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;ILandroid/view/View;)V
    .registers 5

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

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

    .line 157
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;

    invoke-virtual {p2}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->getClickTabIndexAgain()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 159
    :cond_2c
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p0

    if-eqz p0, :cond_39

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    :cond_39
    return-void
.end method

.method private static final commonStep3ObserveData$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final commonStep3ObserveData$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final commonStep4SetViewListener$lambda$2(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;Landroid/view/View;)V
    .registers 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    const-string/jumbo v0, "我的-点击云端下载按钮"

    .line 169
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 170
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/activity/CloudActivityV2;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final getDownloadServer()Lcom/ljwx/baseview/text/DrawableTextView;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->downloadServer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ljwx/baseview/text/DrawableTextView;

    return-object v0
.end method

.method private final getSearchView()Landroid/widget/ImageView;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->searchView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getTabLayout()Lcom/google/android/material/tabs/TabLayout;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->tabLayout$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    return-object v0
.end method

.method private final getToolbar()Landroidx/constraintlayout/widget/ConstraintLayout;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->toolbar$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method private final getTopAnimaView()Lcom/airbnb/lottie/LottieAnimationView;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->topAnimaView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    return-object v0
.end method

.method private final getTopContainer()Landroid/widget/FrameLayout;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->topContainer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final getTopMenuContainer()Landroid/widget/FrameLayout;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->topMenuContainer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final getTopTabLayout()Lcom/google/android/material/tabs/TabLayout;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->topTabLayout$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    return-object v0
.end method

.method private final getTopTabLayoutClick()Landroid/view/View;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->topTabLayoutClick$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getUserInfoClick()Landroid/view/View;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->userInfoClick$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getViewPager()Landroidx/viewpager2/widget/ViewPager2;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->viewPager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    return-object v0
.end method

.method private final initCommonView()V
    .registers 10

    .line 76
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->isPad()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBindingPad()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    goto :goto_f

    :cond_b
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    :goto_f
    check-cast v0, Lcom/codemao/nemo/databinding/FragmentMineNemoMainV3Binding;

    iget-object v0, v0, Lcom/codemao/nemo/databinding/FragmentMineNemoMainV3Binding;->authorNameTv:Landroid/widget/TextView;

    move-object v2, v0

    const-string v0, "if (isPad) mBindingPad.a…lse mBinding.authorNameTv"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->isPad()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBindingPad()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    goto :goto_28

    :cond_24
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    :goto_28
    check-cast v0, Lcom/codemao/nemo/databinding/FragmentMineNemoMainV3Binding;

    iget-object v0, v0, Lcom/codemao/nemo/databinding/FragmentMineNemoMainV3Binding;->tvUserId:Landroid/widget/TextView;

    move-object v3, v0

    const-string v0, "if (isPad) mBindingPad.t…Id else mBinding.tvUserId"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->isPad()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBindingPad()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    goto :goto_41

    :cond_3d
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    :goto_41
    check-cast v0, Lcom/codemao/nemo/databinding/FragmentMineNemoMainV3Binding;

    iget-object v0, v0, Lcom/codemao/nemo/databinding/FragmentMineNemoMainV3Binding;->ivAvatarFrame:Landroid/widget/ImageView;

    move-object v4, v0

    const-string v0, "if (isPad) mBindingPad.i…se mBinding.ivAvatarFrame"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->isPad()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBindingPad()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    goto :goto_5a

    :cond_56
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    :goto_5a
    check-cast v0, Lcom/codemao/nemo/databinding/FragmentMineNemoMainV3Binding;

    iget-object v0, v0, Lcom/codemao/nemo/databinding/FragmentMineNemoMainV3Binding;->authorPhotoIv:Lcom/google/android/material/imageview/ShapeableImageView;

    move-object v5, v0

    const-string v0, "if (isPad) mBindingPad.a…se mBinding.authorPhotoIv"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->isPad()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBindingPad()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    goto :goto_73

    :cond_6f
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    :goto_73
    check-cast v0, Lcom/codemao/nemo/databinding/FragmentMineNemoMainV3Binding;

    iget-object v0, v0, Lcom/codemao/nemo/databinding/FragmentMineNemoMainV3Binding;->userLoginLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v6, v0

    const-string v0, "if (isPad) mBindingPad.u… mBinding.userLoginLayout"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->isPad()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBindingPad()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    goto :goto_8c

    :cond_88
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    :goto_8c
    check-cast v0, Lcom/codemao/nemo/databinding/FragmentMineNemoMainV3Binding;

    iget-object v0, v0, Lcom/codemao/nemo/databinding/FragmentMineNemoMainV3Binding;->userInfoLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v7, v0

    const-string v0, "if (isPad) mBindingPad.u…e mBinding.userInfoLayout"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->isPad()Z

    move-result v0

    if-eqz v0, :cond_a1

    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBindingPad()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    goto :goto_a5

    :cond_a1
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    :goto_a5
    check-cast v0, Lcom/codemao/nemo/databinding/FragmentMineNemoMainV3Binding;

    iget-object v0, v0, Lcom/codemao/nemo/databinding/FragmentMineNemoMainV3Binding;->clickToLogin:Landroid/widget/TextView;

    move-object v8, v0

    const-string v0, "if (isPad) mBindingPad.c…lse mBinding.clickToLogin"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 75
    invoke-virtual/range {v1 .. v8}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->initUserInfoView(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 85
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->isPad()Z

    move-result v0

    if-eqz v0, :cond_be

    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBindingPad()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    goto :goto_c2

    :cond_be
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    :goto_c2
    check-cast v0, Lcom/codemao/nemo/databinding/FragmentMineNemoMainV3Binding;

    iget-object v0, v0, Lcom/codemao/nemo/databinding/FragmentMineNemoMainV3Binding;->root:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const-string v1, "if (isPad) mBindingPad.root else mBinding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->isPad()Z

    move-result v1

    if-eqz v1, :cond_d6

    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBindingPad()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    goto :goto_da

    :cond_d6
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    :goto_da
    check-cast v1, Lcom/codemao/nemo/databinding/FragmentMineNemoMainV3Binding;

    iget-object v1, v1, Lcom/codemao/nemo/databinding/FragmentMineNemoMainV3Binding;->rightView:Landroid/widget/ImageView;

    const-string v2, "if (isPad) mBindingPad.r…w else mBinding.rightView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, v0, v1}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->initSearchView(Landroid/view/View;Landroid/view/View;)V

    .line 89
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->isPad()Z

    move-result v0

    if-eqz v0, :cond_f1

    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBindingPad()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    goto :goto_f5

    :cond_f1
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    :goto_f5
    check-cast v0, Lcom/codemao/nemo/databinding/FragmentMineNemoMainV3Binding;

    iget-object v0, v0, Lcom/codemao/nemo/databinding/FragmentMineNemoMainV3Binding;->appBarContainer:Lcom/google/android/material/appbar/AppBarLayout;

    move-object v4, v0

    const-string v0, "if (isPad) mBindingPad.a… mBinding.appBarContainer"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->isPad()Z

    move-result v0

    if-eqz v0, :cond_10a

    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBindingPad()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    goto :goto_10e

    :cond_10a
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    :goto_10e
    check-cast v0, Lcom/codemao/nemo/databinding/FragmentMineNemoMainV3Binding;

    iget-object v0, v0, Lcom/codemao/nemo/databinding/FragmentMineNemoMainV3Binding;->toolBar:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v5, v0

    const-string v0, "if (isPad) mBindingPad.t…Bar else mBinding.toolBar"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->getTopTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v6

    const-string v0, "topTabLayout"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->isPad()Z

    move-result v1

    if-eqz v1, :cond_12c

    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBindingPad()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    goto :goto_130

    :cond_12c
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    :goto_130
    check-cast v1, Lcom/codemao/nemo/databinding/FragmentMineNemoMainV3Binding;

    iget-object v1, v1, Lcom/codemao/nemo/databinding/FragmentMineNemoMainV3Binding;->leftView:Landroid/widget/ImageView;

    move-object v7, v1

    const-string v1, "if (isPad) mBindingPad.l…ew else mBinding.leftView"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->isPad()Z

    move-result v1

    if-eqz v1, :cond_145

    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBindingPad()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    goto :goto_149

    :cond_145
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    :goto_149
    check-cast v1, Lcom/codemao/nemo/databinding/FragmentMineNemoMainV3Binding;

    iget-object v1, v1, Lcom/codemao/nemo/databinding/FragmentMineNemoMainV3Binding;->rightView:Landroid/widget/ImageView;

    move-object v8, v1

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p0

    .line 88
    invoke-virtual/range {v3 .. v8}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->initAppbarOffset(Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Lcom/google/android/material/tabs/TabLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 95
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->getTopTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->initTabLayout(Lcom/google/android/material/tabs/TabLayout;I)V

    .line 96
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->getToolbar()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->getToolbar()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getStatusHeight()I

    move-result v2

    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->getToolbar()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->getToolbar()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method private final setTabText(Lcom/google/android/material/tabs/TabLayout$Tab;ZLjava/lang/Integer;)V
    .registers 7

    .line 210
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    const v2, 0x7f0a07af

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_12

    :cond_11
    move-object v0, v1

    .line 211
    :goto_12
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_22

    const v1, 0x7f0a0589

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    :cond_22
    if-eqz p2, :cond_2d

    if-eqz v0, :cond_35

    const-string/jumbo p1, "已发布"

    .line 213
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_35

    :cond_2d
    if-eqz v0, :cond_35

    const-string/jumbo p1, "草稿箱"

    .line 215
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_35
    :goto_35
    if-nez p3, :cond_3f

    if-eqz v1, :cond_51

    const-string p1, ""

    .line 218
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_51

    :cond_3f
    if-eqz v1, :cond_51

    .line 220
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_51
    :goto_51
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public commonStep2InitView()V
    .registers 8

    .line 100
    invoke-super {p0}, Lcom/ljwx/basefragment/BaseFragment;->commonStep2InitView()V

    .line 102
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->getTopMenuContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    const-string v1, "topMenuContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_17

    const/4 v1, 0x0

    goto :goto_19

    :cond_17
    const/16 v1, 0x8

    .line 6
    :goto_19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->getSearchView()Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "searchView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_2d

    const/4 v1, 0x0

    goto :goto_2f

    :cond_2d
    const/16 v1, 0x8

    .line 6
    :goto_2f
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 105
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->getTopContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    const v1, 0x7f0e0171

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 106
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->getTopAnimaView()Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_63

    .line 108
    :cond_4a
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->getTopContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 109
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->getTopAnimaView()Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_63
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/fragment/app/Fragment;

    .line 112
    new-instance v1, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    invoke-direct {v1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;-><init>()V

    aput-object v1, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 113
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_97

    .line 114
    new-instance v1, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;

    invoke-direct {v1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->getUserInfoClick()Landroid/view/View;

    move-result-object v1

    const-string v2, "userInfoClick"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$commonStep2InitView$1;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$commonStep2InitView$1;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;)V

    const-wide/16 v4, 0x1f4

    .line 20
    new-instance v6, Lcom/ljwx/baseapp/extensions/SingleClickListener;

    invoke-direct {v6, v4, v5, v3, v2}, Lcom/ljwx/baseapp/extensions/SingleClickListener;-><init>(JZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    :cond_97
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$commonStep2InitView$2;

    invoke-direct {v2, p0, v0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$commonStep2InitView$2;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 137
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 138
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$commonStep2InitView$3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$commonStep2InitView$3;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 150
    new-instance v0, Lcom/google/android/material/tabs/TabLayoutMediator;

    .line 151
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v1

    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v2

    .line 163
    new-instance v3, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$$ExternalSyntheticLambda4;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;)V

    .line 150
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 163
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    return-void
.end method

.method public commonStep3ObserveData()V
    .registers 5

    .line 183
    invoke-super {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->commonStep3ObserveData()V

    .line 184
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->getDraftsWorksData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$commonStep3ObserveData$1;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$commonStep3ObserveData$1;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;)V

    new-instance v3, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$$ExternalSyntheticLambda3;

    invoke-direct {v3, v2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 188
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->getDraftsPublishedData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$commonStep3ObserveData$2;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$commonStep3ObserveData$2;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;)V

    new-instance v3, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public commonStep4SetViewListener()V
    .registers 7

    .line 167
    invoke-super {p0}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->commonStep4SetViewListener()V

    .line 168
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->getDownloadServer()Lcom/ljwx/baseview/text/DrawableTextView;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->getTopTabLayoutClick()Landroid/view/View;

    move-result-object v0

    const-string v1, "topTabLayoutClick"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$commonStep4SetViewListener$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$commonStep4SetViewListener$2;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;)V

    .line 20
    new-instance v2, Lcom/ljwx/baseapp/extensions/SingleClickListener;

    const-wide/16 v3, 0x1f4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/ljwx/baseapp/extensions/SingleClickListener;-><init>(JZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected getEnableUserInfoChangeListener()Z
    .registers 2

    .line 45
    iget-boolean v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->enableUserInfoChangeListener:Z

    return v0
.end method

.method public synthetic onDestroyView()V
    .registers 1

    invoke-super {p0}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onDownloadBcmEvent(Lcom/codemao/nemo/event/DownloadBcmEvent;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 238
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    return-void
.end method

.method public final onMineTabEvent(Lcom/codemao/nemo/event/MineTabEvent;)V
    .registers 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v0

    iget v1, p1, Lcom/codemao/nemo/event/MineTabEvent;->tabIndex:I

    if-le v0, v1, :cond_32

    if-lez v1, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 199
    :goto_16
    iget v1, p1, Lcom/codemao/nemo/event/MineTabEvent;->bcmSum:I

    if-eqz v0, :cond_1b

    goto :goto_1e

    :cond_1b
    iget v2, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->MOULDNUM:I

    sub-int/2addr v1, v2

    .line 200
    :goto_1e
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v2

    iget p1, p1, Lcom/codemao/nemo/event/MineTabEvent;->tabIndex:I

    invoke-virtual {v2, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->setTabText(Lcom/google/android/material/tabs/TabLayout$Tab;ZLjava/lang/Integer;)V

    :cond_32
    return-void
.end method

.method public final onRefreshEvent(Lcom/codemao/nemo/event/RefreshEvent;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 266
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    :cond_e
    return-void
.end method

.method public final onTabChangeEvent(Lcom/codemao/nemo/event/MainActivityTabChangeEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p1}, Lcom/codemao/nemo/event/MainActivityTabChangeEvent;->getFirstTab()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_24

    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 245
    invoke-virtual {p1}, Lcom/codemao/nemo/event/MainActivityTabChangeEvent;->getSecondeTabName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "已发布(0)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 248
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_24
    return-void
.end method

.method public final onUpdateWorkInfoEvent(Lcom/codemao/nemo/event/UpdateWorkInfoEvents;)V
    .registers 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getType()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2f

    .line 255
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 256
    :cond_1c
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 258
    :cond_2f
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getType()I

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-super {p0, p1, p2}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 66
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result p1

    if-nez p1, :cond_11

    .line 67
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->showStateExtend()V

    .line 69
    :cond_11
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->initCommonView()V

    .line 70
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment;->enableCommonSteps()V

    return-void
.end method

.method public final onWorksEvent(Lcom/codemao/creativestore/bean/WorksEvent;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "worksEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    :cond_13
    return-void
.end method

.method public tabCheck(I)V
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    .line 271
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->getTopAnimaView()Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_a
    return-void
.end method

.method public userInfoChange(Lcom/ljwx/baseapp/infochange/IBaseUserInfo;I)V
    .registers 3

    .line 225
    invoke-super {p0, p1, p2}, Lcom/ljwx/basefragment/BaseToolsFragment;->userInfoChange(Lcom/ljwx/baseapp/infochange/IBaseUserInfo;I)V

    .line 226
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->commonStep2InitView()V

    return-void
.end method
