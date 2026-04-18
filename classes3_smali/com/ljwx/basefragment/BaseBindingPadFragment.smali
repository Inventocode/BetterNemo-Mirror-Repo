.class public abstract Lcom/ljwx/basefragment/BaseBindingPadFragment;
.super Lcom/ljwx/basefragment/BaseStateRefreshFragment;
.source "BaseBindingPadFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Binding:",
        "Landroidx/databinding/ViewDataBinding;",
        "BindingPad:",
        "Landroidx/databinding/ViewDataBinding;",
        ">",
        "Lcom/ljwx/basefragment/BaseStateRefreshFragment;"
    }
.end annotation


# instance fields
.field private isPad:Z

.field private final layoutRes:I

.field private final layoutResPad:I

.field protected mBinding:Landroidx/databinding/ViewDataBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TBinding;"
        }
    .end annotation
.end field

.field protected mBindingPad:Landroidx/databinding/ViewDataBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TBindingPad;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 15
    invoke-direct {p0, v0, v1, v2}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 13
    iput p1, p0, Lcom/ljwx/basefragment/BaseBindingPadFragment;->layoutRes:I

    .line 14
    iput p2, p0, Lcom/ljwx/basefragment/BaseBindingPadFragment;->layoutResPad:I

    .line 23
    sget-object p1, Lcom/ljwx/baseapp/util/OtherUtils;->INSTANCE:Lcom/ljwx/baseapp/util/OtherUtils;

    invoke-virtual {p1}, Lcom/ljwx/baseapp/util/OtherUtils;->isDevicePad()Z

    move-result p1

    iput-boolean p1, p0, Lcom/ljwx/basefragment/BaseBindingPadFragment;->isPad:Z

    return-void
.end method


# virtual methods
.method public getLayoutRes()I
    .registers 2

    .line 39
    iget-boolean v0, p0, Lcom/ljwx/basefragment/BaseBindingPadFragment;->isPad:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/ljwx/basefragment/BaseBindingPadFragment;->layoutResPad:I

    goto :goto_9

    :cond_7
    iget v0, p0, Lcom/ljwx/basefragment/BaseBindingPadFragment;->layoutRes:I

    :goto_9
    return v0
.end method

.method protected final getMBinding()Landroidx/databinding/ViewDataBinding;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBinding;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/ljwx/basefragment/BaseBindingPadFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "mBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getMBindingPad()Landroidx/databinding/ViewDataBinding;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBindingPad;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/ljwx/basefragment/BaseBindingPadFragment;->mBindingPad:Landroidx/databinding/ViewDataBinding;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "mBindingPad"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final isPad()Z
    .registers 2

    .line 23
    iget-boolean v0, p0, Lcom/ljwx/basefragment/BaseBindingPadFragment;->isPad:Z

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-boolean p3, p0, Lcom/ljwx/basefragment/BaseBindingPadFragment;->isPad:Z

    const-string v0, "inflate(inflater, getLay…tRes(), container, false)"

    const/4 v1, 0x0

    if-eqz p3, :cond_1b

    .line 31
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getLayoutRes()I

    move-result p3

    invoke-static {p1, p3, p2, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->setMBindingPad(Landroidx/databinding/ViewDataBinding;)V

    goto :goto_29

    .line 33
    :cond_1b
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getLayoutRes()I

    move-result p3

    invoke-static {p1, p3, p2, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->setMBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 35
    :goto_29
    iget-boolean p1, p0, Lcom/ljwx/basefragment/BaseBindingPadFragment;->isPad:Z

    if-eqz p1, :cond_32

    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBindingPad()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    goto :goto_36

    :cond_32
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    :goto_36
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .registers 2

    .line 43
    invoke-super {p0}, Lcom/ljwx/basefragment/BaseStateRefreshFragment;->onDestroy()V

    .line 44
    iget-boolean v0, p0, Lcom/ljwx/basefragment/BaseBindingPadFragment;->isPad:Z

    if-eqz v0, :cond_f

    .line 45
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBindingPad()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->unbind()V

    goto :goto_16

    .line 47
    :cond_f
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseBindingPadFragment;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->unbind()V

    :goto_16
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

    .line 20
    iput-object p1, p0, Lcom/ljwx/basefragment/BaseBindingPadFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-void
.end method

.method protected final setMBindingPad(Landroidx/databinding/ViewDataBinding;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBindingPad;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/ljwx/basefragment/BaseBindingPadFragment;->mBindingPad:Landroidx/databinding/ViewDataBinding;

    return-void
.end method
