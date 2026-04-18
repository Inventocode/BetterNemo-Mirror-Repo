.class public abstract Lcom/ljwx/basedialog/dialogfragment/BaseBindingDialogFragment;
.super Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;
.source "BaseBindingDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Binding:",
        "Landroidx/databinding/ViewDataBinding;",
        ">",
        "Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;"
    }
.end annotation


# instance fields
.field protected mBinding:Landroidx/databinding/ViewDataBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TBinding;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;-><init>()V

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

    .line 12
    iget-object v0, p0, Lcom/ljwx/basedialog/dialogfragment/BaseBindingDialogFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "mBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract layoutId()I
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/ljwx/basedialog/dialogfragment/BaseBindingDialogFragment;->layoutId()I

    move-result p3

    const/4 v0, 0x0

    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "inflate(inflater, layoutId(), container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/ljwx/basedialog/dialogfragment/BaseBindingDialogFragment;->setMBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 20
    invoke-virtual {p0}, Lcom/ljwx/basedialog/dialogfragment/BaseBindingDialogFragment;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 21
    invoke-virtual {p0}, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;->initWidth()V

    .line 22
    invoke-virtual {p0}, Lcom/ljwx/basedialog/dialogfragment/BaseBindingDialogFragment;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .registers 2

    .line 34
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 35
    invoke-virtual {p0}, Lcom/ljwx/basedialog/dialogfragment/BaseBindingDialogFragment;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->unbind()V

    return-void
.end method

.method protected final setGravity(I)V
    .registers 4

    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    goto :goto_13

    :cond_12
    move-object v0, v1

    :goto_13
    if-nez v0, :cond_16

    goto :goto_18

    .line 29
    :cond_16
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 30
    :goto_18
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_22

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    :cond_22
    if-nez v1, :cond_25

    goto :goto_28

    :cond_25
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_28
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

    .line 12
    iput-object p1, p0, Lcom/ljwx/basedialog/dialogfragment/BaseBindingDialogFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-void
.end method
