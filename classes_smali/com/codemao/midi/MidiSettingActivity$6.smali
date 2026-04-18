.class Lcom/codemao/midi/MidiSettingActivity$6;
.super Ljava/lang/Object;
.source "MidiSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/MidiSettingActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/midi/MidiSettingActivity;


# direct methods
.method constructor <init>(Lcom/codemao/midi/MidiSettingActivity;)V
    .registers 2

    .line 254
    iput-object p1, p0, Lcom/codemao/midi/MidiSettingActivity$6;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 257
    sget-object p1, Lcom/codemao/midi/util/MidiStatisticsUtils;->INSTANCE:Lcom/codemao/midi/util/MidiStatisticsUtils;

    new-instance v0, Lcom/codemao/midi/util/MidiStatisticsParams;

    invoke-direct {v0}, Lcom/codemao/midi/util/MidiStatisticsParams;-><init>()V

    iget-object v1, p0, Lcom/codemao/midi/MidiSettingActivity$6;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    .line 259
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/midi/MidiSettingActivity$6;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    iget-object v3, v2, Lcom/codemao/midi/MidiSettingActivity;->instruments:Ljava/util/List;

    iget-object v2, v2, Lcom/codemao/midi/MidiSettingActivity;->adapterInstrument:Lcom/codemao/midi/adapter/MidiInstrumentAdapter;

    invoke-virtual {v2}, Lcom/codemao/midi/adapter/MidiInstrumentAdapter;->getCurrentPosition()I

    move-result v2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/midi/bean/MidiInstrumentInfo;

    invoke-virtual {v2}, Lcom/codemao/midi/bean/MidiInstrumentInfo;->getNameResourseId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/midi/util/MidiStatisticsParams;->putMIDISettingTone(Ljava/lang/String;)Lcom/codemao/midi/util/MidiStatisticsParams;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/midi/MidiSettingActivity$6;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    .line 260
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/midi/MidiSettingActivity$6;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    iget-object v3, v2, Lcom/codemao/midi/MidiSettingActivity;->accompanys:Ljava/util/List;

    iget-object v2, v2, Lcom/codemao/midi/MidiSettingActivity;->adapterAccompany:Lcom/codemao/midi/adapter/MidiAccompanyAdapter;

    invoke-virtual {v2}, Lcom/codemao/midi/adapter/MidiAccompanyAdapter;->getCurrentPosition()I

    move-result v2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/midi/bean/MidiAccompanyInfo;

    invoke-virtual {v2}, Lcom/codemao/midi/bean/MidiAccompanyInfo;->getNameResourceId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/midi/util/MidiStatisticsParams;->putMIDISettingAccompaniment(Ljava/lang/String;)Lcom/codemao/midi/util/MidiStatisticsParams;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/midi/MidiSettingActivity$6;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    .line 261
    invoke-static {v1}, Lcom/codemao/midi/MidiSettingActivity;->access$100(Lcom/codemao/midi/MidiSettingActivity;)Lcom/codemao/midi/bean/MidiSettingInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/midi/bean/MidiSettingInfo;->getBeat()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/midi/util/MidiStatisticsParams;->putMIDISettingBeat(Ljava/lang/String;)Lcom/codemao/midi/util/MidiStatisticsParams;

    move-result-object v0

    .line 262
    iget-object v1, p0, Lcom/codemao/midi/MidiSettingActivity$6;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-static {v1}, Lcom/codemao/midi/MidiSettingActivity;->access$100(Lcom/codemao/midi/MidiSettingActivity;)Lcom/codemao/midi/bean/MidiSettingInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/midi/bean/MidiSettingInfo;->getMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6e

    const-string/jumbo v1, "即兴模式"

    goto :goto_71

    :cond_6e
    const-string/jumbo v1, "谱曲模式"

    :goto_71
    invoke-virtual {v0, v1}, Lcom/codemao/midi/util/MidiStatisticsParams;->putMIDISettingMode(Ljava/lang/String;)Lcom/codemao/midi/util/MidiStatisticsParams;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Lcom/codemao/midi/util/MidiStatisticsParams;->get()Ljava/util/Map;

    move-result-object v0

    const-string v1, "MIDI设置页"

    const-string v2, "MIDI设置-确定"

    .line 257
    invoke-virtual {p1, v1, v2, v0}, Lcom/codemao/midi/util/MidiStatisticsUtils;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 264
    iget-object p1, p0, Lcom/codemao/midi/MidiSettingActivity$6;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-static {p1}, Lcom/codemao/midi/MidiSettingActivity;->access$100(Lcom/codemao/midi/MidiSettingActivity;)Lcom/codemao/midi/bean/MidiSettingInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity$6;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    iget-object v0, v0, Lcom/codemao/midi/MidiSettingActivity;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/midi/bean/MidiSettingInfo;->setName(Ljava/lang/String;)V

    .line 265
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 266
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity$6;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-static {v0}, Lcom/codemao/midi/MidiSettingActivity;->access$100(Lcom/codemao/midi/MidiSettingActivity;)Lcom/codemao/midi/bean/MidiSettingInfo;

    move-result-object v0

    const-string v1, "midiSettingInfo"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 267
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity$6;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 268
    iget-object p1, p0, Lcom/codemao/midi/MidiSettingActivity$6;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-virtual {p1}, Lcom/codemao/midi/MidiSettingActivity;->finish()V

    return-void
.end method
