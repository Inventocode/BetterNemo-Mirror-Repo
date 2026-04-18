.class Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$9;
.super Ljava/lang/Object;
.source "WorkCommentDetailDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;

.field final synthetic val$data:Lcom/codemao/nemo/bean/WorkReplyItem;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;Lcom/codemao/nemo/bean/WorkReplyItem;)V
    .registers 3

    .line 204
    iput-object p1, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$9;->this$0:Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$9;->val$data:Lcom/codemao/nemo/bean/WorkReplyItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 208
    iget-object v0, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$9;->this$0:Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;->access$000(Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;)Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$WorkCommentDetailCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$9;->val$data:Lcom/codemao/nemo/bean/WorkReplyItem;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkReplyItem;->getReply_user()Lcom/codemao/nemo/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/UserInfo;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$9;->val$data:Lcom/codemao/nemo/bean/WorkReplyItem;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/WorkReplyItem;->getReply_user()Lcom/codemao/nemo/bean/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/UserInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$WorkCommentDetailCallBack;->toUserDetail(Landroid/view/View;JLjava/lang/String;)V

    return-void
.end method
