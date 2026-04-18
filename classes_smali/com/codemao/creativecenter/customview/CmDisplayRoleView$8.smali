.class Lcom/codemao/creativecenter/customview/CmDisplayRoleView$8;
.super Ljava/lang/Object;
.source "CmDisplayRoleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->sceneScrollto(IZ)V
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

    .line 488
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$8;->this$0:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    iput-boolean p2, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$8;->val$isSmooth:Z

    iput p3, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$8;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 491
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$8;->val$isSmooth:Z

    if-eqz v0, :cond_10

    .line 492
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$8;->this$0:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->access$400(Lcom/codemao/creativecenter/customview/CmDisplayRoleView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget v1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$8;->val$position:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_1b

    .line 494
    :cond_10
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$8;->this$0:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->access$400(Lcom/codemao/creativecenter/customview/CmDisplayRoleView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget v1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$8;->val$position:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :goto_1b
    return-void
.end method
