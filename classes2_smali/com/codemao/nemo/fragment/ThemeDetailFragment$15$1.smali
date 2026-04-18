.class Lcom/codemao/nemo/fragment/ThemeDetailFragment$15$1;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "ThemeDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/ThemeDetailFragment$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Lcom/codemao/nemo/bean/SubjectWorks;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/fragment/ThemeDetailFragment$15;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/ThemeDetailFragment$15;)V
    .registers 2

    .line 442
    iput-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$15$1;->this$1:Lcom/codemao/nemo/fragment/ThemeDetailFragment$15;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 454
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$15$1;->this$1:Lcom/codemao/nemo/fragment/ThemeDetailFragment$15;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/ThemeDetailFragment$15;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->afterLoading()V

    .line 455
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$15$1;->this$1:Lcom/codemao/nemo/fragment/ThemeDetailFragment$15;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/ThemeDetailFragment$15;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->isLoading:Z

    .line 456
    iput-boolean p2, p1, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->isLoadMore:Z

    .line 457
    iget-object p2, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iget-boolean p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->hasMore:Z

    invoke-virtual {p2, p1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 458
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$15$1;->this$1:Lcom/codemao/nemo/fragment/ThemeDetailFragment$15;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/ThemeDetailFragment$15;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2b

    .line 459
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$15$1;->this$1:Lcom/codemao/nemo/fragment/ThemeDetailFragment$15;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/ThemeDetailFragment$15;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->showError()V

    goto :goto_34

    .line 461
    :cond_2b
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$15$1;->this$1:Lcom/codemao/nemo/fragment/ThemeDetailFragment$15;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/ThemeDetailFragment$15;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    :goto_34
    return-void
.end method

.method public onNetError()V
    .registers 3

    .line 467
    iget-object v0, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$15$1;->this$1:Lcom/codemao/nemo/fragment/ThemeDetailFragment$15;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$15;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->afterLoading()V

    .line 468
    iget-object v0, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$15$1;->this$1:Lcom/codemao/nemo/fragment/ThemeDetailFragment$15;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$15;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->isLoading:Z

    .line 469
    iput-boolean v1, v0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->isLoadMore:Z

    .line 470
    iget-object v1, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iget-boolean v0, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->hasMore:Z

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 471
    iget-object v0, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$15$1;->this$1:Lcom/codemao/nemo/fragment/ThemeDetailFragment$15;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$15;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->showError()V

    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/bean/SubjectWorks;)V
    .registers 3

    .line 445
    iget-object v0, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$15$1;->this$1:Lcom/codemao/nemo/fragment/ThemeDetailFragment$15;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$15;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 446
    iget-object v0, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$15$1;->this$1:Lcom/codemao/nemo/fragment/ThemeDetailFragment$15;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$15;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->afterLoading()V

    .line 447
    iget-object v0, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$15$1;->this$1:Lcom/codemao/nemo/fragment/ThemeDetailFragment$15;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$15;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    invoke-static {v0, p1}, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->access$1100(Lcom/codemao/nemo/fragment/ThemeDetailFragment;Lcom/codemao/nemo/bean/SubjectWorks;)V

    .line 448
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$15$1;->this$1:Lcom/codemao/nemo/fragment/ThemeDetailFragment$15;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/ThemeDetailFragment$15;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->isLoading:Z

    .line 449
    iput-boolean v0, p1, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->isLoadMore:Z

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 442
    check-cast p1, Lcom/codemao/nemo/bean/SubjectWorks;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/ThemeDetailFragment$15$1;->onSuc(Lcom/codemao/nemo/bean/SubjectWorks;)V

    return-void
.end method
