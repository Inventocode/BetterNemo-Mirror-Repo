.class Lcom/giu/xzz/adapter/rv/RVBaseAdapter$2;
.super Ljava/lang/Object;
.source "RVBaseAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addClickListener(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

.field final synthetic val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;


# direct methods
.method constructor <init>(Lcom/giu/xzz/adapter/rv/RVBaseAdapter;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V
    .registers 3

    .line 83
    iput-object p1, p0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter$2;->this$0:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iput-object p2, p0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter$2;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 5

    .line 86
    iget-object v0, p0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter$2;->this$0:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-static {v0}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->access$000(Lcom/giu/xzz/adapter/rv/RVBaseAdapter;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 87
    iget-object v0, p0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter$2;->this$0:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-static {v0}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->access$000(Lcom/giu/xzz/adapter/rv/RVBaseAdapter;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter$2;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter$OnItemClickListener;->onItemLongClick(Landroid/view/View;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;I)Z

    move-result p1

    return p1

    :cond_19
    const/4 p1, 0x0

    return p1
.end method
