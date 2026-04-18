.class public abstract Lcom/ljwx/baseactivity/BaseBindingPadActivity;
.super Lcom/ljwx/baseactivity/BaseStateRefreshActivity;
.source "BaseBindingPadActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Binding:",
        "Landroidx/databinding/ViewDataBinding;",
        "BindingPad:",
        "Landroidx/databinding/ViewDataBinding;",
        ">",
        "Lcom/ljwx/baseactivity/BaseStateRefreshActivity;"
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

    .line 16
    invoke-direct {p0, v0, v1, v2}, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    iput p1, p0, Lcom/ljwx/baseactivity/BaseBindingPadActivity;->layoutRes:I

    .line 15
    iput p2, p0, Lcom/ljwx/baseactivity/BaseBindingPadActivity;->layoutResPad:I

    .line 24
    sget-object p1, Lcom/ljwx/baseapp/util/OtherUtils;->INSTANCE:Lcom/ljwx/baseapp/util/OtherUtils;

    invoke-virtual {p1}, Lcom/ljwx/baseapp/util/OtherUtils;->isDevicePad()Z

    move-result p1

    iput-boolean p1, p0, Lcom/ljwx/baseactivity/BaseBindingPadActivity;->isPad:Z

    return-void
.end method


# virtual methods
.method public getLayoutRes()I
    .registers 2

    .line 37
    iget-boolean v0, p0, Lcom/ljwx/baseactivity/BaseBindingPadActivity;->isPad:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/ljwx/baseactivity/BaseBindingPadActivity;->layoutResPad:I

    goto :goto_9

    :cond_7
    iget v0, p0, Lcom/ljwx/baseactivity/BaseBindingPadActivity;->layoutRes:I

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

    .line 21
    iget-object v0, p0, Lcom/ljwx/baseactivity/BaseBindingPadActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

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

    .line 22
    iget-object v0, p0, Lcom/ljwx/baseactivity/BaseBindingPadActivity;->mBindingPad:Landroidx/databinding/ViewDataBinding;

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

    .line 24
    iget-boolean v0, p0, Lcom/ljwx/baseactivity/BaseBindingPadActivity;->isPad:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 27
    invoke-super {p0, p1}, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    iget-boolean p1, p0, Lcom/ljwx/baseactivity/BaseBindingPadActivity;->isPad:Z

    const-string v0, "setContentView(this, getLayoutRes())"

    if-eqz p1, :cond_18

    .line 29
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseBindingPadActivity;->getLayoutRes()I

    move-result p1

    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/ljwx/baseactivity/BaseBindingPadActivity;->setMBindingPad(Landroidx/databinding/ViewDataBinding;)V

    goto :goto_26

    .line 31
    :cond_18
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseBindingPadActivity;->getLayoutRes()I

    move-result p1

    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/ljwx/baseactivity/BaseBindingPadActivity;->setMBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 33
    :goto_26
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->onViewCreated()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 41
    invoke-super {p0}, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->onDestroy()V

    .line 42
    iget-boolean v0, p0, Lcom/ljwx/baseactivity/BaseBindingPadActivity;->isPad:Z

    if-eqz v0, :cond_f

    .line 43
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseBindingPadActivity;->getMBindingPad()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->unbind()V

    goto :goto_16

    .line 45
    :cond_f
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseBindingPadActivity;->getMBinding()Landroidx/databinding/ViewDataBinding;

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

    .line 21
    iput-object p1, p0, Lcom/ljwx/baseactivity/BaseBindingPadActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

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

    .line 22
    iput-object p1, p0, Lcom/ljwx/baseactivity/BaseBindingPadActivity;->mBindingPad:Landroidx/databinding/ViewDataBinding;

    return-void
.end method
