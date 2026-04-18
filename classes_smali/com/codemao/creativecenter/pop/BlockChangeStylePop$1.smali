.class Lcom/codemao/creativecenter/pop/BlockChangeStylePop$1;
.super Ljava/lang/Object;
.source "BlockChangeStylePop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/BlockChangeStylePop;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/pop/BlockChangeStylePop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/BlockChangeStylePop;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/BlockChangeStylePop$1;->this$0:Lcom/codemao/creativecenter/pop/BlockChangeStylePop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/BlockChangeStylePop$1;->this$0:Lcom/codemao/creativecenter/pop/BlockChangeStylePop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/BlockChangeStylePop;->access$100(Lcom/codemao/creativecenter/pop/BlockChangeStylePop;)Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/BlockChangeStylePop$1;->this$0:Lcom/codemao/creativecenter/pop/BlockChangeStylePop;

    invoke-static {v1}, Lcom/codemao/creativecenter/pop/BlockChangeStylePop;->access$000(Lcom/codemao/creativecenter/pop/BlockChangeStylePop;)Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter;->getCurrentIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method
