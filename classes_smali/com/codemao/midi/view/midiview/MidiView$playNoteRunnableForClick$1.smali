.class final Lcom/codemao/midi/view/midiview/MidiView$playNoteRunnableForClick$1;
.super Ljava/lang/Object;
.source "MidiView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/view/midiview/MidiView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMidiView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MidiView.kt\ncom/codemao/midi/view/midiview/MidiView$playNoteRunnableForClick$1\n*L\n1#1,2019:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/midi/view/midiview/MidiView;


# direct methods
.method constructor <init>(Lcom/codemao/midi/view/midiview/MidiView;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/midi/view/midiview/MidiView$playNoteRunnableForClick$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 1359
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView$playNoteRunnableForClick$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {v0}, Lcom/codemao/midi/view/midiview/MidiView;->removeEmptyNoteModel()V

    .line 1360
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView$playNoteRunnableForClick$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {v0}, Lcom/codemao/midi/view/midiview/MidiView;->stopMidiPlayingProgressAnim()V

    .line 1361
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView$playNoteRunnableForClick$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {v0}, Lcom/codemao/midi/view/midiview/MidiView;->getOnPlayingAnimStopListener()Lcom/codemao/midi/view/midiview/MidiView$OnPlayingAnimStopListener;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lcom/codemao/midi/view/midiview/MidiView$OnPlayingAnimStopListener;->onAnimStopListener()V

    .line 1362
    :cond_15
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView$playNoteRunnableForClick$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    .line 1363
    invoke-static {v0}, Lcom/codemao/midi/view/midiview/MidiView;->access$getPreActionDownPoint$p(Lcom/codemao/midi/view/midiview/MidiView;)[F

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v3, p0, Lcom/codemao/midi/view/midiview/MidiView$playNoteRunnableForClick$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-static {v3}, Lcom/codemao/midi/view/midiview/MidiView;->access$getOffsetMoveX$p(Lcom/codemao/midi/view/midiview/MidiView;)F

    move-result v3

    sub-float/2addr v1, v3

    .line 1364
    iget-object v3, p0, Lcom/codemao/midi/view/midiview/MidiView$playNoteRunnableForClick$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-static {v3}, Lcom/codemao/midi/view/midiview/MidiView;->access$getPreActionDownPoint$p(Lcom/codemao/midi/view/midiview/MidiView;)[F

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/codemao/midi/view/midiview/MidiView$playNoteRunnableForClick$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-static {v4}, Lcom/codemao/midi/view/midiview/MidiView;->access$getOffsetMoveY$p(Lcom/codemao/midi/view/midiview/MidiView;)F

    move-result v4

    sub-float/2addr v3, v4

    .line 1362
    invoke-static {v0, v1, v3}, Lcom/codemao/midi/view/midiview/MidiView;->access$addNoteRectWithPoint(Lcom/codemao/midi/view/midiview/MidiView;FF)[Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/midi/view/midiview/MidiView;->access$setNoteModelIndexLocation$p(Lcom/codemao/midi/view/midiview/MidiView;[Ljava/lang/Integer;)V

    .line 1366
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView$playNoteRunnableForClick$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-static {v0}, Lcom/codemao/midi/view/midiview/MidiView;->access$getNoteModelIndexLocation$p(Lcom/codemao/midi/view/midiview/MidiView;)[Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_71

    .line 1367
    iget-object v1, p0, Lcom/codemao/midi/view/midiview/MidiView$playNoteRunnableForClick$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {v1}, Lcom/codemao/midi/view/midiview/MidiView;->getOnMidiNoteEventListener()Lcom/codemao/midi/view/midiview/MidiView$OnMidiNoteEventListener;

    move-result-object v1

    if-eqz v1, :cond_71

    .line 1368
    iget-object v3, p0, Lcom/codemao/midi/view/midiview/MidiView$playNoteRunnableForClick$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {v3}, Lcom/codemao/midi/view/midiview/MidiView;->getSheetList()Ljava/util/List;

    move-result-object v3

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/midi/view/midiview/NoteModel;

    invoke-virtual {v0}, Lcom/codemao/midi/view/midiview/NoteModel;->getNoteType()Lcom/codemao/midi/view/midiview/NoteType;

    move-result-object v0

    if-eqz v0, :cond_6e

    invoke-virtual {v0}, Lcom/codemao/midi/view/midiview/NoteType;->getNoteCode()I

    move-result v2

    .line 1367
    :cond_6e
    invoke-interface {v1, v2}, Lcom/codemao/midi/view/midiview/MidiView$OnMidiNoteEventListener;->onNoteClickListener(I)V

    .line 1371
    :cond_71
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView$playNoteRunnableForClick$1;->this$0:Lcom/codemao/midi/view/midiview/MidiView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/codemao/midi/view/midiview/MidiView;->access$setTouchMode$p(Lcom/codemao/midi/view/midiview/MidiView;I)V

    return-void
.end method
