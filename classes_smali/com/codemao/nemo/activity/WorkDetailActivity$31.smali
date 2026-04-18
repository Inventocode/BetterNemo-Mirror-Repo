.class Lcom/codemao/nemo/activity/WorkDetailActivity$31;
.super Ljava/lang/Object;
.source "WorkDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkDetailActivity;->editBlocks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

.field final synthetic val$customDialogTypeOne:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/WorkDetailActivity;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;)V
    .registers 3

    .line 1309
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$31;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iput-object p2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$31;->val$customDialogTypeOne:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1312
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$31;->val$customDialogTypeOne:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1313
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$31;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$2700(Lcom/codemao/nemo/activity/WorkDetailActivity;I)V

    return-void
.end method
