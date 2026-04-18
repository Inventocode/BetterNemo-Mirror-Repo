.class public Lcom/ljwx/baseactivity/BaseBindingActivity;
.super Lcom/ljwx/baseactivity/BaseStateRefreshActivity;
.source "BaseBindingActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Binding:",
        "Landroidx/databinding/ViewDataBinding;",
        ">",
        "Lcom/ljwx/baseactivity/BaseStateRefreshActivity;"
    }
.end annotation


# instance fields
.field private final layoutResID:I

.field protected mBinding:Landroidx/databinding/ViewDataBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TBinding;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 10
    invoke-direct {p0, v0, v1, v2}, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    iput p1, p0, Lcom/ljwx/baseactivity/BaseBindingActivity;->layoutResID:I

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
    iget-object v0, p0, Lcom/ljwx/baseactivity/BaseBindingActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "mBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 15
    invoke-super {p0, p1}, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    iget p1, p0, Lcom/ljwx/baseactivity/BaseBindingActivity;->layoutResID:I

    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string v0, "setContentView(this, layoutResID)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/ljwx/baseactivity/BaseBindingActivity;->setMBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 17
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->onViewCreated()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 21
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseBindingActivity;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->unbind()V

    .line 22
    invoke-super {p0}, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->onDestroy()V

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
    iput-object p1, p0, Lcom/ljwx/baseactivity/BaseBindingActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-void
.end method
