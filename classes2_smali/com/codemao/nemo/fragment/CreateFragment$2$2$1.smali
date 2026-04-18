.class Lcom/codemao/nemo/fragment/CreateFragment$2$2$1;
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

.field final synthetic val$response:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/CreateFragment$2$2;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;)V
    .registers 4

    .line 326
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$2$1;->this$2:Lcom/codemao/nemo/fragment/CreateFragment$2$2;

    iput-object p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$2$1;->val$customDialogTypeOne:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    iput-object p3, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$2$1;->val$response:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 329
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$2$1;->val$customDialogTypeOne:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 330
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$2$1;->val$response:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getBcm_version()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$2$1;->this$2:Lcom/codemao/nemo/fragment/CreateFragment$2$2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$2$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/BcmHelper;->showDownloadAppDialog(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1c

    return-void

    .line 333
    :cond_1c
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$2$1;->this$2:Lcom/codemao/nemo/fragment/CreateFragment$2$2;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/CreateFragment$2$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$2$1;->val$response:Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-static {p1, v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$300(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;)V

    return-void
.end method
