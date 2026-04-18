.class Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$5;
.super Ljava/lang/Object;
.source "ChangeStylesAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->onBindViewHolder(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$BaseViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

.field final synthetic val$holder:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$BaseViewHolder;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$BaseViewHolder;)V
    .registers 3

    .line 247
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$5;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    iput-object p2, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$5;->val$holder:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$BaseViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 4

    .line 251
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$5;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$000(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$5;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {v1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$300(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$602(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 253
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$5;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$400(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$5;->val$holder:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$BaseViewHolder;

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 p1, 0x1

    return p1
.end method
