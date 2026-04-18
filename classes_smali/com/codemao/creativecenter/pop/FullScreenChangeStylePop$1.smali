.class Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop$1;
.super Ljava/lang/Object;
.source "FullScreenChangeStylePop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop$1;->this$0:Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 108
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop$1;->this$0:Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->access$100(Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;)Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop$1;->this$0:Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;

    invoke-static {v1}, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->access$000(Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;)Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->getCurrentIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method
