.class final Lcom/codemao/midi/MidiPlayerActivity$initListener$3;
.super Ljava/lang/Object;
.source "MidiPlayerActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/MidiPlayerActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/midi/MidiPlayerActivity;


# direct methods
.method constructor <init>(Lcom/codemao/midi/MidiPlayerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$3;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 8

    .line 271
    sget-object v0, Lcom/codemao/midi/util/MidiStatisticsUtils;->INSTANCE:Lcom/codemao/midi/util/MidiStatisticsUtils;

    const-string v1, "MIDI画板"

    const-string v2, "MIDI画板-返回最前"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/codemao/midi/util/MidiStatisticsUtils;->sendEvent$default(Lcom/codemao/midi/util/MidiStatisticsUtils;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    .line 272
    iget-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$3;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-static {p1}, Lcom/codemao/midi/MidiPlayerActivity;->access$scrollMidi(Lcom/codemao/midi/MidiPlayerActivity;)V

    return-void
.end method
