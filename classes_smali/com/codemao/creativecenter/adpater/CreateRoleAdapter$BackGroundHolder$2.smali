.class Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$2;
.super Ljava/lang/Object;
.source "CreateRoleAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->bindActor(Lcom/codemao/creativestore/bean/ActorVO;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;)V
    .registers 2

    .line 759
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$2;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 771
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$2;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$900(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)I

    move-result p1

    if-ltz p1, :cond_3a

    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$2;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$900(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)I

    move-result p1

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$2;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;

    iget-object v0, v0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$1200(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3a

    .line 772
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$2;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$1200(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$2;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;

    iget-object v0, v0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$900(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/ActorVO;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/bean/ActorVO;->setSelected(Z)V

    .line 774
    :cond_3a
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$2;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    if-ltz p1, :cond_7b

    .line 775
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$2;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;

    iget-object v0, v0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$1200(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_7b

    .line 776
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$2;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;

    iget-object v0, v0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$1200(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/ActorVO;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/ActorVO;->setSelected(Z)V

    .line 777
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$2;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;

    iget-object v0, v0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$400(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object v0

    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$2;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;

    iget-object v2, v2, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {v2}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$1200(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v0, p1, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->selectActor(Lcom/codemao/creativestore/bean/ActorVO;Z)V

    :cond_7b
    return-void
.end method
