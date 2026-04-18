.class final Lcom/codemao/midi/view/midiview/MidiView$startAutoScrollAnimForY$1;
.super Ljava/lang/Object;
.source "MidiView.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/view/midiview/MidiView;->startAutoScrollAnimForY(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $preOffsetY:Lkotlin/jvm/internal/Ref$FloatRef;

.field final synthetic this$0:Lcom/codemao/midi/view/midiview/MidiView;


# direct methods
.method constructor <init>(Lcom/codemao/midi/view/midiview/MidiView;Lkotlin/jvm/internal/Ref$FloatRef;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/midi/view/midiview/MidiView$startAutoScrollAnimForY$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    iput-object p2, p0, Lcom/codemao/midi/view/midiview/MidiView$startAutoScrollAnimForY$1;->$preOffsetY:Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    const-string v0, "it"

    .line 1192
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_35

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1193
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView$startAutoScrollAnimForY$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    const/4 v1, 0x0

    invoke-static {v0}, Lcom/codemao/midi/view/midiview/MidiView;->access$getOffsetMoveY$p(Lcom/codemao/midi/view/midiview/MidiView;)F

    move-result v2

    sub-float v2, p1, v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/codemao/midi/view/midiview/MidiView;->smoothScrollBy(II)V

    .line 1194
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView$startAutoScrollAnimForY$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/codemao/midi/view/midiview/MidiView$startAutoScrollAnimForY$1;->$preOffsetY:Lkotlin/jvm/internal/Ref$FloatRef;

    iget v2, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-float v2, p1, v2

    neg-float v2, v2

    invoke-static {v0, v1, v2}, Lcom/codemao/midi/view/midiview/MidiView;->access$dragNoteModel(Lcom/codemao/midi/view/midiview/MidiView;FF)V

    .line 1195
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView$startAutoScrollAnimForY$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1196
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView$startAutoScrollAnimForY$1;->$preOffsetY:Lkotlin/jvm/internal/Ref$FloatRef;

    iput p1, v0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    return-void

    .line 1192
    :cond_35
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
