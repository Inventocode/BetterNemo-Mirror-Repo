.class Lcom/codemao/midi/MidiSettingActivity$9;
.super Ljava/lang/Object;
.source "MidiSettingActivity.java"

# interfaces
.implements Lcom/codemao/midi/lisenter/RecyclerItemListener;


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

    .line 287
    iput-object p1, p0, Lcom/codemao/midi/MidiSettingActivity$9;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 7

    .line 290
    sget-object v0, Lcom/codemao/midi/util/TouchIntervalHelper;->INSTANCE:Lcom/codemao/midi/util/TouchIntervalHelper;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/codemao/midi/util/TouchIntervalHelper;->checkTouchInterval(J)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 294
    :cond_b
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity$9;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    iget-object v0, v0, Lcom/codemao/midi/MidiSettingActivity;->adapterAccompany:Lcom/codemao/midi/adapter/MidiAccompanyAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/midi/adapter/MidiAccompanyAdapter;->setDoAnimate(Z)V

    .line 295
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity$9;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    iget-object v0, v0, Lcom/codemao/midi/MidiSettingActivity;->adapterAccompany:Lcom/codemao/midi/adapter/MidiAccompanyAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 296
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity$9;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    iget-object v0, v0, Lcom/codemao/midi/MidiSettingActivity;->adapterInstrument:Lcom/codemao/midi/adapter/MidiInstrumentAdapter;

    invoke-virtual {v0, p1}, Lcom/codemao/midi/adapter/MidiInstrumentAdapter;->setCurrentPosition(I)V

    .line 297
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity$9;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-static {v0}, Lcom/codemao/midi/MidiSettingActivity;->access$100(Lcom/codemao/midi/MidiSettingActivity;)Lcom/codemao/midi/bean/MidiSettingInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/midi/bean/MidiSettingInfo;->setInstrumentIndex(I)V

    .line 300
    iget-object p1, p0, Lcom/codemao/midi/MidiSettingActivity$9;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-static {p1}, Lcom/codemao/midi/MidiSettingActivity;->access$200(Lcom/codemao/midi/MidiSettingActivity;)Z

    move-result p1

    const/4 v0, 0x1

    const-string v2, "123"

    if-eqz p1, :cond_9c

    .line 301
    invoke-static {}, Lcom/codemao/midi/CMMidiHelper;->getInstance()Lcom/codemao/midi/CMMidiHelper;

    move-result-object p1

    iget-object v3, p0, Lcom/codemao/midi/MidiSettingActivity$9;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-static {v3}, Lcom/codemao/midi/MidiSettingActivity;->access$100(Lcom/codemao/midi/MidiSettingActivity;)Lcom/codemao/midi/bean/MidiSettingInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/midi/bean/MidiSettingInfo;->getInstrument()Lcom/codemao/midi/bean/InstrumentInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/midi/bean/InstrumentInfo;->getProgram()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Lcom/codemao/midi/CMMidiHelper;->changeProgram(II)V

    .line 302
    invoke-static {}, Lcom/codemao/midi/CMMidiHelper;->getInstance()Lcom/codemao/midi/CMMidiHelper;

    move-result-object p1

    iget-object v3, p0, Lcom/codemao/midi/MidiSettingActivity$9;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-static {v3}, Lcom/codemao/midi/MidiSettingActivity;->access$100(Lcom/codemao/midi/MidiSettingActivity;)Lcom/codemao/midi/bean/MidiSettingInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/midi/bean/MidiSettingInfo;->getInstrument()Lcom/codemao/midi/bean/InstrumentInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/midi/bean/InstrumentInfo;->getMsb()I

    move-result v3

    invoke-virtual {p1, v1, v3, v1}, Lcom/codemao/midi/CMMidiHelper;->changeMsbAndLsb(III)V

    .line 304
    iget-object p1, p0, Lcom/codemao/midi/MidiSettingActivity$9;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-static {p1}, Lcom/codemao/midi/MidiSettingActivity;->access$300(Lcom/codemao/midi/MidiSettingActivity;)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/midi/javax/CMMidiFile;->getCMMidiTracks()[Lcom/codemao/midi/javax/CMMidiTrack;

    move-result-object p1

    aget-object p1, p1, v1

    iget-object v3, p0, Lcom/codemao/midi/MidiSettingActivity$9;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-static {v3}, Lcom/codemao/midi/MidiSettingActivity;->access$100(Lcom/codemao/midi/MidiSettingActivity;)Lcom/codemao/midi/bean/MidiSettingInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/midi/bean/MidiSettingInfo;->getInstrument()Lcom/codemao/midi/bean/InstrumentInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/midi/bean/InstrumentInfo;->getProgram()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Lcom/codemao/midi/javax/CMMidiTrack;->insertChangeProgram(II)Lcom/codemao/midi/javax/CMMidiTrack;

    move-result-object p1

    iget-object v3, p0, Lcom/codemao/midi/MidiSettingActivity$9;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    .line 305
    invoke-static {v3}, Lcom/codemao/midi/MidiSettingActivity;->access$100(Lcom/codemao/midi/MidiSettingActivity;)Lcom/codemao/midi/bean/MidiSettingInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/midi/bean/MidiSettingInfo;->getInstrument()Lcom/codemao/midi/bean/InstrumentInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/midi/bean/InstrumentInfo;->getMsb()I

    move-result v3

    invoke-virtual {p1, v1, v3, v1}, Lcom/codemao/midi/javax/CMMidiTrack;->insertChangeMsbAndLsb(III)Lcom/codemao/midi/javax/CMMidiTrack;

    .line 307
    invoke-static {}, Lcom/codemao/midi/CMMidiHelper;->getInstance()Lcom/codemao/midi/CMMidiHelper;

    move-result-object p1

    iget-object v1, p0, Lcom/codemao/midi/MidiSettingActivity$9;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-static {v1}, Lcom/codemao/midi/MidiSettingActivity;->access$300(Lcom/codemao/midi/MidiSettingActivity;)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object v1

    invoke-virtual {p1, v2, v1, v0}, Lcom/codemao/midi/CMMidiHelper;->playMidiFile(Ljava/lang/String;Lcom/codemao/midi/javax/CMMidiFile;Z)V

    return-void

    .line 311
    :cond_9c
    iget-object p1, p0, Lcom/codemao/midi/MidiSettingActivity$9;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-static {p1}, Lcom/codemao/midi/MidiSettingActivity;->access$600(Lcom/codemao/midi/MidiSettingActivity;)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object p1

    if-nez p1, :cond_b7

    .line 312
    iget-object p1, p0, Lcom/codemao/midi/MidiSettingActivity$9;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/codemao/midi/R$raw;->midi_demo:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/codemao/midi/CMMidiHelper;->parseMidiFile(Ljava/io/InputStream;)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/codemao/midi/MidiSettingActivity;->access$602(Lcom/codemao/midi/MidiSettingActivity;Lcom/codemao/midi/javax/CMMidiFile;)Lcom/codemao/midi/javax/CMMidiFile;

    .line 314
    :cond_b7
    invoke-static {}, Lcom/codemao/midi/CMMidiHelper;->getInstance()Lcom/codemao/midi/CMMidiHelper;

    move-result-object p1

    iget-object v3, p0, Lcom/codemao/midi/MidiSettingActivity$9;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-static {v3}, Lcom/codemao/midi/MidiSettingActivity;->access$100(Lcom/codemao/midi/MidiSettingActivity;)Lcom/codemao/midi/bean/MidiSettingInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/midi/bean/MidiSettingInfo;->getInstrument()Lcom/codemao/midi/bean/InstrumentInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/midi/bean/InstrumentInfo;->getProgram()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Lcom/codemao/midi/CMMidiHelper;->changeProgram(II)V

    .line 315
    invoke-static {}, Lcom/codemao/midi/CMMidiHelper;->getInstance()Lcom/codemao/midi/CMMidiHelper;

    move-result-object p1

    iget-object v3, p0, Lcom/codemao/midi/MidiSettingActivity$9;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-static {v3}, Lcom/codemao/midi/MidiSettingActivity;->access$100(Lcom/codemao/midi/MidiSettingActivity;)Lcom/codemao/midi/bean/MidiSettingInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/midi/bean/MidiSettingInfo;->getInstrument()Lcom/codemao/midi/bean/InstrumentInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/midi/bean/InstrumentInfo;->getMsb()I

    move-result v3

    invoke-virtual {p1, v1, v3, v1}, Lcom/codemao/midi/CMMidiHelper;->changeMsbAndLsb(III)V

    .line 316
    invoke-static {}, Lcom/codemao/midi/CMMidiHelper;->getInstance()Lcom/codemao/midi/CMMidiHelper;

    move-result-object p1

    iget-object v1, p0, Lcom/codemao/midi/MidiSettingActivity$9;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-static {v1}, Lcom/codemao/midi/MidiSettingActivity;->access$600(Lcom/codemao/midi/MidiSettingActivity;)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object v1

    invoke-virtual {p1, v2, v1, v0}, Lcom/codemao/midi/CMMidiHelper;->playMidiFile(Ljava/lang/String;Lcom/codemao/midi/javax/CMMidiFile;Z)V

    return-void
.end method
