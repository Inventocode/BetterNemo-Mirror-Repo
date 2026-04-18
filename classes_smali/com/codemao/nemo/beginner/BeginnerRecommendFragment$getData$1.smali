.class public final Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$getData$1;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "BeginnerRecommendFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->getData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Ljava/util/List<",
        "+",
        "Lcom/codemao/nemo/bean/BeginnerRecommendBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$getData$1;->this$0:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    .line 130
    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "msg"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iget-object p1, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$getData$1;->this$0:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->access$setLoading$p$s-1061460774(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;Z)V

    .line 152
    iget-object p1, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$getData$1;->this$0:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    invoke-static {p1, p2}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->access$setLoadMore$p$s-1061460774(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;Z)V

    .line 153
    iget-object p1, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$getData$1;->this$0:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    invoke-static {p1}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->access$afterLoading(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)V

    .line 154
    iget-object p1, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$getData$1;->this$0:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    invoke-static {p1}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->access$getRecyclerView$p$s-1061460774(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$getData$1;->this$0:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    invoke-static {p2}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->access$getHasMore$p$s-1061460774(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 155
    iget-object p1, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$getData$1;->this$0:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    invoke-static {p1}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->access$getDatas$p$s-1061460774(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)Ljava/util/Vector;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-nez p1, :cond_3f

    .line 156
    iget-object p1, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$getData$1;->this$0:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    invoke-static {p1}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->access$getLoadView$p$s-1061460774(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)Lcom/codemao/nemo/view/LoadView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showError()V

    goto :goto_48

    .line 158
    :cond_3f
    iget-object p1, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$getData$1;->this$0:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    invoke-static {p1}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->access$getLoadView$p$s-1061460774(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)Lcom/codemao/nemo/view/LoadView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    :goto_48
    return-void
.end method

.method public onNetError()V
    .registers 3

    .line 163
    iget-object v0, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$getData$1;->this$0:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->access$setLoading$p$s-1061460774(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;Z)V

    .line 164
    iget-object v0, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$getData$1;->this$0:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    invoke-static {v0, v1}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->access$setLoadMore$p$s-1061460774(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;Z)V

    .line 165
    iget-object v0, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$getData$1;->this$0:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    invoke-static {v0}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->access$afterLoading(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)V

    .line 166
    iget-object v0, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$getData$1;->this$0:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    invoke-static {v0}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->access$getRecyclerView$p$s-1061460774(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$getData$1;->this$0:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    invoke-static {v1}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->access$getHasMore$p$s-1061460774(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 167
    iget-object v0, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$getData$1;->this$0:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    invoke-virtual {v0}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->showError()V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 130
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$getData$1;->onSuc(Ljava/util/List;)V

    return-void
.end method

.method public onSuc(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/codemao/nemo/bean/BeginnerRecommendBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_72

    .line 132
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_72

    .line 136
    :cond_9
    iget-object v0, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$getData$1;->this$0:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    invoke-static {v0}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->access$getOffset$p$s-1061460774(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)I

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$getData$1;->this$0:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    invoke-static {v0}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->access$getDatas$p$s-1061460774(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 137
    iget-object v0, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$getData$1;->this$0:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    invoke-static {v0}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->access$getDatas$p$s-1061460774(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 139
    :cond_22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;

    .line 140
    iget-object v1, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$getData$1;->this$0:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    invoke-static {v1}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->access$getDatas$p$s-1061460774(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)Ljava/util/Vector;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/bean/RecommendListData;

    const/4 v3, 0x6

    invoke-direct {v2, v3, v0}, Lcom/codemao/nemo/bean/RecommendListData;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 142
    :cond_42
    iget-object p1, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$getData$1;->this$0:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    invoke-static {p1}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->access$getDatas$p$s-1061460774(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)Ljava/util/Vector;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/bean/RecommendListData;

    const/4 v1, 0x7

    new-instance v2, Lcom/codemao/nemo/bean/BeginnerFooterData;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3, v4}, Lcom/codemao/nemo/bean/BeginnerFooterData;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/bean/RecommendListData;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object p1, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$getData$1;->this$0:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->access$setLoading$p$s-1061460774(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;Z)V

    .line 145
    iget-object p1, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$getData$1;->this$0:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    invoke-static {p1, v0}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->access$setLoadMore$p$s-1061460774(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;Z)V

    .line 146
    iget-object p1, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$getData$1;->this$0:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    invoke-static {p1}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->access$afterLoading(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)V

    .line 147
    iget-object p1, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$getData$1;->this$0:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    invoke-static {p1}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->access$getAdapter$p$s-1061460774(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 133
    :cond_72
    :goto_72
    iget-object p1, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$getData$1;->this$0:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    invoke-static {p1}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->access$getLoadView$p$s-1061460774(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)Lcom/codemao/nemo/view/LoadView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showEmpty()V

    return-void
.end method
