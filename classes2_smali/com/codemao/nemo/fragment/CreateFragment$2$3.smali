.class Lcom/codemao/nemo/fragment/CreateFragment$2$3;
.super Ljava/lang/Object;
.source "CreateFragment.java"

# interfaces
.implements Lcom/codemao/nemo/util/UserLevelupHelper$CheckUserVerifiedAndAnswerFriendlyProtocolCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CreateFragment$2;->onUpload(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

.field final synthetic val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field final synthetic val$position:I


# direct methods
.method public static synthetic $r8$lambda$4I6cpIOR0u7iqJL6kpJd8GwzVkc(Lcom/codemao/nemo/fragment/CreateFragment$2$3;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/fragment/CreateFragment$2$3;->lambda$onSuccess$0(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6-P0WjdhZPBtht_05sPjsclJFuE(Lcom/codemao/nemo/fragment/CreateFragment$2$3;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/CreateFragment$2$3;->lambda$onSuccess$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lYNsp_XNtStMoiCw__XLAMrehZY(Lcom/codemao/nemo/fragment/CreateFragment$2$3;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/CreateFragment$2$3;->lambda$onSuccess$1(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/codemao/nemo/fragment/CreateFragment$2;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 4

    .line 402
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$3;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

    iput-object p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$3;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput p3, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onSuccess$0(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Landroid/view/View;)V
    .registers 4

    .line 414
    iget-object p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$3;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

    iget-object p2, p2, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p2, v0, p1, v0}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->goAnswer(Landroid/content/Context;ILcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Z)V

    return-void
.end method

.method private synthetic lambda$onSuccess$1(Landroid/view/View;)V
    .registers 5

    .line 419
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$3;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;-><init>(ZZI)V

    invoke-static {p1, v2, v0}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->startBindPhoneNumberActivity(Landroid/content/Context;ZLcom/codemao/nemo/event/FinishBindPhoneNumberEvent;)V

    return-void
.end method

.method private synthetic lambda$onSuccess$2(Landroid/view/View;)V
    .registers 5

    .line 425
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$3;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v1, v2}, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;-><init>(ZZI)V

    invoke-static {p1, v2, v0}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->startBindPhoneNumberActivity(Landroid/content/Context;ZLcom/codemao/nemo/event/FinishBindPhoneNumberEvent;)V

    return-void
.end method


# virtual methods
.method public onError()V
    .registers 2

    .line 432
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$3;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$600(Lcom/codemao/nemo/fragment/CreateFragment;)V

    .line 433
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$3;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void
.end method

.method public onSuccess(ZZ)V
    .registers 16

    .line 405
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$3;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$600(Lcom/codemao/nemo/fragment/CreateFragment;)V

    .line 406
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$3;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$3;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-static {v0, v1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$702(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    .line 407
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$3;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget v1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$3;->val$position:I

    invoke-static {v0, v1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$802(Lcom/codemao/nemo/fragment/CreateFragment;I)I

    if-eqz p1, :cond_29

    if-eqz p2, :cond_29

    .line 409
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$3;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget-object p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$3;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$3;->val$position:I

    invoke-static {p1, p2, v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$900(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    goto :goto_76

    :cond_29
    if-eqz p1, :cond_45

    .line 411
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v1

    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$3;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$3;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    new-instance v6, Lcom/codemao/nemo/fragment/CreateFragment$2$3$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0, p1}, Lcom/codemao/nemo/fragment/CreateFragment$2$3$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/nemo/fragment/CreateFragment$2$3;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    invoke-virtual/range {v1 .. v6}, Lcom/codemao/nemo/util/UserLevelupHelper;->showNotSignAgreement(Landroid/app/Activity;IILjava/util/Map;Landroid/view/View$OnClickListener;)V

    goto :goto_76

    :cond_45
    if-eqz p2, :cond_5f

    .line 416
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v7

    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$3;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    new-instance v12, Lcom/codemao/nemo/fragment/CreateFragment$2$3$$ExternalSyntheticLambda1;

    invoke-direct {v12, p0}, Lcom/codemao/nemo/fragment/CreateFragment$2$3$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/fragment/CreateFragment$2$3;)V

    invoke-virtual/range {v7 .. v12}, Lcom/codemao/nemo/util/UserLevelupHelper;->showNotSignAgreement(Landroid/app/Activity;IILjava/util/Map;Landroid/view/View$OnClickListener;)V

    goto :goto_76

    .line 422
    :cond_5f
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v0

    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$3;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    new-instance v5, Lcom/codemao/nemo/fragment/CreateFragment$2$3$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/codemao/nemo/fragment/CreateFragment$2$3$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/fragment/CreateFragment$2$3;)V

    invoke-virtual/range {v0 .. v5}, Lcom/codemao/nemo/util/UserLevelupHelper;->showNotSignAgreement(Landroid/app/Activity;IILjava/util/Map;Landroid/view/View$OnClickListener;)V

    :goto_76
    return-void
.end method
