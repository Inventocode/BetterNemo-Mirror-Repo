.class public final Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$commonStep2InitView$2;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "MainNewWorkActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;->commonStep2InitView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $fragments:[Lcom/ljwx/basefragment/BaseBindingFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/ljwx/basefragment/BaseBindingFragment<",
            "+",
            "Landroidx/databinding/ViewDataBinding;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;[Lcom/ljwx/basefragment/BaseBindingFragment;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity;",
            "[",
            "Lcom/ljwx/basefragment/BaseBindingFragment<",
            "+",
            "Landroidx/databinding/ViewDataBinding;",
            ">;)V"
        }
    .end annotation

    iput-object p2, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$commonStep2InitView$2;->$fragments:[Lcom/ljwx/basefragment/BaseBindingFragment;

    .line 71
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$commonStep2InitView$2;->$fragments:[Lcom/ljwx/basefragment/BaseBindingFragment;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getItemCount()I
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/codemao/nemo/biz/newwork/MainNewWorkActivity$commonStep2InitView$2;->$fragments:[Lcom/ljwx/basefragment/BaseBindingFragment;

    array-length v0, v0

    return v0
.end method
