.class Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment$4;
.super Ljava/lang/Object;
.source "BaseRecyclerViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;)V
    .registers 2

    .line 159
    iput-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment$4;->this$0:Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 163
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment$4;->this$0:Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 164
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment$4;->this$0:Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;

    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->showError()V

    return-void

    .line 167
    :cond_12
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment$4;->this$0:Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;

    const/4 v0, 0x0

    iput v0, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    .line 168
    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showLoading()V

    .line 169
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment$4;->this$0:Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;

    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->getData()V

    return-void
.end method
