.class Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1$1;
.super Ljava/lang/Object;
.source "WorkCommentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->delete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;)V
    .registers 2

    .line 172
    iput-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1$1;->this$2:Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 176
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1$1;->this$2:Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$200(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 177
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1$1;->this$2:Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$300(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1$1;->this$2:Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;

    iget-object v1, v1, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object v1, v1, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$000(Lcom/codemao/nemo/fragment/WorkCommentFragment;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkCommentItem;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1$1;->this$2:Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;

    iget-object v2, v2, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object v2, v2, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v2}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$000(Lcom/codemao/nemo/fragment/WorkCommentFragment;)I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$400(Lcom/codemao/nemo/fragment/WorkCommentFragment;JI)V

    return-void
.end method
