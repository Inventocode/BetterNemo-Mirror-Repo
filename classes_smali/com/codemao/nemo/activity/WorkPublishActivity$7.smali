.class Lcom/codemao/nemo/activity/WorkPublishActivity$7;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "WorkPublishActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkPublishActivity;->getPublishInfo()V
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
.field final synthetic this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/WorkPublishActivity;)V
    .registers 2

    .line 477
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$7;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 489
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$7;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$800(Lcom/codemao/nemo/activity/WorkPublishActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 490
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$7;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$1000(Lcom/codemao/nemo/activity/WorkPublishActivity;)V

    return-void
.end method

.method public onNetError()V
    .registers 2

    .line 495
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$7;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$800(Lcom/codemao/nemo/activity/WorkPublishActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 496
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$7;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$1000(Lcom/codemao/nemo/activity/WorkPublishActivity;)V

    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/bean/WorkPublishInfo;)V
    .registers 6

    .line 480
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$7;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$800(Lcom/codemao/nemo/activity/WorkPublishActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 481
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$7;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/WorkPublishActivity;->tvPublish:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 482
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$7;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$900(Lcom/codemao/nemo/activity/WorkPublishActivity;)Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$7;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {v2}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$300(Lcom/codemao/nemo/activity/WorkPublishActivity;)J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->getInfoFromNemo(Lcom/codemao/nemo/bean/WorkPublishInfo;J)Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$902(Lcom/codemao/nemo/activity/WorkPublishActivity;Lcom/codemao/nemo/bean/WorkPublishInfoCompat;)Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    .line 483
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$7;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$900(Lcom/codemao/nemo/activity/WorkPublishActivity;)Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$7;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$900(Lcom/codemao/nemo/activity/WorkPublishActivity;)Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/StringUtil;->getFilterWorkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->setName(Ljava/lang/String;)V

    .line 484
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$7;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$1000(Lcom/codemao/nemo/activity/WorkPublishActivity;)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 477
    check-cast p1, Lcom/codemao/nemo/bean/WorkPublishInfo;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity$7;->onSuc(Lcom/codemao/nemo/bean/WorkPublishInfo;)V

    return-void
.end method
