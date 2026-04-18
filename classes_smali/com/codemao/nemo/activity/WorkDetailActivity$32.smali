.class Lcom/codemao/nemo/activity/WorkDetailActivity$32;
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

.field final synthetic val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/WorkDetailActivity;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 4

    .line 1316
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$32;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iput-object p2, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$32;->val$customDialogTypeOne:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    iput-object p3, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$32;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1320
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$32;->val$customDialogTypeOne:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1321
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$32;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$32;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$2800(Lcom/codemao/nemo/activity/WorkDetailActivity;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    return-void
.end method
