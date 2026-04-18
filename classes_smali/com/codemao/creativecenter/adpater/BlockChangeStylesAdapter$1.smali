.class Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter$1;
.super Ljava/lang/Object;
.source "BlockChangeStylesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter;->onBindViewHolder(Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter$BaseViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 86
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter;

    invoke-static {v0, p1}, Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter;->access$002(Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter;I)I

    .line 87
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
