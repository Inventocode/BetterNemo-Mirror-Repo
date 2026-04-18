.class Lcom/codemao/nemo/activity/ReworkHistoryActivity$3;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "ReworkHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/ReworkHistoryActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Lcom/codemao/nemo/bean/ReworkHistoryResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/ReworkHistoryActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/ReworkHistoryActivity;)V
    .registers 2

    .line 141
    iput-object p1, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity$3;->this$0:Lcom/codemao/nemo/activity/ReworkHistoryActivity;

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

.method public onSuc(Lcom/codemao/nemo/bean/ReworkHistoryResponse;)V
    .registers 4

    .line 145
    iget-object v0, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity$3;->this$0:Lcom/codemao/nemo/activity/ReworkHistoryActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->access$200(Lcom/codemao/nemo/activity/ReworkHistoryActivity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/ReworkHistoryResponse;->getFork_work_list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 146
    iget-object v0, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity$3;->this$0:Lcom/codemao/nemo/activity/ReworkHistoryActivity;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/ReworkHistoryResponse;->getRoot_work()Lcom/codemao/nemo/bean/ReworkHistoryVO;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->access$302(Lcom/codemao/nemo/activity/ReworkHistoryActivity;Lcom/codemao/nemo/bean/ReworkHistoryVO;)Lcom/codemao/nemo/bean/ReworkHistoryVO;

    .line 147
    iget-object p1, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity$3;->this$0:Lcom/codemao/nemo/activity/ReworkHistoryActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->access$400(Lcom/codemao/nemo/activity/ReworkHistoryActivity;)V

    .line 148
    iget-object p1, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity$3;->this$0:Lcom/codemao/nemo/activity/ReworkHistoryActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->access$500(Lcom/codemao/nemo/activity/ReworkHistoryActivity;)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 141
    check-cast p1, Lcom/codemao/nemo/bean/ReworkHistoryResponse;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/ReworkHistoryActivity$3;->onSuc(Lcom/codemao/nemo/bean/ReworkHistoryResponse;)V

    return-void
.end method
