.class Lcom/codemao/nemo/fragment/LatestFragmentV3$4;
.super Ljava/lang/Object;
.source "LatestFragmentV3.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/LatestFragmentV3;->setListData(Lcom/codemao/nemo/bean/LatestWorks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/LatestFragmentV3;)V
    .registers 2

    .line 228
    iput-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3$4;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 231
    iget-object v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3$4;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method
