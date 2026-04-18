.class Lcom/codemao/nemo/fragment/CreateFragment$20$2;
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

.field final synthetic val$finalData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;


# direct methods
.method public static synthetic $r8$lambda$oo8ecHdqq0XCjuD0Nind728h05o(Lcom/codemao/nemo/fragment/CreateFragment$20$2;ZZLandroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/fragment/CreateFragment$20$2;->lambda$onSuccess$1(ZZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qgYE7sAg3fk7acRXR6lQnqiwFFw(Lcom/codemao/nemo/fragment/CreateFragment$20$2;ZZLandroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/fragment/CreateFragment$20$2;->lambda$onSuccess$2(ZZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yAP20uklJtx6IV_Cerdow1upFv8(Lcom/codemao/nemo/fragment/CreateFragment$20$2;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/fragment/CreateFragment$20$2;->lambda$onSuccess$0(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/codemao/nemo/fragment/CreateFragment$20;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 3

    .line 1717
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$20;

    iput-object p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$2;->val$finalData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onSuccess$0(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Landroid/view/View;)V
    .registers 4

    .line 1731
    iget-object p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$20;

    iget-object p2, p2, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p2, v0, p1, v0}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->goAnswer(Landroid/content/Context;ILcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Z)V

    return-void
.end method

.method private synthetic lambda$onSuccess$1(ZZLandroid/view/View;)V
    .registers 6

    .line 1740
    iget-object p3, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$20;

    iget-object p3, p3, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    new-instance v0, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;-><init>(ZZI)V

    invoke-static {p3, v1, v0}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->startBindPhoneNumberActivity(Landroid/content/Context;ZLcom/codemao/nemo/event/FinishBindPhoneNumberEvent;)V

    return-void
.end method

.method private synthetic lambda$onSuccess$2(ZZLandroid/view/View;)V
    .registers 6

    .line 1750
    iget-object p3, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$20;

    iget-object p3, p3, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    new-instance v0, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;-><init>(ZZI)V

    invoke-static {p3, v1, v0}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->startBindPhoneNumberActivity(Landroid/content/Context;ZLcom/codemao/nemo/event/FinishBindPhoneNumberEvent;)V

    return-void
.end method


# virtual methods
.method public onError()V
    .registers 3

    .line 1757
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$2;->val$finalData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    const/4 v1, 0x1

    iput v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    .line 1758
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$20;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment;->rvContainer:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$20;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment;->rvContainer:Landroidx/recyclerview/widget/RecyclerView;

    .line 1759
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_32

    .line 1760
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$20;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$2500(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1761
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$20;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment;->rvContainer:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 1763
    :cond_32
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$20;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$600(Lcom/codemao/nemo/fragment/CreateFragment;)V

    .line 1764
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$20;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void
.end method

.method public onSuccess(ZZ)V
    .registers 11

    .line 1720
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$20;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$600(Lcom/codemao/nemo/fragment/CreateFragment;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    if-eqz p2, :cond_17

    .line 1722
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$20;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget-object p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$2;->val$finalData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-static {p1, p2, v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$900(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    goto/16 :goto_ad

    :cond_17
    const/4 v1, 0x1

    if-eqz p1, :cond_4c

    .line 1724
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$2;->val$finalData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    .line 1725
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$20;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$2500(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1726
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$20;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/CreateFragment;->rvContainer:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 1728
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v1

    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$20;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$2;->val$finalData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    new-instance v6, Lcom/codemao/nemo/fragment/CreateFragment$20$2$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, p1}, Lcom/codemao/nemo/fragment/CreateFragment$20$2$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/fragment/CreateFragment$20$2;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    invoke-virtual/range {v1 .. v6}, Lcom/codemao/nemo/util/UserLevelupHelper;->showNotSignAgreement(Landroid/app/Activity;IILjava/util/Map;Landroid/view/View$OnClickListener;)V

    goto :goto_ad

    :cond_4c
    if-eqz p2, :cond_7e

    .line 1733
    iget-object v2, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$2;->val$finalData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput v1, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    .line 1734
    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$20;

    iget-object v1, v1, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$2500(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1735
    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$20;

    iget-object v1, v1, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget-object v1, v1, Lcom/codemao/nemo/fragment/CreateFragment;->rvContainer:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 1737
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v2

    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$20;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v7, Lcom/codemao/nemo/fragment/CreateFragment$20$2$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0, p1, p2}, Lcom/codemao/nemo/fragment/CreateFragment$20$2$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/fragment/CreateFragment$20$2;ZZ)V

    invoke-virtual/range {v2 .. v7}, Lcom/codemao/nemo/util/UserLevelupHelper;->showNotSignAgreement(Landroid/app/Activity;IILjava/util/Map;Landroid/view/View$OnClickListener;)V

    goto :goto_ad

    .line 1743
    :cond_7e
    iget-object v2, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$2;->val$finalData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput v1, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    .line 1744
    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$20;

    iget-object v1, v1, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$2500(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1745
    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$20;

    iget-object v1, v1, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget-object v1, v1, Lcom/codemao/nemo/fragment/CreateFragment;->rvContainer:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 1747
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v2

    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$2;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$20;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x0

    new-instance v7, Lcom/codemao/nemo/fragment/CreateFragment$20$2$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0, p1, p2}, Lcom/codemao/nemo/fragment/CreateFragment$20$2$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/nemo/fragment/CreateFragment$20$2;ZZ)V

    invoke-virtual/range {v2 .. v7}, Lcom/codemao/nemo/util/UserLevelupHelper;->showNotSignAgreement(Landroid/app/Activity;IILjava/util/Map;Landroid/view/View$OnClickListener;)V

    :goto_ad
    return-void
.end method
