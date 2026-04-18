.class Lcom/codemao/nemo/fragment/WorkDetailFragment$4;
.super Ljava/lang/Object;
.source "WorkDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/WorkDetailFragment;->setData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/WorkDetailFragment;)V
    .registers 2

    .line 357
    iput-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$4;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 361
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$4;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_16

    .line 362
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$4;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 365
    :cond_16
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$4;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/activity/ReworkHistoryActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 366
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$4;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->access$000(Lcom/codemao/nemo/fragment/WorkDetailFragment;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getId()J

    move-result-wide v0

    const-string v2, "work_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 367
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$4;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-virtual {v0, p1}, Lcom/giu/xzz/BaseFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
