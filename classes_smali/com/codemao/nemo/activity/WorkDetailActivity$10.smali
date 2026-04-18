.class Lcom/codemao/nemo/activity/WorkDetailActivity$10;
.super Ljava/lang/Object;
.source "WorkDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V
    .registers 2

    .line 455
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$10;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 459
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$10;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$500(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    .line 462
    :cond_9
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$10;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_17

    .line 463
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$10;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 466
    :cond_17
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$10;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-virtual {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->getReportParams()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v0, "作品详情页-点击再创作按钮"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 468
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$10;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$500(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NEMO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_44

    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$10;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$700(Lcom/codemao/nemo/activity/WorkDetailActivity;)Z

    move-result p1

    if-eqz p1, :cond_3e

    goto :goto_44

    .line 471
    :cond_3e
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$10;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$800(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    goto :goto_49

    .line 469
    :cond_44
    :goto_44
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$10;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-virtual {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->rework()V

    :goto_49
    return-void
.end method
