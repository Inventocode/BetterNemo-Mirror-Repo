.class final Lcom/codemao/midi/view/midiview/MidiView$onTouchEvent$5;
.super Lkotlin/jvm/internal/Lambda;
.source "MidiView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/view/midiview/MidiView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/midi/view/midiview/MidiView;


# direct methods
.method constructor <init>(Lcom/codemao/midi/view/midiview/MidiView;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/midi/view/midiview/MidiView$onTouchEvent$5;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 21
    invoke-virtual {p0}, Lcom/codemao/midi/view/midiview/MidiView$onTouchEvent$5;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 5

    .line 1616
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView$onTouchEvent$5;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    .line 1617
    invoke-static {v0}, Lcom/codemao/midi/view/midiview/MidiView;->access$getNoteModelIndexLocation$p(Lcom/codemao/midi/view/midiview/MidiView;)[Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b
    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1618
    iget-object v2, p0, Lcom/codemao/midi/view/midiview/MidiView$onTouchEvent$5;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-static {v2}, Lcom/codemao/midi/view/midiview/MidiView;->access$getNoteModelIndexLocation$p(Lcom/codemao/midi/view/midiview/MidiView;)[Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1d
    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1616
    invoke-static {v0, v1, v2}, Lcom/codemao/midi/view/midiview/MidiView;->access$deleteNoteRectWithIndex(Lcom/codemao/midi/view/midiview/MidiView;II)V

    return-void
.end method
