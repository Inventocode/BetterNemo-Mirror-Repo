.class Lcom/codemao/nemo/view/LatestCmHorLayout$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "LatestCmHorLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/LatestCmHorLayout;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/LatestCmHorLayout;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/LatestCmHorLayout;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/codemao/nemo/view/LatestCmHorLayout$1;->this$0:Lcom/codemao/nemo/view/LatestCmHorLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    .line 71
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 72
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 73
    instance-of p2, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p2, :cond_54

    .line 74
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    .line 75
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    .line 76
    iget-object p3, p0, Lcom/codemao/nemo/view/LatestCmHorLayout$1;->this$0:Lcom/codemao/nemo/view/LatestCmHorLayout;

    invoke-static {p3}, Lcom/codemao/nemo/view/LatestCmHorLayout;->access$000(Lcom/codemao/nemo/view/LatestCmHorLayout;)I

    move-result p3

    if-ltz p3, :cond_25

    iget-object p3, p0, Lcom/codemao/nemo/view/LatestCmHorLayout$1;->this$0:Lcom/codemao/nemo/view/LatestCmHorLayout;

    invoke-static {p3}, Lcom/codemao/nemo/view/LatestCmHorLayout;->access$000(Lcom/codemao/nemo/view/LatestCmHorLayout;)I

    move-result p3

    if-le p3, p2, :cond_2a

    .line 77
    :cond_25
    iget-object p3, p0, Lcom/codemao/nemo/view/LatestCmHorLayout$1;->this$0:Lcom/codemao/nemo/view/LatestCmHorLayout;

    invoke-static {p3, p2}, Lcom/codemao/nemo/view/LatestCmHorLayout;->access$002(Lcom/codemao/nemo/view/LatestCmHorLayout;I)I

    .line 79
    :cond_2a
    iget-object p2, p0, Lcom/codemao/nemo/view/LatestCmHorLayout$1;->this$0:Lcom/codemao/nemo/view/LatestCmHorLayout;

    invoke-static {p2}, Lcom/codemao/nemo/view/LatestCmHorLayout;->access$100(Lcom/codemao/nemo/view/LatestCmHorLayout;)I

    move-result p2

    if-ge p2, p1, :cond_37

    .line 80
    iget-object p2, p0, Lcom/codemao/nemo/view/LatestCmHorLayout$1;->this$0:Lcom/codemao/nemo/view/LatestCmHorLayout;

    invoke-static {p2, p1}, Lcom/codemao/nemo/view/LatestCmHorLayout;->access$102(Lcom/codemao/nemo/view/LatestCmHorLayout;I)I

    .line 82
    :cond_37
    iget-object p1, p0, Lcom/codemao/nemo/view/LatestCmHorLayout$1;->this$0:Lcom/codemao/nemo/view/LatestCmHorLayout;

    invoke-static {p1}, Lcom/codemao/nemo/view/LatestCmHorLayout;->access$200(Lcom/codemao/nemo/view/LatestCmHorLayout;)Lcom/codemao/nemo/listener/OnScrollCallback;

    move-result-object p1

    if-eqz p1, :cond_54

    .line 83
    iget-object p1, p0, Lcom/codemao/nemo/view/LatestCmHorLayout$1;->this$0:Lcom/codemao/nemo/view/LatestCmHorLayout;

    invoke-static {p1}, Lcom/codemao/nemo/view/LatestCmHorLayout;->access$200(Lcom/codemao/nemo/view/LatestCmHorLayout;)Lcom/codemao/nemo/listener/OnScrollCallback;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/nemo/view/LatestCmHorLayout$1;->this$0:Lcom/codemao/nemo/view/LatestCmHorLayout;

    invoke-static {p2}, Lcom/codemao/nemo/view/LatestCmHorLayout;->access$000(Lcom/codemao/nemo/view/LatestCmHorLayout;)I

    move-result p2

    iget-object p3, p0, Lcom/codemao/nemo/view/LatestCmHorLayout$1;->this$0:Lcom/codemao/nemo/view/LatestCmHorLayout;

    invoke-static {p3}, Lcom/codemao/nemo/view/LatestCmHorLayout;->access$100(Lcom/codemao/nemo/view/LatestCmHorLayout;)I

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/codemao/nemo/listener/OnScrollCallback;->scroll(II)V

    :cond_54
    return-void
.end method
