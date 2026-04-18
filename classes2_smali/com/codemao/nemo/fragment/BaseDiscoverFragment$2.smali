.class Lcom/codemao/nemo/fragment/BaseDiscoverFragment$2;
.super Ljava/lang/Object;
.source "BaseDiscoverFragment.java"

# interfaces
.implements Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$LoadingListener;


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

    .line 128
    iput-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment$2;->this$0:Lcom/codemao/nemo/fragment/BaseDiscoverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment$2;->this$0:Lcom/codemao/nemo/fragment/BaseDiscoverFragment;

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadMore()V

    return-void
.end method
