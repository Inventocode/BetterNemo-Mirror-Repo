.class public Lcom/codemao/midi/bean/MidiSettingInfo;
.super Ljava/lang/Object;
.source "MidiSettingInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final instrumentInfos:[Lcom/codemao/midi/bean/MidiInstrumentInfo;


# instance fields
.field private accompany:Lcom/codemao/midi/bean/InstrumentInfo;

.field private accompanyIndex:I

.field private beat:I

.field private instrument:Lcom/codemao/midi/bean/InstrumentInfo;

.field private instrumentIndex:I

.field private mode:I

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/codemao/midi/bean/MidiInstrumentInfo;

    .line 27
    new-instance v9, Lcom/codemao/midi/bean/MidiInstrumentInfo;

    sget v10, Lcom/codemao/midi/R$drawable;->midi_icon_quite_pop:I

    sget v3, Lcom/codemao/midi/R$string;->midi_game:I

    sget v8, Lcom/codemao/midi/R$drawable;->midi_ic_preview_youxi:I

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/16 v6, 0x79

    const-string v7, "midi_youxi.json"

    move-object v1, v9

    move v2, v10

    invoke-direct/range {v1 .. v8}, Lcom/codemao/midi/bean/MidiInstrumentInfo;-><init>(IIIIILjava/lang/String;I)V

    const/4 v1, 0x0

    aput-object v9, v0, v1

    new-instance v9, Lcom/codemao/midi/bean/MidiInstrumentInfo;

    sget v3, Lcom/codemao/midi/R$string;->midi_clown:I

    sget v8, Lcom/codemao/midi/R$drawable;->midi_ic_preview_xiaochou:I

    const/16 v5, 0x11

    const-string v7, "midi_xiaochou.json"

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/codemao/midi/bean/MidiInstrumentInfo;-><init>(IIIIILjava/lang/String;I)V

    const/4 v1, 0x1

    aput-object v9, v0, v1

    new-instance v9, Lcom/codemao/midi/bean/MidiInstrumentInfo;

    sget v3, Lcom/codemao/midi/R$string;->midi_electric_sound:I

    sget v8, Lcom/codemao/midi/R$drawable;->midi_ic_preview_dianyin:I

    const/16 v5, 0x5a

    const-string v7, "midi_dianyin.json"

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/codemao/midi/bean/MidiInstrumentInfo;-><init>(IIIIILjava/lang/String;I)V

    const/4 v1, 0x2

    aput-object v9, v0, v1

    new-instance v9, Lcom/codemao/midi/bean/MidiInstrumentInfo;

    sget v3, Lcom/codemao/midi/R$string;->midi_dreamland:I

    sget v8, Lcom/codemao/midi/R$drawable;->midi_ic_preview_mengjing:I

    const/16 v5, 0xa

    const-string v7, "midi_mengjing.json"

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/codemao/midi/bean/MidiInstrumentInfo;-><init>(IIIIILjava/lang/String;I)V

    const/4 v1, 0x3

    aput-object v9, v0, v1

    new-instance v9, Lcom/codemao/midi/bean/MidiInstrumentInfo;

    sget v3, Lcom/codemao/midi/R$string;->midi_piano:I

    sget v8, Lcom/codemao/midi/R$drawable;->midi_ic_preview_piano:I

    const/4 v5, 0x0

    const-string v7, "midi_piano.json"

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/codemao/midi/bean/MidiInstrumentInfo;-><init>(IIIIILjava/lang/String;I)V

    const/4 v1, 0x4

    aput-object v9, v0, v1

    new-instance v9, Lcom/codemao/midi/bean/MidiInstrumentInfo;

    sget v3, Lcom/codemao/midi/R$string;->midi_guitar:I

    sget v8, Lcom/codemao/midi/R$drawable;->midi_ic_preview_jita:I

    const/16 v5, 0x18

    const-string v7, "midi_jita.json"

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/codemao/midi/bean/MidiInstrumentInfo;-><init>(IIIIILjava/lang/String;I)V

    const/4 v1, 0x5

    aput-object v9, v0, v1

    sput-object v0, Lcom/codemao/midi/bean/MidiSettingInfo;->instrumentInfos:[Lcom/codemao/midi/bean/MidiInstrumentInfo;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 38
    iput v0, p0, Lcom/codemao/midi/bean/MidiSettingInfo;->mode:I

    .line 39
    sget-object v0, Lcom/codemao/midi/util/MidiConfigManager;->INSTANCE:Lcom/codemao/midi/util/MidiConfigManager;

    invoke-virtual {v0}, Lcom/codemao/midi/util/MidiConfigManager;->getDefaultMidiName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/midi/bean/MidiSettingInfo;->name:Ljava/lang/String;

    const/16 v0, 0x78

    .line 40
    iput v0, p0, Lcom/codemao/midi/bean/MidiSettingInfo;->beat:I

    .line 41
    new-instance v0, Lcom/codemao/midi/bean/InstrumentInfo;

    const/16 v1, 0x20

    const/16 v2, 0x79

    invoke-direct {v0, v1, v2}, Lcom/codemao/midi/bean/InstrumentInfo;-><init>(II)V

    iput-object v0, p0, Lcom/codemao/midi/bean/MidiSettingInfo;->accompany:Lcom/codemao/midi/bean/InstrumentInfo;

    .line 42
    new-instance v0, Lcom/codemao/midi/bean/InstrumentInfo;

    sget-object v1, Lcom/codemao/midi/bean/MidiSettingInfo;->instrumentInfos:[Lcom/codemao/midi/bean/MidiInstrumentInfo;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/codemao/midi/bean/MidiInstrumentInfo;->getInstrumentInfo()Lcom/codemao/midi/bean/InstrumentInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/midi/bean/InstrumentInfo;->getProgram()I

    move-result v3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/codemao/midi/bean/MidiInstrumentInfo;->getInstrumentInfo()Lcom/codemao/midi/bean/InstrumentInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/midi/bean/InstrumentInfo;->getMsb()I

    move-result v1

    invoke-direct {v0, v3, v1}, Lcom/codemao/midi/bean/InstrumentInfo;-><init>(II)V

    iput-object v0, p0, Lcom/codemao/midi/bean/MidiSettingInfo;->instrument:Lcom/codemao/midi/bean/InstrumentInfo;

    .line 43
    iput v2, p0, Lcom/codemao/midi/bean/MidiSettingInfo;->instrumentIndex:I

    .line 44
    iput v2, p0, Lcom/codemao/midi/bean/MidiSettingInfo;->accompanyIndex:I

    return-void
.end method

.method public static getInsTrumentNum(II)I
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 109
    :goto_2
    sget-object v2, Lcom/codemao/midi/bean/MidiSettingInfo;->instrumentInfos:[Lcom/codemao/midi/bean/MidiInstrumentInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_1e

    .line 110
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/codemao/midi/bean/MidiInstrumentInfo;->getInstrumentInfo()Lcom/codemao/midi/bean/InstrumentInfo;

    move-result-object v2

    .line 111
    invoke-virtual {v2}, Lcom/codemao/midi/bean/InstrumentInfo;->getProgram()I

    move-result v3

    if-ne p0, v3, :cond_1b

    invoke-virtual {v2}, Lcom/codemao/midi/bean/InstrumentInfo;->getMsb()I

    move-result v2

    if-ne p1, v2, :cond_1b

    move v0, v1

    goto :goto_1e

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1e
    :goto_1e
    return v0
.end method

.method public static getInstrumentProgram(I)[I
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 122
    sget-object v1, Lcom/codemao/midi/bean/MidiSettingInfo;->instrumentInfos:[Lcom/codemao/midi/bean/MidiInstrumentInfo;

    array-length v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt p0, v2, :cond_23

    .line 123
    aget-object p0, v1, v4

    invoke-virtual {p0}, Lcom/codemao/midi/bean/MidiInstrumentInfo;->getInstrumentInfo()Lcom/codemao/midi/bean/InstrumentInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/codemao/midi/bean/InstrumentInfo;->getProgram()I

    move-result p0

    aput p0, v0, v4

    .line 124
    aget-object p0, v1, v4

    invoke-virtual {p0}, Lcom/codemao/midi/bean/MidiInstrumentInfo;->getInstrumentInfo()Lcom/codemao/midi/bean/InstrumentInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/codemao/midi/bean/InstrumentInfo;->getMsb()I

    move-result p0

    aput p0, v0, v3

    goto :goto_3b

    .line 126
    :cond_23
    aget-object v2, v1, p0

    invoke-virtual {v2}, Lcom/codemao/midi/bean/MidiInstrumentInfo;->getInstrumentInfo()Lcom/codemao/midi/bean/InstrumentInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/midi/bean/InstrumentInfo;->getProgram()I

    move-result v2

    aput v2, v0, v4

    .line 127
    aget-object p0, v1, p0

    invoke-virtual {p0}, Lcom/codemao/midi/bean/MidiInstrumentInfo;->getInstrumentInfo()Lcom/codemao/midi/bean/InstrumentInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/codemao/midi/bean/InstrumentInfo;->getMsb()I

    move-result p0

    aput p0, v0, v3

    :goto_3b
    return-object v0
.end method

.method public static isMainTrack(II)Z
    .registers 3

    const/16 v0, 0x20

    if-ne p0, v0, :cond_a

    const/16 p0, 0x79

    if-ne p1, p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public copy()Lcom/codemao/midi/bean/MidiSettingInfo;
    .registers 3

    .line 133
    new-instance v0, Lcom/codemao/midi/bean/MidiSettingInfo;

    invoke-direct {v0}, Lcom/codemao/midi/bean/MidiSettingInfo;-><init>()V

    .line 134
    iget v1, p0, Lcom/codemao/midi/bean/MidiSettingInfo;->beat:I

    invoke-virtual {v0, v1}, Lcom/codemao/midi/bean/MidiSettingInfo;->setBeat(I)V

    .line 135
    iget v1, p0, Lcom/codemao/midi/bean/MidiSettingInfo;->instrumentIndex:I

    invoke-virtual {v0, v1}, Lcom/codemao/midi/bean/MidiSettingInfo;->setInstrumentIndex(I)V

    .line 136
    iget v1, p0, Lcom/codemao/midi/bean/MidiSettingInfo;->accompanyIndex:I

    invoke-virtual {v0, v1}, Lcom/codemao/midi/bean/MidiSettingInfo;->setAccompanyIndex(I)V

    .line 137
    iget-object v1, p0, Lcom/codemao/midi/bean/MidiSettingInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/midi/bean/MidiSettingInfo;->setName(Ljava/lang/String;)V

    .line 138
    iget v1, p0, Lcom/codemao/midi/bean/MidiSettingInfo;->mode:I

    invoke-virtual {v0, v1}, Lcom/codemao/midi/bean/MidiSettingInfo;->setMode(I)V

    return-object v0
.end method

.method public equals(Lcom/codemao/midi/bean/MidiSettingInfo;)Z
    .registers 5

    .line 143
    invoke-virtual {p1}, Lcom/codemao/midi/bean/MidiSettingInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/midi/bean/MidiSettingInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    .line 146
    :cond_e
    invoke-virtual {p1}, Lcom/codemao/midi/bean/MidiSettingInfo;->getMode()I

    move-result v0

    iget v2, p0, Lcom/codemao/midi/bean/MidiSettingInfo;->mode:I

    if-eq v0, v2, :cond_17

    return v1

    .line 149
    :cond_17
    invoke-virtual {p1}, Lcom/codemao/midi/bean/MidiSettingInfo;->getBeat()I

    move-result v0

    iget v2, p0, Lcom/codemao/midi/bean/MidiSettingInfo;->beat:I

    if-eq v0, v2, :cond_20

    return v1

    .line 152
    :cond_20
    invoke-virtual {p1}, Lcom/codemao/midi/bean/MidiSettingInfo;->getAccompanyIndex()I

    move-result v0

    iget v2, p0, Lcom/codemao/midi/bean/MidiSettingInfo;->accompanyIndex:I

    if-eq v0, v2, :cond_29

    return v1

    .line 155
    :cond_29
    invoke-virtual {p1}, Lcom/codemao/midi/bean/MidiSettingInfo;->getInstrumentIndex()I

    move-result p1

    iget v0, p0, Lcom/codemao/midi/bean/MidiSettingInfo;->instrumentIndex:I

    if-eq p1, v0, :cond_32

    return v1

    :cond_32
    const/4 p1, 0x1

    return p1
.end method

.method public getAccompany()Lcom/codemao/midi/bean/InstrumentInfo;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/codemao/midi/bean/MidiSettingInfo;->accompany:Lcom/codemao/midi/bean/InstrumentInfo;

    return-object v0
.end method

.method public getAccompanyIndex()I
    .registers 2

    .line 58
    iget v0, p0, Lcom/codemao/midi/bean/MidiSettingInfo;->accompanyIndex:I

    return v0
.end method

.method public getBeat()I
    .registers 2

    .line 83
    iget v0, p0, Lcom/codemao/midi/bean/MidiSettingInfo;->beat:I

    return v0
.end method

.method public getInstrument()Lcom/codemao/midi/bean/InstrumentInfo;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/codemao/midi/bean/MidiSettingInfo;->instrument:Lcom/codemao/midi/bean/InstrumentInfo;

    return-object v0
.end method

.method public getInstrumentIndex()I
    .registers 2

    .line 48
    iget v0, p0, Lcom/codemao/midi/bean/MidiSettingInfo;->instrumentIndex:I

    return v0
.end method

.method public getMode()I
    .registers 2

    .line 99
    iget v0, p0, Lcom/codemao/midi/bean/MidiSettingInfo;->mode:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/codemao/midi/bean/MidiSettingInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setAccompany(Lcom/codemao/midi/bean/InstrumentInfo;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/codemao/midi/bean/MidiSettingInfo;->accompany:Lcom/codemao/midi/bean/InstrumentInfo;

    return-void
.end method

.method public setAccompanyIndex(I)V
    .registers 2

    .line 62
    iput p1, p0, Lcom/codemao/midi/bean/MidiSettingInfo;->accompanyIndex:I

    return-void
.end method

.method public setBeat(I)V
    .registers 2

    .line 87
    iput p1, p0, Lcom/codemao/midi/bean/MidiSettingInfo;->beat:I

    return-void
.end method

.method public setInstrument(Lcom/codemao/midi/bean/InstrumentInfo;)V
    .registers 3

    .line 70
    iput-object p1, p0, Lcom/codemao/midi/bean/MidiSettingInfo;->instrument:Lcom/codemao/midi/bean/InstrumentInfo;

    .line 71
    invoke-virtual {p1}, Lcom/codemao/midi/bean/InstrumentInfo;->getProgram()I

    move-result v0

    invoke-virtual {p1}, Lcom/codemao/midi/bean/InstrumentInfo;->getMsb()I

    move-result p1

    invoke-static {v0, p1}, Lcom/codemao/midi/bean/MidiSettingInfo;->getInsTrumentNum(II)I

    move-result p1

    iput p1, p0, Lcom/codemao/midi/bean/MidiSettingInfo;->instrumentIndex:I

    return-void
.end method

.method public setInstrumentIndex(I)V
    .registers 5

    .line 52
    iput p1, p0, Lcom/codemao/midi/bean/MidiSettingInfo;->instrumentIndex:I

    .line 53
    invoke-static {p1}, Lcom/codemao/midi/bean/MidiSettingInfo;->getInstrumentProgram(I)[I

    move-result-object p1

    .line 54
    new-instance v0, Lcom/codemao/midi/bean/InstrumentInfo;

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget p1, p1, v2

    invoke-direct {v0, v1, p1}, Lcom/codemao/midi/bean/InstrumentInfo;-><init>(II)V

    iput-object v0, p0, Lcom/codemao/midi/bean/MidiSettingInfo;->instrument:Lcom/codemao/midi/bean/InstrumentInfo;

    return-void
.end method

.method public setMode(I)V
    .registers 2

    .line 103
    iput p1, p0, Lcom/codemao/midi/bean/MidiSettingInfo;->mode:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/codemao/midi/bean/MidiSettingInfo;->name:Ljava/lang/String;

    return-void
.end method
