.class Lcom/codemao/nemo/fragment/UserDynamicFragment$1;
.super Ljava/lang/Object;
.source "UserDynamicFragment.java"

# interfaces
.implements Lcom/codemao/nemo/listener/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/UserDynamicFragment;->showMoreDialog(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/UserDynamicFragment;I)V
    .registers 3

    .line 106
    iput-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$1;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    iput p2, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 3

    .line 109
    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$1;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/UserDynamicFragment;->access$000(Lcom/codemao/nemo/fragment/UserDynamicFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/TypeItemData;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/TypeItemData;->getId()I

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_23

    .line 111
    :cond_13
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$1;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/UserDynamicFragment;->access$100(Lcom/codemao/nemo/fragment/UserDynamicFragment;)Lcom/codemao/nemo/view/SortDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 112
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$1;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    iget v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$1;->val$position:I

    invoke-static {p1, v0}, Lcom/codemao/nemo/fragment/UserDynamicFragment;->access$200(Lcom/codemao/nemo/fragment/UserDynamicFragment;I)V

    :goto_23
    return-void
.end method
