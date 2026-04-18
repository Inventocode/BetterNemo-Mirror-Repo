.class Lcom/codemao/nemo/activity/WorkDetailActivity$15$1;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "WorkDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkDetailActivity$15;->run()V
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
.field final synthetic this$1:Lcom/codemao/nemo/activity/WorkDetailActivity$15;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/WorkDetailActivity$15;)V
    .registers 2

    .line 595
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$15$1;->this$1:Lcom/codemao/nemo/activity/WorkDetailActivity$15;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 605
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$15$1;->this$1:Lcom/codemao/nemo/activity/WorkDetailActivity$15;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity$15;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$1300(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    return-void
.end method

.method public onNetError()V
    .registers 2

    .line 611
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$15$1;->this$1:Lcom/codemao/nemo/activity/WorkDetailActivity$15;

    iget-object v0, v0, Lcom/codemao/nemo/activity/WorkDetailActivity$15;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$1000(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;)V
    .registers 3

    .line 598
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$15$1;->this$1:Lcom/codemao/nemo/activity/WorkDetailActivity$15;

    iget-object v0, v0, Lcom/codemao/nemo/activity/WorkDetailActivity$15;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {v0, p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$502(Lcom/codemao/nemo/activity/WorkDetailActivity;Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;)Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    .line 599
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$15$1;->this$1:Lcom/codemao/nemo/activity/WorkDetailActivity$15;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity$15;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 600
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$15$1;->this$1:Lcom/codemao/nemo/activity/WorkDetailActivity$15;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity$15;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$1200(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 595
    check-cast p1, Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/WorkDetailActivity$15$1;->onSuc(Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;)V

    return-void
.end method
