.class Lcom/codemao/nemo/activity/ShareProductActivity$4$1;
.super Ljava/lang/Object;
.source "ShareProductActivity.java"

# interfaces
.implements Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/ShareProductActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/activity/ShareProductActivity$4;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/ShareProductActivity$4;)V
    .registers 2

    .line 298
    iput-object p1, p0, Lcom/codemao/nemo/activity/ShareProductActivity$4$1;->this$1:Lcom/codemao/nemo/activity/ShareProductActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public needUpdate(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .registers 4

    .line 313
    iget-object v0, p0, Lcom/codemao/nemo/activity/ShareProductActivity$4$1;->this$1:Lcom/codemao/nemo/activity/ShareProductActivity$4;

    iget-object v0, v0, Lcom/codemao/nemo/activity/ShareProductActivity$4;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/ShareProductActivity;->access$100(Lcom/codemao/nemo/activity/ShareProductActivity;)Lcom/codemao/nemo/bean/WorkShareCompatData;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    const-string v0, "Canceled"

    .line 314
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    const-string v0, "Socket closed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_46

    :cond_1c
    const-string v0, "stream was reset: CANCEL"

    .line 318
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "Failed to connect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "SSL handshake aborted"

    .line 319
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_35

    goto :goto_3e

    .line 322
    :cond_35
    iget-object p1, p0, Lcom/codemao/nemo/activity/ShareProductActivity$4$1;->this$1:Lcom/codemao/nemo/activity/ShareProductActivity$4;

    iget-object p1, p1, Lcom/codemao/nemo/activity/ShareProductActivity$4;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/ShareProductActivity;->access$400(Lcom/codemao/nemo/activity/ShareProductActivity;I)V

    goto :goto_46

    .line 320
    :cond_3e
    :goto_3e
    iget-object p1, p0, Lcom/codemao/nemo/activity/ShareProductActivity$4$1;->this$1:Lcom/codemao/nemo/activity/ShareProductActivity$4;

    iget-object p1, p1, Lcom/codemao/nemo/activity/ShareProductActivity$4;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/ShareProductActivity;->access$400(Lcom/codemao/nemo/activity/ShareProductActivity;I)V

    :cond_46
    :goto_46
    return-void
.end method

.method public onIlleagal()V
    .registers 3

    .line 329
    iget-object v0, p0, Lcom/codemao/nemo/activity/ShareProductActivity$4$1;->this$1:Lcom/codemao/nemo/activity/ShareProductActivity$4;

    iget-object v0, v0, Lcom/codemao/nemo/activity/ShareProductActivity$4;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/ShareProductActivity;->access$100(Lcom/codemao/nemo/activity/ShareProductActivity;)Lcom/codemao/nemo/bean/WorkShareCompatData;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 302
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/codemao/nemo/activity/ShareProductActivity$4$1;->this$1:Lcom/codemao/nemo/activity/ShareProductActivity$4;

    iget-object v0, v0, Lcom/codemao/nemo/activity/ShareProductActivity$4;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    .line 303
    invoke-static {v0}, Lcom/codemao/nemo/util/BcmHelper;->getConfigVO(Landroid/content/Context;)Lcom/codemao/nemo/bean/ConfigVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ConfigVO;->getPlayer_path()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 304
    sget-object v0, Lcom/codemao/nemo/qrscan/utils/QRCodeCreateHelper;->INSTANCE:Lcom/codemao/nemo/qrscan/utils/QRCodeCreateHelper;

    const/4 v1, 0x1

    .line 305
    invoke-virtual {v0, p3, v1}, Lcom/codemao/nemo/qrscan/utils/QRCodeCreateHelper;->buildQRCodeStrFormBefore(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    .line 306
    iget-object v0, p0, Lcom/codemao/nemo/activity/ShareProductActivity$4$1;->this$1:Lcom/codemao/nemo/activity/ShareProductActivity$4;

    iget-object v0, v0, Lcom/codemao/nemo/activity/ShareProductActivity$4;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/ShareProductActivity;->access$100(Lcom/codemao/nemo/activity/ShareProductActivity;)Lcom/codemao/nemo/bean/WorkShareCompatData;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/codemao/nemo/bean/WorkShareCompatData;->setShareUrl(Ljava/lang/String;)V

    .line 307
    iget-object p3, p0, Lcom/codemao/nemo/activity/ShareProductActivity$4$1;->this$1:Lcom/codemao/nemo/activity/ShareProductActivity$4;

    iget-object p3, p3, Lcom/codemao/nemo/activity/ShareProductActivity$4;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-static {p3, p1, p2}, Lcom/codemao/nemo/activity/ShareProductActivity;->access$300(Lcom/codemao/nemo/activity/ShareProductActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
