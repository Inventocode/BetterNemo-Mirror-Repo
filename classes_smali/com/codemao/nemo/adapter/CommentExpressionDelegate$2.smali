.class Lcom/codemao/nemo/adapter/CommentExpressionDelegate$2;
.super Ljava/lang/Object;
.source "CommentExpressionDelegate.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/CommentExpressionDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/CommentExpressionDelegate;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/CommentExpressionDelegate;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/codemao/nemo/adapter/CommentExpressionDelegate$2;->this$0:Lcom/codemao/nemo/adapter/CommentExpressionDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 2

    .line 59
    iget-object p1, p0, Lcom/codemao/nemo/adapter/CommentExpressionDelegate$2;->this$0:Lcom/codemao/nemo/adapter/CommentExpressionDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/CommentExpressionDelegate;->access$000(Lcom/codemao/nemo/adapter/CommentExpressionDelegate;)Lcom/codemao/nemo/adapter/CommentExpressionDelegate$CommentExpressionCallBack;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/nemo/adapter/CommentExpressionDelegate$CommentExpressionCallBack;->copyReplyId()V

    const/4 p1, 0x1

    return p1
.end method
