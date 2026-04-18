.class Lcom/codemao/nemo/activity/UserCollectWorkActivity$4;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "UserCollectWorkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserCollectWorkActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserCollectWorkActivity;)V
    .registers 2

    .line 199
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$4;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 3

    .line 202
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 203
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$4;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->access$500(Lcom/codemao/nemo/activity/UserCollectWorkActivity;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object p1

    if-eqz p1, :cond_23

    const/4 p1, 0x1

    if-ne p2, p1, :cond_23

    .line 204
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$4;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->access$600(Lcom/codemao/nemo/activity/UserCollectWorkActivity;)Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$4;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    invoke-static {p2}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->access$500(Lcom/codemao/nemo/activity/UserCollectWorkActivity;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;->removeCloseAnim(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    .line 205
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$4;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->access$502(Lcom/codemao/nemo/activity/UserCollectWorkActivity;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    :cond_23
    return-void
.end method
