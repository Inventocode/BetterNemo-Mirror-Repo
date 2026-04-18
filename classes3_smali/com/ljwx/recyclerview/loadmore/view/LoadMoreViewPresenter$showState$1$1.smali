.class final Lcom/ljwx/recyclerview/loadmore/view/LoadMoreViewPresenter$showState$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LoadMoreViewPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ljwx/recyclerview/loadmore/view/LoadMoreViewPresenter;->showState(Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $holderView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreViewPresenter$showState$1$1;->$holderView:Landroid/view/View;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 31
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreViewPresenter$showState$1$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .registers 4

    const-string v0, "$this$singleClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreViewPresenter$showState$1$1;->$holderView:Landroid/view/View;

    check-cast p1, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_16

    :cond_15
    move-object p1, v1

    :goto_16
    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    goto :goto_1e

    :cond_1d
    move-object p1, v1

    :goto_1e
    instance-of v0, p1, Lcom/ljwx/recyclerview/loadmore/LoadMoreAdapter;

    if-eqz v0, :cond_25

    check-cast p1, Lcom/ljwx/recyclerview/loadmore/LoadMoreAdapter;

    goto :goto_26

    :cond_25
    move-object p1, v1

    :goto_26
    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Lcom/ljwx/recyclerview/loadmore/LoadMoreAdapter;->startLoadMore()V

    .line 33
    :cond_2b
    iget-object p1, p0, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreViewPresenter$showState$1$1;->$holderView:Landroid/view/View;

    check-cast p1, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3a

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_3b

    :cond_3a
    move-object p1, v1

    :goto_3b
    if-eqz p1, :cond_42

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    goto :goto_43

    :cond_42
    move-object p1, v1

    :goto_43
    instance-of v0, p1, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    if-eqz v0, :cond_4a

    move-object v1, p1

    check-cast v1, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    :cond_4a
    if-eqz v1, :cond_4f

    invoke-virtual {v1}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->startLoadMore()V

    :cond_4f
    return-void
.end method
