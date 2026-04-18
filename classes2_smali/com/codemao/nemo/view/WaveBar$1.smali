.class Lcom/codemao/nemo/view/WaveBar$1;
.super Ljava/lang/Object;
.source "WaveBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/WaveBar;->drawAnim(JILcom/codemao/nemo/view/WaveBar$Mode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/WaveBar;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/WaveBar;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/codemao/nemo/view/WaveBar$1;->this$0:Lcom/codemao/nemo/view/WaveBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 148
    iget-object v0, p0, Lcom/codemao/nemo/view/WaveBar$1;->this$0:Lcom/codemao/nemo/view/WaveBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/codemao/nemo/view/WaveBar;->access$002(Lcom/codemao/nemo/view/WaveBar;F)F

    .line 149
    iget-object p1, p0, Lcom/codemao/nemo/view/WaveBar$1;->this$0:Lcom/codemao/nemo/view/WaveBar;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
