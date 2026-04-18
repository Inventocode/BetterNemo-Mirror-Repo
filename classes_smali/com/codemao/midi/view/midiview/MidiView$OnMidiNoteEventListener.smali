.class public interface abstract Lcom/codemao/midi/view/midiview/MidiView$OnMidiNoteEventListener;
.super Ljava/lang/Object;
.source "MidiView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/view/midiview/MidiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnMidiNoteEventListener"
.end annotation


# virtual methods
.method public abstract onNoteClickListener(I)V
.end method

.method public abstract onNoteDeleteListener(ILkotlin/jvm/functions/Function0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method
