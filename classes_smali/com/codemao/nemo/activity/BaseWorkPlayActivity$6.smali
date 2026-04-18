.class Lcom/codemao/nemo/activity/BaseWorkPlayActivity$6;
.super Ljava/lang/Object;
.source "BaseWorkPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->hideLoadingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/BaseWorkPlayActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/BaseWorkPlayActivity;)V
    .registers 2

    .line 798
    iput-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$6;->this$0:Lcom/codemao/nemo/activity/BaseWorkPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 801
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$6;->this$0:Lcom/codemao/nemo/activity/BaseWorkPlayActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->access$200(Lcom/codemao/nemo/activity/BaseWorkPlayActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 802
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$6;->this$0:Lcom/codemao/nemo/activity/BaseWorkPlayActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->access$200(Lcom/codemao/nemo/activity/BaseWorkPlayActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_11
    return-void
.end method
