.class Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$3;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "DiscoveryUserSearchFragmentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->follow(JI)V
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
.field final synthetic this$0:Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;I)V
    .registers 3

    .line 137
    iput-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;

    iput p2, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$3;->val$position:I

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 146
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "关注失败"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onNetError()V
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 137
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$3;->onSuc(Ljava/lang/String;)V

    return-void
.end method

.method public onSuc(Ljava/lang/String;)V
    .registers 3

    .line 140
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    iget v0, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$3;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;->setFollowed(Z)V

    .line 141
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$3;->this$0:Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget v0, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$3;->val$position:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
