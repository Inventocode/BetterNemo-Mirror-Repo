.class public Lcom/codemao/midi/MidiSettingActivity;
.super Lcom/nemo/commonui/BaseNemoUIActivity;
.source "MidiSettingActivity.java"

# interfaces
.implements Lcom/codemao/midi/util/MidiKeyboardHeightObserver;


# instance fields
.field private BASE_MIDI_INDEX:I

.field private BASE_MIDI_NAME:Ljava/lang/String;

.field accompanys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/midi/bean/MidiAccompanyInfo;",
            ">;"
        }
    .end annotation
.end field

.field adapterAccompany:Lcom/codemao/midi/adapter/MidiAccompanyAdapter;

.field adapterInstrument:Lcom/codemao/midi/adapter/MidiInstrumentAdapter;

.field beatLayout:Lcom/codemao/midi/view/BeatLayout;

.field private demos:[I

.field private existNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private instrumentDemo:Lcom/codemao/midi/javax/CMMidiFile;

.field instruments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/midi/bean/MidiInstrumentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private isKeyboardShow:Z

.field private final isPad:Z

.field ivEdit:Landroid/widget/ImageView;

.field ivNormal:Landroid/widget/ImageView;

.field ivPro:Landroid/widget/ImageView;

.field private keyboardHeightProvider:Lcom/codemao/midi/util/MidiKeyboardHeightProvider;

.field private final mAccompanyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/midi/javax/CMMidiFile;",
            ">;"
        }
    .end annotation
.end field

.field private mAccompanyTrack:Lcom/codemao/midi/javax/CMMidiTrack;

.field private mInitHeight:I

.field private mSourceMidi:Lcom/codemao/midi/javax/CMMidiFile;

.field private midiSettingInfo:Lcom/codemao/midi/bean/MidiSettingInfo;

.field rlModeNormal:Landroidx/constraintlayout/widget/ConstraintLayout;

.field rlModePro:Landroidx/constraintlayout/widget/ConstraintLayout;

.field rvAccompany:Landroidx/recyclerview/widget/RecyclerView;

.field rvInstrument:Landroidx/recyclerview/widget/RecyclerView;

.field tvName:Landroid/widget/TextView;

.field tvNormal:Landroid/widget/TextView;

.field tvPro:Landroid/widget/TextView;

.field tvSure:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 54
    invoke-direct {p0}, Lcom/nemo/commonui/BaseNemoUIActivity;-><init>()V

    const-string v0, "MIDI音乐"

    .line 55
    iput-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->BASE_MIDI_NAME:Ljava/lang/String;

    const/4 v0, 0x1

    .line 56
    iput v0, p0, Lcom/codemao/midi/MidiSettingActivity;->BASE_MIDI_INDEX:I

    const/4 v1, 0x7

    new-array v2, v1, [I

    .line 79
    sget v3, Lcom/codemao/midi/R$raw;->midi_demo:I

    const/4 v4, 0x0

    aput v3, v2, v4

    sget v3, Lcom/codemao/midi/R$raw;->midi_demo_fangke:I

    aput v3, v2, v0

    sget v0, Lcom/codemao/midi/R$raw;->midi_demo_jueshi:I

    const/4 v3, 0x2

    aput v0, v2, v3

    sget v0, Lcom/codemao/midi/R$raw;->midi_demo_lading:I

    const/4 v3, 0x3

    aput v0, v2, v3

    sget v0, Lcom/codemao/midi/R$raw;->midi_demo_wuqu:I

    const/4 v3, 0x4

    aput v0, v2, v3

    sget v0, Lcom/codemao/midi/R$raw;->midi_demo_xiha:I

    const/4 v3, 0x5

    aput v0, v2, v3

    sget v0, Lcom/codemao/midi/R$raw;->midi_demo_yaogun:I

    const/4 v3, 0x6

    aput v0, v2, v3

    iput-object v2, p0, Lcom/codemao/midi/MidiSettingActivity;->demos:[I

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->mAccompanyList:Ljava/util/List;

    .line 109
    sget-object v0, Lcom/codemao/midi/util/MidiConfigManager;->INSTANCE:Lcom/codemao/midi/util/MidiConfigManager;

    invoke-virtual {v0}, Lcom/codemao/midi/util/MidiConfigManager;->isPad()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/midi/MidiSettingActivity;->isPad:Z

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/midi/MidiSettingActivity;)Lcom/codemao/midi/util/MidiKeyboardHeightProvider;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/codemao/midi/MidiSettingActivity;->keyboardHeightProvider:Lcom/codemao/midi/util/MidiKeyboardHeightProvider;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/midi/MidiSettingActivity;)Lcom/codemao/midi/bean/MidiSettingInfo;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/codemao/midi/MidiSettingActivity;->midiSettingInfo:Lcom/codemao/midi/bean/MidiSettingInfo;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/midi/MidiSettingActivity;)Z
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/codemao/midi/MidiSettingActivity;->checkSourceMidiFile()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/codemao/midi/MidiSettingActivity;)Lcom/codemao/midi/javax/CMMidiFile;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/codemao/midi/MidiSettingActivity;->mSourceMidi:Lcom/codemao/midi/javax/CMMidiFile;

    return-object p0
