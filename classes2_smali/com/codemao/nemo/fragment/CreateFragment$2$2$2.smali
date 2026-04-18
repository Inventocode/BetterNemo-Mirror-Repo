.class Lcom/codemao/nemo/fragment/CreateFragment$2$2$2;
.super Ljava/lang/Object;
.source "CreateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CreateFragment$2$2;->onSuc(Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/codemao/nemo/fragment/CreateFragment$2$2;

.field final synthetic val$customDialogTypeOne:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/CreateFragment$2$2;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;)V
    .registers 3

    .line 337
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$2$2;->this$2:Lcom/codemao/nemo/fragment/CreateFragment$2$2;

    iput-object p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$2$2;->val$customDialogTypeOne:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 341
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$2$2;->val$customDialogTypeOne:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 342
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$2$2;->this$2:Lcom/codemao/nemo/fragment/CreateFragment$2$2;

    iget-object v0, p1, Lcom/codemao/nemo/fragment/CreateFragment$2$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/CreateFragment$2$2;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-static {v0, p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$100(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    return-void
.end method
