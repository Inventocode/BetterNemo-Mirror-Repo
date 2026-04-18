.class final Lcom/codemao/midi/view/midiview/MidiView$startMidiPlaying$1;
.super Ljava/lang/Object;
.source "MidiView.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/view/midiview/MidiView;->startMidiPlaying(JJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $animatorEnd:F

.field final synthetic $moveLineRightX:F

.field final synthetic $playLineEndX:Lkotlin/jvm/internal/Ref$FloatRef;

.field final synthetic $startX:F

.field final synthetic this$0:Lcom/codemao/midi/view/midiview/MidiView;


# direct methods
.method constructor <init>(Lcom/codemao/midi/view/midiview/MidiView;FLkotlin/jvm/internal/Ref$FloatRef;FF)V
    .registers 6

    iput-object p1, p0, Lcom/codemao/midi/view/midiview/MidiView$startMidiPlaying$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    iput p2, p0, Lcom/codemao/midi/view/midiview/MidiView$startMidiPlaying$1;->$startX:F

    iput-object p3, p0, Lcom/codemao/midi/view/midiview/MidiView$startMidiPlaying$1;->$playLineEndX:Lkotlin/jvm/internal/Ref$FloatRef;

    iput p4, p0, Lcom/codemao/midi/view/midiview/MidiView$startMidiPlaying$1;->$moveLineRightX:F

    iput p5, p0, Lcom/codemao/midi/view/midiview/MidiView$startMidiPlaying$1;->$animatorEnd:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    const-string v0, "it"

    .line 1907
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_9f

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1908
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView$startMidiPlaying$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    iget v1, p0, Lcom/codemao/midi/view/midiview/MidiView$startMidiPlaying$1;->$startX:F

    add-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/midi/view/midiview/MidiView;->access$setPlayProgressOffset$p(Lcom/codemao/midi/view/midiview/MidiView;Ljava/lang/Float;)V

    .line 1909
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView$startMidiPlaying$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-static {v0}, Lcom/codemao/midi/view/midiview/MidiView;->access$getPlayProgressOffset$p(Lcom/codemao/midi/view/midiview/MidiView;)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    .line 1911
    :goto_2c
    iget-object v2, p0, Lcom/codemao/midi/view/midiview/MidiView$startMidiPlaying$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-static {v2, v0}, Lcom/codemao/midi/view/midiview/MidiView;->access$setMPlayLineOffset$p(Lcom/codemao/midi/view/midiview/MidiView;F)V

    .line 1912
    iget-object v2, p0, Lcom/codemao/midi/view/midiview/MidiView$startMidiPlaying$1;->$playLineEndX:Lkotlin/jvm/internal/Ref$FloatRef;

    iget v2, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    cmpl-float v3, v0, v2

    if-ltz v3, :cond_5c

    iget v3, p0, Lcom/codemao/midi/view/midiview/MidiView$startMidiPlaying$1;->$moveLineRightX:F

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_5c

    .line 1913
    iget-object v3, p0, Lcom/codemao/midi/view/midiview/MidiView$startMidiPlaying$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-static {v3, v2}, Lcom/codemao/midi/view/midiview/MidiView;->access$setMPlayLineOffset$p(Lcom/codemao/midi/view/midiview/MidiView;F)V

    .line 1916
    iget-object v2, p0, Lcom/codemao/midi/view/midiview/MidiView$startMidiPlaying$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    iget-object v3, p0, Lcom/codemao/midi/view/midiview/MidiView$startMidiPlaying$1;->$playLineEndX:Lkotlin/jvm/internal/Ref$FloatRef;

    iget v3, v3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-float/2addr v0, v3

    neg-float v0, v0

    invoke-static {v2, v0}, Lcom/codemao/midi/view/midiview/MidiView;->access$setMPlayMoveX$p(Lcom/codemao/midi/view/midiview/MidiView;F)V

    .line 1917
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView$startMidiPlaying$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    iget v2, p0, Lcom/codemao/midi/view/midiview/MidiView$startMidiPlaying$1;->$startX:F

    invoke-static {v0}, Lcom/codemao/midi/view/midiview/MidiView;->access$getMPlayMoveX$p(Lcom/codemao/midi/view/midiview/MidiView;)F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v0, v2}, Lcom/codemao/midi/view/midiview/MidiView;->access$setOffsetMoveX$p(Lcom/codemao/midi/view/midiview/MidiView;F)V

    goto :goto_69

    .line 1918
    :cond_5c
    iget v0, p0, Lcom/codemao/midi/view/midiview/MidiView$startMidiPlaying$1;->$moveLineRightX:F

    cmpl-float v3, p1, v0

    if-lez v3, :cond_69

    .line 1920
    iget-object v3, p0, Lcom/codemao/midi/view/midiview/MidiView$startMidiPlaying$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    add-float/2addr v2, p1

    sub-float/2addr v2, v0

    invoke-static {v3, v2}, Lcom/codemao/midi/view/midiview/MidiView;->access$setMPlayLineOffset$p(Lcom/codemao/midi/view/midiview/MidiView;F)V

    .line 1923
    :cond_69
    :goto_69
    iget v0, p0, Lcom/codemao/midi/view/midiview/MidiView$startMidiPlaying$1;->$animatorEnd:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/4 v0, 0x1

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_99

    .line 1924
    iget-object p1, p0, Lcom/codemao/midi/view/midiview/MidiView$startMidiPlaying$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    const/high16 v0, -0x40800000  # -1.0f

    invoke-static {p1, v0}, Lcom/codemao/midi/view/midiview/MidiView;->access$setMPlayLineOffset$p(Lcom/codemao/midi/view/midiview/MidiView;F)V

    .line 1925
    iget-object p1, p0, Lcom/codemao/midi/view/midiview/MidiView$startMidiPlaying$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-static {p1, v1}, Lcom/codemao/midi/view/midiview/MidiView;->access$setMPlayMoveX$p(Lcom/codemao/midi/view/midiview/MidiView;F)V

    .line 1927
    iget-object p1, p0, Lcom/codemao/midi/view/midiview/MidiView$startMidiPlaying$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/midi/view/midiview/MidiView;->access$setPlayProgressOffset$p(Lcom/codemao/midi/view/midiview/MidiView;Ljava/lang/Float;)V

    .line 1928
    iget-object p1, p0, Lcom/codemao/midi/view/midiview/MidiView$startMidiPlaying$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {p1}, Lcom/codemao/midi/view/midiview/MidiView;->getOnPlayingAnimStopListener()Lcom/codemao/midi/view/midiview/MidiView$OnPlayingAnimStopListener;

    move-result-object p1

    if-eqz p1, :cond_93

    invoke-interface {p1}, Lcom/codemao/midi/view/midiview/MidiView$OnPlayingAnimStopListener;->onAnimStopListener()V

    .line 1930
    :cond_93
    iget-object p1, p0, Lcom/codemao/midi/view/midiview/MidiView$startMidiPlaying$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/midi/view/midiview/MidiView;->access$setHasStartPlayMidi$p(Lcom/codemao/midi/view/midiview/MidiView;Z)V

    .line 1933
    :cond_99
    iget-object p1, p0, Lcom/codemao/midi/view/midiview/MidiView$startMidiPlaying$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    .line 1907
    :cond_9f
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
