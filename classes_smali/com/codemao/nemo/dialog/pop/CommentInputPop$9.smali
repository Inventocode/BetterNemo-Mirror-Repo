.class Lcom/codemao/nemo/dialog/pop/CommentInputPop$9;
.super Ljava/lang/Object;
.source "CommentInputPop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/pop/CommentInputPop;->showExpView()V
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

    .line 547
    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$9;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 550
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$9;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    iget-object v0, v0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->etInput:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 551
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$9;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    iget-object v0, v0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rlInput:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 552
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$9;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    iget-object v0, v0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rlExp:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 553
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$9;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    iget-object v0, v0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rvExpInput:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 554
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$9;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-static {v0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->access$100(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_33

    .line 555
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$9;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    iget-object v0, v0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rvExp:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3a

    .line 557
    :cond_33
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$9;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    iget-object v0, v0, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->rvExp:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_3a
    return-void
.end method
