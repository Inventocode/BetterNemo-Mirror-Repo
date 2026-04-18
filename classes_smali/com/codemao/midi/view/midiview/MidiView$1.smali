.class final Lcom/codemao/midi/view/midiview/MidiView$1;
.super Ljava/lang/Object;
.source "MidiView.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/view/midiview/MidiView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/midi/view/midiview/MidiView;


# direct methods
.method constructor <init>(Lcom/codemao/midi/view/midiview/MidiView;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/midi/view/midiview/MidiView$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string v0, "it"

    .line 224
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_35

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 225
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-static {v0, p1}, Lcom/codemao/midi/view/midiview/MidiView;->access$setMultipleChoiceStrokeRectColor$p(Lcom/codemao/midi/view/midiview/MidiView;I)V

    const v0, 0xffffff

    if-ne v0, p1, :cond_2f

    .line 227
    iget-object p1, p0, Lcom/codemao/midi/view/midiview/MidiView$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-static {p1}, Lcom/codemao/midi/view/midiview/MidiView;->access$getDragNoteModelList$p(Lcom/codemao/midi/view/midiview/MidiView;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 228
    iget-object p1, p0, Lcom/codemao/midi/view/midiview/MidiView$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    const-string v0, "#ffffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/codemao/midi/view/midiview/MidiView;->access$setMultipleChoiceStrokeRectColor$p(Lcom/codemao/midi/view/midiview/MidiView;I)V

    .line 230
    :cond_2f
    iget-object p1, p0, Lcom/codemao/midi/view/midiview/MidiView$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    .line 224
    :cond_35
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
