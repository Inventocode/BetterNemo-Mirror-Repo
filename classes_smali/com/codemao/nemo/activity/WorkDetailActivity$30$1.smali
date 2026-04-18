.class Lcom/codemao/nemo/activity/WorkDetailActivity$30$1;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "WorkDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkDetailActivity$30;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/codemao/nemo/activity/WorkDetailActivity$30;


# direct methods
.method public static synthetic $r8$lambda$ZHPyzyBpwCJ64wUTZ9AkOHoCwGk(Lcom/codemao/nemo/activity/WorkDetailActivity$30$1;)V
    .registers 1

    invoke-direct {p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$30$1;->lambda$onNetError$0()V

    return-void
.end method

.method constructor <init>(Lcom/codemao/nemo/activity/WorkDetailActivity$30;)V
    .registers 2

    .line 1243
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$30$1;->this$1:Lcom/codemao/nemo/activity/WorkDetailActivity$30;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method

.method private synthetic lambda$onNetError$0()V
    .registers 2

    .line 1269
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$30$1;->this$1:Lcom/codemao/nemo/activity/WorkDetailActivity$30;

    iget-object v0, v0, Lcom/codemao/nemo/activity/WorkDetailActivity$30;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const-string p2, "40101005"

    .line 1258
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1c

    const-string p2, "40101001"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_1c

    .line 1263
    :cond_11
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$30$1;->this$1:Lcom/codemao/nemo/activity/WorkDetailActivity$30;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity$30;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    const-string/jumbo p2, "取消发布失败"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_40

    .line 1259
    :cond_1c
    :goto_1c
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$30$1;->this$1:Lcom/codemao/nemo/activity/WorkDetailActivity$30;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity$30;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    const-string/jumbo p2, "该作品已经取消发布了哦~"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1260
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$30$1;->this$1:Lcom/codemao/nemo/activity/WorkDetailActivity$30;

    iget-object p2, p2, Lcom/codemao/nemo/activity/WorkDetailActivity$30;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p2}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$500(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    move-result-object p2

    invoke-static {p2}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->creatCancelPublishOtherEvents(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;)Lcom/codemao/nemo/event/UpdateWorkInfoEvents;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1261
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$30$1;->this$1:Lcom/codemao/nemo/activity/WorkDetailActivity$30;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity$30;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-virtual {p1}, Lcom/giu/xzz/BaseActivity;->finish()V

    :goto_40
    return-void
.end method

.method public onNetError()V
    .registers 3

    .line 1269
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$30$1;->this$1:Lcom/codemao/nemo/activity/WorkDetailActivity$30;

    iget-object v0, v0, Lcom/codemao/nemo/activity/WorkDetailActivity$30;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    new-instance v1, Lcom/codemao/nemo/activity/WorkDetailActivity$30$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$30$1$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity$30$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 1243
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/WorkDetailActivity$30$1;->onSuc(Ljava/lang/String;)V

    return-void
.end method

.method public onSuc(Ljava/lang/String;)V
    .registers 3

    .line 1246
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$30$1;->this$1:Lcom/codemao/nemo/activity/WorkDetailActivity$30;

    iget-object v0, v0, Lcom/codemao/nemo/activity/WorkDetailActivity$30;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$500(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->creatCancelPublishEvents(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;)Lcom/codemao/nemo/event/UpdateWorkInfoEvents;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1247
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$30$1;->this$1:Lcom/codemao/nemo/activity/WorkDetailActivity$30;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity$30;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    const-string/jumbo v0, "取消发布成功"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1248
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$30$1;->this$1:Lcom/codemao/nemo/activity/WorkDetailActivity$30;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity$30;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->llRework:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1249
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$30$1;->this$1:Lcom/codemao/nemo/activity/WorkDetailActivity$30;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity$30;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->llCollect:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1250
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$30$1;->this$1:Lcom/codemao/nemo/activity/WorkDetailActivity$30;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity$30;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->llPraise:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1251
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$30$1;->this$1:Lcom/codemao/nemo/activity/WorkDetailActivity$30;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity$30;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->llShare:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1252
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$30$1;->this$1:Lcom/codemao/nemo/activity/WorkDetailActivity$30;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity$30;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivPlay:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1253
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$30$1;->this$1:Lcom/codemao/nemo/activity/WorkDetailActivity$30;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity$30;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-virtual {p1}, Lcom/giu/xzz/BaseActivity;->finish()V

    return-void
.end method
