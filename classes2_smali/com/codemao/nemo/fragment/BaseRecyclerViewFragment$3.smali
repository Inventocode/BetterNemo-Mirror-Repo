.class Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment$3;
.super Ljava/lang/Object;
.source "BaseRecyclerViewFragment.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;)V
    .registers 2

    .line 142
    iput-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment$3;->this$0:Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .registers 4

    .line 145
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment$3;->this$0:Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;

    iget-boolean v1, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoading:Z

    if-eqz v1, :cond_a

    .line 146
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-void

    .line 149
    :cond_a
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 150
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment$3;->this$0:Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;

    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->showError()V

    return-void

    .line 153
    :cond_1a
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment$3;->this$0:Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;

    const/4 v0, 0x0

    iput v0, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    .line 154
    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->getData()V

    return-void
.end method
