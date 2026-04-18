.class Lcom/codemao/nemo/fragment/PublishSearchFragment$2$1;
.super Ljava/lang/Object;
.source "PublishSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/PublishSearchFragment$2;->onSuccess(Lcom/codemao/nemo/bean/PublishSearchData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/fragment/PublishSearchFragment$2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/PublishSearchFragment$2;)V
    .registers 2

    .line 158
    iput-object p1, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment$2$1;->this$1:Lcom/codemao/nemo/fragment/PublishSearchFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment$2$1;->this$1:Lcom/codemao/nemo/fragment/PublishSearchFragment$2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/PublishSearchFragment$2;->this$0:Lcom/codemao/nemo/fragment/PublishSearchFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment$2$1;->this$1:Lcom/codemao/nemo/fragment/PublishSearchFragment$2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/PublishSearchFragment$2;->this$0:Lcom/codemao/nemo/fragment/PublishSearchFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment$2$1;->this$1:Lcom/codemao/nemo/fragment/PublishSearchFragment$2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/PublishSearchFragment$2;->this$0:Lcom/codemao/nemo/fragment/PublishSearchFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_31

    .line 162
    iget-object v0, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment$2$1;->this$1:Lcom/codemao/nemo/fragment/PublishSearchFragment$2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/PublishSearchFragment$2;->this$0:Lcom/codemao/nemo/fragment/PublishSearchFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/PublishSearchFragment;->access$500(Lcom/codemao/nemo/fragment/PublishSearchFragment;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_31
    return-void
.end method
