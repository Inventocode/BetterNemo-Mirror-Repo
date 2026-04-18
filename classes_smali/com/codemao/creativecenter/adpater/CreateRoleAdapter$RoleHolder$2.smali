.class Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$2;
.super Ljava/lang/Object;
.source "CreateRoleAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->bindActor(Lcom/codemao/creativestore/bean/ActorVO;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;)V
    .registers 2

    .line 650
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$2;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 653
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$2;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    if-gez p1, :cond_9

    return-void

    .line 656
    :cond_9
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$2;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$900(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)I

    move-result p1

    if-ltz p1, :cond_43

    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$2;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$900(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)I

    move-result p1

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$2;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    iget-object v0, v0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$1200(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_43

    .line 657
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$2;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$1200(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$2;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    iget-object v0, v0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$900(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/ActorVO;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/bean/ActorVO;->setSelected(Z)V

    .line 659
    :cond_43
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$2;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$1200(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$2;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/ActorVO;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/bean/ActorVO;->setSelected(Z)V

    .line 660
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$2;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$400(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object p1

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$2;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    iget-object v1, v1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {v1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$1200(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$2;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {p1, v1, v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->selectActor(Lcom/codemao/creativestore/bean/ActorVO;Z)V

    return-void
.end method
