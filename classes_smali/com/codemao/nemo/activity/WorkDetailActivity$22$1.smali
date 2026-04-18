.class Lcom/codemao/nemo/activity/WorkDetailActivity$22$1;
.super Ljava/lang/Object;
.source "WorkDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkDetailActivity$22;->onNetError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/activity/WorkDetailActivity$22;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/WorkDetailActivity$22;)V
    .registers 2

    .line 847
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$22$1;->this$1:Lcom/codemao/nemo/activity/WorkDetailActivity$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 850
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$22$1;->this$1:Lcom/codemao/nemo/activity/WorkDetailActivity$22;

    iget-object v0, v0, Lcom/codemao/nemo/activity/WorkDetailActivity$22;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    .line 851
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$22$1;->this$1:Lcom/codemao/nemo/activity/WorkDetailActivity$22;

    iget-object v0, v0, Lcom/codemao/nemo/activity/WorkDetailActivity$22;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$2100(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
