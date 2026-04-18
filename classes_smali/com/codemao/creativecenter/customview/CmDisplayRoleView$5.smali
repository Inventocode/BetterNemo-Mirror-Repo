.class Lcom/codemao/creativecenter/customview/CmDisplayRoleView$5;
.super Ljava/lang/Object;
.source "CmDisplayRoleView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->showSceneEdit()V
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

    .line 434
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$5;->this$0:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 437
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 438
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$5;->this$0:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->access$200(Lcom/codemao/creativecenter/customview/CmDisplayRoleView;)Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->rvRoles:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginTop(Landroid/view/View;F)V

    .line 439
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$5;->this$0:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->access$200(Lcom/codemao/creativecenter/customview/CmDisplayRoleView;)Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeViewCreateRoleBinding;->rvRoles:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method
