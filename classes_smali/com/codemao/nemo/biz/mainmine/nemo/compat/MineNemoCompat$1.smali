.class Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "MineNemoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;->goCreatePage(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/util/List;)V
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
.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;

.field final synthetic val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field final synthetic val$mDatas:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$7GqfoTGZXxeSADMywE8BiNuvYTw(Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;Ljava/util/List;Landroid/view/View;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1;->lambda$onSuc$0(Lcom/codemao/nemo/dialog/CustomDialogTypeOne;Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;Ljava/util/List;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/util/List;)V
    .registers 4

    .line 47
    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;

    iput-object p2, p0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput-object p3, p0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1;->val$mDatas:Ljava/util/List;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method

.method private synthetic lambda$onSuc$0(Lcom/codemao/nemo/dialog/CustomDialogTypeOne;Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;Ljava/util/List;Landroid/view/View;)V
    .registers 5

    .line 62
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 63
    invoke-virtual {p2}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getBcm_version()Ljava/lang/String;

    move-result-object p1

    iget-object p4, p0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;

    iget-object p4, p4, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;->context:Landroid/content/Context;

    invoke-static {p1, p4}, Lcom/codemao/nemo/util/BcmHelper;->showDownloadAppDialog(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_12

    return-void

    .line 66
    :cond_12
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;

    iget-object p1, p1, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;->context:Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lcom/codemao/nemo/biz/mainmine/nemo/compat/NemoUpdateBcmUtils;->updateBcm(Landroid/content/Context;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 83
    iget-object p2, p0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;

    invoke-static {p2}, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;->access$000(Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;)Z

    move-result p2

    if-eqz p2, :cond_9

    return-void

    :cond_9
    const-string p2, "40101002"

    .line 86
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 87
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    const/4 p2, 0x1

    iput p2, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    .line 88
    invoke-static {p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->updatePublishStatus(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Z

    .line 90
    :cond_19
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;

    iget-object p2, p0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-static {p1, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;->access$100(Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    return-void
.end method

.method public onNetError()V
    .registers 3

    .line 95
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;->access$000(Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 96
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;

    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-static {v0, v1}, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;->access$100(Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    :cond_f
    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;)V
    .registers 5

    .line 50
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;->access$000(Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 53
    :cond_9
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getBcm_url()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v1, v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcm_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 54
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-static {p1, v0}, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;->access$100(Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    goto :goto_57

    .line 56
    :cond_1f
    new-instance v0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;

    iget-object v1, v1, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;-><init>(Landroid/content/Context;)V

    const-string v1, "不了"

    .line 57
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    const-string/jumbo v1, "更新"

    .line 58
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->rightBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    const-string v1, ""

    .line 59
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->titleStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    const-string/jumbo v1, "该作品在云端有更新的版本，是否下载最新版本进行编辑？"

    .line 60
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->contentStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1;->val$mDatas:Ljava/util/List;

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    .line 69
    new-instance p1, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1$1;

    invoke-direct {p1, p0, v0}, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1$1;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;)V

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setLeftClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    .line 77
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_57
    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 47
    check-cast p1, Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/compat/MineNemoCompat$1;->onSuc(Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;)V

    return-void
.end method
