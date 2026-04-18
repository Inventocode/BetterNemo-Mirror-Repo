.class public final Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$dealCode$1;
.super Lcom/codemao/nemo/retrofit/response/CommonSubcriber;
.source "ScanQRCodeActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->dealCode(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/retrofit/response/CommonSubcriber<",
        "Lcom/codemao/nemo/qrscan/bean/WhiteLinkResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$dealCode$1;->this$0:Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;

    .line 384
    invoke-direct {p0}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x3b

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/giu/xzz/utils/Logger;->e(Ljava/lang/String;)V

    .line 396
    iget-object p1, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$dealCode$1;->this$0:Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;

    invoke-static {p1}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->access$scanErrorRemind(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;)V

    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 400
    iget-object p1, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$dealCode$1;->this$0:Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onSuccess(Lcom/codemao/nemo/qrscan/bean/WhiteLinkResponse;)V
    .registers 4

    .line 386
    iget-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$dealCode$1;->this$0:Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;

    invoke-static {v0}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->access$getHasJump$p(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;)Z

    move-result v0

    if-nez v0, :cond_1f

    if-nez p1, :cond_b

    goto :goto_1f

    .line 389
    :cond_b
    iget-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$dealCode$1;->this$0:Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->access$setHasJump$p(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;Z)V

    .line 390
    iget-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$dealCode$1;->this$0:Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;

    invoke-virtual {p1}, Lcom/codemao/nemo/qrscan/bean/WhiteLinkResponse;->getTarget_url()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->goWeb(Landroid/content/Context;Ljava/lang/String;)V

    .line 391
    iget-object p1, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$dealCode$1;->this$0:Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;

    invoke-virtual {p1}, Lcom/giu/xzz/BaseActivity;->finish()V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 384
    check-cast p1, Lcom/codemao/nemo/qrscan/bean/WhiteLinkResponse;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$dealCode$1;->onSuccess(Lcom/codemao/nemo/qrscan/bean/WhiteLinkResponse;)V

    return-void
.end method
