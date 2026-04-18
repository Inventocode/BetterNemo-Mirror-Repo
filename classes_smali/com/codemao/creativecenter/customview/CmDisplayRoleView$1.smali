.class Lcom/codemao/creativecenter/customview/CmDisplayRoleView$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "CmDisplayRoleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->init(Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativecenter/synergic/SynergicHelper;Lcom/codemao/creativecenter/view/LocalBcmView;Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/CmDisplayRoleView;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$1;->this$0:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 3

    .line 163
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 165
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$1;->this$0:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->access$000(Lcom/codemao/creativecenter/customview/CmDisplayRoleView;)Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->getLastActor()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 166
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$1;->this$0:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->access$000(Lcom/codemao/creativecenter/customview/CmDisplayRoleView;)Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->getLastActor()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/codemao/creativestore/bean/ActorVO;->setEditStatus(Z)V

    :cond_1d
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    .line 172
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method
