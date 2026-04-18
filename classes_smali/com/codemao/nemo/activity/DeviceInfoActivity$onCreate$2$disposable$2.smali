.class final Lcom/codemao/nemo/activity/DeviceInfoActivity$onCreate$2$disposable$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DeviceInfoActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/DeviceInfoActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/codemao/nemo/activity/DeviceInfoActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/DeviceInfoActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity$onCreate$2$disposable$2;->this$0:Lcom/codemao/nemo/activity/DeviceInfoActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 99
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/DeviceInfoActivity$onCreate$2$disposable$2;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .registers 3

    .line 100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "cancel"

    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    :cond_f
    const-string v0, "agree"

    .line 104
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 105
    iget-object p1, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity$onCreate$2$disposable$2;->this$0:Lcom/codemao/nemo/activity/DeviceInfoActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/DeviceInfoActivity;->access$savePicture(Lcom/codemao/nemo/activity/DeviceInfoActivity;)V

    goto :goto_25

    .line 108
    :cond_1d
    iget-object p1, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity$onCreate$2$disposable$2;->this$0:Lcom/codemao/nemo/activity/DeviceInfoActivity;

    const-string/jumbo v0, "需要读写权限，请同意授权"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_25
    :goto_25
    return-void
.end method
