.class Lcom/codemao/creativecenter/customview/CmDisplayRoleView$9;
.super Ljava/lang/Object;
.source "CmDisplayRoleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->actorScrollto(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

.field final synthetic val$isSmooth:Z

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/CmDisplayRoleView;ZI)V
    .registers 4

    .line 502
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$9;->this$0:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    iput-boolean p2, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$9;->val$isSmooth:Z

    iput p3, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$9;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 505
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$9;->val$isSmooth:Z

    if-eqz v0, :cond_12

    .line 506
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$9;->this$0:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->access$200(Lcom/codemao/creativecenter/customview/CmDisplayRoleView;)Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->rvRoles:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    iget v1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$9;->val$position:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_1f

    .line 508
    :cond_12
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$9;->this$0:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->access$200(Lcom/codemao/creativecenter/customview/CmDisplayRoleView;)Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->rvRoles:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    iget v1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$9;->val$position:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :goto_1f
    return-void
.end method
