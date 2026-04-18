.class Lcom/codemao/nemo/fragment/UserDynamicFragment$3;
.super Ljava/lang/Object;
.source "UserDynamicFragment.java"

# interfaces
.implements Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate$UserDynamicCallBack;


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

    .line 162
    iput-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$3;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showMore(Landroid/view/View;I)V
    .registers 4

    .line 165
    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$3;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    invoke-static {v0, p1, p2}, Lcom/codemao/nemo/fragment/UserDynamicFragment;->access$500(Lcom/codemao/nemo/fragment/UserDynamicFragment;Landroid/view/View;I)V

    return-void
.end method

.method public toWorkDetail(Landroid/widget/ImageView;JLjava/lang/String;)V
    .registers 11

    .line 170
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$3;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/UserDynamicFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_b

    return-void

    .line 173
    :cond_b
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$3;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "用户动态"

    const-string v5, ""

    move-wide v1, p2

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/codemao/nemo/activity/WorkDetailActivity;->goDetail(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
