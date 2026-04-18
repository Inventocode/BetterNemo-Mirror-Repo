.class final Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter$mLoadMoreItemType$1;
.super Lkotlin/jvm/internal/Lambda;
.source "QuickLoadMoreAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;-><init>(Ljava/lang/Class;ILandroidx/recyclerview/widget/AsyncDifferConfig;Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/ljwx/recyclerview/holder/ViewHolder<",
        "Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;",
        ">;",
        "Lcom/ljwx/recyclerview/loadmore/view/LoadMoreItem;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter<",
            "TItem;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter<",
            "TItem;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter$mLoadMoreItemType$1;->this$0:Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 34
    check-cast p1, Lcom/ljwx/recyclerview/holder/ViewHolder;

    check-cast p2, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreItem;

    invoke-virtual {p0, p1, p2}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter$mLoadMoreItemType$1;->invoke(Lcom/ljwx/recyclerview/holder/ViewHolder;Lcom/ljwx/recyclerview/loadmore/view/LoadMoreItem;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/ljwx/recyclerview/holder/ViewHolder;Lcom/ljwx/recyclerview/loadmore/view/LoadMoreItem;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ljwx/recyclerview/holder/ViewHolder<",
            "Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;",
            ">;",
            "Lcom/ljwx/recyclerview/loadmore/view/LoadMoreItem;",
            ")V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter$mLoadMoreItemType$1;->this$0:Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    invoke-static {v0}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->access$getMLoadMorePresenter$p(Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;)Lcom/ljwx/recyclerview/loadmore/view/LoadMoreViewPresenter;

    move-result-object v0

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreItem;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreViewPresenter;->showState(Landroid/view/View;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter$mLoadMoreItemType$1;->this$0:Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    invoke-static {v0}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->access$getMLoadMoreBind$p(Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;)Lkotlin/jvm/functions/Function2;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreItem;->getState()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_32
    return-void
.end method
