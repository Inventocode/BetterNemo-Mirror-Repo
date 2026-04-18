.class Lcom/codemao/nemo/activity/WorkDetailActivity$18;
.super Ljava/lang/Object;
.source "WorkDetailActivity.java"

# interfaces
.implements Lcom/codemao/nemo/listener/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkDetailActivity;->setWorkDetailData()V
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

    .line 706
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$18;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 5

    .line 709
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$18;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$600(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/view/SortDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 710
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$18;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$1500(Lcom/codemao/nemo/activity/WorkDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/TypeItemData;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/TypeItemData;->getId()I

    move-result p1

    if-eqz p1, :cond_5d

    const/4 v0, 0x1

    if-eq p1, v0, :cond_57

    const/4 v0, 0x2

    if-eq p1, v0, :cond_51

    const/4 v0, 0x3

    if-eq p1, v0, :cond_25

    goto :goto_62

    .line 721
    :cond_25
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$18;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-virtual {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->getReportParams()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v0, "作品详情页-点击作品举报"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 722
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$18;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    const-class v1, Lcom/codemao/nemo/activity/TipOffActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 723
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$18;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$1100(Lcom/codemao/nemo/activity/WorkDetailActivity;)J

    move-result-wide v0

    const-string v2, "id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v1, "type"

    .line 724
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 725
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$18;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-virtual {v0, p1}, Lcom/giu/xzz/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_62

    .line 718
    :cond_51
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$18;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$1800(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    goto :goto_62

    .line 715
    :cond_57
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$18;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$1700(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    goto :goto_62

    .line 712
    :cond_5d
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$18;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$1600(Lcom/codemao/nemo/activity/WorkDetailActivity;)V

    :goto_62
    return-void
.end method
