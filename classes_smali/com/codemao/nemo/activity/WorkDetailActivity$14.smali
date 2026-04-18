.class Lcom/codemao/nemo/activity/WorkDetailActivity$14;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "WorkDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkDetailActivity;->onUserInfoChanged()V
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

    .line 564
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$14;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 574
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$14;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$1300(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    return-void
.end method

.method public onNetError()V
    .registers 2

    .line 579
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$14;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$1000(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;)V
    .registers 3

    .line 567
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$14;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {v0, p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$502(Lcom/codemao/nemo/activity/WorkDetailActivity;Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;)Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    .line 568
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$14;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 569
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$14;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$1200(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 564
    check-cast p1, Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/WorkDetailActivity$14;->onSuc(Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;)V

    return-void
.end method
