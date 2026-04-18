.class Lcom/codemao/nemo/fragment/ThemeDetailFragment$14;
.super Ljava/lang/Object;
.source "ThemeDetailFragment.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/ThemeDetailFragment;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)V
    .registers 2

    .line 396
    iput-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$14;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .registers 2

    .line 399
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$14;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/activity/ThemeDetailActivity;

    .line 400
    invoke-virtual {p1}, Lcom/codemao/nemo/activity/ThemeDetailActivity;->changeNextFragment()V

    return-void
.end method
