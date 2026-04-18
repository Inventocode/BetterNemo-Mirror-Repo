.class public abstract Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity;
.super Lcom/ljwx/baseactivity/BaseMVVMActivity;
.source "QuickTabLayoutActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Binding:",
        "Landroidx/databinding/ViewDataBinding;",
        "ViewModel:",
        "Lcom/ljwx/baseapp/vm/BaseViewModel<",
        "*>;>",
        "Lcom/ljwx/baseactivity/BaseMVVMActivity<",
        "TBinding;TViewModel;>;"
    }
.end annotation


# instance fields
.field private final mTabFragments:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lcom/google/android/material/tabs/TabLayout$Tab;",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$jaHUtHuDHvcXqQO9Pnxhp8rPhUc(Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity;->attachTabLayoutViewPager$lambda$0(Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity;Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    return-void
.end method

.method public static final synthetic access$getMTabFragments$p(Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity;)Ljava/util/LinkedHashMap;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity;->mTabFragments:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public static synthetic attachTabLayoutViewPager$default(Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity;ZIILjava/lang/Object;)V
    .registers 6

    if-nez p4, :cond_11

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_8

    const/4 p1, 0x0

    :cond_8
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_d

    const/4 p2, 0x0

    .line 71
    :cond_d
    invoke-virtual {p0, p1, p2}, Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity;->attachTabLayoutViewPager(ZI)V

    return-void

    :cond_11
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: attachTabLayoutViewPager"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final attachTabLayoutViewPager$lambda$0(Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object p0, p0, Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity;->mTabFragments:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    const-string v0, "mTabFragments.keys"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "mTabFragments.keys.toList()[position]"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 90
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_32

    .line 91
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    goto :goto_4b

    .line 92
    :cond_32
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_41

    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3f

    goto :goto_41

    :cond_3f
    const/4 p2, 0x0

    goto :goto_42

    :cond_41
    :goto_41
    const/4 p2, 0x1

    :goto_42
    if-nez p2, :cond_4b

    .line 93
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    :cond_4b
    :goto_4b
    return-void
.end method


# virtual methods
.method public final attachTabLayoutViewPager(ZI)V
    .registers 5

    .line 75
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity;->getViewPager2()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    new-instance v1, Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity$attachTabLayoutViewPager$1;

    invoke-direct {v1, p0}, Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity$attachTabLayoutViewPager$1;-><init>(Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 84
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity;->getViewPager2()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    if-lez p2, :cond_1c

    .line 86
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity;->getViewPager2()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 88
    :cond_1c
    new-instance p1, Lcom/google/android/material/tabs/TabLayoutMediator;

    invoke-virtual {p0}, Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object p2

    invoke-virtual {p0}, Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity;->getViewPager2()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    .line 95
    new-instance v1, Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity$$ExternalSyntheticLambda0;-><init>(Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity;)V

    .line 88
    invoke-direct {p1, p2, v0, v1}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 95
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    return-void
.end method

.method public abstract getTabLayout()Lcom/google/android/material/tabs/TabLayout;
.end method

.method public abstract getViewPager2()Landroidx/viewpager2/widget/ViewPager2;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 20
    invoke-super {p0, p1}, Lcom/ljwx/baseactivity/BaseMVVMActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 21
    invoke-static {p0, p1, p1, v0, v1}, Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity;->attachTabLayoutViewPager$default(Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity;ZIILjava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/ljwx/baseactivity/fast/QuickTabLayoutActivity;->mTabFragments:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 104
    invoke-super {p0}, Lcom/ljwx/baseactivity/BaseBindingActivity;->onDestroy()V

    return-void
.end method
