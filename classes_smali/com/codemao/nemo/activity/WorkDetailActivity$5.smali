.class Lcom/codemao/nemo/activity/WorkDetailActivity$5;
.super Ljava/lang/Object;
.source "WorkDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkDetailActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 413
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$5;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 417
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$5;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$500(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    .line 420
    :cond_9
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$5;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$600(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/view/SortDialog;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 421
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$5;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$600(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/view/SortDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$5;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/WorkDetailActivity;->ivMore:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/SortDialog;->showFitPostion(Landroid/view/View;)V

    :cond_1e
    return-void
.end method
