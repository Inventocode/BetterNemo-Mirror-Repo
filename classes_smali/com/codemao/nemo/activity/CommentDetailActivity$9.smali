.class Lcom/codemao/nemo/activity/CommentDetailActivity$9;
.super Ljava/lang/Object;
.source "CommentDetailActivity.java"

# interfaces
.implements Lcom/codemao/nemo/util/UserLevelupHelper$CheckUserVerifiedAndAnswerFriendlyProtocolCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/CommentDetailActivity;->toComment(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;


# direct methods
.method public static synthetic $r8$lambda$4p_96tb9Nkkj9a-BuQ4XKPoaTLo(Lcom/codemao/nemo/activity/CommentDetailActivity$9;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/CommentDetailActivity$9;->lambda$onSuccess$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QY1V4WR_fO7T0booKm9_00b9boM(Lcom/codemao/nemo/activity/CommentDetailActivity$9;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/CommentDetailActivity$9;->lambda$onSuccess$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d_A81zMenHgphZmtGwWcBPkvJBM(Lcom/codemao/nemo/activity/CommentDetailActivity$9;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/CommentDetailActivity$9;->lambda$onSuccess$2(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/codemao/nemo/activity/CommentDetailActivity;)V
    .registers 2

    .line 544
    iput-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$9;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onSuccess$0(Landroid/view/View;)V
    .registers 5

    .line 557
    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$9;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->goAnswer(Landroid/content/Context;ILcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Z)V

    return-void
.end method

.method private synthetic lambda$onSuccess$1(Landroid/view/View;)V
    .registers 6

    .line 562
    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$9;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    new-instance v0, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;-><init>(ZZI)V

    invoke-static {p1, v2, v0}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->startBindPhoneNumberActivity(Landroid/content/Context;ZLcom/codemao/nemo/event/FinishBindPhoneNumberEvent;)V

    return-void
.end method

.method private synthetic lambda$onSuccess$2(Landroid/view/View;)V
    .registers 5

    .line 568
    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$9;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    new-instance v0, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {v0, v1, v1, v2}, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;-><init>(ZZI)V

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->startBindPhoneNumberActivity(Landroid/content/Context;ZLcom/codemao/nemo/event/FinishBindPhoneNumberEvent;)V

    return-void
.end method


# virtual methods
.method public onError()V
    .registers 2

    .line 575
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$9;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void
.end method

.method public onSuccess(ZZ)V
    .registers 18

    move-object v0, p0

    .line 547
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/util/ActivityUtils;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, v0, Lcom/codemao/nemo/activity/CommentDetailActivity$9;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    if-eq v1, v2, :cond_e

    return-void

    :cond_e
    if-eqz p1, :cond_16

    if-eqz p2, :cond_16

    .line 552
    invoke-static {v2}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$1300(Lcom/codemao/nemo/activity/CommentDetailActivity;)V

    goto :goto_58

    :cond_16
    if-eqz p1, :cond_2d

    .line 554
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v3

    iget-object v4, v0, Lcom/codemao/nemo/activity/CommentDetailActivity$9;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    const/4 v5, 0x4

    const/4 v6, 0x2

    .line 556
    invoke-virtual {v4}, Lcom/codemao/nemo/activity/CommentDetailActivity;->getReportParams()Ljava/util/Map;

    move-result-object v7

    new-instance v8, Lcom/codemao/nemo/activity/CommentDetailActivity$9$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0}, Lcom/codemao/nemo/activity/CommentDetailActivity$9$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/activity/CommentDetailActivity$9;)V

    .line 554
    invoke-virtual/range {v3 .. v8}, Lcom/codemao/nemo/util/UserLevelupHelper;->showNotSignAgreement(Landroid/app/Activity;IILjava/util/Map;Landroid/view/View$OnClickListener;)V

    goto :goto_58

    :cond_2d
    if-eqz p2, :cond_44

    .line 559
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v9

    iget-object v10, v0, Lcom/codemao/nemo/activity/CommentDetailActivity$9;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    const/4 v11, 0x4

    const/4 v12, 0x1

    .line 561
    invoke-virtual {v10}, Lcom/codemao/nemo/activity/CommentDetailActivity;->getReportParams()Ljava/util/Map;

    move-result-object v13

    new-instance v14, Lcom/codemao/nemo/activity/CommentDetailActivity$9$$ExternalSyntheticLambda0;

    invoke-direct {v14, p0}, Lcom/codemao/nemo/activity/CommentDetailActivity$9$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/activity/CommentDetailActivity$9;)V

    .line 559
    invoke-virtual/range {v9 .. v14}, Lcom/codemao/nemo/util/UserLevelupHelper;->showNotSignAgreement(Landroid/app/Activity;IILjava/util/Map;Landroid/view/View$OnClickListener;)V

    goto :goto_58

    .line 565
    :cond_44
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v1

    iget-object v2, v0, Lcom/codemao/nemo/activity/CommentDetailActivity$9;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    const/4 v3, 0x4

    const/4 v4, 0x3

    .line 567
    invoke-virtual {v2}, Lcom/codemao/nemo/activity/CommentDetailActivity;->getReportParams()Ljava/util/Map;

    move-result-object v5

    new-instance v6, Lcom/codemao/nemo/activity/CommentDetailActivity$9$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lcom/codemao/nemo/activity/CommentDetailActivity$9$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/nemo/activity/CommentDetailActivity$9;)V

    .line 565
    invoke-virtual/range {v1 .. v6}, Lcom/codemao/nemo/util/UserLevelupHelper;->showNotSignAgreement(Landroid/app/Activity;IILjava/util/Map;Landroid/view/View$OnClickListener;)V

    :goto_58
    return-void
.end method
