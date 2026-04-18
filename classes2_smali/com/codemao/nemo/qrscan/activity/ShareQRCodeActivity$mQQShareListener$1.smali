.class public final Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$mQQShareListener$1;
.super Ljava/lang/Object;
.source "ShareQRCodeActivity.kt"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$mQQShareListener$1;->this$0:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 3

    .line 430
    iget-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$mQQShareListener$1;->this$0:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;

    const-string v1, "分享失败"

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 431
    iget-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$mQQShareListener$1;->this$0:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;

    invoke-virtual {v0}, Lcom/giu/xzz/BaseActivity;->finish()V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .registers 3

    .line 440
    iget-object p1, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$mQQShareListener$1;->this$0:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;

    const-string v0, "分享失败"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 441
    iget-object p1, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$mQQShareListener$1;->this$0:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;

    invoke-virtual {p1}, Lcom/giu/xzz/BaseActivity;->finish()V

    return-void
.end method

.method public onWarning(I)V
    .registers 3

    .line 435
    iget-object p1, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$mQQShareListener$1;->this$0:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;

    const-string v0, "分享失败"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 436
    iget-object p1, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$mQQShareListener$1;->this$0:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;

    invoke-virtual {p1}, Lcom/giu/xzz/BaseActivity;->finish()V

    return-void
.end method
