.class Lcom/codemao/nemo/fragment/CreateFragment$5;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "CreateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CreateFragment;->initAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/CreateFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/CreateFragment;)V
    .registers 2

    .line 795
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$5;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 3

    .line 798
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_b

    .line 801
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$5;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1500(Lcom/codemao/nemo/fragment/CreateFragment;)V

    :cond_b
    return-void
.end method
