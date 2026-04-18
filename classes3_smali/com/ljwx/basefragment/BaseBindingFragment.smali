.class public abstract Lcom/ljwx/basefragment/BaseBindingFragment;
.super Lcom/ljwx/basefragment/BaseStateRefreshFragment;
.source "BaseBindingFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Binding:",
        "Landroidx/databinding/ViewDataBinding;",
        ">",
        "Lcom/ljwx/basefragment/BaseStateRefreshFragment;"
    }
.end annotation


# instance fields
.field private final layoutRes:I

.field protected mBinding:Landroidx/databinding/ViewDataBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TBinding;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 13
    invoke-direct {p0, p1}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;-><init>(I)V

    .line 12
    iput p1, p0, Lcom/ljwx/basefragment/BaseBindingFragment;->layoutRes:I

    return-void
.end method


# virtual methods
.method protected final getMBinding()Landroidx/databinding/ViewDataBinding;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBinding;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/ljwx/basefragment/BaseBindingFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "mBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget p3, p0, Lcom/ljwx/basefragment/BaseBindingFragment;->layoutRes:I

    const/4 v0, 0x0

    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "inflate(inflater, layoutRes, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/ljwx/basefragment/BaseBindingFragment;->setMBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 26
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingFragment;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .registers 2

    .line 30
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingFragment;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->unbind()V

    .line 31
    invoke-super {p0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->onDestroy()V

    return-void
.end method

.method protected final setMBinding(Landroidx/databinding/ViewDataBinding;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBinding;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/ljwx/basefragment/BaseBindingFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-void
.end method
