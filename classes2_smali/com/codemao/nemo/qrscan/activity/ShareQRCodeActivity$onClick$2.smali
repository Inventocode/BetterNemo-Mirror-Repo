.class public final Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$onClick$2;
.super Ljava/lang/Object;
.source "ShareQRCodeActivity.kt"

# interfaces
.implements Lcn/codemao/android/share/interfaces/IshareResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->onClick(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$onClick$2;->this$0:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;)V
    .registers 3

    .line 264
    iget-object p1, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$onClick$2;->this$0:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;

    const-string v0, "分享失败"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 265
    iget-object p1, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$onClick$2;->this$0:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;

    invoke-virtual {p1}, Lcom/giu/xzz/BaseActivity;->finish()V

    return-void
.end method

.method public onFailure(Ljava/lang/String;)V
    .registers 3

    .line 259
    iget-object p1, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$onClick$2;->this$0:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;

    const-string v0, "分享失败"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 260
    iget-object p1, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$onClick$2;->this$0:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;

    invoke-virtual {p1}, Lcom/giu/xzz/BaseActivity;->finish()V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
