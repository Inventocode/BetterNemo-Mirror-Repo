.class Lcom/codemao/nemo/fragment/PublishSearchFragment$2;
.super Lcom/codemao/nemo/retrofit/response/CommonSubcriber;
.source "PublishSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/PublishSearchFragment;->doSearch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/retrofit/response/CommonSubcriber<",
        "Lcom/codemao/nemo/bean/PublishSearchData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/PublishSearchFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/PublishSearchFragment;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment$2;->this$0:Lcom/codemao/nemo/fragment/PublishSearchFragment;

    invoke-direct {p0}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 173
    iget-object p1, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment$2;->this$0:Lcom/codemao/nemo/fragment/PublishSearchFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/PublishSearchFragment;->smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->loadMoreComplete()V

    .line 174
    iget-object p1, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment$2;->this$0:Lcom/codemao/nemo/fragment/PublishSearchFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/PublishSearchFragment;->access$200(Lcom/codemao/nemo/fragment/PublishSearchFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1b

    .line 175
    iget-object p1, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment$2;->this$0:Lcom/codemao/nemo/fragment/PublishSearchFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/PublishSearchFragment;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showEmpty()V

    goto :goto_2a

    .line 177
    :cond_1b
    iget-object p1, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment$2;->this$0:Lcom/codemao/nemo/fragment/PublishSearchFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/PublishSearchFragment;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 178
    iget-object p1, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment$2;->this$0:Lcom/codemao/nemo/fragment/PublishSearchFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/PublishSearchFragment;->smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 180
    :goto_2a
    iget-object p1, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment$2;->this$0:Lcom/codemao/nemo/fragment/PublishSearchFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showServerErrorToast(Landroid/content/Context;)V

    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 185
    iget-object p1, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment$2;->this$0:Lcom/codemao/nemo/fragment/PublishSearchFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/PublishSearchFragment;->smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->loadMoreComplete()V

    .line 186
    iget-object p1, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment$2;->this$0:Lcom/codemao/nemo/fragment/PublishSearchFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/PublishSearchFragment;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showError()V

    return-void
.end method

.method protected onSuccess(Lcom/codemao/nemo/bean/PublishSearchData;)V
    .registers 10

    .line 131
    iget-object v0, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment$2;->this$0:Lcom/codemao/nemo/fragment/PublishSearchFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->loadMoreComplete()V

    .line 132
    iget-object v0, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment$2;->this$0:Lcom/codemao/nemo/fragment/PublishSearchFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->hide()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_6a

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    .line 134
    iget-object v3, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment$2;->this$0:Lcom/codemao/nemo/fragment/PublishSearchFragment;

    invoke-static {v3}, Lcom/codemao/nemo/fragment/PublishSearchFragment;->access$100(Lcom/codemao/nemo/fragment/PublishSearchFragment;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/codemao/nemo/bean/PublishSearchData;->total:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x2

    const-string v5, "已发布"

    aput-object v5, v2, v3

    const-string v3, "搜索页-我的-发起搜索"

    invoke-static {v3, v2}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v2

    iget-object v6, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment$2;->this$0:Lcom/codemao/nemo/fragment/PublishSearchFragment;

    invoke-static {v6}, Lcom/codemao/nemo/fragment/PublishSearchFragment;->access$100(Lcom/codemao/nemo/fragment/PublishSearchFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setSearchName(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Lcom/codemao/nemo/bean/PublishSearchData;->total:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkCount(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setSearchType(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    :cond_6a
    if-eqz p1, :cond_f6

    .line 137
    iget-object v2, p1, Lcom/codemao/nemo/bean/PublishSearchData;->items:Ljava/util/List;

    if-eqz v2, :cond_f6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_78

    goto/16 :goto_f6

    .line 145
    :cond_78
    iget-object v2, p1, Lcom/codemao/nemo/bean/PublishSearchData;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_8a

    .line 146
    iget-object v2, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment$2;->this$0:Lcom/codemao/nemo/fragment/PublishSearchFragment;

    iget-object v2, v2, Lcom/codemao/nemo/fragment/PublishSearchFragment;->smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v2, v1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    goto :goto_91

    .line 148
    :cond_8a
    iget-object v2, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment$2;->this$0:Lcom/codemao/nemo/fragment/PublishSearchFragment;

    iget-object v2, v2, Lcom/codemao/nemo/fragment/PublishSearchFragment;->smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v2, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 150
    :goto_91
    iget-object v2, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment$2;->this$0:Lcom/codemao/nemo/fragment/PublishSearchFragment;

    iget v3, v2, Lcom/codemao/nemo/fragment/PublishSearchFragment;->offset:I

    if-nez v3, :cond_aa

    .line 151
    invoke-static {v2}, Lcom/codemao/nemo/fragment/PublishSearchFragment;->access$200(Lcom/codemao/nemo/fragment/PublishSearchFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 152
    iget-object v2, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment$2;->this$0:Lcom/codemao/nemo/fragment/PublishSearchFragment;

    invoke-static {v2}, Lcom/codemao/nemo/fragment/PublishSearchFragment;->access$200(Lcom/codemao/nemo/fragment/PublishSearchFragment;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p1, Lcom/codemao/nemo/bean/PublishSearchData;->items:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_b3

    .line 154
    :cond_aa
    invoke-static {v2}, Lcom/codemao/nemo/fragment/PublishSearchFragment;->access$200(Lcom/codemao/nemo/fragment/PublishSearchFragment;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p1, Lcom/codemao/nemo/bean/PublishSearchData;->items:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 156
    :goto_b3
    iget-object v2, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment$2;->this$0:Lcom/codemao/nemo/fragment/PublishSearchFragment;

    invoke-static {v2}, Lcom/codemao/nemo/fragment/PublishSearchFragment;->access$200(Lcom/codemao/nemo/fragment/PublishSearchFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p1, Lcom/codemao/nemo/bean/PublishSearchData;->total:I

    if-ge v3, v4, :cond_c2

    const/4 v0, 0x1

    :cond_c2
    invoke-static {v2, v0}, Lcom/codemao/nemo/fragment/PublishSearchFragment;->access$302(Lcom/codemao/nemo/fragment/PublishSearchFragment;Z)Z

    .line 157
    iget-object v0, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment$2;->this$0:Lcom/codemao/nemo/fragment/PublishSearchFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/PublishSearchFragment;->access$400(Lcom/codemao/nemo/fragment/PublishSearchFragment;)Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;->getNameWitdh()I

    move-result v0

    if-gtz v0, :cond_df

    .line 158
    iget-object v0, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment$2;->this$0:Lcom/codemao/nemo/fragment/PublishSearchFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v1, Lcom/codemao/nemo/fragment/PublishSearchFragment$2$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/PublishSearchFragment$2$1;-><init>(Lcom/codemao/nemo/fragment/PublishSearchFragment$2;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 167
    :cond_df
    iget-object v0, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment$2;->this$0:Lcom/codemao/nemo/fragment/PublishSearchFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/PublishSearchFragment;->access$500(Lcom/codemao/nemo/fragment/PublishSearchFragment;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 168
    iget-object v0, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment$2;->this$0:Lcom/codemao/nemo/fragment/PublishSearchFragment;

    iget v1, v0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->offset:I

    iget-object p1, p1, Lcom/codemao/nemo/bean/PublishSearchData;->items:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr v1, p1

    iput v1, v0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->offset:I

    return-void

    .line 138
    :cond_f6
    :goto_f6
    iget-object p1, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment$2;->this$0:Lcom/codemao/nemo/fragment/PublishSearchFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/PublishSearchFragment;->access$200(Lcom/codemao/nemo/fragment/PublishSearchFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_10a

    .line 139
    iget-object p1, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment$2;->this$0:Lcom/codemao/nemo/fragment/PublishSearchFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/PublishSearchFragment;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showEmpty()V

    goto :goto_111

    .line 141
    :cond_10a
    iget-object p1, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment$2;->this$0:Lcom/codemao/nemo/fragment/PublishSearchFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/PublishSearchFragment;->smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    :goto_111
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 128
    check-cast p1, Lcom/codemao/nemo/bean/PublishSearchData;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/PublishSearchFragment$2;->onSuccess(Lcom/codemao/nemo/bean/PublishSearchData;)V

    return-void
.end method
