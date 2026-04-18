.class final Lcom/lxj/easyadapter/MultiItemTypeAdapter$onAttachedToRecyclerView$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MultiItemTypeAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/easyadapter/MultiItemTypeAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/recyclerview/widget/GridLayoutManager;",
        "Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lxj/easyadapter/MultiItemTypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lxj/easyadapter/MultiItemTypeAdapter<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/lxj/easyadapter/MultiItemTypeAdapter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lxj/easyadapter/MultiItemTypeAdapter<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lxj/easyadapter/MultiItemTypeAdapter$onAttachedToRecyclerView$1;->this$0:Lcom/lxj/easyadapter/MultiItemTypeAdapter;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/recyclerview/widget/GridLayoutManager;Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;I)Ljava/lang/Integer;
    .registers 6

    const-string v0, "layoutManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oldLookup"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/lxj/easyadapter/MultiItemTypeAdapter$onAttachedToRecyclerView$1;->this$0:Lcom/lxj/easyadapter/MultiItemTypeAdapter;

    invoke-virtual {v0, p3}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->getItemViewType(I)I

    move-result v0

    .line 110
    iget-object v1, p0, Lcom/lxj/easyadapter/MultiItemTypeAdapter$onAttachedToRecyclerView$1;->this$0:Lcom/lxj/easyadapter/MultiItemTypeAdapter;

    invoke-static {v1}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->access$getMHeaderViews$p(Lcom/lxj/easyadapter/MultiItemTypeAdapter;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    goto :goto_36

    .line 111
    :cond_21
    iget-object v1, p0, Lcom/lxj/easyadapter/MultiItemTypeAdapter$onAttachedToRecyclerView$1;->this$0:Lcom/lxj/easyadapter/MultiItemTypeAdapter;

    invoke-static {v1}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->access$getMFootViews$p(Lcom/lxj/easyadapter/MultiItemTypeAdapter;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    goto :goto_36

    .line 112
    :cond_32
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result p1

    :goto_36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 105
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    check-cast p2, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/lxj/easyadapter/MultiItemTypeAdapter$onAttachedToRecyclerView$1;->invoke(Landroidx/recyclerview/widget/GridLayoutManager;Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
