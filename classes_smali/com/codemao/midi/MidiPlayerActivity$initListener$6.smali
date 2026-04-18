.class final Lcom/codemao/midi/MidiPlayerActivity$initListener$6;
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

    iput-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$6;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 8

    .line 305
    sget-object v0, Lcom/codemao/midi/util/MidiStatisticsUtils;->INSTANCE:Lcom/codemao/midi/util/MidiStatisticsUtils;

    const-string v1, "MIDI画板"

    const-string v2, "MIDI画板-设置"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/codemao/midi/util/MidiStatisticsUtils;->sendEvent$default(Lcom/codemao/midi/util/MidiStatisticsUtils;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    .line 306
    iget-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$6;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-static {p1}, Lcom/codemao/midi/MidiPlayerActivity;->access$stopMidi(Lcom/codemao/midi/MidiPlayerActivity;)V

    .line 309
    iget-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$6;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-static {p1}, Lcom/codemao/midi/MidiPlayerActivity;->access$getMidiSettingInfo$p(Lcom/codemao/midi/MidiPlayerActivity;)Lcom/codemao/midi/bean/MidiSettingInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$6;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-static {v1}, Lcom/codemao/midi/MidiPlayerActivity;->access$getExistNameStr$p(Lcom/codemao/midi/MidiPlayerActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/codemao/midi/MidiSettingActivity;->goMidiSettingActivity(Landroid/app/Activity;Lcom/codemao/midi/bean/MidiSettingInfo;Ljava/lang/String;)V

    return-void
.end method
