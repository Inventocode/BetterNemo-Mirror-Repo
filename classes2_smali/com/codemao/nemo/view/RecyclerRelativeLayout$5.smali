.class Lcom/codemao/nemo/view/RecyclerRelativeLayout$5;
.super Ljava/lang/Object;
.source "RecyclerRelativeLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/RecyclerRelativeLayout;->showCover(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)V
    .registers 2

    .line 325
    iput-object p1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$5;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 328
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 329
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x40a00000  # 5.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1b

    .line 330
    iget-object p1, p0, Lcom/codemao/nemo/view/RecyclerRelativeLayout$5;->this$0:Lcom/codemao/nemo/view/RecyclerRelativeLayout;

    invoke-static {p1}, Lcom/codemao/nemo/view/RecyclerRelativeLayout;->access$2000(Lcom/codemao/nemo/view/RecyclerRelativeLayout;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1b
    return-void
.end method
