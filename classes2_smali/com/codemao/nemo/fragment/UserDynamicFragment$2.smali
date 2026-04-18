.class Lcom/codemao/nemo/fragment/UserDynamicFragment$2;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "UserDynamicFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/UserDynamicFragment;->deleteDynamic(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/UserDynamicFragment;I)V
    .registers 3

    .line 127
    iput-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$2;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    iput p2, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$2;->val$position:I

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 147
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$2;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "删除失败"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onNetError()V
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$2;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 127
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/UserDynamicFragment$2;->onSuc(Ljava/lang/String;)V

    return-void
.end method

.method public onSuc(Ljava/lang/String;)V
    .registers 5

    .line 130
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$2;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/UserDynamicFragment;->access$300(Lcom/codemao/nemo/fragment/UserDynamicFragment;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$2;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 131
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$2;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/UserDynamicFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$2;->val$position:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 132
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$2;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    iget-object v0, p1, Lcom/codemao/nemo/fragment/UserDynamicFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget v1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$2;->val$position:I

    invoke-static {p1}, Lcom/codemao/nemo/fragment/UserDynamicFragment;->access$300(Lcom/codemao/nemo/fragment/UserDynamicFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v2, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$2;->val$position:I

    sub-int/2addr p1, v2

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 134
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$2;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/UserDynamicFragment;->access$300(Lcom/codemao/nemo/fragment/UserDynamicFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_4b

    .line 135
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$2;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/UserDynamicFragment;->access$400(Lcom/codemao/nemo/fragment/UserDynamicFragment;)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 136
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$2;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/UserDynamicFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->loadMore()V

    goto :goto_4b

    .line 138
    :cond_44
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$2;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/UserDynamicFragment;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showEmpty()V

    :cond_4b
    :goto_4b
    return-void
.end method
