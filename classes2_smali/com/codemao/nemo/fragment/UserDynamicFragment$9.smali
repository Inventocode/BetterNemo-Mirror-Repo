.class Lcom/codemao/nemo/fragment/UserDynamicFragment$9;
.super Ljava/lang/Object;
.source "UserDynamicFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/UserDynamicFragment;->setListData(Lcom/codemao/nemo/bean/UserDynamics;)V
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

    .line 323
    iput-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$9;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 326
    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$9;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    if-eqz v0, :cond_13

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 327
    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 328
    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$9;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_13
    return-void
.end method
