.class Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate$1;
.super Ljava/lang/Object;
.source "UserDynamicUserOptionDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate;I)V
    .registers 3

    .line 84
    iput-object p1, p0, Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate$1;->this$0:Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate;

    iput p2, p0, Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 88
    iget-object v0, p0, Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate$1;->this$0:Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate;->access$000(Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate;)Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate$UserDynamicCallBack;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate$1;->val$position:I

    invoke-interface {v0, p1, v1}, Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate$UserDynamicCallBack;->showMore(Landroid/view/View;I)V

    return-void
.end method
