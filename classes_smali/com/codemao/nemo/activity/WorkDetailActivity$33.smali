.class Lcom/codemao/nemo/activity/WorkDetailActivity$33;
.super Ljava/lang/Object;
.source "WorkDetailActivity.java"

# interfaces
.implements Lcom/codemao/nemo/util/UserLevelupHelper$CheckUserVerifiedAndAnswerFriendlyProtocolCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkDetailActivity;->toEditInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;


# direct methods
.method public static synthetic $r8$lambda$3SptYX_8w254AY6BeiVSYocvQsI(Lcom/codemao/nemo/activity/WorkDetailActivity$33;)V
    .registers 1

    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$33;->lambda$onError$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$8s4hgjI-nDncWwhFpPswMR-6724(Lcom/codemao/nemo/activity/WorkDetailActivity$33;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkDetailActivity$33;->lambda$onSuccess$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QD8MJNFbX7NTGzGxhBpvYPhIUa0(Lcom/codemao/nemo/activity/WorkDetailActivity$33;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkDetailActivity$33;->lambda$onSuccess$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kuMPKIC8KGombd_OeWog0VCWmO4(Lcom/codemao/nemo/activity/WorkDetailActivity$33;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkDetailActivity$33;->lambda$onSuccess$1(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V
    .registers 2

    .line 1384
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$33;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onError$3()V
    .registers 2

    .line 1428
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$33;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onSuccess$0(Landroid/view/View;)V
    .registers 5

    .line 1410
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$33;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->goAnswer(Landroid/content/Context;ILcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Z)V

    return-void
.end method

.method private synthetic lambda$onSuccess$1(Landroid/view/View;)V
    .registers 6

    .line 1415
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$33;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    new-instance v0, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;-><init>(ZZI)V

    invoke-static {p1, v2, v0}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->startBindPhoneNumberActivity(Landroid/content/Context;ZLcom/codemao/nemo/event/FinishBindPhoneNumberEvent;)V

    return-void
.end method

.method private synthetic lambda$onSuccess$2(Landroid/view/View;)V
    .registers 5

    .line 1421
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$33;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    new-instance v0, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {v0, v1, v1, v2}, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;-><init>(ZZI)V

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->startBindPhoneNumberActivity(Landroid/content/Context;ZLcom/codemao/nemo/event/FinishBindPhoneNumberEvent;)V

    return-void
.end method


# virtual methods
.method public onError()V
    .registers 3

    .line 1428
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$33;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    new-instance v1, Lcom/codemao/nemo/activity/WorkDetailActivity$33$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$33$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity$33;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(ZZ)V
    .registers 15

    .line 1387
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$33;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    if-eq v0, v1, :cond_d

    return-void

    :cond_d
    if-eqz p1, :cond_bc

    if-eqz p2, :cond_bc

    .line 1392
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$33;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    const-class v0, Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1393
    iget-object p2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$33;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p2}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$1100(Lcom/codemao/nemo/activity/WorkDetailActivity;)J

    move-result-wide v0

    const-string p2, "workId"

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p2, "isEditWorkInfo"

    const/4 v0, 0x1

    .line 1394
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "published"

    .line 1395
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1396
    iget-object p2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$33;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p2}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$500(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getDescription()Ljava/lang/String;

    move-result-object p2

    const-string v1, "des"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1397
    iget-object p2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$33;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p2}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$500(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getWork_name()Ljava/lang/String;

    move-result-object p2

    const-string v1, "name"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1398
    iget-object p2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$33;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p2}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$500(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getScreenshot_cover_url()Ljava/lang/String;

    move-result-object p2

    const-string v1, "defaultImagePath"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1399
    iget-object p2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$33;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p2}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$500(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPreview()Ljava/lang/String;

    move-result-object p2

    const-string v1, "imagePath"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1400
    iget-object p2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$33;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p2}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$500(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->isFork_enable()Z

    move-result p2

    const-string v1, "forkEnable"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1401
    iget-object p2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$33;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p2}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$700(Lcom/codemao/nemo/activity/WorkDetailActivity;)Z

    move-result p2

    if-eqz p2, :cond_84

    const/4 v0, 0x2

    :cond_84
    const-string p2, "type"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1402
    iget-object p2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$33;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p2}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$500(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getBcm_version()Ljava/lang/String;

    move-result-object p2

    const-string v0, "publish_work_bcm_version"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1403
    iget-object p2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$33;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p2}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$500(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getOperation()Ljava/lang/String;

    move-result-object p2

    const-string v0, "operation"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1404
    iget-object p2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$33;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p2}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$500(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getBcm_url()Ljava/lang/String;

    move-result-object p2

    const-string v0, "publish_work_url"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1405
    iget-object p2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$33;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-virtual {p2, p1}, Lcom/giu/xzz/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_fe

    :cond_bc
    if-eqz p1, :cond_d3

    .line 1407
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$33;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    const/4 v2, 0x5

    const/4 v3, 0x2

    .line 1409
    invoke-virtual {v1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->getReportParams()Ljava/util/Map;

    move-result-object v4

    new-instance v5, Lcom/codemao/nemo/activity/WorkDetailActivity$33$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$33$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity$33;)V

    .line 1407
    invoke-virtual/range {v0 .. v5}, Lcom/codemao/nemo/util/UserLevelupHelper;->showNotSignAgreement(Landroid/app/Activity;IILjava/util/Map;Landroid/view/View$OnClickListener;)V

    goto :goto_fe

    :cond_d3
    if-eqz p2, :cond_ea

    .line 1412
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v6

    iget-object v7, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$33;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    const/4 v8, 0x5

    const/4 v9, 0x1

    .line 1414
    invoke-virtual {v7}, Lcom/codemao/nemo/activity/WorkDetailActivity;->getReportParams()Ljava/util/Map;

    move-result-object v10

    new-instance v11, Lcom/codemao/nemo/activity/WorkDetailActivity$33$$ExternalSyntheticLambda2;

    invoke-direct {v11, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$33$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity$33;)V

    .line 1412
    invoke-virtual/range {v6 .. v11}, Lcom/codemao/nemo/util/UserLevelupHelper;->showNotSignAgreement(Landroid/app/Activity;IILjava/util/Map;Landroid/view/View$OnClickListener;)V

    goto :goto_fe

    .line 1418
    :cond_ea
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$33;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    const/4 v2, 0x5

    const/4 v3, 0x3

    .line 1420
    invoke-virtual {v1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->getReportParams()Ljava/util/Map;

    move-result-object v4

    new-instance v5, Lcom/codemao/nemo/activity/WorkDetailActivity$33$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$33$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity$33;)V

    .line 1418
    invoke-virtual/range {v0 .. v5}, Lcom/codemao/nemo/util/UserLevelupHelper;->showNotSignAgreement(Landroid/app/Activity;IILjava/util/Map;Landroid/view/View$OnClickListener;)V

    :goto_fe
    return-void
.end method
