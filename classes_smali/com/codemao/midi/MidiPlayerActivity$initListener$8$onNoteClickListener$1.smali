.class final Lcom/codemao/midi/MidiPlayerActivity$initListener$8$onNoteClickListener$1;
.super Ljava/lang/Object;
.source "MidiPlayerActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/MidiPlayerActivity$initListener$8;->onNoteClickListener(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $noteCode:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$8$onNoteClickListener$1;->$noteCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .line 330
    sget-object v0, Lcom/codemao/midi/CMMidiHelper;->Companion:Lcom/codemao/midi/CMMidiHelper$Companion;

    invoke-virtual {v0}, Lcom/codemao/midi/CMMidiHelper$Companion;->getInstance()Lcom/codemao/midi/CMMidiHelper;

    move-result-object v1

    iget v3, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$8$onNoteClickListener$1;->$noteCode:I

    const/4 v2, 0x0

    const/16 v4, 0x7f

    const/4 v5, 0x1

    const-wide/16 v6, 0xfa

    invoke-virtual/range {v1 .. v7}, Lcom/codemao/midi/CMMidiHelper;->playSingleNote(IIIZJ)V

    return-void
.end method
