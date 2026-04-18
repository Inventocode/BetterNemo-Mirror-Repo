.class public final Lcom/codemao/midi/view/midiview/PianoView$2;
.super Ljava/lang/Object;
.source "PianoView.kt"

# interfaces
.implements Lcom/codemao/midi/adapter/MidiPianoAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/view/midiview/PianoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/midi/view/midiview/PianoView;


# direct methods
.method constructor <init>(Lcom/codemao/midi/view/midiview/PianoView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/codemao/midi/view/midiview/PianoView$2;->this$0:Lcom/codemao/midi/view/midiview/PianoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/codemao/midi/adapter/PianoItem;Landroid/view/View;)V
    .registers 4

    const-string v0, "pianoItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object p2, p0, Lcom/codemao/midi/view/midiview/PianoView$2;->this$0:Lcom/codemao/midi/view/midiview/PianoView;

    invoke-virtual {p2}, Lcom/codemao/midi/view/midiview/PianoView;->getOnPianoItemClick()Lcom/codemao/midi/view/midiview/PianoView$OnPianoItemClick;

    move-result-object p2

    if-eqz p2, :cond_19

    invoke-virtual {p1}, Lcom/codemao/midi/adapter/PianoItem;->getNote()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/codemao/midi/view/midiview/PianoView$OnPianoItemClick;->onPianoItemClick(I)V

    :cond_19
    return-void
.end method
