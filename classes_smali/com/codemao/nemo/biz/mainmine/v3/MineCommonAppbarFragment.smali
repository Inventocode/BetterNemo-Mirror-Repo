.class public abstract Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;
.super Lcom/ljwx/basefragment/BaseMVVMPadFragment;
.source "MineCommonAppbarFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Binding:",
        "Landroidx/databinding/ViewDataBinding;",
        "BindingPad:",
        "Landroidx/databinding/ViewDataBinding;",
        "ViewModel:",
        "Lcom/ljwx/baseapp/vm/BaseViewModel<",
        "*>;>",
        "Lcom/ljwx/basefragment/BaseMVVMPadFragment<",
        "TBinding;TBindingPad;TViewModel;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMineCommonAppbarFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MineCommonAppbarFragment.kt\ncom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment\n+ 2 ViewClick.kt\ncom/ljwx/baseapp/extensions/ViewClickKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,242:1\n15#2,7:243\n15#2,7:250\n13608#3,3:257\n*S KotlinDebug\n*F\n+ 1 MineCommonAppbarFragment.kt\ncom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment\n*L\n47#1:243,7\n83#1:250,7\n175#1:257,3\n*E\n"
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

.field private isDark:Z

.field private isHeadLoadFinish:Z

.field private isVisilble:Z

.field private tabLayoutIsTopStyle:Z


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .line 32
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->_$_findViewCache:Ljava/util/Map;

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;-><init>(II)V

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->tabLayoutIsTopStyle:Z

    return-void
.end method

.method public static final synthetic access$changeTabStyle(Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;Lcom/google/android/material/tabs/TabLayout;)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->changeTabStyle(Lcom/google/android/material/tabs/TabLayout;)V

    return-void
.end method

.method public static final synthetic access$getTabLayoutIsTopStyle$p(Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;)Z
    .registers 1

    .line 32
    iget-boolean p0, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->tabLayoutIsTopStyle:Z

    return p0
.end method

.method public static final synthetic access$setTabLayoutIsTopStyle$p(Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;Z)V
    .registers 2

    .line 32
    iput-boolean p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->tabLayoutIsTopStyle:Z

    return-void
.end method

