.class Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "RecommendNewWorkDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;

.field final synthetic val$data:Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;)V
    .registers 3

    .line 94
    iput-object p1, p0, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate$1;->this$0:Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate$1;->val$data:Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 98
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-nez p2, :cond_a

    return-void

    .line 102
    :cond_a
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    if-ltz p2, :cond_35

    .line 103
    iget-object p3, p0, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate$1;->val$data:Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;

    invoke-virtual {p3}, Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;->getItems()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_35

    iget-object p3, p0, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate$1;->val$data:Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;

    invoke-virtual {p3}, Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;->getItems()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lt p2, p3, :cond_25

    goto :goto_35

    .line 106
    :cond_25
    iget-object p2, p0, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate$1;->this$0:Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;

    invoke-static {p2}, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;->access$000(Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;)I

    move-result p2

    iget-object p3, p0, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate$1;->this$0:Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;

    invoke-static {p3}, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;->access$000(Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;)I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p3, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    :cond_35
    :goto_35
    return-void
.end method
