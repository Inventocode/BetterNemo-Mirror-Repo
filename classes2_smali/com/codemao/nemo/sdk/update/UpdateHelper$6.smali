.class Lcom/codemao/nemo/sdk/update/UpdateHelper$6;
.super Ljava/lang/Object;
.source "UpdateHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/sdk/update/UpdateHelper;->updateDialog(Landroid/os/Handler;Lcn/codemao/android/update/vo/UpdateResultVO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/sdk/update/UpdateHelper;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/sdk/update/UpdateHelper;)V
    .registers 2

    .line 218
    iput-object p1, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper$6;->this$0:Lcom/codemao/nemo/sdk/update/UpdateHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 222
    iget-object p1, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper$6;->this$0:Lcom/codemao/nemo/sdk/update/UpdateHelper;

    invoke-static {p1}, Lcom/codemao/nemo/sdk/update/UpdateHelper;->access$600(Lcom/codemao/nemo/sdk/update/UpdateHelper;)Lcom/codemao/nemo/dialog/ReusableDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