.method private final changeTabStyle(Lcom/google/android/material/tabs/TabLayout;)V
    .registers 10

    .line 212
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v0

    if-ltz v0, :cond_ae

    const/4 v1, 0x0

    .line 213
    :goto_7
    invoke-virtual {p1, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    if-eqz v2, :cond_a8

    .line 214
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->isSelected()Z

    move-result v3

    const v4, 0x7f0601af

    const-string v5, "findViewById<TextView>(R.id.title)"

    const v6, 0x7f0a07af

    if-eqz v3, :cond_75

    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "当前选中："

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0x2c

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "tablayout"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_71

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_71

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    invoke-virtual {v3}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 218
    iget-boolean v5, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->tabLayoutIsTopStyle:Z

    if-eqz v5, :cond_63

    .line 219
    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_71

    .line 221
    :cond_63
    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06015b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 224
    :cond_71
    :goto_71
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    goto :goto_a8

    .line 226
    :cond_75
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_a8

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_a8

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 227
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 228
    iget-boolean v3, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->tabLayoutIsTopStyle:Z

    if-eqz v3, :cond_9d

    .line 229
    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600ac

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_a8

    .line 231
    :cond_9d
    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_a8
    :goto_a8
    if-eq v1, v0, :cond_ae

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7

    :cond_ae
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public initAppbarOffset(Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Lcom/google/android/material/tabs/TabLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .registers 17

    move-object v0, p1

    move-object v5, p4

    const-string v1, "appBarContainer"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "toolbarContainer"

    move-object v3, p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "tabLayout"

    move-object v4, p3

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "leftView"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "rightView"

    move-object/from16 v6, p5

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    new-instance v1, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initAppbarOffset$1;

    move-object v7, p0

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initAppbarOffset$1;-><init>(Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;)V

    .line 20
    new-instance v2, Lcom/ljwx/baseapp/extensions/SingleClickListener;

    const-wide/16 v8, 0x1f4

    const/4 v10, 0x0

    invoke-direct {v2, v8, v9, v10, v1}, Lcom/ljwx/baseapp/extensions/SingleClickListener;-><init>(JZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {p4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    new-instance v8, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initAppbarOffset$2;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initAppbarOffset$2;-><init>(Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;Landroid/view/View;Lcom/google/android/material/tabs/TabLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {p1, v8}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    return-void
.end method

.method public initSearchView(Landroid/view/View;Landroid/view/View;)V
    .registers 8

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initSearchView$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initSearchView$1;-><init>(Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;)V

    .line 20
    new-instance v1, Lcom/ljwx/baseapp/extensions/SingleClickListener;

    const-wide/16 v2, 0x1f4

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/ljwx/baseapp/extensions/SingleClickListener;-><init>(JZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    new-instance v0, Lcom/codemao/nemo/presenter/SearchPresentImpl;

    new-instance v1, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initSearchView$2;

    invoke-direct {v1, p2, p1, p0}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initSearchView$2;-><init>(Landroid/view/View;Landroid/view/View;Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;)V

    invoke-direct {v0, v1}, Lcom/codemao/nemo/presenter/SearchPresentImpl;-><init>(Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;)V

    return-void
.end method

.method public initTabLayout(Lcom/google/android/material/tabs/TabLayout;I)V
    .registers 11

    const-string v0, "tabLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "KittenN"

    const-string v1, "Nemo"

    .line 174
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    const/4 v4, 0x2

    if-ge v2, v4, :cond_4b

    .line 13609
    aget-object v4, v0, v2

    add-int/lit8 v5, v3, 0x1

    .line 176
    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0d02fb

    .line 177
    invoke-virtual {v6, v7, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0a07af

    .line 178
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 179
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-ne v3, p2, :cond_3c

    .line 181
    invoke-virtual {v7}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v7, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 184
    :cond_3c
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_10

    .line 186
    :cond_4b
    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_54

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 187
    :cond_54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "初始化默认选中："

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x2c

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "tablayout"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance p2, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initTabLayout$2;

    invoke-direct {p2, p1, p0}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initTabLayout$2;-><init>(Lcom/google/android/material/tabs/TabLayout;Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;)V

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 203
    new-instance p2, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initTabLayout$3;

    invoke-direct {p2, p1, p0}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initTabLayout$3;-><init>(Lcom/google/android/material/tabs/TabLayout;Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;)V

    const-string p1, "mine_tab_change"

    invoke-virtual {p0, p1, p2}, Lcom/ljwx/basefragment/BaseFragment;->registerLocalEvent(Ljava/lang/String;Lkotlin/jvm/functions/Function4;)V

    return-void
.end method

.method protected final isVisilble()Z
    .registers 2

    .line 39
    iget-boolean v0, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->isVisilble:Z

    return v0
.end method

.method public synthetic onDestroyView()V
    .registers 1

    invoke-super {p0}, Lcom/ljwx/basefragment/BaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method protected final setDark(Z)V
    .registers 2

    .line 40
    iput-boolean p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->isDark:Z

    return-void
.end method

.method public abstract setDataOffline(Z)V
.end method

.method protected final setHeadLoadFinish(Z)V
    .registers 2

    .line 42
    iput-boolean p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->isHeadLoadFinish:Z

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .registers 5

    .line 161
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 162
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    .line 163
    iput-boolean p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->isVisilble:Z

    .line 164
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-boolean v2, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->isDark:Z

    invoke-static {v1, v2, v0}, Lcom/giu/xzz/utils/StatusBarUtil;->setStatusBarDark(Landroid/app/Activity;ZI)V

    .line 165
    iget-boolean v0, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->isHeadLoadFinish:Z

    if-eqz v0, :cond_20

    .line 166
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->setDataOffline(Z)V

    goto :goto_20

    .line 169
    :cond_1e
    iput-boolean v0, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->isVisilble:Z

    :cond_20
    :goto_20
    return-void
.end method

.method public abstract tabCheck(I)V
.end method
