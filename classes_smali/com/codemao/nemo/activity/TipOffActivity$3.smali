.class Lcom/codemao/nemo/activity/TipOffActivity$3;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "TipOffActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/TipOffActivity;->tipOffWork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/TipOffActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/TipOffActivity;)V
    .registers 2

    .line 293
    iput-object p1, p0, Lcom/codemao/nemo/activity/TipOffActivity$3;->this$0:Lcom/codemao/nemo/activity/TipOffActivity;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 303
    iget-object p1, p0, Lcom/codemao/nemo/activity/TipOffActivity$3;->this$0:Lcom/codemao/nemo/activity/TipOffActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/TipOffActivity;->access$300(Lcom/codemao/nemo/activity/TipOffActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 304
    iget-object p1, p0, Lcom/codemao/nemo/activity/TipOffActivity$3;->this$0:Lcom/codemao/nemo/activity/TipOffActivity;

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onNetError()V
    .registers 2

    .line 309
    iget-object v0, p0, Lcom/codemao/nemo/activity/TipOffActivity$3;->this$0:Lcom/codemao/nemo/activity/TipOffActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/TipOffActivity;->access$300(Lcom/codemao/nemo/activity/TipOffActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 310
    iget-object v0, p0, Lcom/codemao/nemo/activity/TipOffActivity$3;->this$0:Lcom/codemao/nemo/activity/TipOffActivity;

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 293
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/TipOffActivity$3;->onSuc(Ljava/lang/String;)V

    return-void
.end method

.method public onSuc(Ljava/lang/String;)V
    .registers 4

    .line 296
    iget-object p1, p0, Lcom/codemao/nemo/activity/TipOffActivity$3;->this$0:Lcom/codemao/nemo/activity/TipOffActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/TipOffActivity;->access$300(Lcom/codemao/nemo/activity/TipOffActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 297
    iget-object p1, p0, Lcom/codemao/nemo/activity/TipOffActivity$3;->this$0:Lcom/codemao/nemo/activity/TipOffActivity;

    const-string v0, "举报提交成功！"

    const-string/jumbo v1, "感谢您对Nemo社区的支持!"

    invoke-static {p1, v0, v1}, Lcom/codemao/nemo/util/ToastUtilTypeTwo;->showCenterShortToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 298
    iget-object p1, p0, Lcom/codemao/nemo/activity/TipOffActivity$3;->this$0:Lcom/codemao/nemo/activity/TipOffActivity;

    invoke-virtual {p1}, Lcom/giu/xzz/BaseActivity;->finish()V

    return-void
.end method
