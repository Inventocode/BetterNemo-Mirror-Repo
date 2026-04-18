.class Lcom/codemao/nemo/adapter/WorkReplyDelegate$3;
.super Ljava/lang/Object;
.source "WorkReplyDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/WorkReplyDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/WorkReplyDelegate;

.field final synthetic val$data:Lcom/codemao/nemo/bean/WorkReplyItem;

.field final synthetic val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/WorkReplyDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/WorkReplyItem;)V
    .registers 4

    .line 91
    iput-object p1, p0, Lcom/codemao/nemo/adapter/WorkReplyDelegate$3;->this$0:Lcom/codemao/nemo/adapter/WorkReplyDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/adapter/WorkReplyDelegate$3;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    iput-object p3, p0, Lcom/codemao/nemo/adapter/WorkReplyDelegate$3;->val$data:Lcom/codemao/nemo/bean/WorkReplyItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 95
    iget-object p1, p0, Lcom/codemao/nemo/adapter/WorkReplyDelegate$3;->this$0:Lcom/codemao/nemo/adapter/WorkReplyDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/WorkReplyDelegate;->access$000(Lcom/codemao/nemo/adapter/WorkReplyDelegate;)Lcom/codemao/nemo/adapter/WorkReplyDelegate$WorkReplyCallBack;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/adapter/WorkReplyDelegate$3;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    const v1, 0x7f0a043c

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/adapter/WorkReplyDelegate$3;->val$data:Lcom/codemao/nemo/bean/WorkReplyItem;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkReplyItem;->getReply_user()Lcom/codemao/nemo/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/UserInfo;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/codemao/nemo/adapter/WorkReplyDelegate$3;->val$data:Lcom/codemao/nemo/bean/WorkReplyItem;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/WorkReplyItem;->getReply_user()Lcom/codemao/nemo/bean/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/UserInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/codemao/nemo/adapter/WorkReplyDelegate$WorkReplyCallBack;->toUserDetail(Landroid/widget/ImageView;JLjava/lang/String;)V

    return-void
.end method
