.class Lcom/codemao/nemo/fragment/LatestFragmentV3$3;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "LatestFragmentV3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/LatestFragmentV3;->getData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Lcom/codemao/nemo/bean/LatestWorks;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/LatestFragmentV3;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3$3;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 160
    iget-object p2, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3$3;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/codemao/nemo/fragment/LatestFragmentV3;->access$302(Lcom/codemao/nemo/fragment/LatestFragmentV3;Z)Z

    .line 161
    iget-object p2, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3$3;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;

    iput-boolean v0, p2, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoading:Z

    .line 162
    iput-boolean v0, p2, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoadMore:Z

    .line 163
    iget-object v0, p2, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iget-boolean p2, p2, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->hasMore:Z

    invoke-virtual {v0, p2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 164
    iget-object p2, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3$3;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;

    invoke-virtual {p2}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->afterLoading()V

    const-string p2, "40103010"

    .line 165
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 166
    iget-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3$3;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showClose()V

    goto :goto_41

    .line 167
    :cond_28
    iget-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3$3;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-nez p1, :cond_3a

    .line 168
    iget-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3$3;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showError()V

    goto :goto_41

    .line 170
    :cond_3a
    iget-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3$3;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    :goto_41
    return-void
.end method

.method public onNetError()V
    .registers 3

    .line 176
    iget-object v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3$3;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/nemo/fragment/LatestFragmentV3;->access$302(Lcom/codemao/nemo/fragment/LatestFragmentV3;Z)Z

    .line 178
    iget-object v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3$3;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;

    iput-boolean v1, v0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoading:Z

    .line 179
    iput-boolean v1, v0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoadMore:Z

    .line 180
    iget-object v1, v0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iget-boolean v0, v0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->hasMore:Z

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 181
    iget-object v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3$3;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->afterLoading()V

    .line 183
    iget-object v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3$3;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/LatestFragmentV3;->showError()V

    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/bean/LatestWorks;)V
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3$3;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 150
    iget-object v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3$3;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->afterLoading()V

    .line 151
    iget-object v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3$3;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;

    invoke-static {v0, p1}, Lcom/codemao/nemo/fragment/LatestFragmentV3;->access$200(Lcom/codemao/nemo/fragment/LatestFragmentV3;Lcom/codemao/nemo/bean/LatestWorks;)V

    .line 152
    iget-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3$3;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoading:Z

    .line 153
    iput-boolean v0, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoadMore:Z

    .line 154
    invoke-static {p1, v0}, Lcom/codemao/nemo/fragment/LatestFragmentV3;->access$302(Lcom/codemao/nemo/fragment/LatestFragmentV3;Z)Z

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 146
    check-cast p1, Lcom/codemao/nemo/bean/LatestWorks;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/LatestFragmentV3$3;->onSuc(Lcom/codemao/nemo/bean/LatestWorks;)V

    return-void
.end method
