.class Lcom/codemao/nemo/dialog/pop/CommentInputPop$10;
.super Ljava/lang/Object;
.source "CommentInputPop.java"

# interfaces
.implements Lcom/codemao/nemo/adapter/ExpressionChooseDelegate$ExpressionChooseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/pop/CommentInputPop;->changeExp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)V
    .registers 2

    .line 672
    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$10;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public chooseExp(II)V
    .registers 5

    .line 675
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$10;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    iget-object v0, v0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rvExp:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 676
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$10;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-static {v0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->access$100(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_46

    .line 677
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$10;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-static {v0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->access$100(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$10;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-static {v1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->access$600(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/ExpressionChooseItem;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/ExpressionChooseItem;->getExpressionChooseItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/ExpressionItem;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 678
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$10;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-static {p1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->access$200(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 679
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$10;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-static {p1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->access$300(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 681
    :cond_46
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$10;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-static {p1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->access$400(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)V

    return-void
.end method
