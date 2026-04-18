.class public final Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$initViewPagerAndTabLayout$1;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "MineSearchMainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;->initViewPagerAndTabLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $fragments:[Lcom/ljwx/basefragment/BaseMVVMPadFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/ljwx/basefragment/BaseMVVMPadFragment<",
            "+",
            "Landroidx/databinding/ViewDataBinding;",
            "+",
            "Landroidx/databinding/ViewDataBinding;",
            "+",
            "Lcom/ljwx/baseapp/vm/BaseViewModel<",
            "+",
            "Lcom/codemao/nemo/common/CustomDataRepository<",
            "*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;[Lcom/ljwx/basefragment/BaseMVVMPadFragment;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;",
            "[",
            "Lcom/ljwx/basefragment/BaseMVVMPadFragment<",
            "+",
            "Landroidx/databinding/ViewDataBinding;",
            "+",
            "Landroidx/databinding/ViewDataBinding;",
            "+",
            "Lcom/ljwx/baseapp/vm/BaseViewModel<",
            "+",
            "Lcom/codemao/nemo/common/CustomDataRepository<",
            "*>;>;>;)V"
        }
    .end annotation

    iput-object p2, p0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$initViewPagerAndTabLayout$1;->$fragments:[Lcom/ljwx/basefragment/BaseMVVMPadFragment;

    .line 108
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$initViewPagerAndTabLayout$1;->$fragments:[Lcom/ljwx/basefragment/BaseMVVMPadFragment;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getItemCount()I
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity$initViewPagerAndTabLayout$1;->$fragments:[Lcom/ljwx/basefragment/BaseMVVMPadFragment;

    array-length v0, v0

    return v0
.end method
