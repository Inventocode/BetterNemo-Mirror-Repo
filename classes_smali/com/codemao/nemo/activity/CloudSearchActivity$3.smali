.class Lcom/codemao/nemo/activity/CloudSearchActivity$3;
.super Lcom/codemao/nemo/retrofit/response/CommonSubcriber;
.source "CloudSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/CloudSearchActivity;->search(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/retrofit/response/CommonSubcriber<",
        "Ljava/util/List<",
        "Lcom/codemao/nemo/bean/CloudData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/CloudSearchActivity;

.field final synthetic val$page:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/CloudSearchActivity;I)V
    .registers 3

    .line 141
    iput-object p1, p0, Lcom/codemao/nemo/activity/CloudSearchActivity$3;->this$0:Lcom/codemao/nemo/activity/CloudSearchActivity;

    iput p2, p0, Lcom/codemao/nemo/activity/CloudSearchActivity$3;->val$page:I

    invoke-direct {p0}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 183
    iget-object p1, p0, Lcom/codemao/nemo/activity/CloudSearchActivity$3;->this$0:Lcom/codemao/nemo/activity/CloudSearchActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/CloudSearchActivity;->smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->loadMoreComplete()V

    .line 184
    iget-object p1, p0, Lcom/codemao/nemo/activity/CloudSearchActivity$3;->this$0:Lcom/codemao/nemo/activity/CloudSearchActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/CloudSearchActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 185
    iget-object p1, p0, Lcom/codemao/nemo/activity/CloudSearchActivity$3;->this$0:Lcom/codemao/nemo/activity/CloudSearchActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CloudSearchActivity;->access$300(Lcom/codemao/nemo/activity/CloudSearchActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_28

    iget p1, p0, Lcom/codemao/nemo/activity/CloudSearchActivity$3;->val$page:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_20

    goto :goto_28

    .line 188
    :cond_20
    iget-object p1, p0, Lcom/codemao/nemo/activity/CloudSearchActivity$3;->this$0:Lcom/codemao/nemo/activity/CloudSearchActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/CloudSearchActivity;->smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    goto :goto_2f

    .line 186
    :cond_28
    :goto_28
    iget-object p1, p0, Lcom/codemao/nemo/activity/CloudSearchActivity$3;->this$0:Lcom/codemao/nemo/activity/CloudSearchActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/CloudSearchActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showError()V

    :goto_2f
    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 194
    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/activity/CloudSearchActivity$3;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 141
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/CloudSearchActivity$3;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method protected onSuccess(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CloudData;",
            ">;)V"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/codemao/nemo/activity/CloudSearchActivity$3;->this$0:Lcom/codemao/nemo/activity/CloudSearchActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/CloudSearchActivity;->smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->loadMoreComplete()V

    .line 146
    iget-object v0, p0, Lcom/codemao/nemo/activity/CloudSearchActivity$3;->this$0:Lcom/codemao/nemo/activity/CloudSearchActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/CloudSearchActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->hide()V

    const/4 v0, 0x1

    if-eqz p1, :cond_71

    .line 147
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_18

    goto :goto_71

    .line 156
    :cond_18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_28

    .line 157
    iget-object v1, p0, Lcom/codemao/nemo/activity/CloudSearchActivity$3;->this$0:Lcom/codemao/nemo/activity/CloudSearchActivity;

    iget-object v1, v1, Lcom/codemao/nemo/activity/CloudSearchActivity;->smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    goto :goto_30

    .line 159
    :cond_28
    iget-object v1, p0, Lcom/codemao/nemo/activity/CloudSearchActivity$3;->this$0:Lcom/codemao/nemo/activity/CloudSearchActivity;

    iget-object v1, v1, Lcom/codemao/nemo/activity/CloudSearchActivity;->smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 162
    :goto_30
    iget v1, p0, Lcom/codemao/nemo/activity/CloudSearchActivity$3;->val$page:I

    if-ne v1, v0, :cond_3d

    .line 163
    iget-object v0, p0, Lcom/codemao/nemo/activity/CloudSearchActivity$3;->this$0:Lcom/codemao/nemo/activity/CloudSearchActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CloudSearchActivity;->access$300(Lcom/codemao/nemo/activity/CloudSearchActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 165
    :cond_3d
    iget-object v0, p0, Lcom/codemao/nemo/activity/CloudSearchActivity$3;->this$0:Lcom/codemao/nemo/activity/CloudSearchActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CloudSearchActivity;->access$300(Lcom/codemao/nemo/activity/CloudSearchActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 166
    iget-object p1, p0, Lcom/codemao/nemo/activity/CloudSearchActivity$3;->this$0:Lcom/codemao/nemo/activity/CloudSearchActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CloudSearchActivity;->access$100(Lcom/codemao/nemo/activity/CloudSearchActivity;)Lcom/codemao/nemo/delegates/CloudItemDelegate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/delegates/CloudItemDelegate;->getNameWitdh()I

    move-result p1

    if-gtz p1, :cond_60

    .line 167
    iget-object p1, p0, Lcom/codemao/nemo/activity/CloudSearchActivity$3;->this$0:Lcom/codemao/nemo/activity/CloudSearchActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/CloudSearchActivity;->smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v0, Lcom/codemao/nemo/activity/CloudSearchActivity$3$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/CloudSearchActivity$3$1;-><init>(Lcom/codemao/nemo/activity/CloudSearchActivity$3;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 177
    :cond_60
    iget-object p1, p0, Lcom/codemao/nemo/activity/CloudSearchActivity$3;->this$0:Lcom/codemao/nemo/activity/CloudSearchActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CloudSearchActivity;->access$400(Lcom/codemao/nemo/activity/CloudSearchActivity;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 178
    iget-object p1, p0, Lcom/codemao/nemo/activity/CloudSearchActivity$3;->this$0:Lcom/codemao/nemo/activity/CloudSearchActivity;

    iget v0, p0, Lcom/codemao/nemo/activity/CloudSearchActivity$3;->val$page:I

    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/CloudSearchActivity;->access$502(Lcom/codemao/nemo/activity/CloudSearchActivity;I)I

    return-void

    .line 148
    :cond_71
    :goto_71
    iget-object p1, p0, Lcom/codemao/nemo/activity/CloudSearchActivity$3;->this$0:Lcom/codemao/nemo/activity/CloudSearchActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CloudSearchActivity;->access$300(Lcom/codemao/nemo/activity/CloudSearchActivity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8e

    iget-object p1, p0, Lcom/codemao/nemo/activity/CloudSearchActivity$3;->this$0:Lcom/codemao/nemo/activity/CloudSearchActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CloudSearchActivity;->access$300(Lcom/codemao/nemo/activity/CloudSearchActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_86

    goto :goto_8e

    .line 151
    :cond_86
    iget-object p1, p0, Lcom/codemao/nemo/activity/CloudSearchActivity$3;->this$0:Lcom/codemao/nemo/activity/CloudSearchActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/CloudSearchActivity;->smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    goto :goto_95

    .line 149
    :cond_8e
    :goto_8e
    iget-object p1, p0, Lcom/codemao/nemo/activity/CloudSearchActivity$3;->this$0:Lcom/codemao/nemo/activity/CloudSearchActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/CloudSearchActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showEmpty()V

    :goto_95
    return-void
.end method
