.class Lcom/codemao/nemo/adapter/WorkReplyDelegate$4;
.super Ljava/lang/Object;
.source "WorkReplyDelegate.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/WorkReplyDelegate;Lcom/codemao/nemo/bean/WorkReplyItem;)V
    .registers 3

    .line 101
    iput-object p1, p0, Lcom/codemao/nemo/adapter/WorkReplyDelegate$4;->this$0:Lcom/codemao/nemo/adapter/WorkReplyDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/adapter/WorkReplyDelegate$4;->val$data:Lcom/codemao/nemo/bean/WorkReplyItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 4

    .line 104
    iget-object p1, p0, Lcom/codemao/nemo/adapter/WorkReplyDelegate$4;->this$0:Lcom/codemao/nemo/adapter/WorkReplyDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/WorkReplyDelegate;->access$000(Lcom/codemao/nemo/adapter/WorkReplyDelegate;)Lcom/codemao/nemo/adapter/WorkReplyDelegate$WorkReplyCallBack;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/adapter/WorkReplyDelegate$4;->val$data:Lcom/codemao/nemo/bean/WorkReplyItem;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkReplyItem;->getId()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/codemao/nemo/adapter/WorkReplyDelegate$WorkReplyCallBack;->copyReply(J)V

    const/4 p1, 0x1

    return p1
.end method
