.class Lcom/codemao/nemo/fragment/BaseDiscoverFragment$4;
.super Ljava/lang/Object;
.source "BaseDiscoverFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/BaseDiscoverFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/BaseDiscoverFragment;)V
    .registers 2

    .line 163
    iput-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment$4;->this$0:Lcom/codemao/nemo/fragment/BaseDiscoverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 167
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment$4;->this$0:Lcom/codemao/nemo/fragment/BaseDiscoverFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 168
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment$4;->this$0:Lcom/codemao/nemo/fragment/BaseDiscoverFragment;

    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->showError()V

    return-void

    .line 171
    :cond_12
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment$4;->this$0:Lcom/codemao/nemo/fragment/BaseDiscoverFragment;

    const/4 v0, 0x0

    iput v0, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->offset:I

    .line 172
    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showLoading()V

    .line 173
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment$4;->this$0:Lcom/codemao/nemo/fragment/BaseDiscoverFragment;

    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->getData()V

    return-void
.end method
