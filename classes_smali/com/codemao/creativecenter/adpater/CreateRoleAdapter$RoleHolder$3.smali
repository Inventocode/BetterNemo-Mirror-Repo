.class Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$3;
.super Ljava/lang/Object;
.source "CreateRoleAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 665
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$3;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 3

    .line 668
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$3;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$702(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;Z)Z

    .line 670
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$3;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$500(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object p1

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$3;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$500(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object p1

    iget-boolean p1, p1, Lcom/codemao/creativestore/bean/ActorVO;->isEditStatus:Z

    if-eqz p1, :cond_29

    .line 671
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$3;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$500(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/bean/ActorVO;->setEditStatus(Z)V

    .line 674
    :cond_29
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$3;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    iget-object v0, p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-static {v0, p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$1302(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;I)I

    .line 675
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$3;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$1000(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Lcom/codemao/creativecenter/callback/ObserverAction;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$3;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    invoke-interface {p1, v0}, Lcom/codemao/creativecenter/callback/ObserverAction;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 p1, 0x1

    return p1
.end method
