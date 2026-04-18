.class Lcom/codemao/nemo/fragment/WorkCommentFragment$3;
.super Ljava/lang/Object;
.source "WorkCommentFragment.java"

# interfaces
.implements Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/WorkCommentFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/WorkCommentFragment;)V
    .registers 2

    .line 350
    iput-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$3;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .registers 3

    .line 358
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$3;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$1502(Lcom/codemao/nemo/fragment/WorkCommentFragment;Z)Z

    .line 359
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$3;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$1400(Lcom/codemao/nemo/fragment/WorkCommentFragment;Z)V

    return-void
.end method
