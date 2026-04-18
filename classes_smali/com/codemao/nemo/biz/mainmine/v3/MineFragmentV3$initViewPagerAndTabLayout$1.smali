.class public final Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3$initViewPagerAndTabLayout$1;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "MineFragmentV3.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;->initViewPagerAndTabLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment<",
            "+",
            "Landroidx/databinding/ViewDataBinding;",
            "+",
            "Landroidx/databinding/ViewDataBinding;",
            "+",
            "Lcom/ljwx/baseapp/vm/BaseViewModel<",
            "+",
            "Lcom/codemao/nemo/common/CustomDataRepository<",
            "*>;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;",
            "Ljava/util/List<",
            "+",
            "Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment<",
            "+",
            "Landroidx/databinding/ViewDataBinding;",
            "+",
            "Landroidx/databinding/ViewDataBinding;",
            "+",
            "Lcom/ljwx/baseapp/vm/BaseViewModel<",
            "+",
            "Lcom/codemao/nemo/common/CustomDataRepository<",
            "*>;>;>;>;)V"
        }
    .end annotation

    iput-object p2, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3$initViewPagerAndTabLayout$1;->$fragments:Ljava/util/List;

    .line 57
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3$initViewPagerAndTabLayout$1;->$fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public getItemCount()I
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3$initViewPagerAndTabLayout$1;->$fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
