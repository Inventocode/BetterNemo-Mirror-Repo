.class Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter$1;
.super Ljava/lang/Object;
.source "CreateDebugSceneAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;->onBindViewHolder(Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter$BaseHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;I)V
    .registers 3

    .line 66
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;

    iput p2, p0, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 69
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;->access$100(Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;->access$000(Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;)Lcom/codemao/creativestore/bean/SceneVO;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    .line 71
    iget v0, p0, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter$1;->val$position:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_25

    .line 72
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;->access$002(Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;Lcom/codemao/creativestore/bean/SceneVO;)Lcom/codemao/creativestore/bean/SceneVO;

    .line 73
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;->access$200(Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->selectScene(IIZZ)V

    goto :goto_41

    .line 78
    :cond_25
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;->access$100(Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter$1;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/SceneVO;

    invoke-static {v0, v2}, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;->access$002(Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;Lcom/codemao/creativestore/bean/SceneVO;)Lcom/codemao/creativestore/bean/SceneVO;

    .line 79
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;->access$200(Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object v0

    iget v2, p0, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter$1;->val$position:I

    invoke-virtual {v0, p1, v2, v1, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->selectScene(IIZZ)V

    .line 81
    :goto_41
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 83
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;->access$300(Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;)Lcom/codemao/creativecenter/customview/CreateDebugView;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->setBlur(ZZ)V

    return-void
.end method