.end method

.method static synthetic access$400(Lcom/codemao/midi/MidiSettingActivity;)V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/codemao/midi/MidiSettingActivity;->updateMidiSetting()V

    return-void
.end method

.method static synthetic access$500(Lcom/codemao/midi/MidiSettingActivity;)V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/codemao/midi/MidiSettingActivity;->shoInput()V

    return-void
.end method

.method static synthetic access$600(Lcom/codemao/midi/MidiSettingActivity;)Lcom/codemao/midi/javax/CMMidiFile;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/codemao/midi/MidiSettingActivity;->instrumentDemo:Lcom/codemao/midi/javax/CMMidiFile;

    return-object p0
.end method

.method static synthetic access$602(Lcom/codemao/midi/MidiSettingActivity;Lcom/codemao/midi/javax/CMMidiFile;)Lcom/codemao/midi/javax/CMMidiFile;
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/codemao/midi/MidiSettingActivity;->instrumentDemo:Lcom/codemao/midi/javax/CMMidiFile;

    return-object p1
.end method

.method static synthetic access$700(Lcom/codemao/midi/MidiSettingActivity;)Lcom/codemao/midi/javax/CMMidiTrack;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/codemao/midi/MidiSettingActivity;->mAccompanyTrack:Lcom/codemao/midi/javax/CMMidiTrack;

    return-object p0
.end method

.method static synthetic access$702(Lcom/codemao/midi/MidiSettingActivity;Lcom/codemao/midi/javax/CMMidiTrack;)Lcom/codemao/midi/javax/CMMidiTrack;
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/codemao/midi/MidiSettingActivity;->mAccompanyTrack:Lcom/codemao/midi/javax/CMMidiTrack;

    return-object p1
.end method

