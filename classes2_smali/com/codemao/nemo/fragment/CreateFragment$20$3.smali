.class Lcom/codemao/nemo/fragment/CreateFragment$20$3;
.super Ljava/lang/Object;
.source "CreateFragment.java"

# interfaces
.implements Lcom/codemao/nemo/util/UserLevelupHelper$CheckUserVerifiedAndAnswerFriendlyProtocolCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CreateFragment$20;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/fragment/CreateFragment$20;

.field final synthetic val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;


# direct methods
.method public static synthetic $r8$lambda$5xoFoR1is0AwFwt6O_y-PPqlKD0(Lcom/codemao/nemo/fragment/CreateFragment$20$3;ZZLandroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/fragment/CreateFragment$20$3;->lambda$onSuccess$1(ZZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gDpyg-JcPQQhu1HI5CH1Cgl8kwE(Lcom/codemao/nemo/fragment/CreateFragment$20$3;ZZLandroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/fragment/CreateFragment$20$3;->lambda$onSuccess$2(ZZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lJOoo7nTGHe-xY8jkPKtAkbZWEw(Lcom/codemao/nemo/fragment/CreateFragment$20$3;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/fragment/CreateFragment$20$3;->lambda$onSuccess$0(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/codemao/nemo/fragment/CreateFragment$20;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 3

    .line 1785
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$3;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$20;

    iput-object p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$3;->val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onSuccess$0(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Landroid/view/View;)V
    .registers 5

    .line 1798
    iget-object p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$3;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$20;

    iget-object p2, p2, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-static {p2, v0, p1, v1}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->goAnswer(Landroid/content/Context;ILcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Z)V

    return-void
.end method

.method private synthetic lambda$onSuccess$1(ZZLandroid/view/View;)V
    .registers 6

    .line 1803
    iget-object p3, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$3;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$20;

    iget-object p3, p3, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    new-instance v0, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p2, v1}, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;-><init>(ZZI)V

    const/4 p1, 0x1

    invoke-static {p3, p1, v0}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->startBindPhoneNumberActivity(Landroid/content/Context;ZLcom/codemao/nemo/event/FinishBindPhoneNumberEvent;)V

    return-void
.end method

.method private synthetic lambda$onSuccess$2(ZZLandroid/view/View;)V
    .registers 6

    .line 1809
    iget-object p3, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$3;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$20;

    iget-object p3, p3, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    new-instance v0, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p2, v1}, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;-><init>(ZZI)V

    const/4 p1, 0x1

    invoke-static {p3, p1, v0}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->startBindPhoneNumberActivity(Landroid/content/Context;ZLcom/codemao/nemo/event/FinishBindPhoneNumberEvent;)V

    return-void
.end method


# virtual methods
.method public onError()V
    .registers 2

    .line 1816
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$3;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$20;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$600(Lcom/codemao/nemo/fragment/CreateFragment;)V

    .line 1817
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$3;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$20;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void
.end method

.method public onSuccess(ZZ)V
    .registers 15

    .line 1788
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$3;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$20;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$600(Lcom/codemao/nemo/fragment/CreateFragment;)V

    .line 1789
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$3;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$20;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$3;->val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-static {v0, v1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$702(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    if-eqz p1, :cond_1e

    if-eqz p2, :cond_1e

    .line 1793
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$3;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$20;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget-object p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$3;->val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-static {p1, p2}, Lcom/codemao/nemo/fragment/CreateFragment;->access$3400(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    goto :goto_6b

    :cond_1e
    if-eqz p1, :cond_3a

    .line 1795
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v0

    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$3;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$20;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x2

    const/4 v4, 0x0

    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$3;->val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    new-instance v5, Lcom/codemao/nemo/fragment/CreateFragment$20$3$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, p1}, Lcom/codemao/nemo/fragment/CreateFragment$20$3$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/fragment/CreateFragment$20$3;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    invoke-virtual/range {v0 .. v5}, Lcom/codemao/nemo/util/UserLevelupHelper;->showNotSignAgreement(Landroid/app/Activity;IILjava/util/Map;Landroid/view/View$OnClickListener;)V

    goto :goto_6b

    :cond_3a
    if-eqz p2, :cond_54

    .line 1800
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v6

    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$3;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$20;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    new-instance v11, Lcom/codemao/nemo/fragment/CreateFragment$20$3$$ExternalSyntheticLambda1;

    invoke-direct {v11, p0, p1, p2}, Lcom/codemao/nemo/fragment/CreateFragment$20$3$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/fragment/CreateFragment$20$3;ZZ)V

    invoke-virtual/range {v6 .. v11}, Lcom/codemao/nemo/util/UserLevelupHelper;->showNotSignAgreement(Landroid/app/Activity;IILjava/util/Map;Landroid/view/View$OnClickListener;)V

    goto :goto_6b

    .line 1806
    :cond_54
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$3;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$20;

    iget-object v1, v1, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    new-instance v5, Lcom/codemao/nemo/fragment/CreateFragment$20$3$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, p1, p2}, Lcom/codemao/nemo/fragment/CreateFragment$20$3$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/nemo/fragment/CreateFragment$20$3;ZZ)V

    invoke-virtual/range {v0 .. v5}, Lcom/codemao/nemo/util/UserLevelupHelper;->showNotSignAgreement(Landroid/app/Activity;IILjava/util/Map;Landroid/view/View$OnClickListener;)V

    :goto_6b
    return-void
.end method
