.class final Lcom/codemao/midi/MidiPlayerActivity$initListener$2;
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

    iput-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$2;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 8

    .line 258
    sget-object v0, Lcom/codemao/midi/util/MidiStatisticsUtils;->INSTANCE:Lcom/codemao/midi/util/MidiStatisticsUtils;

    const-string v1, "MIDI画板"

    const-string v2, "MIDI画板-完成"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/codemao/midi/util/MidiStatisticsUtils;->sendEvent$default(Lcom/codemao/midi/util/MidiStatisticsUtils;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    .line 259
    iget-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$2;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-static {p1}, Lcom/codemao/midi/MidiPlayerActivity;->access$stopMidi(Lcom/codemao/midi/MidiPlayerActivity;)V

    .line 260
    iget-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$2;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-static {p1}, Lcom/codemao/midi/MidiPlayerActivity;->access$getMidiMaterialBean$p(Lcom/codemao/midi/MidiPlayerActivity;)Lcom/codemao/midi/bean/MidiMaterialBean;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$2;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-static {v0}, Lcom/codemao/midi/MidiPlayerActivity;->access$getMidiSettingInfo$p(Lcom/codemao/midi/MidiPlayerActivity;)Lcom/codemao/midi/bean/MidiSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/midi/bean/MidiSettingInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/midi/bean/MidiMaterialBean;->setName(Ljava/lang/String;)V

    .line 261
    iget-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$2;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-static {p1}, Lcom/codemao/midi/MidiPlayerActivity;->access$getMidiMaterialBean$p(Lcom/codemao/midi/MidiPlayerActivity;)Lcom/codemao/midi/bean/MidiMaterialBean;

    move-result-object p1

    const-string v0, "mid"

    invoke-virtual {p1, v0}, Lcom/codemao/midi/bean/MidiMaterialBean;->setExt(Ljava/lang/String;)V

    .line 262
    iget-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$2;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-static {p1}, Lcom/codemao/midi/MidiPlayerActivity;->access$getMidiMaterialBean$p(Lcom/codemao/midi/MidiPlayerActivity;)Lcom/codemao/midi/bean/MidiMaterialBean;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$2;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-static {v0}, Lcom/codemao/midi/MidiPlayerActivity;->access$getMidiSettingInfo$p(Lcom/codemao/midi/MidiPlayerActivity;)Lcom/codemao/midi/bean/MidiSettingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/midi/bean/MidiSettingInfo;->getMode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/codemao/midi/bean/MidiMaterialBean;->setMode(I)V

    .line 263
    sget-object p1, Lcom/codemao/midi/CMMidiHelper;->Companion:Lcom/codemao/midi/CMMidiHelper$Companion;

    iget-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$2;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-static {v0}, Lcom/codemao/midi/MidiPlayerActivity;->access$getMidiModelConvertTools$p(Lcom/codemao/midi/MidiPlayerActivity;)Lcom/codemao/midi/view/midiview/MidiModelConvertTools;

    move-result-object v0

    if-eqz v0, :cond_57

    iget-object v1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$2;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-static {v1}, Lcom/codemao/midi/MidiPlayerActivity;->access$getMidiSettingInfo$p(Lcom/codemao/midi/MidiPlayerActivity;)Lcom/codemao/midi/bean/MidiSettingInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->convert(Lcom/codemao/midi/bean/MidiSettingInfo;)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object v0

    goto :goto_58

    :cond_57
    const/4 v0, 0x0

    :goto_58
    iget-object v1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$2;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-static {v1}, Lcom/codemao/midi/MidiPlayerActivity;->access$getFilePath$p(Lcom/codemao/midi/MidiPlayerActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/codemao/midi/CMMidiHelper$Companion;->writeMidiFile(Lcom/codemao/midi/javax/CMMidiFile;Ljava/lang/String;)V

    .line 264
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 265
    iget-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$2;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-static {v0}, Lcom/codemao/midi/MidiPlayerActivity;->access$getMidiMaterialBean$p(Lcom/codemao/midi/MidiPlayerActivity;)Lcom/codemao/midi/bean/MidiMaterialBean;

    move-result-object v0

    const-string v1, "midi_data"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 266
    iget-object v0, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$2;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-virtual {v0, p1}, Lcom/codemao/midi/MidiPlayerActivity;->finishWithOk(Landroid/content/Intent;)V

    return-void
.end method
