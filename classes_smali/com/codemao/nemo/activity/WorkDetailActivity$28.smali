.class Lcom/codemao/nemo/activity/WorkDetailActivity$28;
.super Ljava/lang/Object;
.source "WorkDetailActivity.java"

# interfaces
.implements Lcom/codemao/nemo/util/UserLevelupHelper$CheckUserVerifiedAndAnswerFriendlyProtocolCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkDetailActivity;->toComment(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

.field final synthetic val$isShowEmoji:Z


# direct methods
.method public static synthetic $r8$lambda$8o-eEOmuxXAz5KpbQpaHEJFkZlo(Lcom/codemao/nemo/activity/WorkDetailActivity$28;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkDetailActivity$28;->lambda$onSuccess$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K2kpRr1PqXbRe-i16T3lV3-e6ic(Lcom/codemao/nemo/activity/WorkDetailActivity$28;ZZLandroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/activity/WorkDetailActivity$28;->lambda$onSuccess$1(ZZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X9Cv0itszof-JWwlluqtbAe4KRk(Lcom/codemao/nemo/activity/WorkDetailActivity$28;)V
    .registers 1

    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$28;->lambda$onError$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$bqlUDaBiRTLs2PBOyChxfn0xhBk(Lcom/codemao/nemo/activity/WorkDetailActivity$28;ZZLandroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/activity/WorkDetailActivity$28;->lambda$onSuccess$2(ZZLandroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/codemao/nemo/activity/WorkDetailActivity;Z)V
    .registers 3

    .line 1117
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$28;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iput-boolean p2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$28;->val$isShowEmoji:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onError$3()V
    .registers 2

    .line 1150
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$28;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onSuccess$0(Landroid/view/View;)V
    .registers 5

    .line 1132
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$28;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->goAnswer(Landroid/content/Context;ILcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Z)V

    return-void
.end method

.method private synthetic lambda$onSuccess$1(ZZLandroid/view/View;)V
    .registers 6

    .line 1137
    iget-object p3, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$28;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    new-instance v0, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;

    const/4 v1, 0x3

    invoke-direct {v0, p1, p2, v1}, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;-><init>(ZZI)V

    const/4 p1, 0x1

    invoke-static {p3, p1, v0}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->startBindPhoneNumberActivity(Landroid/content/Context;ZLcom/codemao/nemo/event/FinishBindPhoneNumberEvent;)V

    return-void
.end method

.method private synthetic lambda$onSuccess$2(ZZLandroid/view/View;)V
    .registers 6

    .line 1143
    iget-object p3, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$28;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    new-instance v0, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;

    const/4 v1, 0x3

    invoke-direct {v0, p1, p2, v1}, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;-><init>(ZZI)V

    const/4 p1, 0x1

    invoke-static {p3, p1, v0}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->startBindPhoneNumberActivity(Landroid/content/Context;ZLcom/codemao/nemo/event/FinishBindPhoneNumberEvent;)V

    return-void
.end method


# virtual methods
.method public onError()V
    .registers 3

    .line 1150
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$28;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    new-instance v1, Lcom/codemao/nemo/activity/WorkDetailActivity$28$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$28$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity$28;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(ZZ)V
    .registers 15

    .line 1120
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/util/ActivityUtils;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/util/ActivityUtils;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$28;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    if-eq v0, v1, :cond_17

    return-void

    :cond_17
    if-eqz p1, :cond_3a

    if-eqz p2, :cond_3a

    .line 1125
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$28;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$400(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/fragment/WorkCommentFragment;

    move-result-object p1

    if-eqz p1, :cond_7c

    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$28;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_7c

    .line 1126
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$28;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$400(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/fragment/WorkCommentFragment;

    move-result-object p1

    iget-boolean p2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$28;->val$isShowEmoji:Z

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->showCommentInput(Z)V

    goto :goto_7c

    :cond_3a
    if-eqz p1, :cond_51

    .line 1129
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$28;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    const/4 v2, 0x3

    const/4 v3, 0x2

    .line 1131
    invoke-virtual {v1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->getReportParams()Ljava/util/Map;

    move-result-object v4

    new-instance v5, Lcom/codemao/nemo/activity/WorkDetailActivity$28$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$28$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity$28;)V

    .line 1129
    invoke-virtual/range {v0 .. v5}, Lcom/codemao/nemo/util/UserLevelupHelper;->showNotSignAgreement(Landroid/app/Activity;IILjava/util/Map;Landroid/view/View$OnClickListener;)V

    goto :goto_7c

    :cond_51
    if-eqz p2, :cond_68

    .line 1134
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v6

    iget-object v7, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$28;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    const/4 v8, 0x3

    const/4 v9, 0x1

    .line 1136
    invoke-virtual {v7}, Lcom/codemao/nemo/activity/WorkDetailActivity;->getReportParams()Ljava/util/Map;

    move-result-object v10

    new-instance v11, Lcom/codemao/nemo/activity/WorkDetailActivity$28$$ExternalSyntheticLambda1;

    invoke-direct {v11, p0, p1, p2}, Lcom/codemao/nemo/activity/WorkDetailActivity$28$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity$28;ZZ)V

    .line 1134
    invoke-virtual/range {v6 .. v11}, Lcom/codemao/nemo/util/UserLevelupHelper;->showNotSignAgreement(Landroid/app/Activity;IILjava/util/Map;Landroid/view/View$OnClickListener;)V

    goto :goto_7c

    .line 1140
    :cond_68
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$28;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    const/4 v2, 0x3

    const/4 v3, 0x3

    .line 1142
    invoke-virtual {v1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->getReportParams()Ljava/util/Map;

    move-result-object v4

    new-instance v5, Lcom/codemao/nemo/activity/WorkDetailActivity$28$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, p1, p2}, Lcom/codemao/nemo/activity/WorkDetailActivity$28$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity$28;ZZ)V

    .line 1140
    invoke-virtual/range {v0 .. v5}, Lcom/codemao/nemo/util/UserLevelupHelper;->showNotSignAgreement(Landroid/app/Activity;IILjava/util/Map;Landroid/view/View$OnClickListener;)V

    :cond_7c
    :goto_7c
    return-void
.end method
