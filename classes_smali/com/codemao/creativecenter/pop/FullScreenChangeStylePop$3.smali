.class Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop$3;
.super Ljava/lang/Object;
.source "FullScreenChangeStylePop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->updateBackgroundStyles(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;

.field final synthetic val$lastPosition:I


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;I)V
    .registers 3

    .line 246
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;

    iput p2, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop$3;->val$lastPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 249
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->access$000(Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;)Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 250
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->access$000(Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;)Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 252
    :cond_11
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->access$100(Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;)Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 253
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->access$100(Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;)Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    move-result-object v0

    iget v1, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop$3;->val$lastPosition:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_24
    return-void
.end method
