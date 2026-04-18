.class Lcom/codemao/creativecenter/customview/CreateDebugView$9;
.super Ljava/lang/Object;
.source "CreateDebugView.java"

# interfaces
.implements Landroidx/core/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/CreateDebugView;->doCloseAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

.field final synthetic val$animationTittle:Landroidx/core/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/CreateDebugView;Landroidx/core/view/ViewPropertyAnimatorCompat;)V
    .registers 3

    .line 498
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$9;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    iput-object p2, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$9;->val$animationTittle:Landroidx/core/view/ViewPropertyAnimatorCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .registers 3

    .line 506
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$9;->val$animationTittle:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 507
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$9;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$1700(Lcom/codemao/creativecenter/customview/CreateDebugView;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 2

    return-void
.end method
