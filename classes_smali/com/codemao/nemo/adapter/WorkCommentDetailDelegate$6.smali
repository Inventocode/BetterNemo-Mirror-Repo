.class Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$6;
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

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;I)V
    .registers 3

    .line 145
    iput-object p1, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$6;->this$0:Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;

    iput p2, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$6;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 149
    iget-object p1, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$6;->this$0:Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;->access$000(Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;)Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$WorkCommentDetailCallBack;

    move-result-object p1

    iget v0, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$6;->val$position:I

    invoke-interface {p1, v0}, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$WorkCommentDetailCallBack;->praise(I)V

    return-void
.end method
