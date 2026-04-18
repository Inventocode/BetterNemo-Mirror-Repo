.class Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1;
.super Ljava/lang/Object;
.source "NewBcmFragmentV2.java"

# interfaces
.implements Lcom/codemao/nemo/util/UserLevelupHelper$CheckUserVerifiedAndAnswerFriendlyProtocolCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;


# direct methods
.method public static synthetic $r8$lambda$53jJc_6-ZYMdNZkH65rHN_L5AxY(Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1;ILcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1;->lambda$onSuccess$0(ILcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FcVsNS21KZifxlSYD22kmSr-dZY(Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1;ZZILandroid/view/View;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1;->lambda$onSuccess$1(ZZILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FlM4qjI_GGImD8jjN-_3sdtwH4I(Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1;ZZILandroid/view/View;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1;->lambda$onSuccess$2(ZZILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J42REL5pgfgZt9iZdI0NrZmu8N4(Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1;)V
    .registers 1

    invoke-direct {p0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1;->lambda$onError$3()V

    return-void
.end method

.method constructor <init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;)V
    .registers 2

    .line 574
    iput-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1;->this$2:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onError$3()V
    .registers 2

    .line 620
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1;->this$2:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;->this$1:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->access$800(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)Lcom/codemao/nemo/view/ReactUploadDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 621
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1;->this$2:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;->this$1:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onSuccess$0(ILcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Landroid/view/View;)V
    .registers 5

    .line 591
    iget-object p3, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1;->this$2:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;

    iget-object p3, p3, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;->this$1:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;

    iget-object p3, p3, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v0, 0x1

    invoke-static {p3, p1, p2, v0}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->goAnswer(Landroid/content/Context;ILcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Z)V

    .line 592
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1;->this$2:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;->this$1:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/NewBcmFragment;->closeAutoSave()V

    return-void
.end method

.method private synthetic lambda$onSuccess$1(ZZILandroid/view/View;)V
    .registers 6

    .line 599
    iget-object p4, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1;->this$2:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;

    iget-object p4, p4, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;->this$1:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;

    iget-object p4, p4, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p4

    new-instance v0, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;-><init>(ZZI)V

    const/4 p1, 0x1

    invoke-static {p4, p1, v0}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->startBindPhoneNumberActivity(Landroid/content/Context;ZLcom/codemao/nemo/event/FinishBindPhoneNumberEvent;)V

    .line 601
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1;->this$2:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;->this$1:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/NewBcmFragment;->closeAutoSave()V

    return-void
.end method

.method private synthetic lambda$onSuccess$2(ZZILandroid/view/View;)V
    .registers 6

    .line 608
    iget-object p4, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1;->this$2:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;

    iget-object p4, p4, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;->this$1:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;

    iget-object p4, p4, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p4

    new-instance v0, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;-><init>(ZZI)V

    const/4 p1, 0x1

    invoke-static {p4, p1, v0}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->startBindPhoneNumberActivity(Landroid/content/Context;ZLcom/codemao/nemo/event/FinishBindPhoneNumberEvent;)V

    .line 610
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1;->this$2:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;->this$1:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/NewBcmFragment;->closeAutoSave()V

    return-void
.end method


# virtual methods
.method public onError()V
    .registers 3

    .line 618
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1;->this$2:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;->this$1:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 619
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1;->this$2:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;->this$1:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1e
    return-void
.end method

.method public onSuccess(ZZ)V
    .registers 11

    .line 577
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1;->this$2:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;->this$1:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->access$800(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)Lcom/codemao/nemo/view/ReactUploadDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 578
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1;->this$2:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;->this$1:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->hideSavintPop()V

    if-eqz p1, :cond_2b

    if-eqz p2, :cond_2b

    .line 580
    sget-object p1, Lcom/codemao/nemo/constant/AppConfig;->INSTANCE:Lcom/codemao/nemo/constant/AppConfig;

    invoke-virtual {p1}, Lcom/codemao/nemo/constant/AppConfig;->publishAllPass()V

    .line 581
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1;->this$2:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;

    iget-object p2, p1, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;->this$1:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;

    iget-object p2, p2, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-virtual {p2, p1}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->goPublishPage(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    goto :goto_95

    .line 583
    :cond_2b
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1;->this$2:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;

    iget v1, v0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;->val$from:I

    add-int/lit8 v4, v1, 0x5

    .line 584
    iget-object v0, v0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;->this$1:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-static {v0, v4}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->access$902(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;I)I

    .line 585
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1;->this$2:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;

    iget-object v1, v0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;->this$1:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;

    iget-object v1, v1, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-static {v1, v0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->access$1002(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    if-eqz p1, :cond_62

    .line 587
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v2

    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1;->this$2:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;->this$1:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1;->this$2:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    new-instance v7, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, v4, p1}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1;ILcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    invoke-virtual/range {v2 .. v7}, Lcom/codemao/nemo/util/UserLevelupHelper;->showNotSignAgreement(Landroid/app/Activity;IILjava/util/Map;Landroid/view/View$OnClickListener;)V

    goto :goto_95

    :cond_62
    if-eqz p2, :cond_7d

    .line 595
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v2

    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1;->this$2:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;->this$1:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v7, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0, p1, p2, v4}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1;ZZI)V

    invoke-virtual/range {v2 .. v7}, Lcom/codemao/nemo/util/UserLevelupHelper;->showNotSignAgreement(Landroid/app/Activity;IILjava/util/Map;Landroid/view/View$OnClickListener;)V

    goto :goto_95

    .line 604
    :cond_7d
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v2

    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1;->this$2:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;->this$1:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    new-instance v7, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0, p1, p2, v4}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1$1;ZZI)V

    invoke-virtual/range {v2 .. v7}, Lcom/codemao/nemo/util/UserLevelupHelper;->showNotSignAgreement(Landroid/app/Activity;IILjava/util/Map;Landroid/view/View$OnClickListener;)V

    :goto_95
    return-void
.end method
