.class Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$7;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "WorkPublishKnActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->getPublishInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Lcom/codemao/nemo/bean/WorkPublishInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V
    .registers 2

    .line 378
    iput-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$7;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 390
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$7;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$700(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 391
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$7;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$900(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V

    return-void
.end method

.method public onNetError()V
    .registers 2

    .line 396
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$7;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {v0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$700(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 397
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$7;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {v0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$900(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V

    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/bean/WorkPublishInfo;)V
    .registers 4

    .line 381
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$7;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {v0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$700(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 382
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$7;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    iget-object v0, v0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->tvPublish:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 383
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$7;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {v0, p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$802(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;Lcom/codemao/nemo/bean/WorkPublishInfo;)Lcom/codemao/nemo/bean/WorkPublishInfo;

    .line 384
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$7;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$800(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)Lcom/codemao/nemo/bean/WorkPublishInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$7;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {v0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$800(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)Lcom/codemao/nemo/bean/WorkPublishInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkPublishInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/StringUtil;->getFilterWorkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/WorkPublishInfo;->setName(Ljava/lang/String;)V

    .line 385
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$7;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$900(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 378
    check-cast p1, Lcom/codemao/nemo/bean/WorkPublishInfo;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$7;->onSuc(Lcom/codemao/nemo/bean/WorkPublishInfo;)V

    return-void
.end method
