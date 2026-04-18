.class public final synthetic Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroid/view/ViewGroup;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior$$ExternalSyntheticLambda0;->f$0:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior$$ExternalSyntheticLambda0;->f$2:Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    iget-object v0, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior$$ExternalSyntheticLambda0;->f$0:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iget-object v2, p0, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior$$ExternalSyntheticLambda0;->f$2:Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;

    invoke-static {v0, v1, v2, p1}, Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;->$r8$lambda$_HWxDL30f__OzBro5BLBZal8mhI(Landroid/view/ViewGroup;Landroid/view/View;Lcom/codemao/nemo/view/behavior/HorizontalScrollBehavior;Landroid/animation/ValueAnimator;)V

    return-void
.end method
