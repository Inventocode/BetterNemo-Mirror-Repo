.class Lcom/codemao/nemo/adapter/ExpressionPageAdapter$1;
.super Ljava/lang/Object;
.source "ExpressionPageAdapter.java"

# interfaces
.implements Lcom/codemao/nemo/adapter/ExpressionChooseDelegate$ExpressionChooseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/ExpressionPageAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/ExpressionPageAdapter;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/ExpressionPageAdapter;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/codemao/nemo/adapter/ExpressionPageAdapter$1;->this$0:Lcom/codemao/nemo/adapter/ExpressionPageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public chooseExp(II)V
    .registers 4

    .line 61
    iget-object v0, p0, Lcom/codemao/nemo/adapter/ExpressionPageAdapter$1;->this$0:Lcom/codemao/nemo/adapter/ExpressionPageAdapter;

    invoke-static {v0}, Lcom/codemao/nemo/adapter/ExpressionPageAdapter;->access$000(Lcom/codemao/nemo/adapter/ExpressionPageAdapter;)Lcom/codemao/nemo/adapter/ExpressionChooseDelegate$ExpressionChooseCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/codemao/nemo/adapter/ExpressionChooseDelegate$ExpressionChooseCallback;->chooseExp(II)V

    return-void
.end method
