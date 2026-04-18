.class Lcom/codemao/nemo/activity/CloudSearchActivity$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "CloudSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/CloudSearchActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/CloudSearchActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/CloudSearchActivity;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/codemao/nemo/activity/CloudSearchActivity$1;->this$0:Lcom/codemao/nemo/activity/CloudSearchActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 3

    .line 96
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 97
    iget-object p1, p0, Lcom/codemao/nemo/activity/CloudSearchActivity$1;->this$0:Lcom/codemao/nemo/activity/CloudSearchActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CloudSearchActivity;->access$000(Lcom/codemao/nemo/activity/CloudSearchActivity;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object p1

    if-eqz p1, :cond_23

    const/4 p1, 0x1

    if-ne p2, p1, :cond_23

    .line 98
    iget-object p1, p0, Lcom/codemao/nemo/activity/CloudSearchActivity$1;->this$0:Lcom/codemao/nemo/activity/CloudSearchActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CloudSearchActivity;->access$100(Lcom/codemao/nemo/activity/CloudSearchActivity;)Lcom/codemao/nemo/delegates/CloudItemDelegate;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/nemo/activity/CloudSearchActivity$1;->this$0:Lcom/codemao/nemo/activity/CloudSearchActivity;

    invoke-static {p2}, Lcom/codemao/nemo/activity/CloudSearchActivity;->access$000(Lcom/codemao/nemo/activity/CloudSearchActivity;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/delegates/CloudItemDelegate;->removeCloseAnim(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    .line 99
    iget-object p1, p0, Lcom/codemao/nemo/activity/CloudSearchActivity$1;->this$0:Lcom/codemao/nemo/activity/CloudSearchActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/codemao/nemo/activity/CloudSearchActivity;->access$002(Lcom/codemao/nemo/activity/CloudSearchActivity;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    :cond_23
    return-void
.end method
