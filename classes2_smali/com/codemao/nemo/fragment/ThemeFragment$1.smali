.class Lcom/codemao/nemo/fragment/ThemeFragment$1;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "ThemeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/ThemeFragment;->getThemeData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Lcom/codemao/nemo/bean/SubjectInfos;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/ThemeFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/ThemeFragment;)V
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/codemao/nemo/fragment/ThemeFragment$1;->this$0:Lcom/codemao/nemo/fragment/ThemeFragment;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 145
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeFragment$1;->this$0:Lcom/codemao/nemo/fragment/ThemeFragment;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoading:Z

    .line 146
    iput-boolean p2, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoadMore:Z

    .line 147
    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->afterLoading()V

    .line 148
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeFragment$1;->this$0:Lcom/codemao/nemo/fragment/ThemeFragment;

    iget-object p2, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iget-boolean p1, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->hasMore:Z

    invoke-virtual {p2, p1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 149
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeFragment$1;->this$0:Lcom/codemao/nemo/fragment/ThemeFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-nez p1, :cond_25

    .line 150
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeFragment$1;->this$0:Lcom/codemao/nemo/fragment/ThemeFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showError()V

    goto :goto_2c

    .line 152
    :cond_25
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeFragment$1;->this$0:Lcom/codemao/nemo/fragment/ThemeFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    :goto_2c
    return-void
.end method

.method public onNetError()V
    .registers 3

    .line 158
    iget-object v0, p0, Lcom/codemao/nemo/fragment/ThemeFragment$1;->this$0:Lcom/codemao/nemo/fragment/ThemeFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoading:Z

    .line 159
    iput-boolean v1, v0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoadMore:Z

    .line 160
    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->afterLoading()V

    .line 161
    iget-object v0, p0, Lcom/codemao/nemo/fragment/ThemeFragment$1;->this$0:Lcom/codemao/nemo/fragment/ThemeFragment;

    iget-object v1, v0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iget-boolean v0, v0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->hasMore:Z

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 162
    iget-object v0, p0, Lcom/codemao/nemo/fragment/ThemeFragment$1;->this$0:Lcom/codemao/nemo/fragment/ThemeFragment;

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/ThemeFragment;->showError()V

    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/bean/SubjectInfos;)V
    .registers 3

    .line 135
    iget-object v0, p0, Lcom/codemao/nemo/fragment/ThemeFragment$1;->this$0:Lcom/codemao/nemo/fragment/ThemeFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 136
    iget-object v0, p0, Lcom/codemao/nemo/fragment/ThemeFragment$1;->this$0:Lcom/codemao/nemo/fragment/ThemeFragment;

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->afterLoading()V

    .line 137
    iget-object v0, p0, Lcom/codemao/nemo/fragment/ThemeFragment$1;->this$0:Lcom/codemao/nemo/fragment/ThemeFragment;

    invoke-static {v0, p1}, Lcom/codemao/nemo/fragment/ThemeFragment;->access$000(Lcom/codemao/nemo/fragment/ThemeFragment;Lcom/codemao/nemo/bean/SubjectInfos;)V

    .line 138
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeFragment$1;->this$0:Lcom/codemao/nemo/fragment/ThemeFragment;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoading:Z

    .line 139
    iput-boolean v0, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoadMore:Z

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 132
    check-cast p1, Lcom/codemao/nemo/bean/SubjectInfos;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/ThemeFragment$1;->onSuc(Lcom/codemao/nemo/bean/SubjectInfos;)V

    return-void
.end method
