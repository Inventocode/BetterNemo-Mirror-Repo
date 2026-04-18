.class Lcom/codemao/nemo/activity/WorkDetailActivity$12$1;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "WorkDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkDetailActivity$12;->run()V
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
.field final synthetic this$1:Lcom/codemao/nemo/activity/WorkDetailActivity$12;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/WorkDetailActivity$12;)V
    .registers 2

    .line 502
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$12$1;->this$1:Lcom/codemao/nemo/activity/WorkDetailActivity$12;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 511
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$12$1;->this$1:Lcom/codemao/nemo/activity/WorkDetailActivity$12;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity$12;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$1300(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    return-void
.end method

.method public onNetError()V
    .registers 2

    .line 517
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$12$1;->this$1:Lcom/codemao/nemo/activity/WorkDetailActivity$12;

    iget-object v0, v0, Lcom/codemao/nemo/activity/WorkDetailActivity$12;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$1000(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;)V
    .registers 3

    .line 505
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$12$1;->this$1:Lcom/codemao/nemo/activity/WorkDetailActivity$12;

    iget-object v0, v0, Lcom/codemao/nemo/activity/WorkDetailActivity$12;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {v0, p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$502(Lcom/codemao/nemo/activity/WorkDetailActivity;Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;)Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    .line 506
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$12$1;->this$1:Lcom/codemao/nemo/activity/WorkDetailActivity$12;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity$12;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$1200(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 502
    check-cast p1, Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/WorkDetailActivity$12$1;->onSuc(Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;)V

    return-void
.end method
