.class Lcom/codemao/nemo/activity/WorkDetailActivity$22;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "WorkDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkDetailActivity;->buyKittenWork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Lcom/codemao/nemo/bean/ForkWorkResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V
    .registers 2

    .line 824
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$22;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 833
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$22;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$2100(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const-string v0, "40101002"

    .line 834
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 835
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$22;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    const-string/jumbo p2, "作品已取消发布"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    :cond_1a
    const-string v0, "40100002"

    .line 838
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 839
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$22;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    const-string/jumbo p2, "作品已取消开源"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 842
    :cond_2b
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$22;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onNetError()V
    .registers 3

    .line 847
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$22;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    new-instance v1, Lcom/codemao/nemo/activity/WorkDetailActivity$22$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$22$1;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity$22;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/bean/ForkWorkResult;)V
    .registers 2

    .line 827
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$22;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$2100(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 828
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$22;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$2300(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 824
    check-cast p1, Lcom/codemao/nemo/bean/ForkWorkResult;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/WorkDetailActivity$22;->onSuc(Lcom/codemao/nemo/bean/ForkWorkResult;)V

    return-void
.end method
