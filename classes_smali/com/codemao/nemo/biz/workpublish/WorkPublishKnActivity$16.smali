.class Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$16;
.super Ljava/lang/Object;
.source "WorkPublishKnActivity.java"

# interfaces
.implements Lcom/codemao/nemo/dialog/CoverEditBottomDialog$ChooseEditListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->ShowCoverEdit(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V
    .registers 2

    .line 579
    iput-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$16;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public choosePhoto()V
    .registers 8

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 591
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$16;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {v3}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$300(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const-string/jumbo v2, "发布作品页-点击上传图片"

    invoke-static {v2, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 592
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$16;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {v5}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$300(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 593
    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$16;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {v1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$1900(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/codemao/nemo/util/PermissionUtils;->checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 594
    invoke-static {}, Lcom/codemao/nemo/ui/MultiImageSelector;->create()Lcom/codemao/nemo/ui/MultiImageSelector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/ui/MultiImageSelector;->showCamera(Z)Lcom/codemao/nemo/ui/MultiImageSelector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/ui/MultiImageSelector;->single()Lcom/codemao/nemo/ui/MultiImageSelector;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/codemao/nemo/ui/MultiImageSelector;->setTitle(Ljava/lang/String;)Lcom/codemao/nemo/ui/MultiImageSelector;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/ui/MultiImageSelector;->setType(I)Lcom/codemao/nemo/ui/MultiImageSelector;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$16;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    const/16 v2, 0x4e21

    .line 595
    invoke-virtual {v0, v1, v2}, Lcom/codemao/nemo/ui/MultiImageSelector;->start(Landroid/app/Activity;I)V

    .line 596
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$16;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {v0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$2000(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)Lcom/codemao/nemo/dialog/CoverEditBottomDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_88

    .line 598
    :cond_79
    sget-object v0, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->INSTANCE:Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;

    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$16;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    const/16 v2, 0x67

    invoke-static {v1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$1900(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "TYPE_OPEN_XIANGCE"

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->checkPermissionInOrigin(Landroid/app/Activity;ILjava/lang/String;[Ljava/lang/String;)V

    :goto_88
    return-void
.end method

.method public toEditDefault()V
    .registers 1

    return-void
.end method
