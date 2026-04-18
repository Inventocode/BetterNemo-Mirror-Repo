.class final Lcom/codemao/midi/view/midiview/PianoView$4;
.super Ljava/lang/Object;
.source "PianoView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/view/midiview/PianoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $midiPianoAdapter:Lcom/codemao/midi/adapter/MidiPianoAdapter;


# direct methods
.method constructor <init>(Lcom/codemao/midi/adapter/MidiPianoAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/midi/view/midiview/PianoView$4;->$midiPianoAdapter:Lcom/codemao/midi/adapter/MidiPianoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/PianoView$4;->$midiPianoAdapter:Lcom/codemao/midi/adapter/MidiPianoAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
