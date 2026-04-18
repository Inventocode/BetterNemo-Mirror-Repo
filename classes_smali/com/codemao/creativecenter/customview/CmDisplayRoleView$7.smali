.class Lcom/codemao/creativecenter/customview/CmDisplayRoleView$7;
.super Ljava/lang/Object;
.source "CmDisplayRoleView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->hideSceneEdit()V
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

    .line 466
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$7;->this$0:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 474
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$7;->this$0:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->access$300(Lcom/codemao/creativecenter/customview/CmDisplayRoleView;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
