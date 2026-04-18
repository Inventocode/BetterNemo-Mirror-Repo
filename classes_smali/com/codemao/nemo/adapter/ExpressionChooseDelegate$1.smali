.class Lcom/codemao/nemo/adapter/ExpressionChooseDelegate$1;
.super Ljava/lang/Object;
.source "ExpressionChooseDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/ExpressionChooseDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/ExpressionChooseDelegate;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/ExpressionChooseDelegate;I)V
    .registers 3

    .line 52
    iput-object p1, p0, Lcom/codemao/nemo/adapter/ExpressionChooseDelegate$1;->this$0:Lcom/codemao/nemo/adapter/ExpressionChooseDelegate;

    iput p2, p0, Lcom/codemao/nemo/adapter/ExpressionChooseDelegate$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 55
    iget-object p1, p0, Lcom/codemao/nemo/adapter/ExpressionChooseDelegate$1;->this$0:Lcom/codemao/nemo/adapter/ExpressionChooseDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/ExpressionChooseDelegate;->access$100(Lcom/codemao/nemo/adapter/ExpressionChooseDelegate;)Lcom/codemao/nemo/adapter/ExpressionChooseDelegate$ExpressionChooseCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/adapter/ExpressionChooseDelegate$1;->this$0:Lcom/codemao/nemo/adapter/ExpressionChooseDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/adapter/ExpressionChooseDelegate;->access$000(Lcom/codemao/nemo/adapter/ExpressionChooseDelegate;)I

    move-result v0

    iget v1, p0, Lcom/codemao/nemo/adapter/ExpressionChooseDelegate$1;->val$position:I

    invoke-interface {p1, v0, v1}, Lcom/codemao/nemo/adapter/ExpressionChooseDelegate$ExpressionChooseCallback;->chooseExp(II)V

    return-void
.end method
