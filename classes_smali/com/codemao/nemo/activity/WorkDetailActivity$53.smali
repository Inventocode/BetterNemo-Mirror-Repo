.class Lcom/codemao/nemo/activity/WorkDetailActivity$53;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "WorkDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkDetailActivity;->onPublish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V
    .registers 2

    .line 2091
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$53;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onNetError()V
    .registers 1

    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;)V
    .registers 4

    .line 2094
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$53;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$53;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object v1, v0, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetailFragment:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    if-eqz v1, :cond_1c

    .line 2095
    invoke-static {v0, p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$502(Lcom/codemao/nemo/activity/WorkDetailActivity;Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;)Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    .line 2096
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$53;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object v0, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->workDetailFragment:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$500(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->updateWorkInfo(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;)V

    :cond_1c
    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 2091
    check-cast p1, Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/WorkDetailActivity$53;->onSuc(Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;)V

    return-void
.end method
