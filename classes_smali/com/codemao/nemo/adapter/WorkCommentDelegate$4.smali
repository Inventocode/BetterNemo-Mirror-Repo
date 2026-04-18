.class Lcom/codemao/nemo/adapter/WorkCommentDelegate$4;
.super Ljava/lang/Object;
.source "WorkCommentDelegate.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/WorkCommentDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/WorkCommentDelegate;

.field final synthetic val$data:Lcom/codemao/nemo/bean/WorkCommentItem;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/WorkCommentDelegate;Lcom/codemao/nemo/bean/WorkCommentItem;)V
    .registers 3

    .line 146
    iput-object p1, p0, Lcom/codemao/nemo/adapter/WorkCommentDelegate$4;->this$0:Lcom/codemao/nemo/adapter/WorkCommentDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/adapter/WorkCommentDelegate$4;->val$data:Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 4

    .line 149
    iget-object p1, p0, Lcom/codemao/nemo/adapter/WorkCommentDelegate$4;->this$0:Lcom/codemao/nemo/adapter/WorkCommentDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/WorkCommentDelegate;->access$000(Lcom/codemao/nemo/adapter/WorkCommentDelegate;)Lcom/codemao/nemo/adapter/WorkCommentDelegate$WorkCommentCallBack;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/adapter/WorkCommentDelegate$4;->val$data:Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkCommentItem;->getId()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/codemao/nemo/adapter/WorkCommentDelegate$WorkCommentCallBack;->copyCommentId(J)V

    const/4 p1, 0x1

    return p1
.end method
