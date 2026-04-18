.class Lcom/codemao/nemo/dialog/pop/CommentInputPop$3;
.super Ljava/lang/Object;
.source "CommentInputPop.java"

# interfaces
.implements Lcom/codemao/nemo/adapter/ExpressionDelegate$ExpressionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/pop/CommentInputPop;->initView()V
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

    .line 359
    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$3;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteExp(I)V
    .registers 3

    .line 362
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$3;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-static {v0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->access$100(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 363
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$3;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-static {p1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->access$100(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_25

    .line 364
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$3;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    iget-object p1, p1, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rvExp:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 365
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$3;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    iget-object p1, p1, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rvExpInput:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 368
    :cond_25
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$3;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-static {p1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->access$200(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 369
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$3;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-static {p1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->access$300(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 370
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$3;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-static {p1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->access$400(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)V

    return-void
.end method
