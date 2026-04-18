.class final Lcom/codemao/midi/view/midiview/MidiView$smoothScrollTo$1;
.super Ljava/lang/Object;
.source "MidiView.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/view/midiview/MidiView;->smoothScrollTo(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $dx:F

.field final synthetic $dy:F

.field final synthetic $preOffsetX:F

.field final synthetic $preOffsetY:F

.field final synthetic this$0:Lcom/codemao/midi/view/midiview/MidiView;


# direct methods
.method constructor <init>(Lcom/codemao/midi/view/midiview/MidiView;FFFF)V
    .registers 6

    iput-object p1, p0, Lcom/codemao/midi/view/midiview/MidiView$smoothScrollTo$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    iput p2, p0, Lcom/codemao/midi/view/midiview/MidiView$smoothScrollTo$1;->$preOffsetX:F

    iput p3, p0, Lcom/codemao/midi/view/midiview/MidiView$smoothScrollTo$1;->$dx:F

    iput p4, p0, Lcom/codemao/midi/view/midiview/MidiView$smoothScrollTo$1;->$preOffsetY:F

    iput p5, p0, Lcom/codemao/midi/view/midiview/MidiView$smoothScrollTo$1;->$dy:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    const-string v0, "it"

    .line 282
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2f

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 283
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView$smoothScrollTo$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    iget v1, p0, Lcom/codemao/midi/view/midiview/MidiView$smoothScrollTo$1;->$preOffsetX:F

    iget v2, p0, Lcom/codemao/midi/view/midiview/MidiView$smoothScrollTo$1;->$dx:F

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/codemao/midi/view/midiview/MidiView;->access$setOffsetMoveX$p(Lcom/codemao/midi/view/midiview/MidiView;F)V

    .line 284
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView$smoothScrollTo$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    iget v1, p0, Lcom/codemao/midi/view/midiview/MidiView$smoothScrollTo$1;->$preOffsetY:F

    iget v2, p0, Lcom/codemao/midi/view/midiview/MidiView$smoothScrollTo$1;->$dy:F

    mul-float p1, p1, v2

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/codemao/midi/view/midiview/MidiView;->access$setOffsetMoveY$p(Lcom/codemao/midi/view/midiview/MidiView;F)V

    .line 285
    iget-object p1, p0, Lcom/codemao/midi/view/midiview/MidiView$smoothScrollTo$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-static {p1}, Lcom/codemao/midi/view/midiview/MidiView;->access$notifyScrollOffset(Lcom/codemao/midi/view/midiview/MidiView;)V

    return-void

    .line 282
    :cond_2f
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
