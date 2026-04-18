.class Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$4;
.super Ljava/lang/Object;
.source "ChangeStylesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;I)V
    .registers 3

    .line 231
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$4;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    iput p2, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 234
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$4;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$400(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_d

    return-void

    .line 238
    :cond_d
    iget p1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$4;->val$position:I

    if-ltz p1, :cond_48

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$4;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$000(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_20

    goto :goto_48

    .line 242
    :cond_20
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$4;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    iget v0, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$4;->val$position:I

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$302(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;I)I

    .line 243
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$4;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$100(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$4;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$000(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$4;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {v1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$300(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/bean/ActorVO;->setCurrent_style_id(Ljava/lang/String;)V

    .line 244
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$4;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 239
    :cond_48
    :goto_48
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$4;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
