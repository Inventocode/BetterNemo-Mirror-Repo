.class Lcom/codemao/nemo/activity/WorkDetailActivity$16;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "WorkDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkDetailActivity;->getEmptyWorks(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Ljava/util/List<",
        "Lcom/codemao/nemo/bean/CollectWorkInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

.field final synthetic val$isEmpty:Z


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/WorkDetailActivity;Z)V
    .registers 3

    .line 640
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$16;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iput-boolean p2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$16;->val$isEmpty:Z

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

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 640
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/WorkDetailActivity$16;->onSuc(Ljava/util/List;)V

    return-void
.end method

.method public onSuc(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CollectWorkInfo;",
            ">;)V"
        }
    .end annotation

    .line 643
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$16;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-boolean v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$16;->val$isEmpty:Z

    invoke-static {v0, p1, v1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$1400(Lcom/codemao/nemo/activity/WorkDetailActivity;Ljava/util/List;Z)V

    return-void
.end method
