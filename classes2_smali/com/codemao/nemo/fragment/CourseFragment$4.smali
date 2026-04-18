.class Lcom/codemao/nemo/fragment/CourseFragment$4;
.super Lcom/codemao/nemo/retrofit/response/CommonSubcriber;
.source "CourseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CourseFragment;->getCourseData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/retrofit/response/CommonSubcriber<",
        "Lcom/codemao/nemo/bean/CourseV2ResponseModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/CourseFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/CourseFragment;)V
    .registers 2

    .line 282
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CourseFragment$4;->this$0:Lcom/codemao/nemo/fragment/CourseFragment;

    invoke-direct {p0}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 296
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CourseFragment$4;->this$0:Lcom/codemao/nemo/fragment/CourseFragment;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoading:Z

    .line 297
    iput-boolean p2, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoadMore:Z

    .line 298
    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->afterLoading()V

    .line 299
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CourseFragment$4;->this$0:Lcom/codemao/nemo/fragment/CourseFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-nez p1, :cond_1c

    .line 300
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CourseFragment$4;->this$0:Lcom/codemao/nemo/fragment/CourseFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showError()V

    goto :goto_23

    .line 302
    :cond_1c
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CourseFragment$4;->this$0:Lcom/codemao/nemo/fragment/CourseFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 304
    :goto_23
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CourseFragment$4;->this$0:Lcom/codemao/nemo/fragment/CourseFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 309
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CourseFragment$4;->this$0:Lcom/codemao/nemo/fragment/CourseFragment;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoading:Z

    .line 310
    iput-boolean p2, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoadMore:Z

    .line 311
    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->afterLoading()V

    .line 312
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CourseFragment$4;->this$0:Lcom/codemao/nemo/fragment/CourseFragment;

    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/CourseFragment;->showError()V

    .line 313
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CourseFragment$4;->this$0:Lcom/codemao/nemo/fragment/CourseFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    return-void
.end method

.method protected onSuccess(Lcom/codemao/nemo/bean/CourseV2ResponseModel;)V
    .registers 4

    .line 285
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CourseFragment$4;->this$0:Lcom/codemao/nemo/fragment/CourseFragment;

    invoke-static {v0, p1}, Lcom/codemao/nemo/fragment/CourseFragment;->access$002(Lcom/codemao/nemo/fragment/CourseFragment;Lcom/codemao/nemo/bean/CourseV2ResponseModel;)Lcom/codemao/nemo/bean/CourseV2ResponseModel;

    .line 286
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CourseFragment$4;->this$0:Lcom/codemao/nemo/fragment/CourseFragment;

    invoke-static {v0, p1}, Lcom/codemao/nemo/fragment/CourseFragment;->access$300(Lcom/codemao/nemo/fragment/CourseFragment;Lcom/codemao/nemo/bean/CourseV2ResponseModel;)Ljava/util/List;

    move-result-object p1

    .line 287
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CourseFragment$4;->this$0:Lcom/codemao/nemo/fragment/CourseFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoading:Z

    .line 288
    iput-boolean v1, v0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoadMore:Z

    .line 289
    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->afterLoading()V

    .line 290
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CourseFragment$4;->this$0:Lcom/codemao/nemo/fragment/CourseFragment;

    invoke-static {v0, p1}, Lcom/codemao/nemo/fragment/CourseFragment;->access$400(Lcom/codemao/nemo/fragment/CourseFragment;Ljava/util/List;)V

    .line 291
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CourseFragment$4;->this$0:Lcom/codemao/nemo/fragment/CourseFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 282
    check-cast p1, Lcom/codemao/nemo/bean/CourseV2ResponseModel;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/CourseFragment$4;->onSuccess(Lcom/codemao/nemo/bean/CourseV2ResponseModel;)V

    return-void
.end method
