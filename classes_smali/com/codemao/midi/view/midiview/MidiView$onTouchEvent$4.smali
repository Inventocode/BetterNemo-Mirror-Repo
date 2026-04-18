.class final Lcom/codemao/midi/view/midiview/MidiView$onTouchEvent$4;
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

    iput-object p1, p0, Lcom/codemao/midi/view/midiview/MidiView$onTouchEvent$4;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 21
    invoke-virtual {p0}, Lcom/codemao/midi/view/midiview/MidiView$onTouchEvent$4;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 3

    .line 1579
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView$onTouchEvent$4;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-static {v0}, Lcom/codemao/midi/view/midiview/MidiView;->access$notifyMultipleDelete(Lcom/codemao/midi/view/midiview/MidiView;)V

    .line 1580
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView$onTouchEvent$4;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/codemao/midi/view/midiview/MidiView;->setHasChange(Z)V

    return-void
.end method
