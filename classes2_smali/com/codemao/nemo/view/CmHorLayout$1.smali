.class Lcom/codemao/nemo/view/CmHorLayout$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "CmHorLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/CmHorLayout;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/CmHorLayout;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/CmHorLayout;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/codemao/nemo/view/CmHorLayout$1;->this$0:Lcom/codemao/nemo/view/CmHorLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    .line 83
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 84
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 85
    instance-of p2, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p2, :cond_54

    .line 86
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    .line 87
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    .line 88
    iget-object p3, p0, Lcom/codemao/nemo/view/CmHorLayout$1;->this$0:Lcom/codemao/nemo/view/CmHorLayout;

    invoke-static {p3}, Lcom/codemao/nemo/view/CmHorLayout;->access$000(Lcom/codemao/nemo/view/CmHorLayout;)I

    move-result p3

    if-ltz p3, :cond_25

    iget-object p3, p0, Lcom/codemao/nemo/view/CmHorLayout$1;->this$0:Lcom/codemao/nemo/view/CmHorLayout;

    invoke-static {p3}, Lcom/codemao/nemo/view/CmHorLayout;->access$000(Lcom/codemao/nemo/view/CmHorLayout;)I

    move-result p3

    if-le p3, p2, :cond_2a

    .line 89
    :cond_25
    iget-object p3, p0, Lcom/codemao/nemo/view/CmHorLayout$1;->this$0:Lcom/codemao/nemo/view/CmHorLayout;

    invoke-static {p3, p2}, Lcom/codemao/nemo/view/CmHorLayout;->access$002(Lcom/codemao/nemo/view/CmHorLayout;I)I

    .line 91
    :cond_2a
    iget-object p2, p0, Lcom/codemao/nemo/view/CmHorLayout$1;->this$0:Lcom/codemao/nemo/view/CmHorLayout;

    invoke-static {p2}, Lcom/codemao/nemo/view/CmHorLayout;->access$100(Lcom/codemao/nemo/view/CmHorLayout;)I

    move-result p2

    if-ge p2, p1, :cond_37

    .line 92
    iget-object p2, p0, Lcom/codemao/nemo/view/CmHorLayout$1;->this$0:Lcom/codemao/nemo/view/CmHorLayout;

    invoke-static {p2, p1}, Lcom/codemao/nemo/view/CmHorLayout;->access$102(Lcom/codemao/nemo/view/CmHorLayout;I)I

    .line 94
    :cond_37
    iget-object p1, p0, Lcom/codemao/nemo/view/CmHorLayout$1;->this$0:Lcom/codemao/nemo/view/CmHorLayout;

    invoke-static {p1}, Lcom/codemao/nemo/view/CmHorLayout;->access$200(Lcom/codemao/nemo/view/CmHorLayout;)Lcom/codemao/nemo/listener/OnScrollCallback;

    move-result-object p1

    if-eqz p1, :cond_54

    .line 95
    iget-object p1, p0, Lcom/codemao/nemo/view/CmHorLayout$1;->this$0:Lcom/codemao/nemo/view/CmHorLayout;

    invoke-static {p1}, Lcom/codemao/nemo/view/CmHorLayout;->access$200(Lcom/codemao/nemo/view/CmHorLayout;)Lcom/codemao/nemo/listener/OnScrollCallback;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/nemo/view/CmHorLayout$1;->this$0:Lcom/codemao/nemo/view/CmHorLayout;

    invoke-static {p2}, Lcom/codemao/nemo/view/CmHorLayout;->access$000(Lcom/codemao/nemo/view/CmHorLayout;)I

    move-result p2

    iget-object p3, p0, Lcom/codemao/nemo/view/CmHorLayout$1;->this$0:Lcom/codemao/nemo/view/CmHorLayout;

    invoke-static {p3}, Lcom/codemao/nemo/view/CmHorLayout;->access$100(Lcom/codemao/nemo/view/CmHorLayout;)I

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/codemao/nemo/listener/OnScrollCallback;->scroll(II)V

    :cond_54
    return-void
.end method
