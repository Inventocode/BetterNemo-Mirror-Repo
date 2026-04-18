.class final Lcom/codemao/midi/MidiPlayerActivity$initListener$8$onNoteDeleteListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MidiPlayerActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/MidiPlayerActivity$initListener$8;->onNoteDeleteListener(ILkotlin/jvm/functions/Function0;)V
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
.field final synthetic $deleteAction:Lkotlin/jvm/functions/Function0;

.field final synthetic this$0:Lcom/codemao/midi/MidiPlayerActivity$initListener$8;


# direct methods
.method constructor <init>(Lcom/codemao/midi/MidiPlayerActivity$initListener$8;Lkotlin/jvm/functions/Function0;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$8$onNoteDeleteListener$1;->this$0:Lcom/codemao/midi/MidiPlayerActivity$initListener$8;

    iput-object p2, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$8$onNoteDeleteListener$1;->$deleteAction:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 326
    invoke-virtual {p0}, Lcom/codemao/midi/MidiPlayerActivity$initListener$8$onNoteDeleteListener$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 2

    .line 343
    iget-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$8$onNoteDeleteListener$1;->$deleteAction:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 344
    iget-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$8$onNoteDeleteListener$1;->this$0:Lcom/codemao/midi/MidiPlayerActivity$initListener$8;

    iget-object v0, v0, Lcom/codemao/midi/MidiPlayerActivity$initListener$8;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-static {v0}, Lcom/codemao/midi/MidiPlayerActivity;->access$notifyCleanImageViewState(Lcom/codemao/midi/MidiPlayerActivity;)V

    return-void
.end method
