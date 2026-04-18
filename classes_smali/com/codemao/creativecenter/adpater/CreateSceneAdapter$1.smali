.class Lcom/codemao/creativecenter/adpater/CreateSceneAdapter$1;
.super Ljava/lang/Object;
.source "CreateSceneAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/adpater/CreateSceneAdapter;->onBindViewHolder(Lcom/codemao/creativecenter/adpater/CreateSceneAdapter$BaseHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/adpater/CreateSceneAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/adpater/CreateSceneAdapter;I)V
    .registers 3

    .line 77
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateSceneAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/CreateSceneAdapter;

    iput p2, p0, Lcom/codemao/creativecenter/adpater/CreateSceneAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 80
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateSceneAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/CreateSceneAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CreateSceneAdapter;->access$000(Lcom/codemao/creativecenter/adpater/CreateSceneAdapter;)I

    move-result p1

    .line 81
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateSceneAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/CreateSceneAdapter;

    iget v1, p0, Lcom/codemao/creativecenter/adpater/CreateSceneAdapter$1;->val$position:I

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/adpater/CreateSceneAdapter;->access$002(Lcom/codemao/creativecenter/adpater/CreateSceneAdapter;I)I

    .line 82
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateSceneAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/CreateSceneAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/CreateSceneAdapter;->access$100(Lcom/codemao/creativecenter/adpater/CreateSceneAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object v0

    iget v1, p0, Lcom/codemao/creativecenter/adpater/CreateSceneAdapter$1;->val$position:I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->selectScene(IIZZ)V

    .line 83
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateSceneAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/CreateSceneAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