.method static synthetic access$800(Lcom/codemao/midi/MidiSettingActivity;)Ljava/util/List;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/codemao/midi/MidiSettingActivity;->mAccompanyList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/codemao/midi/MidiSettingActivity;)[I
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/codemao/midi/MidiSettingActivity;->demos:[I

    return-object p0
.end method

.method private checkSourceMidiFile()Z
    .registers 6

    .line 390
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->mSourceMidi:Lcom/codemao/midi/javax/CMMidiFile;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/codemao/midi/javax/CMMidiFile;->getRealTickLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static goMidiSettingActivity(Landroid/app/Activity;Lcom/codemao/midi/bean/MidiSettingInfo;Ljava/lang/String;)V
    .registers 5

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/midi/MidiSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "midiSettingInfo"

    .line 84
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "existNames"

    .line 85
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x18e

    .line 86
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private initData()V
    .registers 21

    move-object/from16 v0, p0

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/codemao/midi/MidiSettingActivity;->accompanys:Ljava/util/List;

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/codemao/midi/MidiSettingActivity;->instruments:Ljava/util/List;

    .line 157
    iget-object v1, v0, Lcom/codemao/midi/MidiSettingActivity;->midiSettingInfo:Lcom/codemao/midi/bean/MidiSettingInfo;

    if-nez v1, :cond_1e

    .line 158
    new-instance v1, Lcom/codemao/midi/bean/MidiSettingInfo;

    invoke-direct {v1}, Lcom/codemao/midi/bean/MidiSettingInfo;-><init>()V

    iput-object v1, v0, Lcom/codemao/midi/MidiSettingActivity;->midiSettingInfo:Lcom/codemao/midi/bean/MidiSettingInfo;

    .line 159
    invoke-direct/range {p0 .. p0}, Lcom/codemao/midi/MidiSettingActivity;->markName()V

    .line 161
    :cond_1e
    iget-object v1, v0, Lcom/codemao/midi/MidiSettingActivity;->instruments:Ljava/util/List;

    sget-object v2, Lcom/codemao/midi/bean/MidiSettingInfo;->instrumentInfos:[Lcom/codemao/midi/bean/MidiInstrumentInfo;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 162
    iget-object v1, v0, Lcom/codemao/midi/MidiSettingActivity;->accompanys:Ljava/util/List;

    new-instance v2, Lcom/codemao/midi/bean/MidiAccompanyInfo;

    sget v3, Lcom/codemao/midi/R$drawable;->midi_icon_quite_pop:I

    sget v4, Lcom/codemao/midi/R$string;->midi_no_accompaniment:I

    const/4 v5, 0x0

    const-string v6, ""

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/codemao/midi/bean/MidiAccompanyInfo;-><init>(IIILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v1, v0, Lcom/codemao/midi/MidiSettingActivity;->accompanys:Ljava/util/List;

    new-instance v2, Lcom/codemao/midi/bean/MidiAccompanyInfo;

    sget v3, Lcom/codemao/midi/R$drawable;->midi_ic_preview_funk:I

    sget v4, Lcom/codemao/midi/R$string;->midi_funk:I

    const/4 v6, 0x1

    const-string v7, "midi_demo_funk.json"

    invoke-direct {v2, v3, v4, v6, v7}, Lcom/codemao/midi/bean/MidiAccompanyInfo;-><init>(IIILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v1, v0, Lcom/codemao/midi/MidiSettingActivity;->accompanys:Ljava/util/List;

    new-instance v2, Lcom/codemao/midi/bean/MidiAccompanyInfo;

    sget v3, Lcom/codemao/midi/R$drawable;->midi_ic_preview_jazz:I

    sget v4, Lcom/codemao/midi/R$string;->midi_jazz:I

    const/4 v7, 0x2

    const-string v8, "midi_demo_jazz.json"

    invoke-direct {v2, v3, v4, v7, v8}, Lcom/codemao/midi/bean/MidiAccompanyInfo;-><init>(IIILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v1, v0, Lcom/codemao/midi/MidiSettingActivity;->accompanys:Ljava/util/List;

    new-instance v2, Lcom/codemao/midi/bean/MidiAccompanyInfo;

    sget v3, Lcom/codemao/midi/R$drawable;->midi_ic_preview_latin:I

    sget v4, Lcom/codemao/midi/R$string;->midi_latin:I

    const/4 v8, 0x3

    const-string v9, "midi_demo_latin.json"

    invoke-direct {v2, v3, v4, v8, v9}, Lcom/codemao/midi/bean/MidiAccompanyInfo;-><init>(IIILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v1, v0, Lcom/codemao/midi/MidiSettingActivity;->accompanys:Ljava/util/List;

    new-instance v2, Lcom/codemao/midi/bean/MidiAccompanyInfo;

    sget v3, Lcom/codemao/midi/R$drawable;->midi_ic_preview_dance:I

    sget v4, Lcom/codemao/midi/R$string;->midi_dance_music:I

    const/4 v9, 0x4

    const-string v10, "midi_demo_dance.json"

    invoke-direct {v2, v3, v4, v9, v10}, Lcom/codemao/midi/bean/MidiAccompanyInfo;-><init>(IIILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v1, v0, Lcom/codemao/midi/MidiSettingActivity;->accompanys:Ljava/util/List;

    new-instance v2, Lcom/codemao/midi/bean/MidiAccompanyInfo;

    sget v3, Lcom/codemao/midi/R$drawable;->midi_ic_preview_pop:I

    sget v4, Lcom/codemao/midi/R$string;->midi_hip_pop:I

    const/4 v10, 0x5

    const-string v11, "midi_demo_pop.json"

    invoke-direct {v2, v3, v4, v10, v11}, Lcom/codemao/midi/bean/MidiAccompanyInfo;-><init>(IIILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v1, v0, Lcom/codemao/midi/MidiSettingActivity;->accompanys:Ljava/util/List;

    new-instance v2, Lcom/codemao/midi/bean/MidiAccompanyInfo;

    sget v3, Lcom/codemao/midi/R$drawable;->midi_ic_preview_rock:I

    sget v4, Lcom/codemao/midi/R$string;->midi_rock_roll:I

    const/4 v11, 0x6

    const-string v12, "midi_demo_rock.json"

    invoke-direct {v2, v3, v4, v11, v12}, Lcom/codemao/midi/bean/MidiAccompanyInfo;-><init>(IIILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v1, Lcom/codemao/midi/view/midiview/MidiFileBuildHelper;->INSTANCE:Lcom/codemao/midi/view/midiview/MidiFileBuildHelper;

    invoke-virtual {v1}, Lcom/codemao/midi/view/midiview/MidiFileBuildHelper;->getMConverterTools()Lcom/codemao/midi/view/midiview/MidiModelConvertTools;

    move-result-object v1

    if-eqz v1, :cond_132

    const-wide/16 v2, 0x0

    const-wide/16 v12, 0x1e00

    .line 173
    invoke-virtual {v1, v2, v3, v12, v13}, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->checkRangeMidiSource(JJ)Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 174
    iget-object v13, v0, Lcom/codemao/midi/MidiSettingActivity;->midiSettingInfo:Lcom/codemao/midi/bean/MidiSettingInfo;

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x1e00

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v12, v1

    invoke-virtual/range {v12 .. v19}, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->convertWithRange(Lcom/codemao/midi/bean/MidiSettingInfo;JJZZ)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object v2

    iput-object v2, v0, Lcom/codemao/midi/MidiSettingActivity;->mSourceMidi:Lcom/codemao/midi/javax/CMMidiFile;

    .line 177
    :cond_c3
    iget-object v2, v0, Lcom/codemao/midi/MidiSettingActivity;->mAccompanyList:Ljava/util/List;

    invoke-virtual {v1, v5}, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->buildAccompanyMidiFile(I)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v2, v0, Lcom/codemao/midi/MidiSettingActivity;->mAccompanyList:Ljava/util/List;

    invoke-virtual {v1, v6}, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->buildAccompanyMidiFile(I)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v2, v0, Lcom/codemao/midi/MidiSettingActivity;->mAccompanyList:Ljava/util/List;

    invoke-virtual {v1, v7}, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->buildAccompanyMidiFile(I)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v2, v0, Lcom/codemao/midi/MidiSettingActivity;->mAccompanyList:Ljava/util/List;

    invoke-virtual {v1, v8}, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->buildAccompanyMidiFile(I)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v2, v0, Lcom/codemao/midi/MidiSettingActivity;->mAccompanyList:Ljava/util/List;

    invoke-virtual {v1, v9}, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->buildAccompanyMidiFile(I)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v2, v0, Lcom/codemao/midi/MidiSettingActivity;->mAccompanyList:Ljava/util/List;

    invoke-virtual {v1, v10}, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->buildAccompanyMidiFile(I)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v2, v0, Lcom/codemao/midi/MidiSettingActivity;->mAccompanyList:Ljava/util/List;

    invoke-virtual {v1, v11}, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->buildAccompanyMidiFile(I)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-direct/range {p0 .. p0}, Lcom/codemao/midi/MidiSettingActivity;->checkSourceMidiFile()Z

    move-result v2

    if-nez v2, :cond_109

    return-void

    .line 190
    :cond_109
    iget-object v2, v0, Lcom/codemao/midi/MidiSettingActivity;->midiSettingInfo:Lcom/codemao/midi/bean/MidiSettingInfo;

    invoke-virtual {v2}, Lcom/codemao/midi/bean/MidiSettingInfo;->getAccompanyIndex()I

    move-result v2

    if-eqz v2, :cond_132

    .line 191
    iget-object v2, v0, Lcom/codemao/midi/MidiSettingActivity;->mAccompanyList:Ljava/util/List;

    iget-object v3, v0, Lcom/codemao/midi/MidiSettingActivity;->midiSettingInfo:Lcom/codemao/midi/bean/MidiSettingInfo;

    .line 192
    invoke-virtual {v3}, Lcom/codemao/midi/bean/MidiSettingInfo;->getAccompanyIndex()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/midi/javax/CMMidiFile;

    iget-object v3, v0, Lcom/codemao/midi/MidiSettingActivity;->mSourceMidi:Lcom/codemao/midi/javax/CMMidiFile;

    invoke-virtual {v3}, Lcom/codemao/midi/javax/CMMidiFile;->getCalcTickLength()J

    move-result-wide v3

    iget-object v5, v0, Lcom/codemao/midi/MidiSettingActivity;->midiSettingInfo:Lcom/codemao/midi/bean/MidiSettingInfo;

    .line 191
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->buildAccompanyTrack(Lcom/codemao/midi/javax/CMMidiFile;JLcom/codemao/midi/bean/MidiSettingInfo;)Lcom/codemao/midi/javax/CMMidiTrack;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/midi/MidiSettingActivity;->mAccompanyTrack:Lcom/codemao/midi/javax/CMMidiTrack;

    .line 194
    iget-object v2, v0, Lcom/codemao/midi/MidiSettingActivity;->mSourceMidi:Lcom/codemao/midi/javax/CMMidiFile;

    invoke-virtual {v2, v1}, Lcom/codemao/midi/javax/CMMidiFile;->addTrack(Lcom/codemao/midi/javax/CMMidiTrack;)V

    :cond_132
    return-void
.end method

.method private initView()V
    .registers 5

    .line 201
    sget v0, Lcom/codemao/midi/R$id;->rv_accompany:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->rvAccompany:Landroidx/recyclerview/widget/RecyclerView;

    .line 202
    sget v0, Lcom/codemao/midi/R$id;->rl_normal_mode:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->rlModeNormal:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 203
    sget v0, Lcom/codemao/midi/R$id;->rl_pro_mode:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->rlModePro:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 204
    sget v0, Lcom/codemao/midi/R$id;->iv_normal_mode:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->ivNormal:Landroid/widget/ImageView;

    .line 205
    sget v0, Lcom/codemao/midi/R$id;->iv_pro_mode:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->ivPro:Landroid/widget/ImageView;

    .line 206
    sget v0, Lcom/codemao/midi/R$id;->rv_instrument:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->rvInstrument:Landroidx/recyclerview/widget/RecyclerView;

    .line 207
    sget v0, Lcom/codemao/midi/R$id;->tv_midi_name:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->tvName:Landroid/widget/TextView;

    .line 208
    sget v0, Lcom/codemao/midi/R$id;->tv_confirm:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->tvSure:Landroid/widget/TextView;

    .line 209
    sget v0, Lcom/codemao/midi/R$id;->tv_pro_mode:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->tvPro:Landroid/widget/TextView;

    .line 210
    sget v0, Lcom/codemao/midi/R$id;->tv_nomal_mode:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->tvNormal:Landroid/widget/TextView;

    .line 211
    sget v0, Lcom/codemao/midi/R$id;->ll_beat:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/midi/view/BeatLayout;

    iput-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->beatLayout:Lcom/codemao/midi/view/BeatLayout;

    .line 213
    invoke-static {p0}, Lcom/codemao/midi/MidiPlayerActivityKt;->getScalePixelsFloat(Landroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x42f00000  # 120.0f

    .line 214
    invoke-static {p0, v1}, Lcom/codemao/midi/view/midiview/MidiViewKt;->dip2px(Landroid/content/Context;F)F

    move-result v1

    const/high16 v2, 0x43700000  # 240.0f

    .line 215
    invoke-static {p0, v2}, Lcom/codemao/midi/view/midiview/MidiViewKt;->dip2px(Landroid/content/Context;F)F

    move-result v2

    const/high16 v3, 0x3f800000  # 1.0f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_9d

    mul-float v0, v0, v1

    float-to-int v0, v0

    int-to-float v1, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8d

    float-to-int v0, v2

    .line 221
    :cond_8d
    iget-object v1, p0, Lcom/codemao/midi/MidiSettingActivity;->rvAccompany:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 222
    iget-object v1, p0, Lcom/codemao/midi/MidiSettingActivity;->rvInstrument:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 225
    :cond_9d
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->beatLayout:Lcom/codemao/midi/view/BeatLayout;

    new-instance v1, Lcom/codemao/midi/MidiSettingActivity$3;

    invoke-direct {v1, p0}, Lcom/codemao/midi/MidiSettingActivity$3;-><init>(Lcom/codemao/midi/MidiSettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/codemao/midi/view/BeatLayout;->setBeatChangeListener(Lcom/codemao/midi/view/BeatView$BeatChangeListener;)V

    .line 239
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->rlModePro:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/codemao/midi/MidiSettingActivity$4;

    invoke-direct {v1, p0}, Lcom/codemao/midi/MidiSettingActivity$4;-><init>(Lcom/codemao/midi/MidiSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->rlModeNormal:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/codemao/midi/MidiSettingActivity$5;

    invoke-direct {v1, p0}, Lcom/codemao/midi/MidiSettingActivity$5;-><init>(Lcom/codemao/midi/MidiSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->tvSure:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/midi/MidiSettingActivity$6;

    invoke-direct {v1, p0}, Lcom/codemao/midi/MidiSettingActivity$6;-><init>(Lcom/codemao/midi/MidiSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->tvName:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/midi/MidiSettingActivity$7;

    invoke-direct {v1, p0}, Lcom/codemao/midi/MidiSettingActivity$7;-><init>(Lcom/codemao/midi/MidiSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    sget v0, Lcom/codemao/midi/R$id;->iv_edit:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->ivEdit:Landroid/widget/ImageView;

    .line 279
    new-instance v1, Lcom/codemao/midi/MidiSettingActivity$8;

    invoke-direct {v1, p0}, Lcom/codemao/midi/MidiSettingActivity$8;-><init>(Lcom/codemao/midi/MidiSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->rvAccompany:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 286
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->rvInstrument:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 287
    new-instance v0, Lcom/codemao/midi/adapter/MidiInstrumentAdapter;

    iget-object v1, p0, Lcom/codemao/midi/MidiSettingActivity;->instruments:Ljava/util/List;

    new-instance v3, Lcom/codemao/midi/MidiSettingActivity$9;

    invoke-direct {v3, p0}, Lcom/codemao/midi/MidiSettingActivity$9;-><init>(Lcom/codemao/midi/MidiSettingActivity;)V

    invoke-direct {v0, p0, v1, v3}, Lcom/codemao/midi/adapter/MidiInstrumentAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/codemao/midi/lisenter/RecyclerItemListener;)V

    iput-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->adapterInstrument:Lcom/codemao/midi/adapter/MidiInstrumentAdapter;

    .line 319
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->rvAccompany:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-eqz v0, :cond_117

    .line 320
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->rvAccompany:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 322
    :cond_117
    new-instance v0, Lcom/codemao/midi/adapter/MidiAccompanyAdapter;

    iget-object v1, p0, Lcom/codemao/midi/MidiSettingActivity;->accompanys:Ljava/util/List;

    new-instance v2, Lcom/codemao/midi/MidiSettingActivity$10;

    invoke-direct {v2, p0}, Lcom/codemao/midi/MidiSettingActivity$10;-><init>(Lcom/codemao/midi/MidiSettingActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/codemao/midi/adapter/MidiAccompanyAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/codemao/midi/lisenter/RecyclerItemListener;)V

    iput-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->adapterAccompany:Lcom/codemao/midi/adapter/MidiAccompanyAdapter;

    .line 361
    iget-object v1, p0, Lcom/codemao/midi/MidiSettingActivity;->midiSettingInfo:Lcom/codemao/midi/bean/MidiSettingInfo;

    invoke-virtual {v1}, Lcom/codemao/midi/bean/MidiSettingInfo;->getAccompanyIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/midi/adapter/MidiAccompanyAdapter;->setCurrentPosition(I)V

    .line 362
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->adapterInstrument:Lcom/codemao/midi/adapter/MidiInstrumentAdapter;

    iget-object v1, p0, Lcom/codemao/midi/MidiSettingActivity;->midiSettingInfo:Lcom/codemao/midi/bean/MidiSettingInfo;

    invoke-virtual {v1}, Lcom/codemao/midi/bean/MidiSettingInfo;->getInstrumentIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/midi/adapter/MidiInstrumentAdapter;->setCurrentPosition(I)V

    .line 363
    iget-boolean v0, p0, Lcom/codemao/midi/MidiSettingActivity;->isPad:Z

    if-eqz v0, :cond_140

    const/high16 v0, 0x42700000  # 60.0f

    goto :goto_142

    :cond_140
    const/high16 v0, 0x42600000  # 56.0f

    :goto_142
    invoke-static {p0, v0}, Lcom/codemao/midi/util/MidiScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    const/high16 v1, 0x41000000  # 8.0f

    .line 364
    invoke-static {p0, v1}, Lcom/codemao/midi/util/MidiScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    .line 365
    new-instance v2, Lcom/codemao/midi/MidiSettingActivity$11;

    invoke-direct {v2, p0, v0, v1}, Lcom/codemao/midi/MidiSettingActivity$11;-><init>(Lcom/codemao/midi/MidiSettingActivity;II)V

    .line 382
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->rvInstrument:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 383
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->rvAccompany:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 384
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->rvInstrument:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/codemao/midi/MidiSettingActivity;->adapterInstrument:Lcom/codemao/midi/adapter/MidiInstrumentAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 385
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->rvAccompany:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/codemao/midi/MidiSettingActivity;->adapterAccompany:Lcom/codemao/midi/adapter/MidiAccompanyAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 386
    invoke-direct {p0}, Lcom/codemao/midi/MidiSettingActivity;->updateMidiSetting()V

    return-void
.end method

.method private markName()V
    .registers 3

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/midi/MidiSettingActivity;->BASE_MIDI_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/midi/MidiSettingActivity;->BASE_MIDI_INDEX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 493
    iget-object v1, p0, Lcom/codemao/midi/MidiSettingActivity;->existNames:Ljava/util/List;

    if-nez v1, :cond_1d

    .line 494
    iget-object v1, p0, Lcom/codemao/midi/MidiSettingActivity;->midiSettingInfo:Lcom/codemao/midi/bean/MidiSettingInfo;

    invoke-virtual {v1, v0}, Lcom/codemao/midi/bean/MidiSettingInfo;->setName(Ljava/lang/String;)V

    return-void

    .line 497
    :cond_1d
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 498
    iget v0, p0, Lcom/codemao/midi/MidiSettingActivity;->BASE_MIDI_INDEX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/codemao/midi/MidiSettingActivity;->BASE_MIDI_INDEX:I

    .line 499
    invoke-direct {p0}, Lcom/codemao/midi/MidiSettingActivity;->markName()V

    :cond_2c
    return-void
.end method

.method private shoInput()V
    .registers 4

    .line 415
    new-instance v0, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-direct {v0, p0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 416
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->autoOpenSoftInput(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    .line 417
    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    new-instance v1, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;

    invoke-direct {v1, p0}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/codemao/midi/MidiSettingActivity;->existNames:Ljava/util/List;

    .line 418
    invoke-virtual {v1, v2}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->setPools(Ljava/util/List;)Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/midi/MidiSettingActivity;->tvName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->setDiaplayName(Ljava/lang/String;)Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;

    move-result-object v1

    new-instance v2, Lcom/codemao/midi/MidiSettingActivity$12;

    invoke-direct {v2, p0}, Lcom/codemao/midi/MidiSettingActivity$12;-><init>(Lcom/codemao/midi/MidiSettingActivity;)V

    .line 419
    invoke-virtual {v1, v2}, Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;->listen(Lcom/codemao/midi/view/InputStatusListener;)Lcom/codemao/midi/view/pop/MidiFullScreenEditPop;

    move-result-object v1

    .line 418
    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    .line 431
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-void
.end method

.method private updateMidiSetting()V
    .registers 5

    .line 394
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->beatLayout:Lcom/codemao/midi/view/BeatLayout;

    iget-object v1, p0, Lcom/codemao/midi/MidiSettingActivity;->midiSettingInfo:Lcom/codemao/midi/bean/MidiSettingInfo;

    invoke-virtual {v1}, Lcom/codemao/midi/bean/MidiSettingInfo;->getBeat()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/midi/view/BeatLayout;->setBeatNum(I)V

    .line 395
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->tvName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/midi/MidiSettingActivity;->midiSettingInfo:Lcom/codemao/midi/bean/MidiSettingInfo;

    invoke-virtual {v1}, Lcom/codemao/midi/bean/MidiSettingInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->midiSettingInfo:Lcom/codemao/midi/bean/MidiSettingInfo;

    invoke-virtual {v0}, Lcom/codemao/midi/bean/MidiSettingInfo;->getMode()I

    move-result v0

    const/4 v1, -0x1

    const-string v2, "#FF7d6db0"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4d

    .line 397
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->rlModeNormal:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v3, Lcom/codemao/midi/R$drawable;->midi_bg_4_5d27a1:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 398
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->rlModePro:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v3, Lcom/codemao/midi/R$drawable;->midi_bg_4_4e1695:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 399
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->tvPro:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 400
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->tvNormal:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 401
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->ivNormal:Landroid/widget/ImageView;

    sget v1, Lcom/codemao/midi/R$drawable;->midi_mode_normal_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 402
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->ivPro:Landroid/widget/ImageView;

    sget v1, Lcom/codemao/midi/R$drawable;->midi_mode_pro_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_77

    .line 404
    :cond_4d
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->rlModePro:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v3, Lcom/codemao/midi/R$drawable;->midi_bg_4_5d27a1:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 405
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->rlModeNormal:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v3, Lcom/codemao/midi/R$drawable;->midi_bg_4_4e1695:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 406
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->tvNormal:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 407
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->tvPro:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 408
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->ivNormal:Landroid/widget/ImageView;

    sget v1, Lcom/codemao/midi/R$drawable;->midi_mode_normal_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 409
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->ivPro:Landroid/widget/ImageView;

    sget v1, Lcom/codemao/midi/R$drawable;->midi_mode_pro_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_77
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 2

    .line 480
    invoke-static {}, Lcom/codemao/midi/CMMidiHelper;->getInstance()Lcom/codemao/midi/CMMidiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/midi/CMMidiHelper;->destroy()V

    .line 481
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 113
    invoke-super {p0, p1}, Lcom/nemo/commonui/BaseNemoUIActivity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/codemao/midi/R$string;->midi_default_midi_name:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/midi/MidiSettingActivity;->BASE_MIDI_NAME:Ljava/lang/String;

    .line 115
    sget-object p1, Lcom/codemao/midi/util/MidiConfigManager;->INSTANCE:Lcom/codemao/midi/util/MidiConfigManager;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/codemao/midi/R$string;->midi_default_midi_name_with_index:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/midi/util/MidiConfigManager;->setDefaultMidiName(Ljava/lang/String;)V

    .line 116
    iget-boolean p1, p0, Lcom/codemao/midi/MidiSettingActivity;->isPad:Z

    if-eqz p1, :cond_25

    sget p1, Lcom/codemao/midi/R$layout;->midi_activity_setting_pad:I

    goto :goto_27

    :cond_25
    sget p1, Lcom/codemao/midi/R$layout;->midi_activity_setting:I

    :goto_27
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/16 v0, 0x1706

    .line 125
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 126
    new-instance v0, Lcom/codemao/midi/MidiSettingActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/midi/MidiSettingActivity$1;-><init>(Lcom/codemao/midi/MidiSettingActivity;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 134
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "midiSettingInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/codemao/midi/bean/MidiSettingInfo;

    iput-object p1, p0, Lcom/codemao/midi/MidiSettingActivity;->midiSettingInfo:Lcom/codemao/midi/bean/MidiSettingInfo;

    .line 137
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "existNames"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_72

    const-string v0, ":"

    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 140
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/midi/MidiSettingActivity;->existNames:Ljava/util/List;

    .line 142
    :cond_72
    invoke-direct {p0}, Lcom/codemao/midi/MidiSettingActivity;->initData()V

    .line 143
    invoke-direct {p0}, Lcom/codemao/midi/MidiSettingActivity;->initView()V

    .line 144
    new-instance p1, Lcom/codemao/midi/util/MidiKeyboardHeightProvider;

    invoke-direct {p1, p0}, Lcom/codemao/midi/util/MidiKeyboardHeightProvider;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/codemao/midi/MidiSettingActivity;->keyboardHeightProvider:Lcom/codemao/midi/util/MidiKeyboardHeightProvider;

    .line 145
    invoke-virtual {p1, p0}, Lcom/codemao/midi/util/MidiKeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/codemao/midi/util/MidiKeyboardHeightObserver;)V

    .line 146
    iget-object p1, p0, Lcom/codemao/midi/MidiSettingActivity;->tvName:Landroid/widget/TextView;

    new-instance v0, Lcom/codemao/midi/MidiSettingActivity$2;

    invoke-direct {v0, p0}, Lcom/codemao/midi/MidiSettingActivity$2;-><init>(Lcom/codemao/midi/MidiSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 486
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 487
    invoke-static {}, Lcom/codemao/midi/CMMidiHelper;->getInstance()Lcom/codemao/midi/CMMidiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/midi/CMMidiHelper;->destroy()V

    .line 488
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->keyboardHeightProvider:Lcom/codemao/midi/util/MidiKeyboardHeightProvider;

    invoke-virtual {v0}, Lcom/codemao/midi/util/MidiKeyboardHeightProvider;->close()V

    return-void
.end method

.method public onKeyboardHeightChanged(II)V
    .registers 4

    .line 437
    iget p2, p0, Lcom/codemao/midi/MidiSettingActivity;->mInitHeight:I

    const/16 v0, -0x270f

    if-ne p2, v0, :cond_8

    .line 438
    iput p1, p0, Lcom/codemao/midi/MidiSettingActivity;->mInitHeight:I

    .line 440
    :cond_8
    sget p2, Lcom/codemao/midi/MidiConstants;->SYSTEM_HEIGHT:I

    if-nez p2, :cond_12

    .line 441
    invoke-static {p0}, Lcom/codemao/midi/util/MidiScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result p2

    sput p2, Lcom/codemao/midi/MidiConstants;->SYSTEM_HEIGHT:I

    .line 443
    :cond_12
    iget p2, p0, Lcom/codemao/midi/MidiSettingActivity;->mInitHeight:I

    sub-int p2, p1, p2

    sget v0, Lcom/codemao/midi/MidiConstants;->SYSTEM_WIDTH:I

    div-int/lit8 v0, v0, 0x4

    if-le p2, v0, :cond_20

    const/4 p2, 0x1

    .line 444
    iput-boolean p2, p0, Lcom/codemao/midi/MidiSettingActivity;->isKeyboardShow:Z

    goto :goto_27

    .line 445
    :cond_20
    iget-boolean p2, p0, Lcom/codemao/midi/MidiSettingActivity;->isKeyboardShow:Z

    if-eqz p2, :cond_27

    const/4 p2, 0x0

    .line 446
    iput-boolean p2, p0, Lcom/codemao/midi/MidiSettingActivity;->isKeyboardShow:Z

    .line 448
    :cond_27
    :goto_27
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 449
    iget v0, p0, Lcom/codemao/midi/MidiSettingActivity;->mInitHeight:I

    sub-int/2addr p1, v0

    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 450
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 455
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 456
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->keyboardHeightProvider:Lcom/codemao/midi/util/MidiKeyboardHeightProvider;

    if-eqz v0, :cond_a

    .line 457
    invoke-virtual {v0, p0}, Lcom/codemao/midi/util/MidiKeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/codemao/midi/util/MidiKeyboardHeightObserver;)V

    :cond_a
    return-void
.end method

.method protected onStop()V
    .registers 3

    .line 463
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 464
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->adapterAccompany:Lcom/codemao/midi/adapter/MidiAccompanyAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 465
    invoke-virtual {v0, v1}, Lcom/codemao/midi/adapter/MidiAccompanyAdapter;->setDoAnimate(Z)V

    .line 466
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->adapterAccompany:Lcom/codemao/midi/adapter/MidiAccompanyAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 468
    :cond_10
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->adapterInstrument:Lcom/codemao/midi/adapter/MidiInstrumentAdapter;

    if-eqz v0, :cond_1c

    .line 469
    invoke-virtual {v0, v1}, Lcom/codemao/midi/adapter/MidiInstrumentAdapter;->setDoAnimate(Z)V

    .line 470
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->adapterInstrument:Lcom/codemao/midi/adapter/MidiInstrumentAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 472
    :cond_1c
    invoke-static {}, Lcom/codemao/midi/CMMidiHelper;->getInstance()Lcom/codemao/midi/CMMidiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/midi/CMMidiHelper;->stopAll()V

    .line 473
    iget-object v0, p0, Lcom/codemao/midi/MidiSettingActivity;->keyboardHeightProvider:Lcom/codemao/midi/util/MidiKeyboardHeightProvider;

    if-eqz v0, :cond_2b

    const/4 v1, 0x0

    .line 474
    invoke-virtual {v0, v1}, Lcom/codemao/midi/util/MidiKeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/codemao/midi/util/MidiKeyboardHeightObserver;)V

    :cond_2b
    return-void
.end method
