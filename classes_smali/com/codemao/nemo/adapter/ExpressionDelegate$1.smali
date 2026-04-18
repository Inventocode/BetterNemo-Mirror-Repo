.class Lcom/codemao/nemo/adapter/ExpressionDelegate$1;
.super Ljava/lang/Object;
.source "ExpressionDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/ExpressionDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/ExpressionDelegate;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/ExpressionDelegate;I)V
    .registers 3

    .line 49
    iput-object p1, p0, Lcom/codemao/nemo/adapter/ExpressionDelegate$1;->this$0:Lcom/codemao/nemo/adapter/ExpressionDelegate;

    iput p2, p0, Lcom/codemao/nemo/adapter/ExpressionDelegate$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 52
    iget-object p1, p0, Lcom/codemao/nemo/adapter/ExpressionDelegate$1;->this$0:Lcom/codemao/nemo/adapter/ExpressionDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/ExpressionDelegate;->access$000(Lcom/codemao/nemo/adapter/ExpressionDelegate;)Lcom/codemao/nemo/adapter/ExpressionDelegate$ExpressionCallback;

    move-result-object p1

    iget v0, p0, Lcom/codemao/nemo/adapter/ExpressionDelegate$1;->val$position:I

    invoke-interface {p1, v0}, Lcom/codemao/nemo/adapter/ExpressionDelegate$ExpressionCallback;->deleteExp(I)V

    return-void
.end method
