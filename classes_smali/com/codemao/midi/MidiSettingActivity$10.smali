.class Lcom/codemao/midi/MidiSettingActivity$10;
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

    .line 322
    iput-object p1, p0, Lcom/codemao/midi/MidiSettingActivity$10;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 9

    .line 325
    sget-object v0, Lcom/codemao/midi/util/TouchIntervalHelper;->INSTANCE:Lcom/codemao/midi/util/TouchIntervalHelper;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/codemao/midi/util/TouchIntervalHelper;->checkTouchInterval(J)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 329
    :cond_b
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity$10;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    iget-object v0, v0, Lcom/codemao/midi/MidiSettingActivity;->adapterInstrument:Lcom/codemao/midi/adapter/MidiInstrumentAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/midi/adapter/MidiInstrumentAdapter;->setDoAnimate(Z)V

    .line 330
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity$10;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    iget-object v0, v0, Lcom/codemao/midi/MidiSettingActivity;->adapterInstrument:Lcom/codemao/midi/adapter/MidiInstrumentAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 331
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity$10;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    iget-object v0, v0, Lcom/codemao/midi/MidiSettingActivity;->adapterAccompany:Lcom/codemao/midi/adapter/MidiAccompanyAdapter;

    invoke-virtual {v0}, Lcom/codemao/midi/adapter/MidiAccompanyAdapter;->getCurrentPosition()I

    move-result v0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    .line 332
    :goto_28
    iget-object v3, p0, Lcom/codemao/midi/MidiSettingActivity$10;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    iget-object v3, v3, Lcom/codemao/midi/MidiSettingActivity;->adapterAccompany:Lcom/codemao/midi/adapter/MidiAccompanyAdapter;

    invoke-virtual {v3, p1}, Lcom/codemao/midi/adapter/MidiAccompanyAdapter;->setCurrentPosition(I)V

    .line 333
    iget-object v3, p0, Lcom/codemao/midi/MidiSettingActivity$10;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-static {v3}, Lcom/codemao/midi/MidiSettingActivity;->access$100(Lcom/codemao/midi/MidiSettingActivity;)Lcom/codemao/midi/bean/MidiSettingInfo;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/codemao/midi/bean/MidiSettingInfo;->setAccompanyIndex(I)V

    .line 335
    iget-object v3, p0, Lcom/codemao/midi/MidiSettingActivity$10;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-static {v3}, Lcom/codemao/midi/MidiSettingActivity;->access$200(Lcom/codemao/midi/MidiSettingActivity;)Z

    move-result v3

    const-string v4, "123"

    if-eqz v3, :cond_e5

    .line 336
    invoke-static {}, Lcom/codemao/midi/CMMidiHelper;->getInstance()Lcom/codemao/midi/CMMidiHelper;

    move-result-object p1

    iget-object v3, p0, Lcom/codemao/midi/MidiSettingActivity$10;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-static {v3}, Lcom/codemao/midi/MidiSettingActivity;->access$100(Lcom/codemao/midi/MidiSettingActivity;)Lcom/codemao/midi/bean/MidiSettingInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/midi/bean/MidiSettingInfo;->getAccompany()Lcom/codemao/midi/bean/InstrumentInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/midi/bean/InstrumentInfo;->getProgram()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Lcom/codemao/midi/CMMidiHelper;->changeProgram(II)V

    .line 337
    invoke-static {}, Lcom/codemao/midi/CMMidiHelper;->getInstance()Lcom/codemao/midi/CMMidiHelper;

    move-result-object p1

    iget-object v3, p0, Lcom/codemao/midi/MidiSettingActivity$10;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-static {v3}, Lcom/codemao/midi/MidiSettingActivity;->access$100(Lcom/codemao/midi/MidiSettingActivity;)Lcom/codemao/midi/bean/MidiSettingInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/midi/bean/MidiSettingInfo;->getAccompany()Lcom/codemao/midi/bean/InstrumentInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/midi/bean/InstrumentInfo;->getMsb()I

    move-result v3

    invoke-virtual {p1, v1, v3, v1}, Lcom/codemao/midi/CMMidiHelper;->changeMsbAndLsb(III)V

    if-eqz v0, :cond_85

    .line 339
    iget-object p1, p0, Lcom/codemao/midi/MidiSettingActivity$10;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-static {p1}, Lcom/codemao/midi/MidiSettingActivity;->access$700(Lcom/codemao/midi/MidiSettingActivity;)Lcom/codemao/midi/javax/CMMidiTrack;

    move-result-object p1

    if-eqz p1, :cond_85

    .line 340
    iget-object p1, p0, Lcom/codemao/midi/MidiSettingActivity$10;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-static {p1}, Lcom/codemao/midi/MidiSettingActivity;->access$300(Lcom/codemao/midi/MidiSettingActivity;)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object p1

    iget-object v1, p0, Lcom/codemao/midi/MidiSettingActivity$10;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-static {v1}, Lcom/codemao/midi/MidiSettingActivity;->access$700(Lcom/codemao/midi/MidiSettingActivity;)Lcom/codemao/midi/javax/CMMidiTrack;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/codemao/midi/javax/CMMidiFile;->deleteTrack(Lcom/codemao/midi/javax/CMMidiTrack;)Z

    :cond_85
    if-eqz v0, :cond_d7

    .line 342
    iget-object p1, p0, Lcom/codemao/midi/MidiSettingActivity$10;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-static {p1}, Lcom/codemao/midi/MidiSettingActivity;->access$100(Lcom/codemao/midi/MidiSettingActivity;)Lcom/codemao/midi/bean/MidiSettingInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/midi/bean/MidiSettingInfo;->getAccompanyIndex()I

    move-result p1

    if-lez p1, :cond_d7

    .line 343
    iget-object p1, p0, Lcom/codemao/midi/MidiSettingActivity$10;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    sget-object v0, Lcom/codemao/midi/view/midiview/MidiFileBuildHelper;->INSTANCE:Lcom/codemao/midi/view/midiview/MidiFileBuildHelper;

    invoke-virtual {v0}, Lcom/codemao/midi/view/midiview/MidiFileBuildHelper;->getMConverterTools()Lcom/codemao/midi/view/midiview/MidiModelConvertTools;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/midi/MidiSettingActivity$10;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    .line 344
    invoke-static {v1}, Lcom/codemao/midi/MidiSettingActivity;->access$800(Lcom/codemao/midi/MidiSettingActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/codemao/midi/MidiSettingActivity$10;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-static {v3}, Lcom/codemao/midi/MidiSettingActivity;->access$100(Lcom/codemao/midi/MidiSettingActivity;)Lcom/codemao/midi/bean/MidiSettingInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/midi/bean/MidiSettingInfo;->getAccompanyIndex()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/midi/javax/CMMidiFile;

    iget-object v3, p0, Lcom/codemao/midi/MidiSettingActivity$10;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-static {v3}, Lcom/codemao/midi/MidiSettingActivity;->access$300(Lcom/codemao/midi/MidiSettingActivity;)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/midi/javax/CMMidiFile;->getCalcTickLength()J

    move-result-wide v5

    iget-object v3, p0, Lcom/codemao/midi/MidiSettingActivity$10;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-static {v3}, Lcom/codemao/midi/MidiSettingActivity;->access$100(Lcom/codemao/midi/MidiSettingActivity;)Lcom/codemao/midi/bean/MidiSettingInfo;

    move-result-object v3

    .line 343
    invoke-virtual {v0, v1, v5, v6, v3}, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->buildAccompanyTrack(Lcom/codemao/midi/javax/CMMidiFile;JLcom/codemao/midi/bean/MidiSettingInfo;)Lcom/codemao/midi/javax/CMMidiTrack;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/midi/MidiSettingActivity;->access$702(Lcom/codemao/midi/MidiSettingActivity;Lcom/codemao/midi/javax/CMMidiTrack;)Lcom/codemao/midi/javax/CMMidiTrack;

    .line 346
    iget-object p1, p0, Lcom/codemao/midi/MidiSettingActivity$10;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-static {p1}, Lcom/codemao/midi/MidiSettingActivity;->access$300(Lcom/codemao/midi/MidiSettingActivity;)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity$10;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-static {v0}, Lcom/codemao/midi/MidiSettingActivity;->access$700(Lcom/codemao/midi/MidiSettingActivity;)Lcom/codemao/midi/javax/CMMidiTrack;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/midi/javax/CMMidiFile;->addTrack(Lcom/codemao/midi/javax/CMMidiTrack;)V

    .line 348
    :cond_d7
    invoke-static {}, Lcom/codemao/midi/CMMidiHelper;->getInstance()Lcom/codemao/midi/CMMidiHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity$10;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-static {v0}, Lcom/codemao/midi/MidiSettingActivity;->access$300(Lcom/codemao/midi/MidiSettingActivity;)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object v0

    invoke-virtual {p1, v4, v0, v2}, Lcom/codemao/midi/CMMidiHelper;->playMidiFile(Ljava/lang/String;Lcom/codemao/midi/javax/CMMidiFile;Z)V

    return-void

    :cond_e5
    if-lez p1, :cond_12f

    .line 352
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity$10;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v3, p0, Lcom/codemao/midi/MidiSettingActivity$10;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-static {v3}, Lcom/codemao/midi/MidiSettingActivity;->access$900(Lcom/codemao/midi/MidiSettingActivity;)[I

    move-result-object v3

    aget p1, v3, p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/midi/CMMidiHelper;->parseMidiFile(Ljava/io/InputStream;)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object p1

    .line 353
    invoke-static {}, Lcom/codemao/midi/CMMidiHelper;->getInstance()Lcom/codemao/midi/CMMidiHelper;

    move-result-object v0

    iget-object v3, p0, Lcom/codemao/midi/MidiSettingActivity$10;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-static {v3}, Lcom/codemao/midi/MidiSettingActivity;->access$100(Lcom/codemao/midi/MidiSettingActivity;)Lcom/codemao/midi/bean/MidiSettingInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/midi/bean/MidiSettingInfo;->getAccompany()Lcom/codemao/midi/bean/InstrumentInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/midi/bean/InstrumentInfo;->getProgram()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/codemao/midi/CMMidiHelper;->changeProgram(II)V

    .line 354
    invoke-static {}, Lcom/codemao/midi/CMMidiHelper;->getInstance()Lcom/codemao/midi/CMMidiHelper;

    move-result-object v0

    iget-object v3, p0, Lcom/codemao/midi/MidiSettingActivity$10;->this$0:Lcom/codemao/midi/MidiSettingActivity;

    invoke-static {v3}, Lcom/codemao/midi/MidiSettingActivity;->access$100(Lcom/codemao/midi/MidiSettingActivity;)Lcom/codemao/midi/bean/MidiSettingInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/midi/bean/MidiSettingInfo;->getAccompany()Lcom/codemao/midi/bean/InstrumentInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/midi/bean/InstrumentInfo;->getMsb()I

    move-result v3

    invoke-virtual {v0, v1, v3, v1}, Lcom/codemao/midi/CMMidiHelper;->changeMsbAndLsb(III)V

    .line 355
    invoke-static {}, Lcom/codemao/midi/CMMidiHelper;->getInstance()Lcom/codemao/midi/CMMidiHelper;

    move-result-object v0

    invoke-virtual {v0, v4, p1, v2}, Lcom/codemao/midi/CMMidiHelper;->playMidiFile(Ljava/lang/String;Lcom/codemao/midi/javax/CMMidiFile;Z)V

    goto :goto_136

    .line 357
    :cond_12f
    invoke-static {}, Lcom/codemao/midi/CMMidiHelper;->getInstance()Lcom/codemao/midi/CMMidiHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/midi/CMMidiHelper;->stopAll()V

    :goto_136
    return-void
.end method
