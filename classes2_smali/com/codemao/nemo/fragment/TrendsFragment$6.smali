.class Lcom/codemao/nemo/fragment/TrendsFragment$6;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "TrendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/TrendsFragment;->unFollow(JI)V
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
.field final synthetic this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/TrendsFragment;I)V
    .registers 3

    .line 285
    iput-object p1, p0, Lcom/codemao/nemo/fragment/TrendsFragment$6;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    iput p2, p0, Lcom/codemao/nemo/fragment/TrendsFragment$6;->val$position:I

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 294
    iget-object p1, p0, Lcom/codemao/nemo/fragment/TrendsFragment$6;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "取消关注失败"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onNetError()V
    .registers 2

    .line 299
    iget-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment$6;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 285
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/TrendsFragment$6;->onSuc(Ljava/lang/String;)V

    return-void
.end method

.method public onSuc(Ljava/lang/String;)V
    .registers 3

    .line 288
    iget-object p1, p0, Lcom/codemao/nemo/fragment/TrendsFragment$6;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/TrendsFragment;->access$100(Lcom/codemao/nemo/fragment/TrendsFragment;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment$6;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/TrendsRecInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/TrendsRecInfo;->getUser_info()Lcom/codemao/nemo/bean/TrendsRecUserInfo;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/TrendsRecUserInfo;->setFollowed(Z)V

    .line 289
    iget-object p1, p0, Lcom/codemao/nemo/fragment/TrendsFragment$6;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/TrendsFragment;->access$400(Lcom/codemao/nemo/fragment/TrendsFragment;)Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;

    move-result-object p1

    iget v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment$6;->val$position:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
