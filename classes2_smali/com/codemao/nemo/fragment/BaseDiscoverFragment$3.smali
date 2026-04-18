.class Lcom/codemao/nemo/fragment/BaseDiscoverFragment$3;
.super Ljava/lang/Object;
.source "BaseDiscoverFragment.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/BaseDiscoverFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/BaseDiscoverFragment;)V
    .registers 2

    .line 140
    iput-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment$3;->this$0:Lcom/codemao/nemo/fragment/BaseDiscoverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .registers 4

    .line 143
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment$3;->this$0:Lcom/codemao/nemo/fragment/BaseDiscoverFragment;

    iget-boolean v1, v0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoading:Z

    if-eqz v1, :cond_a

    .line 144
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-void

    .line 147
    :cond_a
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 148
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment$3;->this$0:Lcom/codemao/nemo/fragment/BaseDiscoverFragment;

    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->showError()V

    return-void

    .line 152
    :cond_1a
    :try_start_1a
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment$3;->this$0:Lcom/codemao/nemo/fragment/BaseDiscoverFragment;

    iget v0, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->scrollStart:I

    iget v1, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->scrollEnd:I

    invoke-virtual {p1, v0, v1}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->setViewWorkIds(II)Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_23} :catch_23

    .line 155
    :catch_23
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment$3;->this$0:Lcom/codemao/nemo/fragment/BaseDiscoverFragment;

    const/4 v0, -0x1

    iput v0, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->scrollEnd:I

    .line 156
    iput v0, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->scrollStart:I

    const/4 v0, 0x0

    .line 157
    iput v0, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->offset:I

    .line 158
    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->getData()V

    return-void
.end method
