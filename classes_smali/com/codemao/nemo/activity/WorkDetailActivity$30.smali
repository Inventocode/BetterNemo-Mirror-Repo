.class Lcom/codemao/nemo/activity/WorkDetailActivity$30;
.super Ljava/lang/Object;
.source "WorkDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkDetailActivity;->cancelPublishWork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;


# direct methods
.method public static synthetic $r8$lambda$8uhmRi8XSsnxA5hZBLKZ7dkb0Ow(Lcom/codemao/nemo/activity/WorkDetailActivity$30;Lcom/ljwx/baseapp/response/DataResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/WorkDetailActivity$30;->lambda$onClick$0(Lcom/ljwx/baseapp/response/DataResult;)V

    return-void
.end method

.method constructor <init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V
    .registers 2

    .line 1214
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$30;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onClick$0(Lcom/ljwx/baseapp/response/DataResult;)V
    .registers 4

    .line 1221
    instance-of v0, p1, Lcom/ljwx/baseapp/response/DataResult$Success;

    if-eqz v0, :cond_43

    .line 1222
    sget-object p1, Lcom/ljwx/baseapp/util/LocalEventUtils;->INSTANCE:Lcom/ljwx/baseapp/util/LocalEventUtils;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "cancel_publish_kn"

    invoke-virtual {p1, v1, v0}, Lcom/ljwx/baseapp/util/LocalEventUtils;->sendAction(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1223
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$30;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    const-string/jumbo v0, "取消发布成功"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1224
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$30;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->llRework:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1225
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$30;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->llCollect:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1226
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$30;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->llPraise:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1227
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$30;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->llShare:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1228
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$30;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivPlay:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1229
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$30;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-virtual {p1}, Lcom/giu/xzz/BaseActivity;->finish()V

    goto :goto_96

    .line 1230
    :cond_43
    instance-of v0, p1, Lcom/ljwx/baseapp/response/DataResult$Fail;

    if-eqz v0, :cond_96

    .line 1231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p1, Lcom/ljwx/baseapp/response/DataResult$Fail;

    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/DataResult$Fail;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "40101005"

    .line 1232
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    const-string v0, "40101001"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6f

    goto :goto_78

    .line 1237
    :cond_6f
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$30;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    const-string/jumbo v0, "取消发布失败"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_96

    .line 1233
    :cond_78
    :goto_78
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$30;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    const-string/jumbo v0, "该作品已经取消发布了哦~"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1234
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$30;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$500(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->creatCancelPublishOtherEvents(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;)Lcom/codemao/nemo/event/UpdateWorkInfoEvents;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1235
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$30;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-virtual {p1}, Lcom/giu/xzz/BaseActivity;->finish()V

    :cond_96
    :goto_96
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1218
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$30;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$2500(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1219
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$30;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$700(Lcom/codemao/nemo/activity/WorkDetailActivity;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 1220
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$30;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$2600(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$30;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$1100(Lcom/codemao/nemo/activity/WorkDetailActivity;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;->cancelWorkPublish(JZ)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$30;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    new-instance v1, Lcom/codemao/nemo/activity/WorkDetailActivity$30$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$30$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity$30;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void

    .line 1243
    :cond_2d
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$30;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object v0, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$1100(Lcom/codemao/nemo/activity/WorkDetailActivity;)J

    move-result-wide v1

    new-instance p1, Lcom/codemao/nemo/activity/WorkDetailActivity$30$1;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$30$1;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity$30;)V

    invoke-virtual {v0, v1, v2, p1}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->cancelPublishWork(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method
