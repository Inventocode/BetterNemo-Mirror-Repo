.class final Lcom/codemao/midi/MidiPlayerActivity$initListener$5$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MidiPlayerActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/MidiPlayerActivity$initListener$5;->onClick(Landroid/view/View;)V
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
.field final synthetic $cleanMidiContent$1:Lcom/codemao/midi/MidiPlayerActivity$initListener$5$1;


# direct methods
.method constructor <init>(Lcom/codemao/midi/MidiPlayerActivity$initListener$5$1;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$5$2;->$cleanMidiContent$1:Lcom/codemao/midi/MidiPlayerActivity$initListener$5$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/codemao/midi/MidiPlayerActivity$initListener$5$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 7

    .line 296
    sget-object v0, Lcom/codemao/midi/util/MidiStatisticsUtils;->INSTANCE:Lcom/codemao/midi/util/MidiStatisticsUtils;

    const-string v1, "MIDI画板"

    const-string v2, "MIDI画板-重做"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/codemao/midi/util/MidiStatisticsUtils;->sendEvent$default(Lcom/codemao/midi/util/MidiStatisticsUtils;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    .line 297
    iget-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$5$2;->$cleanMidiContent$1:Lcom/codemao/midi/MidiPlayerActivity$initListener$5$1;

    invoke-virtual {v0}, Lcom/codemao/midi/MidiPlayerActivity$initListener$5$1;->invoke()V

    return-void
.end method
