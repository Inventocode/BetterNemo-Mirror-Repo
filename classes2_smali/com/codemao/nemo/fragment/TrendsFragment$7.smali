.class Lcom/codemao/nemo/fragment/TrendsFragment$7;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "TrendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/TrendsFragment;->getTrednsList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Lcom/codemao/nemo/bean/TrendsListInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/TrendsFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/TrendsFragment;)V
    .registers 2

    .line 330
    iput-object p1, p0, Lcom/codemao/nemo/fragment/TrendsFragment$7;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 349
    iget-object p2, p0, Lcom/codemao/nemo/fragment/TrendsFragment$7;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/codemao/nemo/fragment/TrendsFragment;->access$702(Lcom/codemao/nemo/fragment/TrendsFragment;Z)Z

    .line 350
    iget-object p2, p0, Lcom/codemao/nemo/fragment/TrendsFragment$7;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    iput-boolean v0, p2, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoading:Z

    .line 351
    iput-boolean v0, p2, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoadMore:Z

    .line 352
    iget-object v0, p2, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iget-boolean p2, p2, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->hasMore:Z

    invoke-virtual {v0, p2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 353
    iget-object p2, p0, Lcom/codemao/nemo/fragment/TrendsFragment$7;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    invoke-virtual {p2}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->afterLoading()V

    const-string p2, "40103009"

    .line 354
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 355
    iget-object p1, p0, Lcom/codemao/nemo/fragment/TrendsFragment$7;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showClose()V

    goto :goto_41

    .line 356
    :cond_28
    iget-object p1, p0, Lcom/codemao/nemo/fragment/TrendsFragment$7;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-nez p1, :cond_3a

    .line 357
    iget-object p1, p0, Lcom/codemao/nemo/fragment/TrendsFragment$7;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showError()V

    goto :goto_41

    .line 359
    :cond_3a
    iget-object p1, p0, Lcom/codemao/nemo/fragment/TrendsFragment$7;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    :goto_41
    return-void
.end method

.method public onNetError()V
    .registers 3

    .line 365
    iget-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment$7;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/nemo/fragment/TrendsFragment;->access$702(Lcom/codemao/nemo/fragment/TrendsFragment;Z)Z

    .line 366
    iget-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment$7;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    iput-boolean v1, v0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoading:Z

    .line 367
    iput-boolean v1, v0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoadMore:Z

    .line 368
    iget-object v1, v0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iget-boolean v0, v0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->hasMore:Z

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 369
    iget-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment$7;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->afterLoading()V

    .line 370
    iget-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment$7;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/TrendsFragment;->showError()V

    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/bean/TrendsListInfo;)V
    .registers 4

    .line 333
    iget-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment$7;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 334
    iget-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment$7;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->afterLoading()V

    .line 335
    iget-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment$7;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    invoke-static {v0, p1}, Lcom/codemao/nemo/fragment/TrendsFragment;->access$500(Lcom/codemao/nemo/fragment/TrendsFragment;Lcom/codemao/nemo/bean/TrendsListInfo;)V

    .line 336
    iget-object p1, p0, Lcom/codemao/nemo/fragment/TrendsFragment$7;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    .line 337
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 339
    :cond_1b
    iget-object p1, p0, Lcom/codemao/nemo/fragment/TrendsFragment$7;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/TrendsFragment;->access$600(Lcom/codemao/nemo/fragment/TrendsFragment;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 340
    iget-object p1, p0, Lcom/codemao/nemo/fragment/TrendsFragment$7;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/TrendsFragment;->access$600(Lcom/codemao/nemo/fragment/TrendsFragment;)Landroid/view/View;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 342
    :cond_2e
    iget-object p1, p0, Lcom/codemao/nemo/fragment/TrendsFragment$7;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    iput-boolean v0, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoading:Z

    .line 343
    iput-boolean v0, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoadMore:Z

    .line 344
    invoke-static {p1, v0}, Lcom/codemao/nemo/fragment/TrendsFragment;->access$702(Lcom/codemao/nemo/fragment/TrendsFragment;Z)Z

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 330
    check-cast p1, Lcom/codemao/nemo/bean/TrendsListInfo;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/TrendsFragment$7;->onSuc(Lcom/codemao/nemo/bean/TrendsListInfo;)V

    return-void
.end method
