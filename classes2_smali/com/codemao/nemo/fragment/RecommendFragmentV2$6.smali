.class Lcom/codemao/nemo/fragment/RecommendFragmentV2$6;
.super Lcom/codemao/nemo/retrofit/response/CommonSubcriber;
.source "RecommendFragmentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/RecommendFragmentV2;->getRecommendListData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/retrofit/response/CommonSubcriber<",
        "Ljava/util/List<",
        "Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/RecommendFragmentV2;)V
    .registers 2

    .line 441
    iput-object p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$6;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    invoke-direct {p0}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 453
    iget-object p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$6;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoading:Z

    .line 454
    iput-boolean p2, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoadMore:Z

    .line 455
    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->afterLoading()V

    .line 456
    iget-object p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$6;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    iget-object p2, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iget-boolean p1, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->hasMore:Z

    invoke-virtual {p2, p1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 457
    iget-object p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$6;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-nez p1, :cond_25

    .line 458
    iget-object p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$6;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showError()V

    goto :goto_2c

    .line 460
    :cond_25
    iget-object p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$6;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    :goto_2c
    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 466
    iget-object p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$6;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoading:Z

    .line 467
    iput-boolean p2, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoadMore:Z

    .line 468
    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->afterLoading()V

    .line 469
    iget-object p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$6;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    iget-object p2, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iget-boolean p1, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->hasMore:Z

    invoke-virtual {p2, p1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 470
    iget-object p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$6;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->showError()V

    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 441
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/RecommendFragmentV2$6;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method protected onSuccess(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;",
            ">;)V"
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$6;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 446
    iget-object v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$6;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    invoke-static {v0, p1}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->access$300(Lcom/codemao/nemo/fragment/RecommendFragmentV2;Ljava/util/List;)V

    .line 447
    iget-object p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$6;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoading:Z

    .line 448
    iput-boolean v0, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoadMore:Z

    return-void
.end method
