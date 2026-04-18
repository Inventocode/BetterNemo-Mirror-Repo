.class Lcom/codemao/nemo/adapter/WorkCommentDelegate$7;
.super Ljava/lang/Object;
.source "WorkCommentDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/WorkCommentDelegate;ILcom/codemao/nemo/bean/WorkCommentItem;)V
    .registers 4

    .line 167
    iput-object p1, p0, Lcom/codemao/nemo/adapter/WorkCommentDelegate$7;->this$0:Lcom/codemao/nemo/adapter/WorkCommentDelegate;

    iput p2, p0, Lcom/codemao/nemo/adapter/WorkCommentDelegate$7;->val$position:I

    iput-object p3, p0, Lcom/codemao/nemo/adapter/WorkCommentDelegate$7;->val$data:Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 171
    iget-object p1, p0, Lcom/codemao/nemo/adapter/WorkCommentDelegate$7;->this$0:Lcom/codemao/nemo/adapter/WorkCommentDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/WorkCommentDelegate;->access$000(Lcom/codemao/nemo/adapter/WorkCommentDelegate;)Lcom/codemao/nemo/adapter/WorkCommentDelegate$WorkCommentCallBack;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/adapter/WorkCommentDelegate$7;->val$position:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/nemo/adapter/WorkCommentDelegate$7;->val$data:Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/WorkCommentItem;->getId()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const-wide/16 v4, -0x1

    invoke-interface/range {v0 .. v5}, Lcom/codemao/nemo/adapter/WorkCommentDelegate$WorkCommentCallBack;->showCommentDetail(ILjava/lang/String;IJ)V

    return-void
.end method
