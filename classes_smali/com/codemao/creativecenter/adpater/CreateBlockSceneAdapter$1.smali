.class Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter$1;
.super Ljava/lang/Object;
.source "CreateBlockSceneAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;->onBindViewHolder(Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter$BaseHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;I)V
    .registers 3

    .line 74
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;

    iput p2, p0, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 77
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;->access$000(Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;)I

    move-result p1

    iget v0, p0, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter$1;->val$position:I

    if-eq p1, v0, :cond_27

    .line 78
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;->access$002(Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;I)I

    .line 79
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;->access$100(Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;)Lcom/codemao/creativecenter/callback/OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 80
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;->access$100(Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;)Lcom/codemao/creativecenter/callback/OnItemClickListener;

    move-result-object p1

    iget v0, p0, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Lcom/codemao/creativecenter/callback/OnItemClickListener;->onItemClick(I)V

    .line 82
    :cond_22
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_27
    return-void
.end method
