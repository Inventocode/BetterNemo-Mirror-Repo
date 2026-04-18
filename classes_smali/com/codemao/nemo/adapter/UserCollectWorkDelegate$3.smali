.class Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$3;
.super Ljava/lang/Object;
.source "UserCollectWorkDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;I)V
    .registers 3

    .line 118
    iput-object p1, p0, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$3;->this$0:Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;

    iput p2, p0, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 122
    iget-object p1, p0, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$3;->this$0:Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;->access$100(Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;)Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$UserCollectWorkCallBack;

    move-result-object p1

    iget v0, p0, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$3;->val$position:I

    invoke-interface {p1, v0}, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$UserCollectWorkCallBack;->delete(I)V

    return-void
.end method
