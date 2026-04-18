.class Lcom/codemao/nemo/fragment/CreateFragment$2$2;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "CreateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CreateFragment$2;->onEnter(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

.field final synthetic val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/CreateFragment$2;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 3

    .line 312
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

    iput-object p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$2;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 351
    iget-object p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

    iget-object p2, p2, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p2}, Lcom/codemao/nemo/fragment/CreateFragment;->access$200(Lcom/codemao/nemo/fragment/CreateFragment;)Z

    move-result p2

    if-eqz p2, :cond_b

    return-void

    :cond_b
    const-string p2, "40101002"

    .line 354
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 355
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$2;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    const/4 p2, 0x1

    iput p2, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    .line 356
    invoke-static {p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->updatePublishStatus(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Z

    .line 358
    :cond_1b
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget-object p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$2;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-static {p1, p2}, Lcom/codemao/nemo/fragment/CreateFragment;->access$100(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    return-void
.end method

.method public onNetError()V
    .registers 3

    .line 363
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$200(Lcom/codemao/nemo/fragment/CreateFragment;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 364
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$2;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-static {v0, v1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$100(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    :cond_13
    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;)V
    .registers 4

    .line 315
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$200(Lcom/codemao/nemo/fragment/CreateFragment;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 318
    :cond_b
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getBcm_url()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$2;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v1, v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcm_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 319
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$2;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-static {p1, v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$100(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    goto :goto_5b

    .line 321
    :cond_23
    new-instance v0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

    iget-object v1, v1, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;-><init>(Landroid/content/Context;)V

    const-string v1, "不了"

    .line 322
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    const-string v1, "更新"

    .line 323
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->rightBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    const-string v1, ""

    .line 324
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->titleStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    const-string v1, "该作品在云端有更新的版本，是否下载最新版本进行编辑？"

    .line 325
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->contentStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    .line 326
    new-instance v1, Lcom/codemao/nemo/fragment/CreateFragment$2$2$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/codemao/nemo/fragment/CreateFragment$2$2$1;-><init>(Lcom/codemao/nemo/fragment/CreateFragment$2$2;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    .line 337
    new-instance p1, Lcom/codemao/nemo/fragment/CreateFragment$2$2$2;

    invoke-direct {p1, p0, v0}, Lcom/codemao/nemo/fragment/CreateFragment$2$2$2;-><init>(Lcom/codemao/nemo/fragment/CreateFragment$2$2;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;)V

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setLeftClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    .line 345
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_5b
    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 312
    check-cast p1, Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/CreateFragment$2$2;->onSuc(Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;)V

    return-void
.end method
