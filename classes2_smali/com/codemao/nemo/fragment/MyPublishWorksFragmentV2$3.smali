.class Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$3;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "MyPublishWorksFragmentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->getData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Lcom/codemao/nemo/bean/UserPublisWorks;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;)V
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 147
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoading:Z

    .line 148
    iput-boolean p2, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoadMore:Z

    .line 149
    invoke-static {p1, p2}, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->access$302(Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;Z)Z

    .line 150
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->afterLoading()V

    .line 151
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 152
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_29

    .line 153
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showError()V

    goto :goto_30

    .line 155
    :cond_29
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    :goto_30
    return-void
.end method

.method public onNetError()V
    .registers 3

    .line 161
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->access$302(Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;Z)Z

    .line 162
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

    iput-boolean v1, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoading:Z

    .line 163
    iput-boolean v1, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoadMore:Z

    .line 164
    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->afterLoading()V

    .line 165
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 166
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_29

    .line 167
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showError()V

    goto :goto_30

    .line 169
    :cond_29
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->hide()V

    :goto_30
    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/bean/UserPublisWorks;)V
    .registers 3

    .line 138
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->afterLoading()V

    .line 139
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

    invoke-static {v0, p1}, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->access$200(Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;Lcom/codemao/nemo/bean/UserPublisWorks;)V

    .line 140
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->access$302(Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;Z)Z

    .line 141
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

    iput-boolean v0, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoading:Z

    .line 142
    iput-boolean v0, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoadMore:Z

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 135
    check-cast p1, Lcom/codemao/nemo/bean/UserPublisWorks;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$3;->onSuc(Lcom/codemao/nemo/bean/UserPublisWorks;)V

    return-void
.end method
