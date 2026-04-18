.class final Lcom/codemao/midi/view/midiview/MidiView$showTickBg$1;
.super Ljava/lang/Object;
.source "MidiView.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/view/midiview/MidiView;->showTickBg(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $endAlpha:I

.field final synthetic this$0:Lcom/codemao/midi/view/midiview/MidiView;


# direct methods
.method constructor <init>(Lcom/codemao/midi/view/midiview/MidiView;I)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/midi/view/midiview/MidiView$showTickBg$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    iput p2, p0, Lcom/codemao/midi/view/midiview/MidiView$showTickBg$1;->$endAlpha:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string v0, "it"

    .line 480
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_e

    const/4 p1, 0x0

    :cond_e
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_19

    :cond_17
    iget p1, p0, Lcom/codemao/midi/view/midiview/MidiView$showTickBg$1;->$endAlpha:I

    .line 481
    :goto_19
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView$showTickBg$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-static {v0, p1}, Lcom/codemao/midi/view/midiview/MidiView;->access$setMTickBgAlpha$p(Lcom/codemao/midi/view/midiview/MidiView;I)V

    .line 483
    iget v0, p0, Lcom/codemao/midi/view/midiview/MidiView$showTickBg$1;->$endAlpha:I

    if-ne p1, v0, :cond_2d

    .line 484
    iget-object p1, p0, Lcom/codemao/midi/view/midiview/MidiView$showTickBg$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/midi/view/midiview/MidiView;->access$setTickBgShowing$p(Lcom/codemao/midi/view/midiview/MidiView;Z)V

    .line 485
    iget-object p1, p0, Lcom/codemao/midi/view/midiview/MidiView$showTickBg$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-static {p1, v0}, Lcom/codemao/midi/view/midiview/MidiView;->access$setTickBgHiding$p(Lcom/codemao/midi/view/midiview/MidiView;Z)V

    .line 488
    :cond_2d
    iget-object p1, p0, Lcom/codemao/midi/view/midiview/MidiView$showTickBg$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
