.class Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$4;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "DiscoveryUserSearchFragmentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->followEmpty(JI)V
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

    .line 164
    iput-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$4;->this$0:Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;

    iput p2, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$4;->val$position:I

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 174
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$4;->this$0:Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "取消关注失败"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onNetError()V
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$4;->this$0:Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 164
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$4;->onSuc(Ljava/lang/String;)V

    return-void
.end method

.method public onSuc(Ljava/lang/String;)V
    .registers 3

    .line 167
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$4;->this$0:Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->access$000(Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$4;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/EmptyUserInfo;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/EmptyUserInfo;->setIs_attention(Z)V

    .line 168
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$4;->this$0:Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->access$100(Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object p1

    iget v0, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$4;->val$position:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
