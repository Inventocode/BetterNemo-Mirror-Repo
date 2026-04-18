.class Lcom/codemao/creativecenter/customview/CreateDebugView$1$1;
.super Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;
.source "CreateDebugView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/CreateDebugView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$viewPropertyAnimatorCompat:Landroidx/core/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/CreateDebugView$1;Landroidx/core/view/ViewPropertyAnimatorCompat;)V
    .registers 3

    .line 195
    iput-object p2, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$1$1;->val$viewPropertyAnimatorCompat:Landroidx/core/view/ViewPropertyAnimatorCompat;

    invoke-direct {p0}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .registers 4

    .line 198
    invoke-super {p0, p1}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;->onAnimationEnd(Landroid/view/View;)V

    .line 199
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$1$1;->val$viewPropertyAnimatorCompat:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 200
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    const/high16 v0, 0x3f800000  # 1.0f

    .line 201
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
