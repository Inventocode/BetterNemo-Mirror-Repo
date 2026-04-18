.class Lcom/codemao/nemo/fragment/MessageFragment$2;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "MessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/MessageFragment;->getData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Lcom/codemao/nemo/bean/MessageResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/MessageFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/MessageFragment;)V
    .registers 2

    .line 180
    iput-object p1, p0, Lcom/codemao/nemo/fragment/MessageFragment$2;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 221
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MessageFragment$2;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->afterLoading()V

    .line 222
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MessageFragment$2;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/codemao/nemo/fragment/MessageFragment;->access$202(Lcom/codemao/nemo/fragment/MessageFragment;Z)Z

    .line 223
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MessageFragment$2;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1c

    .line 224
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MessageFragment$2;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showError()V

    .line 226
    :cond_1c
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MessageFragment$2;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    iput-boolean p2, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoading:Z

    .line 227
    iget-object p2, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iget-boolean p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->hasMore:Z

    invoke-virtual {p2, p1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    return-void
.end method

.method public onNetError()V
    .registers 3

    .line 232
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MessageFragment$2;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->afterLoading()V

    .line 233
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MessageFragment$2;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/nemo/fragment/MessageFragment;->access$202(Lcom/codemao/nemo/fragment/MessageFragment;Z)Z

    .line 234
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MessageFragment$2;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1a

    .line 235
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MessageFragment$2;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/MessageFragment;->showError()V

    .line 237
    :cond_1a
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MessageFragment$2;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    iput-boolean v1, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoading:Z

    .line 238
    iget-object v1, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iget-boolean v0, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->hasMore:Z

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/bean/MessageResponse;)V
    .registers 8

    .line 183
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MessageFragment$2;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/nemo/fragment/MessageFragment;->access$202(Lcom/codemao/nemo/fragment/MessageFragment;Z)Z

    .line 184
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MessageFragment$2;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    iput-boolean v1, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoading:Z

    .line 185
    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->afterLoading()V

    const/4 v0, 0x1

    if-eqz p1, :cond_85

    .line 186
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/MessageResponse;->getItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_85

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/MessageResponse;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_85

    .line 187
    iget-object v2, p0, Lcom/codemao/nemo/fragment/MessageFragment$2;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    iget v3, v2, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    if-nez v3, :cond_2b

    .line 188
    iget-object v2, v2, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 190
    :cond_2b
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/MessageResponse;->getItems()Ljava/util/List;

    move-result-object v2

    .line 191
    iget-object v3, p0, Lcom/codemao/nemo/fragment/MessageFragment$2;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    iget v4, v3, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    .line 192
    iget-object v3, p0, Lcom/codemao/nemo/fragment/MessageFragment$2;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    iget v4, v3, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/MessageResponse;->getTotal()I

    move-result p1

    if-ge v4, p1, :cond_45

    const/4 v1, 0x1

    :cond_45
    iput-boolean v1, v3, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->hasMore:Z

    .line 193
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MessageFragment$2;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    iget-object v1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iget-boolean p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->hasMore:Z

    xor-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 194
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_55
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/MessageVO;

    .line 195
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/MessageVO;->getMessage_body()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/codemao/nemo/bean/MessageVO$MessageWork;

    invoke-virtual {v1, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/MessageVO$MessageWork;

    .line 196
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/MessageVO;->setWork(Lcom/codemao/nemo/bean/MessageVO$MessageWork;)V

    goto :goto_55

    .line 200
    :cond_76
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MessageFragment$2;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 201
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MessageFragment$2;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_ed

    .line 202
    :cond_85
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MessageFragment$2;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_e6

    .line 203
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MessageFragment$2;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    iput v1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    .line 204
    invoke-static {p1}, Lcom/codemao/nemo/fragment/MessageFragment;->access$100(Lcom/codemao/nemo/fragment/MessageFragment;)I

    move-result p1

    const v1, 0x7f0a0214

    if-ne p1, v0, :cond_a6

    .line 205
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MessageFragment$2;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    const-string v0, "暂时没有人点赞收藏你的作品"

    invoke-virtual {p1, v1, v0}, Lcom/codemao/nemo/view/LoadView;->setText(ILjava/lang/String;)V

    goto :goto_de

    .line 206
    :cond_a6
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MessageFragment$2;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/MessageFragment;->access$100(Lcom/codemao/nemo/fragment/MessageFragment;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_b9

    .line 207
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MessageFragment$2;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    const-string v0, "暂时没有收到评论与回复呢～"

    invoke-virtual {p1, v1, v0}, Lcom/codemao/nemo/view/LoadView;->setText(ILjava/lang/String;)V

    goto :goto_de

    .line 208
    :cond_b9
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MessageFragment$2;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/MessageFragment;->access$100(Lcom/codemao/nemo/fragment/MessageFragment;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_cc

    .line 209
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MessageFragment$2;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    const-string v0, "还没有人使用你的作品再创作呢～"

    invoke-virtual {p1, v1, v0}, Lcom/codemao/nemo/view/LoadView;->setText(ILjava/lang/String;)V

    goto :goto_de

    .line 210
    :cond_cc
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MessageFragment$2;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/MessageFragment;->access$100(Lcom/codemao/nemo/fragment/MessageFragment;)I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_de

    .line 211
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MessageFragment$2;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    const-string v0, "没有收到任何通知"

    invoke-virtual {p1, v1, v0}, Lcom/codemao/nemo/view/LoadView;->setText(ILjava/lang/String;)V

    .line 213
    :cond_de
    :goto_de
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MessageFragment$2;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showEmpty()V

    goto :goto_ed

    .line 215
    :cond_e6
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MessageFragment$2;->this$0:Lcom/codemao/nemo/fragment/MessageFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    :goto_ed
    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 180
    check-cast p1, Lcom/codemao/nemo/bean/MessageResponse;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/MessageFragment$2;->onSuc(Lcom/codemao/nemo/bean/MessageResponse;)V

    return-void
.end method
