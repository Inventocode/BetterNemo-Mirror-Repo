.class Lcom/codemao/nemo/fragment/UserDynamicFragment$5;
.super Ljava/lang/Object;
.source "UserDynamicFragment.java"

# interfaces
.implements Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate$UserDynamicCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/UserDynamicFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/UserDynamicFragment;)V
    .registers 2

    .line 190
    iput-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$5;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showMore(Landroid/view/View;I)V
    .registers 4

    .line 193
    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$5;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    invoke-static {v0, p1, p2}, Lcom/codemao/nemo/fragment/UserDynamicFragment;->access$500(Lcom/codemao/nemo/fragment/UserDynamicFragment;Landroid/view/View;I)V

    return-void
.end method

.method public toUserDetail(Landroid/widget/ImageView;JLjava/lang/String;)V
    .registers 7

    .line 198
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$5;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/UserDynamicFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_b

    return-void

    .line 201
    :cond_b
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$5;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "userAvatar"

    .line 202
    invoke-virtual {p1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p4, "userId"

    .line 203
    invoke-virtual {p1, p4, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 204
    iget-object p2, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$5;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    invoke-virtual {p2, p1}, Lcom/giu/xzz/BaseFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
