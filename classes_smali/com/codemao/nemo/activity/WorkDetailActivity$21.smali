.class Lcom/codemao/nemo/activity/WorkDetailActivity$21;
.super Ljava/lang/Object;
.source "WorkDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkDetailActivity;->showBuyKittenWork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V
    .registers 2

    .line 808
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$21;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 811
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$21;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$2000(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 812
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$21;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$2100(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object p1

    if-nez p1, :cond_1d

    .line 813
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$21;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    new-instance v0, Lcom/codemao/nemo/dialog/LoadingDialog;

    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$21;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-direct {v0, v1}, Lcom/codemao/nemo/dialog/LoadingDialog;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$2102(Lcom/codemao/nemo/activity/WorkDetailActivity;Lcom/codemao/nemo/dialog/LoadingDialog;)Lcom/codemao/nemo/dialog/LoadingDialog;

    .line 815
    :cond_1d
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$21;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$2100(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object p1

    const-string/jumbo v0, "作品购买中"

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/LoadingDialog;->setCotent(Ljava/lang/String;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/LoadingDialog;->show()V

    .line 816
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$21;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$2200(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    return-void
.end method
