.class Lcom/codemao/nemo/fragment/WorkCommentFragment$5;
.super Ljava/lang/Object;
.source "WorkCommentFragment.java"

# interfaces
.implements Lcom/codemao/nemo/util/UserLevelupHelper$CheckUserVerifiedAndAnswerFriendlyProtocolCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/WorkCommentFragment;->toComment(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;


# direct methods
.method public static synthetic $r8$lambda$QdsMudTu83WQ7qhRXQ_UwmxJBXk(Lcom/codemao/nemo/fragment/WorkCommentFragment$5;ZZLandroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/fragment/WorkCommentFragment$5;->lambda$onSuccess$1(ZZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SikYyrdfYihKRJHoUjU7DWhDpWU(Lcom/codemao/nemo/fragment/WorkCommentFragment$5;ZZLandroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/fragment/WorkCommentFragment$5;->lambda$onSuccess$2(ZZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$asKAUgIi5LP2qhZNs-p6a8nbmjs(Lcom/codemao/nemo/fragment/WorkCommentFragment$5;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment$5;->lambda$onSuccess$0(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/codemao/nemo/fragment/WorkCommentFragment;)V
    .registers 2

    .line 399
    iput-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$5;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onSuccess$0(Landroid/view/View;)V
    .registers 5

    .line 412
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$5;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->goAnswer(Landroid/content/Context;ILcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Z)V

    return-void
.end method

.method private synthetic lambda$onSuccess$1(ZZLandroid/view/View;)V
    .registers 6

    .line 417
    iget-object p3, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$5;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    new-instance v0, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;

    const/4 v1, 0x3

    invoke-direct {v0, p1, p2, v1}, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;-><init>(ZZI)V

    const/4 p1, 0x1

    invoke-static {p3, p1, v0}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->startBindPhoneNumberActivity(Landroid/content/Context;ZLcom/codemao/nemo/event/FinishBindPhoneNumberEvent;)V

    return-void
.end method

.method private synthetic lambda$onSuccess$2(ZZLandroid/view/View;)V
    .registers 6

    .line 423
    iget-object p3, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$5;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    new-instance v0, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;

    const/4 v1, 0x3

    invoke-direct {v0, p1, p2, v1}, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;-><init>(ZZI)V

    const/4 p1, 0x1

    invoke-static {p3, p1, v0}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->startBindPhoneNumberActivity(Landroid/content/Context;ZLcom/codemao/nemo/event/FinishBindPhoneNumberEvent;)V

    return-void
.end method


# virtual methods
.method public onError()V
    .registers 2

    .line 430
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$5;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void
.end method

.method public onSuccess(ZZ)V
    .registers 15

    .line 402
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/util/ActivityUtils;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$5;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eq v0, v1, :cond_11

    return-void

    :cond_11
    if-eqz p1, :cond_1b

    if-eqz p2, :cond_1b

    .line 407
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$5;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$1600(Lcom/codemao/nemo/fragment/WorkCommentFragment;)V

    goto :goto_6f

    :cond_1b
    if-eqz p1, :cond_38

    .line 409
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v0

    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$5;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$5;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    .line 411
    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->getReportParams()Ljava/util/Map;

    move-result-object v4

    new-instance v5, Lcom/codemao/nemo/fragment/WorkCommentFragment$5$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/codemao/nemo/fragment/WorkCommentFragment$5$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/fragment/WorkCommentFragment$5;)V

    .line 409
    invoke-virtual/range {v0 .. v5}, Lcom/codemao/nemo/util/UserLevelupHelper;->showNotSignAgreement(Landroid/app/Activity;IILjava/util/Map;Landroid/view/View$OnClickListener;)V

    goto :goto_6f

    :cond_38
    if-eqz p2, :cond_55

    .line 414
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v6

    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$5;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    const/4 v8, 0x3

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$5;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    .line 416
    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->getReportParams()Ljava/util/Map;

    move-result-object v10

    new-instance v11, Lcom/codemao/nemo/fragment/WorkCommentFragment$5$$ExternalSyntheticLambda1;

    invoke-direct {v11, p0, p1, p2}, Lcom/codemao/nemo/fragment/WorkCommentFragment$5$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/fragment/WorkCommentFragment$5;ZZ)V

    .line 414
    invoke-virtual/range {v6 .. v11}, Lcom/codemao/nemo/util/UserLevelupHelper;->showNotSignAgreement(Landroid/app/Activity;IILjava/util/Map;Landroid/view/View$OnClickListener;)V

    goto :goto_6f

    .line 420
    :cond_55
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$5;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$5;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    .line 422
    invoke-virtual {v4}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->getReportParams()Ljava/util/Map;

    move-result-object v4

    new-instance v5, Lcom/codemao/nemo/fragment/WorkCommentFragment$5$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, p1, p2}, Lcom/codemao/nemo/fragment/WorkCommentFragment$5$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/nemo/fragment/WorkCommentFragment$5;ZZ)V

    .line 420
    invoke-virtual/range {v0 .. v5}, Lcom/codemao/nemo/util/UserLevelupHelper;->showNotSignAgreement(Landroid/app/Activity;IILjava/util/Map;Landroid/view/View$OnClickListener;)V

    :goto_6f
    return-void
.end method
