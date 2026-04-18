.class Lcom/codemao/nemo/fragment/CourseInfoFragment$3;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "CourseInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CourseInfoFragment;->getData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Lcom/codemao/nemo/bean/CourseListInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/CourseInfoFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/CourseInfoFragment;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CourseInfoFragment$3;->this$0:Lcom/codemao/nemo/fragment/CourseInfoFragment;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 141
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CourseInfoFragment$3;->this$0:Lcom/codemao/nemo/fragment/CourseInfoFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/codemao/nemo/fragment/CourseInfoFragment;->access$102(Lcom/codemao/nemo/fragment/CourseInfoFragment;Z)Z

    .line 142
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CourseInfoFragment$3;->this$0:Lcom/codemao/nemo/fragment/CourseInfoFragment;

    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->afterLoading()V

    .line 144
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CourseInfoFragment$3;->this$0:Lcom/codemao/nemo/fragment/CourseInfoFragment;

    iput-boolean p2, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoading:Z

    .line 145
    iput-boolean p2, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoadMore:Z

    .line 146
    iget-object p2, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iget-boolean p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->hasMore:Z

    invoke-virtual {p2, p1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMoreWithoutFooter(Z)V

    .line 147
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CourseInfoFragment$3;->this$0:Lcom/codemao/nemo/fragment/CourseInfoFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2a

    .line 148
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CourseInfoFragment$3;->this$0:Lcom/codemao/nemo/fragment/CourseInfoFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showError()V

    goto :goto_31

    .line 150
    :cond_2a
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CourseInfoFragment$3;->this$0:Lcom/codemao/nemo/fragment/CourseInfoFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    :goto_31
    return-void
.end method

.method public onNetError()V
    .registers 3

    .line 156
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CourseInfoFragment$3;->this$0:Lcom/codemao/nemo/fragment/CourseInfoFragment;

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->afterLoading()V

    .line 157
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CourseInfoFragment$3;->this$0:Lcom/codemao/nemo/fragment/CourseInfoFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/nemo/fragment/CourseInfoFragment;->access$102(Lcom/codemao/nemo/fragment/CourseInfoFragment;Z)Z

    .line 158
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CourseInfoFragment$3;->this$0:Lcom/codemao/nemo/fragment/CourseInfoFragment;

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/CourseInfoFragment;->showError()V

    .line 159
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CourseInfoFragment$3;->this$0:Lcom/codemao/nemo/fragment/CourseInfoFragment;

    iput-boolean v1, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoading:Z

    .line 160
    iput-boolean v1, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoadMore:Z

    .line 161
    iget-object v1, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iget-boolean v0, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->hasMore:Z

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMoreWithoutFooter(Z)V

    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/bean/CourseListInfo;)V
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CourseInfoFragment$3;->this$0:Lcom/codemao/nemo/fragment/CourseInfoFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 132
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CourseInfoFragment$3;->this$0:Lcom/codemao/nemo/fragment/CourseInfoFragment;

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->afterLoading()V

    .line 133
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CourseInfoFragment$3;->this$0:Lcom/codemao/nemo/fragment/CourseInfoFragment;

    invoke-static {v0, p1}, Lcom/codemao/nemo/fragment/CourseInfoFragment;->access$000(Lcom/codemao/nemo/fragment/CourseInfoFragment;Lcom/codemao/nemo/bean/CourseListInfo;)V

    .line 134
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CourseInfoFragment$3;->this$0:Lcom/codemao/nemo/fragment/CourseInfoFragment;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoading:Z

    .line 135
    iput-boolean v0, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoadMore:Z

    .line 136
    invoke-static {p1, v0}, Lcom/codemao/nemo/fragment/CourseInfoFragment;->access$102(Lcom/codemao/nemo/fragment/CourseInfoFragment;Z)Z

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 128
    check-cast p1, Lcom/codemao/nemo/bean/CourseListInfo;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/CourseInfoFragment$3;->onSuc(Lcom/codemao/nemo/bean/CourseListInfo;)V

    return-void
.end method
