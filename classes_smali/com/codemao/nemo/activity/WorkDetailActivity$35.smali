.class Lcom/codemao/nemo/activity/WorkDetailActivity$35;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "WorkDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkDetailActivity;->praiseWorkOrCancel(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;


# direct methods
.method public static synthetic $r8$lambda$YynOID604-z-hHb4yikgVOrkIFM(Lcom/codemao/nemo/activity/WorkDetailActivity$35;)V
    .registers 1

    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$35;->lambda$onNetError$0()V

    return-void
.end method

.method constructor <init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V
    .registers 2

    .line 1474
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$35;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method

.method private synthetic lambda$onNetError$0()V
    .registers 3

    .line 1490
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$35;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    .line 1491
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$35;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/WorkDetailActivity;->llPraise:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1483
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$35;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    const-string/jumbo p2, "点赞失败"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1484
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$35;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->llPraise:Landroid/widget/RelativeLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    return-void
.end method

.method public onNetError()V
    .registers 3

    .line 1489
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$35;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    new-instance v1, Lcom/codemao/nemo/activity/WorkDetailActivity$35$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$35$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity$35;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 1474
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/WorkDetailActivity$35;->onSuc(Ljava/lang/String;)V

    return-void
.end method

.method public onSuc(Ljava/lang/String;)V
    .registers 4

    .line 1477
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$35;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$500(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$35;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$500(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPraise_times()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setPraise_times(I)V

    .line 1478
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$35;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    sget-object v0, Lcom/nemo/commonui/NemoUIConfigManager;->INSTANCE:Lcom/nemo/commonui/NemoUIConfigManager;

    invoke-virtual {v0}, Lcom/nemo/commonui/NemoUIConfigManager;->getLowAnimationLevel()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->setPraise(ZZ)V

    return-void
.end method
