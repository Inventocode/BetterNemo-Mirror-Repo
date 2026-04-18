.class Lcom/codemao/nemo/activity/WorkDetailActivity$43$1;
.super Ljava/lang/Object;
.source "WorkDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkDetailActivity$43;->onNetError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/activity/WorkDetailActivity$43;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/WorkDetailActivity$43;)V
    .registers 2

    .line 1703
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$43$1;->this$1:Lcom/codemao/nemo/activity/WorkDetailActivity$43;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1706
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$43$1;->this$1:Lcom/codemao/nemo/activity/WorkDetailActivity$43;

    iget-object v0, v0, Lcom/codemao/nemo/activity/WorkDetailActivity$43;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/WorkDetailActivity;->llCollect:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1707
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$43$1;->this$1:Lcom/codemao/nemo/activity/WorkDetailActivity$43;

    iget-object v0, v0, Lcom/codemao/nemo/activity/WorkDetailActivity$43;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void
.end method
