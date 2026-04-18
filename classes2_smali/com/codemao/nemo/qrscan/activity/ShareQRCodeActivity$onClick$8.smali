.class final Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$onClick$8;
.super Lkotlin/jvm/internal/Lambda;
.source "ShareQRCodeActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$onClick$8;->this$0:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 380
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$onClick$8;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .registers 4

    .line 381
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "cancel"

    .line 382
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    .line 385
    :cond_f
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_23

    .line 387
    iget-object p1, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$onClick$8;->this$0:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;

    const v0, 0x7f1202c0

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;I)V

    goto :goto_4a

    .line 390
    :cond_23
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 391
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 392
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 393
    iget-object p1, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$onClick$8;->this$0:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 394
    iget-object p1, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$onClick$8;->this$0:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;

    const-string v0, "图片保存成功"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_4a

    .line 397
    :cond_43
    iget-object p1, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$onClick$8;->this$0:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;

    const-string v0, "需要读写权限，请同意授权"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_4a
    return-void
.end method
