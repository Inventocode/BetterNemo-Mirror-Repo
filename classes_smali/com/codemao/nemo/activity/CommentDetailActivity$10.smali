.class Lcom/codemao/nemo/activity/CommentDetailActivity$10;
.super Ljava/lang/Object;
.source "CommentDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/CommentDetailActivity;->showInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/CommentDetailActivity;)V
    .registers 2

    .line 581
    iput-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$10;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 585
    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$10;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$2100(Lcom/codemao/nemo/activity/CommentDetailActivity;)Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$2002(Lcom/codemao/nemo/activity/CommentDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 586
    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$10;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-virtual {p1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->send()V

    return-void
.end method
