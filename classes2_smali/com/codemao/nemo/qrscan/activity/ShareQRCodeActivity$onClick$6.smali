.class final Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$onClick$6;
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

    iput-object p1, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$onClick$6;->this$0:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 335
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$onClick$6;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .registers 6

    .line 336
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "cancel"

    .line 337
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    .line 340
    :cond_f
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_23

    .line 342
    iget-object p1, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$onClick$6;->this$0:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;

    const v0, 0x7f1202c0

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;I)V

    return-void

    .line 345
    :cond_23
    sget-object v0, Lcom/codemao/nemo/qrscan/utils/QQShareHelper;->INSTANCE:Lcom/codemao/nemo/qrscan/utils/QQShareHelper;

    iget-object v1, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$onClick$6;->this$0:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;

    invoke-static {v1}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->access$getMTencent(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;)Lcom/tencent/tauth/Tencent;

    move-result-object v2

    const-string v3, "it"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$onClick$6;->this$0:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;

    invoke-static {v3}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->access$getMQQShareListener$p(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;)Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$mQQShareListener$1;

    move-result-object v3

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/codemao/nemo/qrscan/utils/QQShareHelper;->shareImgToQQZone(Landroid/app/Activity;Lcom/tencent/tauth/Tencent;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V

    goto :goto_41

    .line 347
    :cond_3a
    iget-object p1, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$onClick$6;->this$0:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;

    const-string v0, "需要读写权限，请同意授权"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_41
    return-void
.end method
