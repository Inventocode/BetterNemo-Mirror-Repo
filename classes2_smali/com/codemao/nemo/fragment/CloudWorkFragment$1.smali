.class Lcom/codemao/nemo/fragment/CloudWorkFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "CloudWorkFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CloudWorkFragment;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/CloudWorkFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/CloudWorkFragment;)V
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment$1;->this$0:Lcom/codemao/nemo/fragment/CloudWorkFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 3

    .line 116
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 117
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment$1;->this$0:Lcom/codemao/nemo/fragment/CloudWorkFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CloudWorkFragment;->access$000(Lcom/codemao/nemo/fragment/CloudWorkFragment;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object p1

    if-eqz p1, :cond_23

    const/4 p1, 0x1

    if-ne p2, p1, :cond_23

    .line 118
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment$1;->this$0:Lcom/codemao/nemo/fragment/CloudWorkFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CloudWorkFragment;->access$100(Lcom/codemao/nemo/fragment/CloudWorkFragment;)Lcom/codemao/nemo/delegates/CloudItemDelegate;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment$1;->this$0:Lcom/codemao/nemo/fragment/CloudWorkFragment;

    invoke-static {p2}, Lcom/codemao/nemo/fragment/CloudWorkFragment;->access$000(Lcom/codemao/nemo/fragment/CloudWorkFragment;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/delegates/CloudItemDelegate;->removeCloseAnim(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    .line 119
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment$1;->this$0:Lcom/codemao/nemo/fragment/CloudWorkFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/codemao/nemo/fragment/CloudWorkFragment;->access$002(Lcom/codemao/nemo/fragment/CloudWorkFragment;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    :cond_23
    return-void
.end method
