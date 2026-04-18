.class Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate$2;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "RecommendNewActiveDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;

.field final synthetic val$data:Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;)V
    .registers 3

    .line 135
    iput-object p1, p0, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate$2;->this$0:Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate$2;->val$data:Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 6

    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 139
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-nez p2, :cond_a

    return-void

    .line 143
    :cond_a
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    if-ltz p2, :cond_3b

    .line 144
    iget-object p3, p0, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate$2;->val$data:Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;

    invoke-virtual {p3}, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->getItems()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_3b

    iget-object p3, p0, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate$2;->val$data:Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;

    invoke-virtual {p3}, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->getItems()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lt p2, p3, :cond_25

    goto :goto_3b

    .line 147
    :cond_25
    iget-object p2, p0, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate$2;->this$0:Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;

    invoke-static {p2}, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;->access$000(Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;)I

    move-result p2

    iget-object p3, p0, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate$2;->this$0:Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;

    invoke-static {p3}, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;->access$100(Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;)I

    move-result p3

    iget-object p4, p0, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate$2;->this$0:Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;

    invoke-static {p4}, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;->access$000(Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;)I

    move-result p4

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_3b
    :goto_3b
    return-void
.end method
