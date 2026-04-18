.class public Lcom/codemao/midi/sun/SoftChannel;
.super Ljava/lang/Object;
.source "SoftChannel.java"

# interfaces
.implements Lcom/codemao/midi/javax/MidiChannel;
.implements Lcom/codemao/midi/sun/ModelDirectedPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/midi/sun/SoftChannel$MidiControlObject;
    }
.end annotation


# static fields
.field private static dontResetControls:[Z


# instance fields
.field private bank:I

.field protected cds_channelpressure_connections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

.field protected cds_control_connections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

.field protected cds_control_number:I

.field protected cds_polypressure_connections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

.field private channel:I

.field private co_midi:[Lcom/codemao/midi/sun/SoftControl;

.field private co_midi_cc:Lcom/codemao/midi/sun/SoftControl;

.field private co_midi_cc_cc:[[D

.field private co_midi_channel_pressure:[D

.field private co_midi_nrpn:Lcom/codemao/midi/sun/SoftControl;

.field co_midi_nrpn_nrpn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[D>;"
        }
    .end annotation
.end field

.field co_midi_nrpn_nrpn_i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private co_midi_pitch:[D

.field private co_midi_rpn:Lcom/codemao/midi/sun/SoftControl;

.field co_midi_rpn_rpn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[D>;"
        }
    .end annotation
.end field

.field co_midi_rpn_rpn_i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private control_mutex:Ljava/lang/Object;

.field private controller:[I

.field protected current_director:Lcom/codemao/midi/sun/ModelDirector;

.field protected current_instrument:Lcom/codemao/midi/sun/SoftInstrument;

.field protected current_mixer:Lcom/codemao/midi/sun/ModelChannelMixer;

.field private firstVoice:Z

.field protected keybasedcontroller_active:[[Z

.field protected keybasedcontroller_value:[[D

.field private lastVelocity:[I

.field private mainmixer:Lcom/codemao/midi/sun/SoftMainMixer;

.field private mono:Z

.field private mute:Z

.field private nrpn_control:I

.field private play_delay:I

.field private play_noteNumber:I

.field private play_releasetriggered:Z

.field private play_velocity:I

.field private polypressure:[I

.field private portamento:Z

.field protected portamento_lastnote:[I

.field protected portamento_lastnote_ix:I

.field protected portamento_time:D

.field private prevVoiceID:I

.field private program:I

.field private rpn_control:I

.field private solomute:Z

.field protected sustain:Z

.field private synthesizer:Lcom/codemao/midi/sun/SoftSynthesizer;

.field protected tuning:Lcom/codemao/midi/sun/SoftTuning;

.field protected tuning_bank:I

.field protected tuning_program:I

.field private voiceNo:I

.field private voices:[Lcom/codemao/midi/sun/SoftVoice;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x80

    new-array v0, v0, [Z

    .line 44
    sput-object v0, Lcom/codemao/midi/sun/SoftChannel;->dontResetControls:[Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 46
    :goto_8
    sget-object v2, Lcom/codemao/midi/sun/SoftChannel;->dontResetControls:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_12

    .line 47
    aput-boolean v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_12
    const/4 v1, 0x1

    .line 49
    aput-boolean v1, v2, v0

    const/16 v0, 0x20

    .line 50
    aput-boolean v1, v2, v0

    const/4 v0, 0x7

    .line 51
    aput-boolean v1, v2, v0

    const/16 v0, 0x8

    .line 52
    aput-boolean v1, v2, v0

    const/16 v0, 0xa

    .line 53
    aput-boolean v1, v2, v0

    const/16 v0, 0xb

    .line 54
    aput-boolean v1, v2, v0

    const/16 v0, 0x5b

    .line 55
    aput-boolean v1, v2, v0

    const/16 v0, 0x5c

    .line 56
    aput-boolean v1, v2, v0

    const/16 v0, 0x5d

    .line 57
    aput-boolean v1, v2, v0

    const/16 v0, 0x5e

    .line 58
    aput-boolean v1, v2, v0

    const/16 v0, 0x5f

    .line 59
    aput-boolean v1, v2, v0

    const/16 v0, 0x46

    .line 60
    aput-boolean v1, v2, v0

    const/16 v0, 0x47

    .line 61
    aput-boolean v1, v2, v0

    const/16 v0, 0x48

    .line 62
    aput-boolean v1, v2, v0

    const/16 v0, 0x49

    .line 63
    aput-boolean v1, v2, v0

    const/16 v0, 0x4a

    .line 64
    aput-boolean v1, v2, v0

    const/16 v0, 0x4b

    .line 65
    aput-boolean v1, v2, v0

    const/16 v0, 0x4c

    .line 66
    aput-boolean v1, v2, v0

    const/16 v0, 0x4d

    .line 67
    aput-boolean v1, v2, v0

    const/16 v0, 0x4e

    .line 68
    aput-boolean v1, v2, v0

    const/16 v0, 0x4f

    .line 69
    aput-boolean v1, v2, v0

    const/16 v0, 0x78

    .line 70
    aput-boolean v1, v2, v0

    const/16 v0, 0x79

    .line 71
    aput-boolean v1, v2, v0

    const/16 v0, 0x7a

    .line 72
    aput-boolean v1, v2, v0

    const/16 v0, 0x7b

    .line 73
    aput-boolean v1, v2, v0

    const/16 v0, 0x7c

    .line 74
    aput-boolean v1, v2, v0

    const/16 v0, 0x7d

    .line 75
    aput-boolean v1, v2, v0

    const/16 v0, 0x7e

    .line 76
    aput-boolean v1, v2, v0

    const/16 v0, 0x7f

    .line 77
    aput-boolean v1, v2, v0

    const/4 v0, 0x6

    .line 79
    aput-boolean v1, v2, v0

    const/16 v0, 0x26

    .line 80
    aput-boolean v1, v2, v0

    const/16 v0, 0x60

    .line 81
    aput-boolean v1, v2, v0

    const/16 v0, 0x61

    .line 82
    aput-boolean v1, v2, v0

    const/16 v0, 0x62

    .line 83
    aput-boolean v1, v2, v0

    const/16 v0, 0x63

    .line 84
    aput-boolean v1, v2, v0

    const/16 v0, 0x64

    .line 85
    aput-boolean v1, v2, v0

    const/16 v0, 0x65

    .line 86
    aput-boolean v1, v2, v0

    return-void
.end method

.method public constructor <init>(Lcom/codemao/midi/sun/SoftSynthesizer;I)V
    .registers 10

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3fff

    .line 91
    iput v0, p0, Lcom/codemao/midi/sun/SoftChannel;->rpn_control:I

    .line 92
    iput v0, p0, Lcom/codemao/midi/sun/SoftChannel;->nrpn_control:I

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    .line 93
    iput-wide v0, p0, Lcom/codemao/midi/sun/SoftChannel;->portamento_time:D

    const/16 v0, 0x80

    new-array v1, v0, [I

    .line 94
    iput-object v1, p0, Lcom/codemao/midi/sun/SoftChannel;->portamento_lastnote:[I

    const/4 v1, 0x0

    .line 95
    iput v1, p0, Lcom/codemao/midi/sun/SoftChannel;->portamento_lastnote_ix:I

    .line 96
    iput-boolean v1, p0, Lcom/codemao/midi/sun/SoftChannel;->portamento:Z

    .line 97
    iput-boolean v1, p0, Lcom/codemao/midi/sun/SoftChannel;->mono:Z

    .line 98
    iput-boolean v1, p0, Lcom/codemao/midi/sun/SoftChannel;->mute:Z

    .line 100
    iput-boolean v1, p0, Lcom/codemao/midi/sun/SoftChannel;->solomute:Z

    new-array v2, v0, [I

    .line 108
    iput-object v2, p0, Lcom/codemao/midi/sun/SoftChannel;->polypressure:[I

    new-array v2, v0, [I

    .line 110
    iput-object v2, p0, Lcom/codemao/midi/sun/SoftChannel;->controller:[I

    const/4 v2, 0x1

    new-array v3, v2, [D

    .line 112
    iput-object v3, p0, Lcom/codemao/midi/sun/SoftChannel;->co_midi_pitch:[D

    new-array v3, v2, [D

    .line 113
    iput-object v3, p0, Lcom/codemao/midi/sun/SoftChannel;->co_midi_channel_pressure:[D

    .line 114
    new-instance v3, Lcom/codemao/midi/sun/SoftTuning;

    invoke-direct {v3}, Lcom/codemao/midi/sun/SoftTuning;-><init>()V

    iput-object v3, p0, Lcom/codemao/midi/sun/SoftChannel;->tuning:Lcom/codemao/midi/sun/SoftTuning;

    .line 115
    iput v1, p0, Lcom/codemao/midi/sun/SoftChannel;->tuning_bank:I

    .line 116
    iput v1, p0, Lcom/codemao/midi/sun/SoftChannel;->tuning_program:I

    const/4 v3, 0x0

    .line 117
    iput-object v3, p0, Lcom/codemao/midi/sun/SoftChannel;->current_instrument:Lcom/codemao/midi/sun/SoftInstrument;

    .line 118
    iput-object v3, p0, Lcom/codemao/midi/sun/SoftChannel;->current_mixer:Lcom/codemao/midi/sun/ModelChannelMixer;

    .line 119
    iput-object v3, p0, Lcom/codemao/midi/sun/SoftChannel;->current_director:Lcom/codemao/midi/sun/ModelDirector;

    const/4 v4, -0x1

    .line 122
    iput v4, p0, Lcom/codemao/midi/sun/SoftChannel;->cds_control_number:I

    .line 123
    iput-object v3, p0, Lcom/codemao/midi/sun/SoftChannel;->cds_control_connections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    .line 124
    iput-object v3, p0, Lcom/codemao/midi/sun/SoftChannel;->cds_channelpressure_connections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    .line 125
    iput-object v3, p0, Lcom/codemao/midi/sun/SoftChannel;->cds_polypressure_connections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    .line 126
    iput-boolean v1, p0, Lcom/codemao/midi/sun/SoftChannel;->sustain:Z

    .line 127
    iput-object v3, p0, Lcom/codemao/midi/sun/SoftChannel;->keybasedcontroller_active:[[Z

    .line 128
    iput-object v3, p0, Lcom/codemao/midi/sun/SoftChannel;->keybasedcontroller_value:[[D

    new-array v4, v0, [Lcom/codemao/midi/sun/SoftControl;

    .line 148
    iput-object v4, p0, Lcom/codemao/midi/sun/SoftChannel;->co_midi:[Lcom/codemao/midi/sun/SoftControl;

    const/4 v4, 0x0

    .line 150
    :goto_55
    iget-object v5, p0, Lcom/codemao/midi/sun/SoftChannel;->co_midi:[Lcom/codemao/midi/sun/SoftControl;

    array-length v6, v5

    if-ge v4, v6, :cond_64

    .line 151
    new-instance v6, Lcom/codemao/midi/sun/SoftChannel$MidiControlObject;

    invoke-direct {v6, p0, v3}, Lcom/codemao/midi/sun/SoftChannel$MidiControlObject;-><init>(Lcom/codemao/midi/sun/SoftChannel;Lcom/codemao/midi/sun/SoftChannel$1;)V

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_55

    :cond_64
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 155
    fill-array-data v3, :array_ce

    const-class v4, D

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    iput-object v3, p0, Lcom/codemao/midi/sun/SoftChannel;->co_midi_cc_cc:[[D

    .line 156
    new-instance v3, Lcom/codemao/midi/sun/SoftChannel$1;

    invoke-direct {v3, p0}, Lcom/codemao/midi/sun/SoftChannel$1;-><init>(Lcom/codemao/midi/sun/SoftChannel;)V

    iput-object v3, p0, Lcom/codemao/midi/sun/SoftChannel;->co_midi_cc:Lcom/codemao/midi/sun/SoftControl;

    .line 164
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/codemao/midi/sun/SoftChannel;->co_midi_rpn_rpn_i:Ljava/util/Map;

    .line 165
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/codemao/midi/sun/SoftChannel;->co_midi_rpn_rpn:Ljava/util/Map;

    .line 166
    new-instance v3, Lcom/codemao/midi/sun/SoftChannel$2;

    invoke-direct {v3, p0}, Lcom/codemao/midi/sun/SoftChannel$2;-><init>(Lcom/codemao/midi/sun/SoftChannel;)V

    iput-object v3, p0, Lcom/codemao/midi/sun/SoftChannel;->co_midi_rpn:Lcom/codemao/midi/sun/SoftControl;

    .line 180
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/codemao/midi/sun/SoftChannel;->co_midi_nrpn_nrpn_i:Ljava/util/Map;

    .line 181
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/codemao/midi/sun/SoftChannel;->co_midi_nrpn_nrpn:Ljava/util/Map;

    .line 182
    new-instance v3, Lcom/codemao/midi/sun/SoftChannel$3;

    invoke-direct {v3, p0}, Lcom/codemao/midi/sun/SoftChannel$3;-><init>(Lcom/codemao/midi/sun/SoftChannel;)V

    iput-object v3, p0, Lcom/codemao/midi/sun/SoftChannel;->co_midi_nrpn:Lcom/codemao/midi/sun/SoftControl;

    new-array v0, v0, [I

    .line 619
    iput-object v0, p0, Lcom/codemao/midi/sun/SoftChannel;->lastVelocity:[I

    .line 621
    iput-boolean v2, p0, Lcom/codemao/midi/sun/SoftChannel;->firstVoice:Z

    .line 622
    iput v1, p0, Lcom/codemao/midi/sun/SoftChannel;->voiceNo:I

    .line 623
    iput v1, p0, Lcom/codemao/midi/sun/SoftChannel;->play_noteNumber:I

    .line 624
    iput v1, p0, Lcom/codemao/midi/sun/SoftChannel;->play_velocity:I

    .line 625
    iput v1, p0, Lcom/codemao/midi/sun/SoftChannel;->play_delay:I

    .line 626
    iput-boolean v1, p0, Lcom/codemao/midi/sun/SoftChannel;->play_releasetriggered:Z

    .line 212
    iput p2, p0, Lcom/codemao/midi/sun/SoftChannel;->channel:I

    .line 213
    invoke-virtual {p1}, Lcom/codemao/midi/sun/SoftSynthesizer;->getVoices()[Lcom/codemao/midi/sun/SoftVoice;

    move-result-object p2

    iput-object p2, p0, Lcom/codemao/midi/sun/SoftChannel;->voices:[Lcom/codemao/midi/sun/SoftVoice;

    .line 214
    iput-object p1, p0, Lcom/codemao/midi/sun/SoftChannel;->synthesizer:Lcom/codemao/midi/sun/SoftSynthesizer;

    .line 215
    invoke-virtual {p1}, Lcom/codemao/midi/sun/SoftSynthesizer;->getMainMixer()Lcom/codemao/midi/sun/SoftMainMixer;

    move-result-object p2

    iput-object p2, p0, Lcom/codemao/midi/sun/SoftChannel;->mainmixer:Lcom/codemao/midi/sun/SoftMainMixer;

    .line 216
    iget-object p1, p1, Lcom/codemao/midi/sun/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    iput-object p1, p0, Lcom/codemao/midi/sun/SoftChannel;->control_mutex:Ljava/lang/Object;

    .line 217
    invoke-virtual {p0, v2}, Lcom/codemao/midi/sun/SoftChannel;->resetAllControllers(Z)V

    return-void

    nop

    :array_ce
    .array-data 4
        0x80
        0x1
    .end array-data
.end method

.method static synthetic access$000(Lcom/codemao/midi/sun/SoftChannel;)[D
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/codemao/midi/sun/SoftChannel;->co_midi_pitch:[D

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/midi/sun/SoftChannel;)[D
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/codemao/midi/sun/SoftChannel;->co_midi_channel_pressure:[D

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/midi/sun/SoftChannel;)[[D
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/codemao/midi/sun/SoftChannel;->co_midi_cc_cc:[[D

    return-object p0
.end method

.method private createModelConnections(Lcom/codemao/midi/sun/ModelIdentifier;[I[I)[Lcom/codemao/midi/sun/ModelConnectionBlock;
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 826
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 828
    :goto_d
    array-length v6, v2

    if-ge v5, v6, :cond_135

    .line 829
    aget v6, v2, v5

    .line 830
    aget v7, p3, v5

    if-nez v6, :cond_36

    add-int/lit8 v8, v7, -0x40

    mul-int/lit8 v8, v8, 0x64

    int-to-double v8, v8

    .line 833
    new-instance v10, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v11, Lcom/codemao/midi/sun/ModelSource;

    invoke-direct {v11, v1, v4, v4, v4}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZI)V

    new-instance v12, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v13, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v14, "osc"

    const-string v15, "pitch"

    invoke-direct {v13, v14, v15}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v12, v13}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {v10, v11, v8, v9, v12}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    .line 841
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_36
    const-wide v8, 0x40c2c00000000000L  # 9600.0

    const-wide/high16 v10, 0x3ff0000000000000L  # 1.0

    const-wide/high16 v12, 0x4050000000000000L  # 64.0

    const/4 v14, 0x1

    move/from16 v16, v5

    if-ne v6, v14, :cond_79

    int-to-double v4, v7

    div-double/2addr v4, v12

    sub-double/2addr v4, v10

    mul-double v4, v4, v8

    const-wide/16 v17, 0x0

    cmpl-double v19, v4, v17

    if-lez v19, :cond_64

    .line 848
    new-instance v15, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v8, Lcom/codemao/midi/sun/ModelSource;

    const/4 v9, 0x0

    invoke-direct {v8, v1, v14, v9, v9}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZI)V

    neg-double v4, v4

    new-instance v14, Lcom/codemao/midi/sun/ModelDestination;

    sget-object v10, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_FILTER_FREQ:Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v14, v10}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {v15, v8, v4, v5, v14}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    move-object v8, v15

    goto :goto_76

    :cond_64
    const/4 v9, 0x0

    .line 857
    new-instance v8, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v10, Lcom/codemao/midi/sun/ModelSource;

    invoke-direct {v10, v1, v9, v9, v9}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZI)V

    new-instance v9, Lcom/codemao/midi/sun/ModelDestination;

    sget-object v11, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_FILTER_FREQ:Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v9, v11}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {v8, v10, v4, v5, v9}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    .line 866
    :goto_76
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_79
    const/4 v4, 0x2

    if-ne v6, v4, :cond_99

    int-to-double v4, v7

    div-double/2addr v4, v12

    .line 870
    new-instance v8, Lcom/codemao/midi/sun/SoftChannel$4;

    invoke-direct {v8, v0, v4, v5}, Lcom/codemao/midi/sun/SoftChannel$4;-><init>(Lcom/codemao/midi/sun/SoftChannel;D)V

    .line 883
    new-instance v4, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v5, Lcom/codemao/midi/sun/ModelSource;

    invoke-direct {v5, v1, v8}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;Lcom/codemao/midi/sun/ModelTransform;)V

    const-wide/high16 v8, -0x3f72000000000000L  # -960.0

    new-instance v10, Lcom/codemao/midi/sun/ModelDestination;

    sget-object v11, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_GAIN:Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v10, v11}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {v4, v5, v8, v9, v10}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    .line 886
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_99
    const/4 v4, 0x3

    if-ne v6, v4, :cond_cd

    int-to-double v4, v7

    div-double/2addr v4, v12

    const-wide/high16 v8, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v4, v8

    const-wide v8, 0x40c2c00000000000L  # 9600.0

    mul-double v21, v4, v8

    .line 891
    new-instance v4, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v5, Lcom/codemao/midi/sun/ModelSource;

    sget-object v8, Lcom/codemao/midi/sun/ModelSource;->SOURCE_LFO1:Lcom/codemao/midi/sun/ModelIdentifier;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {v5, v8, v10, v9, v10}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZI)V

    new-instance v8, Lcom/codemao/midi/sun/ModelSource;

    invoke-direct {v8, v1, v10, v10, v10}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZI)V

    new-instance v9, Lcom/codemao/midi/sun/ModelDestination;

    sget-object v10, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_PITCH:Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v9, v10}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v8

    move-object/from16 v23, v9

    invoke-direct/range {v18 .. v23}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    .line 903
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_cd
    const/4 v4, 0x4

    if-ne v6, v4, :cond_100

    int-to-double v4, v7

    const-wide/high16 v8, 0x4060000000000000L  # 128.0

    div-double/2addr v4, v8

    const-wide v8, 0x40a2c00000000000L  # 2400.0

    mul-double v21, v4, v8

    .line 907
    new-instance v4, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v5, Lcom/codemao/midi/sun/ModelSource;

    sget-object v8, Lcom/codemao/midi/sun/ModelSource;->SOURCE_LFO1:Lcom/codemao/midi/sun/ModelIdentifier;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {v5, v8, v10, v9, v10}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZI)V

    new-instance v8, Lcom/codemao/midi/sun/ModelSource;

    invoke-direct {v8, v1, v10, v10, v10}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZI)V

    new-instance v9, Lcom/codemao/midi/sun/ModelDestination;

    sget-object v10, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_FILTER_FREQ:Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v9, v10}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v8

    move-object/from16 v23, v9

    invoke-direct/range {v18 .. v23}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    .line 919
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_100
    const/4 v4, 0x5

    if-ne v6, v4, :cond_12f

    int-to-double v4, v7

    const-wide v6, 0x405fc00000000000L  # 127.0

    div-double/2addr v4, v6

    .line 924
    new-instance v6, Lcom/codemao/midi/sun/SoftChannel$5;

    invoke-direct {v6, v0, v4, v5}, Lcom/codemao/midi/sun/SoftChannel$5;-><init>(Lcom/codemao/midi/sun/SoftChannel;D)V

    .line 932
    new-instance v4, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v8, Lcom/codemao/midi/sun/ModelSource;

    sget-object v5, Lcom/codemao/midi/sun/ModelSource;->SOURCE_LFO1:Lcom/codemao/midi/sun/ModelIdentifier;

    const/4 v13, 0x0

    invoke-direct {v8, v5, v13, v13, v13}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZI)V

    new-instance v9, Lcom/codemao/midi/sun/ModelSource;

    invoke-direct {v9, v1, v6}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;Lcom/codemao/midi/sun/ModelTransform;)V

    const-wide/high16 v10, -0x3f72000000000000L  # -960.0

    new-instance v12, Lcom/codemao/midi/sun/ModelDestination;

    sget-object v5, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_GAIN:Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v12, v5}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    .line 941
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_130

    :cond_12f
    const/4 v13, 0x0

    :goto_130
    add-int/lit8 v5, v16, 0x1

    const/4 v4, 0x0

    goto/16 :goto_d

    .line 945
    :cond_135
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/codemao/midi/sun/ModelConnectionBlock;

    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/codemao/midi/sun/ModelConnectionBlock;

    return-object v1
.end method

.method private findFreeVoice(I)I
    .registers 10

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    return v0

    .line 230
    :cond_4
    :goto_4
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftChannel;->voices:[Lcom/codemao/midi/sun/SoftVoice;

    array-length v2, v1

    if-ge p1, v2, :cond_13

    .line 231
    aget-object v1, v1, p1

    iget-boolean v1, v1, Lcom/codemao/midi/javax/VoiceStatus;->active:Z

    if-nez v1, :cond_10

    return p1

    :cond_10
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 236
    :cond_13
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftChannel;->synthesizer:Lcom/codemao/midi/sun/SoftSynthesizer;

    invoke-virtual {p1}, Lcom/codemao/midi/sun/SoftSynthesizer;->getVoiceAllocationMode()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_9c

    .line 242
    iget p1, p0, Lcom/codemao/midi/sun/SoftChannel;->channel:I

    const/4 v3, 0x0

    .line 243
    :goto_21
    iget-object v4, p0, Lcom/codemao/midi/sun/SoftChannel;->voices:[Lcom/codemao/midi/sun/SoftVoice;

    array-length v5, v4

    if-ge v3, v5, :cond_48

    .line 244
    aget-object v5, v4, v3

    iget-object v5, v5, Lcom/codemao/midi/sun/SoftVoice;->stealer_channel:Lcom/codemao/midi/sun/SoftChannel;

    if-nez v5, :cond_45

    const/16 v5, 0x9

    if-ne p1, v5, :cond_35

    .line 246
    aget-object p1, v4, v3

    iget p1, p1, Lcom/codemao/midi/javax/VoiceStatus;->channel:I

    goto :goto_45

    .line 248
    :cond_35
    aget-object v6, v4, v3

    iget v6, v6, Lcom/codemao/midi/javax/VoiceStatus;->channel:I

    if-eq v6, v5, :cond_45

    .line 249
    aget-object v5, v4, v3

    iget v5, v5, Lcom/codemao/midi/javax/VoiceStatus;->channel:I

    if-le v5, p1, :cond_45

    .line 250
    aget-object p1, v4, v3

    iget p1, p1, Lcom/codemao/midi/javax/VoiceStatus;->channel:I

    :cond_45
    :goto_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_48
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 260
    :goto_4a
    iget-object v5, p0, Lcom/codemao/midi/sun/SoftChannel;->voices:[Lcom/codemao/midi/sun/SoftVoice;

    array-length v6, v5

    if-ge v3, v6, :cond_74

    .line 261
    aget-object v6, v5, v3

    iget v6, v6, Lcom/codemao/midi/javax/VoiceStatus;->channel:I

    if-ne v6, p1, :cond_71

    .line 262
    aget-object v6, v5, v3

    iget-object v6, v6, Lcom/codemao/midi/sun/SoftVoice;->stealer_channel:Lcom/codemao/midi/sun/SoftChannel;

    if-nez v6, :cond_71

    aget-object v6, v5, v3

    iget-boolean v6, v6, Lcom/codemao/midi/sun/SoftVoice;->on:Z

    if-nez v6, :cond_71

    if-nez v1, :cond_66

    .line 264
    aget-object v1, v5, v3

    move v4, v3

    .line 267
    :cond_66
    aget-object v6, v5, v3

    iget v6, v6, Lcom/codemao/midi/sun/SoftVoice;->voiceID:I

    iget v7, v1, Lcom/codemao/midi/sun/SoftVoice;->voiceID:I

    if-ge v6, v7, :cond_71

    .line 268
    aget-object v1, v5, v3

    move v4, v3

    :cond_71
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    :cond_74
    if-ne v4, v0, :cond_9b

    .line 276
    :goto_76
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChannel;->voices:[Lcom/codemao/midi/sun/SoftVoice;

    array-length v3, v0

    if-ge v2, v3, :cond_9b

    .line 277
    aget-object v3, v0, v2

    iget v3, v3, Lcom/codemao/midi/javax/VoiceStatus;->channel:I

    if-ne v3, p1, :cond_98

    .line 278
    aget-object v3, v0, v2

    iget-object v3, v3, Lcom/codemao/midi/sun/SoftVoice;->stealer_channel:Lcom/codemao/midi/sun/SoftChannel;

    if-nez v3, :cond_98

    if-nez v1, :cond_8c

    .line 280
    aget-object v1, v0, v2

    move v4, v2

    .line 283
    :cond_8c
    aget-object v3, v0, v2

    iget v3, v3, Lcom/codemao/midi/sun/SoftVoice;->voiceID:I

    iget v5, v1, Lcom/codemao/midi/sun/SoftVoice;->voiceID:I

    if-ge v3, v5, :cond_98

    .line 284
    aget-object v0, v0, v2

    move-object v1, v0

    move v4, v2

    :cond_98
    add-int/lit8 v2, v2, 0x1

    goto :goto_76

    :cond_9b
    return v4

    :cond_9c
    const/4 p1, 0x0

    const/4 v3, -0x1

    .line 305
    :goto_9e
    iget-object v4, p0, Lcom/codemao/midi/sun/SoftChannel;->voices:[Lcom/codemao/midi/sun/SoftVoice;

    array-length v5, v4

    if-ge p1, v5, :cond_c2

    .line 306
    aget-object v5, v4, p1

    iget-object v5, v5, Lcom/codemao/midi/sun/SoftVoice;->stealer_channel:Lcom/codemao/midi/sun/SoftChannel;

    if-nez v5, :cond_bf

    aget-object v5, v4, p1

    iget-boolean v5, v5, Lcom/codemao/midi/sun/SoftVoice;->on:Z

    if-nez v5, :cond_bf

    if-nez v1, :cond_b4

    .line 308
    aget-object v1, v4, p1

    move v3, p1

    .line 311
    :cond_b4
    aget-object v5, v4, p1

    iget v5, v5, Lcom/codemao/midi/sun/SoftVoice;->voiceID:I

    iget v6, v1, Lcom/codemao/midi/sun/SoftVoice;->voiceID:I

    if-ge v5, v6, :cond_bf

    .line 312
    aget-object v1, v4, p1

    move v3, p1

    :cond_bf
    add-int/lit8 p1, p1, 0x1

    goto :goto_9e

    :cond_c2
    if-ne v3, v0, :cond_e3

    .line 320
    :goto_c4
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftChannel;->voices:[Lcom/codemao/midi/sun/SoftVoice;

    array-length v0, p1

    if-ge v2, v0, :cond_e3

    .line 321
    aget-object v0, p1, v2

    iget-object v0, v0, Lcom/codemao/midi/sun/SoftVoice;->stealer_channel:Lcom/codemao/midi/sun/SoftChannel;

    if-nez v0, :cond_e0

    if-nez v1, :cond_d4

    .line 323
    aget-object v1, p1, v2

    move v3, v2

    .line 326
    :cond_d4
    aget-object v0, p1, v2

    iget v0, v0, Lcom/codemao/midi/sun/SoftVoice;->voiceID:I

    iget v4, v1, Lcom/codemao/midi/sun/SoftVoice;->voiceID:I

    if-ge v0, v4, :cond_e0

    .line 327
    aget-object p1, p1, v2

    move-object v1, p1

    move v3, v2

    :cond_e0
    add-int/lit8 v2, v2, 0x1

    goto :goto_c4

    :cond_e3
    return v3
.end method

.method private noteOff_internal(II)V
    .registers 11

    .line 557
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChannel;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 559
    :try_start_3
    iget-boolean v1, p0, Lcom/codemao/midi/sun/SoftChannel;->mono:Z

    const/4 v2, 0x1

    if-nez v1, :cond_19

    .line 560
    iget-boolean v1, p0, Lcom/codemao/midi/sun/SoftChannel;->portamento:Z

    if-eqz v1, :cond_19

    .line 561
    iget v1, p0, Lcom/codemao/midi/sun/SoftChannel;->portamento_lastnote_ix:I

    const/16 v3, 0x7f

    if-eq v1, v3, :cond_19

    .line 562
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftChannel;->portamento_lastnote:[I

    aput p1, v3, v1

    add-int/2addr v1, v2

    .line 563
    iput v1, p0, Lcom/codemao/midi/sun/SoftChannel;->portamento_lastnote_ix:I

    .line 568
    :cond_19
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftChannel;->mainmixer:Lcom/codemao/midi/sun/SoftMainMixer;

    invoke-virtual {v1}, Lcom/codemao/midi/sun/SoftMainMixer;->activity()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 569
    :goto_20
    iget-object v4, p0, Lcom/codemao/midi/sun/SoftChannel;->voices:[Lcom/codemao/midi/sun/SoftVoice;

    array-length v5, v4

    if-ge v3, v5, :cond_69

    .line 570
    aget-object v5, v4, v3

    iget-boolean v5, v5, Lcom/codemao/midi/sun/SoftVoice;->on:Z

    if-eqz v5, :cond_44

    aget-object v5, v4, v3

    iget v5, v5, Lcom/codemao/midi/javax/VoiceStatus;->channel:I

    iget v6, p0, Lcom/codemao/midi/sun/SoftChannel;->channel:I

    if-ne v5, v6, :cond_44

    aget-object v5, v4, v3

    iget v5, v5, Lcom/codemao/midi/javax/VoiceStatus;->note:I

    if-ne v5, p1, :cond_44

    aget-object v5, v4, v3

    iget-boolean v5, v5, Lcom/codemao/midi/sun/SoftVoice;->releaseTriggered:Z

    if-nez v5, :cond_44

    .line 573
    aget-object v4, v4, v3

    invoke-virtual {v4, p2}, Lcom/codemao/midi/sun/SoftVoice;->noteOff(I)V

    .line 576
    :cond_44
    iget-object v4, p0, Lcom/codemao/midi/sun/SoftChannel;->voices:[Lcom/codemao/midi/sun/SoftVoice;

    aget-object v5, v4, v3

    iget-object v5, v5, Lcom/codemao/midi/sun/SoftVoice;->stealer_channel:Lcom/codemao/midi/sun/SoftChannel;

    if-ne v5, p0, :cond_66

    aget-object v5, v4, v3

    iget v5, v5, Lcom/codemao/midi/sun/SoftVoice;->stealer_noteNumber:I

    if-ne v5, p1, :cond_66

    .line 577
    aget-object v4, v4, v3

    .line 578
    iput-boolean v1, v4, Lcom/codemao/midi/sun/SoftVoice;->stealer_releaseTriggered:Z

    const/4 v5, 0x0

    .line 579
    iput-object v5, v4, Lcom/codemao/midi/sun/SoftVoice;->stealer_channel:Lcom/codemao/midi/sun/SoftChannel;

    .line 580
    iput-object v5, v4, Lcom/codemao/midi/sun/SoftVoice;->stealer_performer:Lcom/codemao/midi/sun/SoftPerformer;

    const/4 v6, -0x1

    .line 581
    iput v6, v4, Lcom/codemao/midi/sun/SoftVoice;->stealer_voiceID:I

    .line 582
    iput v1, v4, Lcom/codemao/midi/sun/SoftVoice;->stealer_noteNumber:I

    .line 583
    iput v1, v4, Lcom/codemao/midi/sun/SoftVoice;->stealer_velocity:I

    .line 584
    iput-object v5, v4, Lcom/codemao/midi/sun/SoftVoice;->stealer_extendedConnectionBlocks:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    .line 585
    iput-object v5, v4, Lcom/codemao/midi/sun/SoftVoice;->stealer_channelmixer:Lcom/codemao/midi/sun/ModelChannelMixer;

    :cond_66
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 591
    :cond_69
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftChannel;->current_instrument:Lcom/codemao/midi/sun/SoftInstrument;

    if-nez v3, :cond_ac

    .line 592
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftChannel;->synthesizer:Lcom/codemao/midi/sun/SoftSynthesizer;

    iget v4, p0, Lcom/codemao/midi/sun/SoftChannel;->program:I

    iget v5, p0, Lcom/codemao/midi/sun/SoftChannel;->bank:I

    iget v6, p0, Lcom/codemao/midi/sun/SoftChannel;->channel:I

    .line 593
    invoke-virtual {v3, v4, v5, v6}, Lcom/codemao/midi/sun/SoftSynthesizer;->findInstrument(III)Lcom/codemao/midi/sun/SoftInstrument;

    move-result-object v3

    iput-object v3, p0, Lcom/codemao/midi/sun/SoftChannel;->current_instrument:Lcom/codemao/midi/sun/SoftInstrument;

    if-nez v3, :cond_7f

    .line 595
    monitor-exit v0

    return-void

    .line 596
    :cond_7f
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftChannel;->current_mixer:Lcom/codemao/midi/sun/ModelChannelMixer;

    if-eqz v3, :cond_88

    .line 597
    iget-object v4, p0, Lcom/codemao/midi/sun/SoftChannel;->mainmixer:Lcom/codemao/midi/sun/SoftMainMixer;

    invoke-virtual {v4, v3}, Lcom/codemao/midi/sun/SoftMainMixer;->stopMixer(Lcom/codemao/midi/sun/ModelChannelMixer;)V

    .line 598
    :cond_88
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftChannel;->current_instrument:Lcom/codemao/midi/sun/SoftInstrument;

    invoke-virtual {v3}, Lcom/codemao/midi/sun/SoftInstrument;->getSourceInstrument()Lcom/codemao/midi/sun/ModelInstrument;

    move-result-object v3

    iget-object v4, p0, Lcom/codemao/midi/sun/SoftChannel;->synthesizer:Lcom/codemao/midi/sun/SoftSynthesizer;

    .line 599
    invoke-virtual {v4}, Lcom/codemao/midi/sun/SoftSynthesizer;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Lcom/codemao/midi/sun/ModelInstrument;->getChannelMixer(Lcom/codemao/midi/javax/MidiChannel;Lcom/codemao/midi/javax/sampled/AudioFormat;)Lcom/codemao/midi/sun/ModelChannelMixer;

    move-result-object v3

    iput-object v3, p0, Lcom/codemao/midi/sun/SoftChannel;->current_mixer:Lcom/codemao/midi/sun/ModelChannelMixer;

    if-eqz v3, :cond_a1

    .line 601
    iget-object v4, p0, Lcom/codemao/midi/sun/SoftChannel;->mainmixer:Lcom/codemao/midi/sun/SoftMainMixer;

    invoke-virtual {v4, v3}, Lcom/codemao/midi/sun/SoftMainMixer;->registerMixer(Lcom/codemao/midi/sun/ModelChannelMixer;)V

    .line 602
    :cond_a1
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftChannel;->current_instrument:Lcom/codemao/midi/sun/SoftInstrument;

    invoke-virtual {v3, p0, p0}, Lcom/codemao/midi/sun/SoftInstrument;->getDirector(Lcom/codemao/midi/javax/MidiChannel;Lcom/codemao/midi/sun/ModelDirectedPlayer;)Lcom/codemao/midi/sun/ModelDirector;

    move-result-object v3

    iput-object v3, p0, Lcom/codemao/midi/sun/SoftChannel;->current_director:Lcom/codemao/midi/sun/ModelDirector;

    .line 603
    invoke-virtual {p0}, Lcom/codemao/midi/sun/SoftChannel;->applyInstrumentCustomization()V

    .line 606
    :cond_ac
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftChannel;->synthesizer:Lcom/codemao/midi/sun/SoftSynthesizer;

    iget v4, v3, Lcom/codemao/midi/sun/SoftSynthesizer;->voiceIDCounter:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v3, Lcom/codemao/midi/sun/SoftSynthesizer;->voiceIDCounter:I

    iput v4, p0, Lcom/codemao/midi/sun/SoftChannel;->prevVoiceID:I

    .line 607
    iput-boolean v2, p0, Lcom/codemao/midi/sun/SoftChannel;->firstVoice:Z

    .line 608
    iput v1, p0, Lcom/codemao/midi/sun/SoftChannel;->voiceNo:I

    .line 610
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftChannel;->tuning:Lcom/codemao/midi/sun/SoftTuning;

    invoke-virtual {v3}, Lcom/codemao/midi/sun/SoftTuning;->getTuning()[D

    move-result-object v3

    aget-wide v4, v3, p1

    const-wide/high16 v6, 0x4059000000000000L  # 100.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v4, v3

    .line 611
    iput p1, p0, Lcom/codemao/midi/sun/SoftChannel;->play_noteNumber:I

    .line 612
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftChannel;->lastVelocity:[I

    aget p1, v3, p1

    iput p1, p0, Lcom/codemao/midi/sun/SoftChannel;->play_velocity:I

    .line 613
    iput-boolean v2, p0, Lcom/codemao/midi/sun/SoftChannel;->play_releasetriggered:Z

    .line 614
    iput v1, p0, Lcom/codemao/midi/sun/SoftChannel;->play_delay:I

    .line 615
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftChannel;->current_director:Lcom/codemao/midi/sun/ModelDirector;

    invoke-interface {p1, v4, p2}, Lcom/codemao/midi/sun/ModelDirector;->noteOff(II)V

    .line 617
    monitor-exit v0

    return-void

    :catchall_dd
    move-exception p1

    monitor-exit v0
    :try_end_df
    .catchall {:try_start_3 .. :try_end_df} :catchall_dd

    throw p1
.end method

.method private noteOn_internal(III)V
    .registers 13

    if-nez p2, :cond_8

    const/16 p2, 0x40

    .line 428
    invoke-direct {p0, p1, p2}, Lcom/codemao/midi/sun/SoftChannel;->noteOff_internal(II)V

    return-void

    .line 432
    :cond_8
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChannel;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 433
    :try_start_b
    iget-boolean v1, p0, Lcom/codemao/midi/sun/SoftChannel;->sustain:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4b

    .line 434
    iput-boolean v3, p0, Lcom/codemao/midi/sun/SoftChannel;->sustain:Z

    const/4 v1, 0x0

    .line 435
    :goto_14
    iget-object v4, p0, Lcom/codemao/midi/sun/SoftChannel;->voices:[Lcom/codemao/midi/sun/SoftVoice;

    array-length v5, v4

    if-ge v1, v5, :cond_49

    .line 436
    aget-object v5, v4, v1

    iget-boolean v5, v5, Lcom/codemao/midi/sun/SoftVoice;->sustain:Z

    if-nez v5, :cond_25

    aget-object v5, v4, v1

    iget-boolean v5, v5, Lcom/codemao/midi/sun/SoftVoice;->on:Z

    if-eqz v5, :cond_46

    :cond_25
    aget-object v5, v4, v1

    iget v5, v5, Lcom/codemao/midi/javax/VoiceStatus;->channel:I

    iget v6, p0, Lcom/codemao/midi/sun/SoftChannel;->channel:I

    if-ne v5, v6, :cond_46

    aget-object v5, v4, v1

    iget-boolean v5, v5, Lcom/codemao/midi/javax/VoiceStatus;->active:Z

    if-eqz v5, :cond_46

    aget-object v5, v4, v1

    iget v5, v5, Lcom/codemao/midi/javax/VoiceStatus;->note:I

    if-ne v5, p1, :cond_46

    .line 439
    aget-object v5, v4, v1

    iput-boolean v3, v5, Lcom/codemao/midi/sun/SoftVoice;->sustain:Z

    .line 440
    aget-object v5, v4, v1

    iput-boolean v2, v5, Lcom/codemao/midi/sun/SoftVoice;->on:Z

    .line 441
    aget-object v4, v4, v1

    invoke-virtual {v4, v3}, Lcom/codemao/midi/sun/SoftVoice;->noteOff(I)V

    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 444
    :cond_49
    iput-boolean v2, p0, Lcom/codemao/midi/sun/SoftChannel;->sustain:Z

    .line 447
    :cond_4b
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftChannel;->mainmixer:Lcom/codemao/midi/sun/SoftMainMixer;

    invoke-virtual {v1}, Lcom/codemao/midi/sun/SoftMainMixer;->activity()V

    .line 449
    iget-boolean v1, p0, Lcom/codemao/midi/sun/SoftChannel;->mono:Z

    if-eqz v1, :cond_d5

    .line 450
    iget-boolean v1, p0, Lcom/codemao/midi/sun/SoftChannel;->portamento:Z

    if-eqz v1, :cond_8e

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 452
    :goto_5a
    iget-object v5, p0, Lcom/codemao/midi/sun/SoftChannel;->voices:[Lcom/codemao/midi/sun/SoftVoice;

    array-length v6, v5

    if-ge v1, v6, :cond_86

    .line 453
    aget-object v6, v5, v1

    iget-boolean v6, v6, Lcom/codemao/midi/sun/SoftVoice;->on:Z

    if-eqz v6, :cond_83

    aget-object v6, v5, v1

    iget v6, v6, Lcom/codemao/midi/javax/VoiceStatus;->channel:I

    iget v7, p0, Lcom/codemao/midi/sun/SoftChannel;->channel:I

    if-ne v6, v7, :cond_83

    aget-object v6, v5, v1

    iget-boolean v6, v6, Lcom/codemao/midi/javax/VoiceStatus;->active:Z

    if-eqz v6, :cond_83

    aget-object v6, v5, v1

    iget-boolean v6, v6, Lcom/codemao/midi/sun/SoftVoice;->releaseTriggered:Z

    if-nez v6, :cond_83

    .line 456
    aget-object v4, v5, v1

    iput-boolean v2, v4, Lcom/codemao/midi/sun/SoftVoice;->portamento:Z

    .line 457
    aget-object v4, v5, v1

    invoke-virtual {v4, p1}, Lcom/codemao/midi/sun/SoftVoice;->setNote(I)V

    const/4 v4, 0x1

    :cond_83
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    :cond_86
    if-eqz v4, :cond_8e

    .line 462
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftChannel;->portamento_lastnote:[I

    aput p1, p2, v3

    .line 463
    monitor-exit v0

    return-void

    .line 467
    :cond_8e
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftChannel;->controller:[I

    const/16 v4, 0x54

    aget v1, v1, v4

    if-eqz v1, :cond_d5

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 469
    :goto_98
    iget-object v6, p0, Lcom/codemao/midi/sun/SoftChannel;->voices:[Lcom/codemao/midi/sun/SoftVoice;

    array-length v7, v6

    if-ge v1, v7, :cond_ce

    .line 470
    aget-object v7, v6, v1

    iget-boolean v7, v7, Lcom/codemao/midi/sun/SoftVoice;->on:Z

    if-eqz v7, :cond_cb

    aget-object v7, v6, v1

    iget v7, v7, Lcom/codemao/midi/javax/VoiceStatus;->channel:I

    iget v8, p0, Lcom/codemao/midi/sun/SoftChannel;->channel:I

    if-ne v7, v8, :cond_cb

    aget-object v7, v6, v1

    iget-boolean v7, v7, Lcom/codemao/midi/javax/VoiceStatus;->active:Z

    if-eqz v7, :cond_cb

    aget-object v7, v6, v1

    iget v7, v7, Lcom/codemao/midi/javax/VoiceStatus;->note:I

    iget-object v8, p0, Lcom/codemao/midi/sun/SoftChannel;->controller:[I

    aget v8, v8, v4

    if-ne v7, v8, :cond_cb

    aget-object v7, v6, v1

    iget-boolean v7, v7, Lcom/codemao/midi/sun/SoftVoice;->releaseTriggered:Z

    if-nez v7, :cond_cb

    .line 474
    aget-object v5, v6, v1

    iput-boolean v2, v5, Lcom/codemao/midi/sun/SoftVoice;->portamento:Z

    .line 475
    aget-object v5, v6, v1

    invoke-virtual {v5, p1}, Lcom/codemao/midi/sun/SoftVoice;->setNote(I)V

    const/4 v5, 0x1

    :cond_cb
    add-int/lit8 v1, v1, 0x1

    goto :goto_98

    .line 479
    :cond_ce
    invoke-virtual {p0, v4, v3}, Lcom/codemao/midi/sun/SoftChannel;->controlChange(II)V

    if-eqz v5, :cond_d5

    .line 481
    monitor-exit v0

    return-void

    .line 485
    :cond_d5
    iget-boolean v1, p0, Lcom/codemao/midi/sun/SoftChannel;->mono:Z

    if-eqz v1, :cond_dc

    .line 486
    invoke-virtual {p0}, Lcom/codemao/midi/sun/SoftChannel;->allNotesOff()V

    .line 488
    :cond_dc
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftChannel;->current_instrument:Lcom/codemao/midi/sun/SoftInstrument;

    if-nez v1, :cond_11f

    .line 489
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftChannel;->synthesizer:Lcom/codemao/midi/sun/SoftSynthesizer;

    iget v4, p0, Lcom/codemao/midi/sun/SoftChannel;->program:I

    iget v5, p0, Lcom/codemao/midi/sun/SoftChannel;->bank:I

    iget v6, p0, Lcom/codemao/midi/sun/SoftChannel;->channel:I

    .line 490
    invoke-virtual {v1, v4, v5, v6}, Lcom/codemao/midi/sun/SoftSynthesizer;->findInstrument(III)Lcom/codemao/midi/sun/SoftInstrument;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/midi/sun/SoftChannel;->current_instrument:Lcom/codemao/midi/sun/SoftInstrument;

    if-nez v1, :cond_f2

    .line 492
    monitor-exit v0

    return-void

    .line 493
    :cond_f2
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftChannel;->current_mixer:Lcom/codemao/midi/sun/ModelChannelMixer;

    if-eqz v1, :cond_fb

    .line 494
    iget-object v4, p0, Lcom/codemao/midi/sun/SoftChannel;->mainmixer:Lcom/codemao/midi/sun/SoftMainMixer;

    invoke-virtual {v4, v1}, Lcom/codemao/midi/sun/SoftMainMixer;->stopMixer(Lcom/codemao/midi/sun/ModelChannelMixer;)V

    .line 495
    :cond_fb
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftChannel;->current_instrument:Lcom/codemao/midi/sun/SoftInstrument;

    invoke-virtual {v1}, Lcom/codemao/midi/sun/SoftInstrument;->getSourceInstrument()Lcom/codemao/midi/sun/ModelInstrument;

    move-result-object v1

    iget-object v4, p0, Lcom/codemao/midi/sun/SoftChannel;->synthesizer:Lcom/codemao/midi/sun/SoftSynthesizer;

    .line 496
    invoke-virtual {v4}, Lcom/codemao/midi/sun/SoftSynthesizer;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v4

    invoke-virtual {v1, p0, v4}, Lcom/codemao/midi/sun/ModelInstrument;->getChannelMixer(Lcom/codemao/midi/javax/MidiChannel;Lcom/codemao/midi/javax/sampled/AudioFormat;)Lcom/codemao/midi/sun/ModelChannelMixer;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/midi/sun/SoftChannel;->current_mixer:Lcom/codemao/midi/sun/ModelChannelMixer;

    if-eqz v1, :cond_114

    .line 498
    iget-object v4, p0, Lcom/codemao/midi/sun/SoftChannel;->mainmixer:Lcom/codemao/midi/sun/SoftMainMixer;

    invoke-virtual {v4, v1}, Lcom/codemao/midi/sun/SoftMainMixer;->registerMixer(Lcom/codemao/midi/sun/ModelChannelMixer;)V

    .line 499
    :cond_114
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftChannel;->current_instrument:Lcom/codemao/midi/sun/SoftInstrument;

    invoke-virtual {v1, p0, p0}, Lcom/codemao/midi/sun/SoftInstrument;->getDirector(Lcom/codemao/midi/javax/MidiChannel;Lcom/codemao/midi/sun/ModelDirectedPlayer;)Lcom/codemao/midi/sun/ModelDirector;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/midi/sun/SoftChannel;->current_director:Lcom/codemao/midi/sun/ModelDirector;

    .line 500
    invoke-virtual {p0}, Lcom/codemao/midi/sun/SoftChannel;->applyInstrumentCustomization()V

    .line 502
    :cond_11f
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftChannel;->synthesizer:Lcom/codemao/midi/sun/SoftSynthesizer;

    iget v4, v1, Lcom/codemao/midi/sun/SoftSynthesizer;->voiceIDCounter:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v1, Lcom/codemao/midi/sun/SoftSynthesizer;->voiceIDCounter:I

    iput v4, p0, Lcom/codemao/midi/sun/SoftChannel;->prevVoiceID:I

    .line 503
    iput-boolean v2, p0, Lcom/codemao/midi/sun/SoftChannel;->firstVoice:Z

    .line 504
    iput v3, p0, Lcom/codemao/midi/sun/SoftChannel;->voiceNo:I

    .line 506
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftChannel;->tuning:Lcom/codemao/midi/sun/SoftTuning;

    invoke-virtual {v1}, Lcom/codemao/midi/sun/SoftTuning;->getTuning()[D

    move-result-object v1

    aget-wide v4, v1, p1

    const-wide/high16 v1, 0x4059000000000000L  # 100.0

    div-double/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v2, v1

    .line 507
    iput p1, p0, Lcom/codemao/midi/sun/SoftChannel;->play_noteNumber:I

    .line 508
    iput p2, p0, Lcom/codemao/midi/sun/SoftChannel;->play_velocity:I

    .line 509
    iput p3, p0, Lcom/codemao/midi/sun/SoftChannel;->play_delay:I

    .line 510
    iput-boolean v3, p0, Lcom/codemao/midi/sun/SoftChannel;->play_releasetriggered:Z

    .line 511
    iget-object p3, p0, Lcom/codemao/midi/sun/SoftChannel;->lastVelocity:[I

    aput p2, p3, p1

    .line 512
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftChannel;->current_director:Lcom/codemao/midi/sun/ModelDirector;

    invoke-interface {p1, v2, p2}, Lcom/codemao/midi/sun/ModelDirector;->noteOn(II)V

    .line 544
    monitor-exit v0

    return-void

    :catchall_150
    move-exception p1

    monitor-exit v0
    :try_end_152
    .catchall {:try_start_b .. :try_end_152} :catchall_150

    throw p1
.end method

.method private static restrict14Bit(I)I
    .registers 2

    if-gez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    const/16 v0, 0x3f80

    if-le p0, v0, :cond_9

    return v0

    :cond_9
    return p0
.end method

.method private static restrict7Bit(I)I
    .registers 2

    if-gez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    const/16 v0, 0x7f

    if-le p0, v0, :cond_9

    return v0

    :cond_9
    return p0
.end method


# virtual methods
.method public allNotesOff()V
    .registers 7

    .line 1467
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChannel;->current_mixer:Lcom/codemao/midi/sun/ModelChannelMixer;

    if-eqz v0, :cond_7

    .line 1468
    invoke-interface {v0}, Lcom/codemao/midi/javax/MidiChannel;->allNotesOff()V

    .line 1469
    :cond_7
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChannel;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1470
    :goto_c
    :try_start_c
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftChannel;->voices:[Lcom/codemao/midi/sun/SoftVoice;

    array-length v4, v3

    if-ge v2, v4, :cond_2d

    .line 1471
    aget-object v4, v3, v2

    iget-boolean v4, v4, Lcom/codemao/midi/sun/SoftVoice;->on:Z

    if-eqz v4, :cond_2a

    aget-object v4, v3, v2

    iget v4, v4, Lcom/codemao/midi/javax/VoiceStatus;->channel:I

    iget v5, p0, Lcom/codemao/midi/sun/SoftChannel;->channel:I

    if-ne v4, v5, :cond_2a

    aget-object v4, v3, v2

    iget-boolean v4, v4, Lcom/codemao/midi/sun/SoftVoice;->releaseTriggered:Z

    if-nez v4, :cond_2a

    .line 1473
    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Lcom/codemao/midi/sun/SoftVoice;->noteOff(I)V

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1475
    :cond_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_c .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public allSoundOff()V
    .registers 6

    .line 1479
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChannel;->current_mixer:Lcom/codemao/midi/sun/ModelChannelMixer;

    if-eqz v0, :cond_7

    .line 1480
    invoke-interface {v0}, Lcom/codemao/midi/javax/MidiChannel;->allSoundOff()V

    .line 1481
    :cond_7
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChannel;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1482
    :goto_b
    :try_start_b
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftChannel;->voices:[Lcom/codemao/midi/sun/SoftVoice;

    array-length v3, v2

    if-ge v1, v3, :cond_26

    .line 1483
    aget-object v3, v2, v1

    iget-boolean v3, v3, Lcom/codemao/midi/sun/SoftVoice;->on:Z

    if-eqz v3, :cond_23

    aget-object v3, v2, v1

    iget v3, v3, Lcom/codemao/midi/javax/VoiceStatus;->channel:I

    iget v4, p0, Lcom/codemao/midi/sun/SoftChannel;->channel:I

    if-ne v3, v4, :cond_23

    .line 1484
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/codemao/midi/sun/SoftVoice;->soundOff()V

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1485
    :cond_26
    monitor-exit v0

    return-void

    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_b .. :try_end_2a} :catchall_28

    throw v1
.end method

.method protected applyInstrumentCustomization()V
    .registers 17

    move-object/from16 v0, p0

    .line 711
    iget-object v1, v0, Lcom/codemao/midi/sun/SoftChannel;->cds_control_connections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    if-nez v1, :cond_f

    iget-object v1, v0, Lcom/codemao/midi/sun/SoftChannel;->cds_channelpressure_connections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    if-nez v1, :cond_f

    iget-object v1, v0, Lcom/codemao/midi/sun/SoftChannel;->cds_polypressure_connections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    if-nez v1, :cond_f

    return-void

    .line 717
    :cond_f
    iget-object v1, v0, Lcom/codemao/midi/sun/SoftChannel;->current_instrument:Lcom/codemao/midi/sun/SoftInstrument;

    invoke-virtual {v1}, Lcom/codemao/midi/sun/SoftInstrument;->getSourceInstrument()Lcom/codemao/midi/sun/ModelInstrument;

    move-result-object v1

    .line 718
    invoke-virtual {v1}, Lcom/codemao/midi/sun/ModelInstrument;->getPerformers()[Lcom/codemao/midi/sun/ModelPerformer;

    move-result-object v2

    .line 719
    array-length v3, v2

    new-array v4, v3, [Lcom/codemao/midi/sun/ModelPerformer;

    const/4 v6, 0x0

    :goto_1d
    if-ge v6, v3, :cond_17d

    .line 721
    aget-object v7, v2, v6

    .line 722
    new-instance v8, Lcom/codemao/midi/sun/ModelPerformer;

    invoke-direct {v8}, Lcom/codemao/midi/sun/ModelPerformer;-><init>()V

    .line 723
    invoke-virtual {v7}, Lcom/codemao/midi/sun/ModelPerformer;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/codemao/midi/sun/ModelPerformer;->setName(Ljava/lang/String;)V

    .line 724
    invoke-virtual {v7}, Lcom/codemao/midi/sun/ModelPerformer;->getExclusiveClass()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/codemao/midi/sun/ModelPerformer;->setExclusiveClass(I)V

    .line 725
    invoke-virtual {v7}, Lcom/codemao/midi/sun/ModelPerformer;->getKeyFrom()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/codemao/midi/sun/ModelPerformer;->setKeyFrom(I)V

    .line 726
    invoke-virtual {v7}, Lcom/codemao/midi/sun/ModelPerformer;->getKeyTo()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/codemao/midi/sun/ModelPerformer;->setKeyTo(I)V

    .line 727
    invoke-virtual {v7}, Lcom/codemao/midi/sun/ModelPerformer;->getVelFrom()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/codemao/midi/sun/ModelPerformer;->setVelFrom(I)V

    .line 728
    invoke-virtual {v7}, Lcom/codemao/midi/sun/ModelPerformer;->getVelTo()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/codemao/midi/sun/ModelPerformer;->setVelTo(I)V

    .line 729
    invoke-virtual {v8}, Lcom/codemao/midi/sun/ModelPerformer;->getOscillators()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v7}, Lcom/codemao/midi/sun/ModelPerformer;->getOscillators()Ljava/util/List;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 730
    invoke-virtual {v8}, Lcom/codemao/midi/sun/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v9

    .line 731
    invoke-virtual {v7}, Lcom/codemao/midi/sun/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v7

    .line 730
    invoke-interface {v9, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 732
    aput-object v8, v4, v6

    .line 735
    invoke-virtual {v8}, Lcom/codemao/midi/sun/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v7

    .line 737
    iget-object v8, v0, Lcom/codemao/midi/sun/SoftChannel;->cds_control_connections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    const/4 v9, 0x1

    if-eqz v8, :cond_cb

    .line 738
    iget v8, v0, Lcom/codemao/midi/sun/SoftChannel;->cds_control_number:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 739
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 740
    :cond_7b
    :goto_7b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_bd

    .line 741
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/codemao/midi/sun/ModelConnectionBlock;

    .line 742
    invoke-virtual {v11}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getSources()[Lcom/codemao/midi/sun/ModelSource;

    move-result-object v11

    if-eqz v11, :cond_b6

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 745
    :goto_8f
    array-length v14, v11

    if-ge v12, v14, :cond_b7

    .line 746
    aget-object v14, v11, v12

    .line 747
    invoke-virtual {v14}, Lcom/codemao/midi/sun/ModelSource;->getIdentifier()Lcom/codemao/midi/sun/ModelIdentifier;

    move-result-object v15

    invoke-virtual {v15}, Lcom/codemao/midi/sun/ModelIdentifier;->getObject()Ljava/lang/String;

    move-result-object v15

    const-string v5, "midi_cc"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b3

    .line 748
    invoke-virtual {v14}, Lcom/codemao/midi/sun/ModelSource;->getIdentifier()Lcom/codemao/midi/sun/ModelIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/codemao/midi/sun/ModelIdentifier;->getVariable()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b3

    const/4 v13, 0x1

    :cond_b3
    add-int/lit8 v12, v12, 0x1

    goto :goto_8f

    :cond_b6
    const/4 v13, 0x0

    :cond_b7
    if-eqz v13, :cond_7b

    .line 754
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_7b

    :cond_bd
    const/4 v5, 0x0

    .line 756
    :goto_be
    iget-object v8, v0, Lcom/codemao/midi/sun/SoftChannel;->cds_control_connections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    array-length v10, v8

    if-ge v5, v10, :cond_cb

    .line 757
    aget-object v8, v8, v5

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_be

    .line 760
    :cond_cb
    iget-object v5, v0, Lcom/codemao/midi/sun/SoftChannel;->cds_polypressure_connections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    const-string v8, "midi"

    if-eqz v5, :cond_125

    .line 761
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 762
    :cond_d5
    :goto_d5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_117

    .line 763
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/codemao/midi/sun/ModelConnectionBlock;

    .line 764
    invoke-virtual {v10}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getSources()[Lcom/codemao/midi/sun/ModelSource;

    move-result-object v10

    if-eqz v10, :cond_110

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 767
    :goto_e9
    array-length v13, v10

    if-ge v11, v13, :cond_111

    .line 768
    aget-object v13, v10, v11

    .line 769
    invoke-virtual {v13}, Lcom/codemao/midi/sun/ModelSource;->getIdentifier()Lcom/codemao/midi/sun/ModelIdentifier;

    move-result-object v14

    invoke-virtual {v14}, Lcom/codemao/midi/sun/ModelIdentifier;->getObject()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10d

    .line 771
    invoke-virtual {v13}, Lcom/codemao/midi/sun/ModelSource;->getIdentifier()Lcom/codemao/midi/sun/ModelIdentifier;

    move-result-object v13

    invoke-virtual {v13}, Lcom/codemao/midi/sun/ModelIdentifier;->getVariable()Ljava/lang/String;

    move-result-object v13

    const-string v14, "poly_pressure"

    .line 770
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10d

    const/4 v12, 0x1

    :cond_10d
    add-int/lit8 v11, v11, 0x1

    goto :goto_e9

    :cond_110
    const/4 v12, 0x0

    :cond_111
    if-eqz v12, :cond_d5

    .line 777
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_d5

    :cond_117
    const/4 v5, 0x0

    .line 779
    :goto_118
    iget-object v10, v0, Lcom/codemao/midi/sun/SoftChannel;->cds_polypressure_connections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    array-length v11, v10

    if-ge v5, v11, :cond_125

    .line 780
    aget-object v10, v10, v5

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_118

    .line 784
    :cond_125
    iget-object v5, v0, Lcom/codemao/midi/sun/SoftChannel;->cds_channelpressure_connections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    if-eqz v5, :cond_179

    .line 785
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 786
    :cond_12d
    :goto_12d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_16b

    .line 787
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/codemao/midi/sun/ModelConnectionBlock;

    .line 788
    invoke-virtual {v10}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getSources()[Lcom/codemao/midi/sun/ModelSource;

    move-result-object v10

    if-eqz v10, :cond_164

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 791
    :goto_141
    array-length v13, v10

    if-ge v11, v13, :cond_165

    .line 792
    aget-object v13, v10, v11

    invoke-virtual {v13}, Lcom/codemao/midi/sun/ModelSource;->getIdentifier()Lcom/codemao/midi/sun/ModelIdentifier;

    move-result-object v13

    .line 793
    invoke-virtual {v13}, Lcom/codemao/midi/sun/ModelIdentifier;->getObject()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_161

    .line 794
    invoke-virtual {v13}, Lcom/codemao/midi/sun/ModelIdentifier;->getVariable()Ljava/lang/String;

    move-result-object v13

    const-string v14, "channel_pressure"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_161

    const/4 v12, 0x1

    :cond_161
    add-int/lit8 v11, v11, 0x1

    goto :goto_141

    :cond_164
    const/4 v12, 0x0

    :cond_165
    if-eqz v12, :cond_12d

    .line 800
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_12d

    :cond_16b
    const/4 v5, 0x0

    .line 802
    :goto_16c
    iget-object v8, v0, Lcom/codemao/midi/sun/SoftChannel;->cds_channelpressure_connections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    array-length v9, v8

    if-ge v5, v9, :cond_179

    .line 803
    aget-object v8, v8, v5

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_16c

    :cond_179
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1d

    .line 808
    :cond_17d
    new-instance v2, Lcom/codemao/midi/sun/SoftInstrument;

    invoke-direct {v2, v1, v4}, Lcom/codemao/midi/sun/SoftInstrument;-><init>(Lcom/codemao/midi/sun/ModelInstrument;[Lcom/codemao/midi/sun/ModelPerformer;)V

    iput-object v2, v0, Lcom/codemao/midi/sun/SoftChannel;->current_instrument:Lcom/codemao/midi/sun/SoftInstrument;

    return-void
.end method

.method public controlChange(II)V
    .registers 12

    .line 1059
    invoke-static {p1}, Lcom/codemao/midi/sun/SoftChannel;->restrict7Bit(I)I

    move-result p1

    .line 1060
    invoke-static {p2}, Lcom/codemao/midi/sun/SoftChannel;->restrict7Bit(I)I

    move-result p2

    .line 1061
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChannel;->current_mixer:Lcom/codemao/midi/sun/ModelChannelMixer;

    if-eqz v0, :cond_f

    .line 1062
    invoke-interface {v0, p1, p2}, Lcom/codemao/midi/javax/MidiChannel;->controlChange(II)V

    .line 1064
    :cond_f
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChannel;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1b5

    const/16 v1, 0x26

    const/4 v3, 0x6

    const/16 v4, 0x3fff

    const/4 v5, 0x1

    if-eq p1, v3, :cond_151

    if-eq p1, v1, :cond_151

    const/16 v6, 0x40

    packed-switch p1, :pswitch_data_22e

    const/16 v7, 0x7f

    packed-switch p1, :pswitch_data_238

    packed-switch p1, :pswitch_data_248

    goto/16 :goto_1ec

    .line 1214
    :pswitch_2f  #0x7f
    :try_start_2f
    invoke-virtual {p0, v2}, Lcom/codemao/midi/sun/SoftChannel;->setMono(Z)V

    goto/16 :goto_1ec

    :pswitch_34  #0x7e
    if-ne p2, v5, :cond_1ec

    .line 1211
    invoke-virtual {p0, v5}, Lcom/codemao/midi/sun/SoftChannel;->setMono(Z)V

    goto/16 :goto_1ec

    .line 1207
    :pswitch_3b  #0x7d
    invoke-virtual {p0, v5}, Lcom/codemao/midi/sun/SoftChannel;->setOmni(Z)V

    goto/16 :goto_1ec

    .line 1204
    :pswitch_40  #0x7c
    invoke-virtual {p0, v2}, Lcom/codemao/midi/sun/SoftChannel;->setOmni(Z)V

    goto/16 :goto_1ec

    .line 1201
    :pswitch_45  #0x7b
    invoke-virtual {p0}, Lcom/codemao/midi/sun/SoftChannel;->allNotesOff()V

    goto/16 :goto_1ec

    :pswitch_4a  #0x7a
    if-lt p2, v6, :cond_4d

    goto :goto_4e

    :cond_4d
    const/4 v5, 0x0

    .line 1198
    :goto_4e
    invoke-virtual {p0, v5}, Lcom/codemao/midi/sun/SoftChannel;->localControl(Z)Z

    goto/16 :goto_1ec

    :pswitch_53  #0x79
    if-ne p2, v7, :cond_56

    goto :goto_57

    :cond_56
    const/4 v5, 0x0

    .line 1195
    :goto_57
    invoke-virtual {p0, v5}, Lcom/codemao/midi/sun/SoftChannel;->resetAllControllers(Z)V

    goto/16 :goto_1ec

    .line 1192
    :pswitch_5c  #0x78
    invoke-virtual {p0}, Lcom/codemao/midi/sun/SoftChannel;->allSoundOff()V

    goto/16 :goto_1ec

    .line 1188
    :pswitch_61  #0x65
    iget v1, p0, Lcom/codemao/midi/sun/SoftChannel;->rpn_control:I

    and-int/2addr v1, v7

    shl-int/lit8 v3, p2, 0x7

    add-int/2addr v1, v3

    iput v1, p0, Lcom/codemao/midi/sun/SoftChannel;->rpn_control:I

    .line 1189
    iput v4, p0, Lcom/codemao/midi/sun/SoftChannel;->nrpn_control:I

    goto/16 :goto_1ec

    .line 1184
    :pswitch_6d  #0x64
    iget v1, p0, Lcom/codemao/midi/sun/SoftChannel;->rpn_control:I

    and-int/lit16 v1, v1, 0x3f80

    add-int/2addr v1, p2

    iput v1, p0, Lcom/codemao/midi/sun/SoftChannel;->rpn_control:I

    .line 1185
    iput v4, p0, Lcom/codemao/midi/sun/SoftChannel;->nrpn_control:I

    goto/16 :goto_1ec

    .line 1180
    :pswitch_78  #0x63
    iget v1, p0, Lcom/codemao/midi/sun/SoftChannel;->nrpn_control:I

    and-int/2addr v1, v7

    shl-int/lit8 v3, p2, 0x7

    add-int/2addr v1, v3

    iput v1, p0, Lcom/codemao/midi/sun/SoftChannel;->nrpn_control:I

    .line 1181
    iput v4, p0, Lcom/codemao/midi/sun/SoftChannel;->rpn_control:I

    goto/16 :goto_1ec

    .line 1176
    :pswitch_84  #0x62
    iget v1, p0, Lcom/codemao/midi/sun/SoftChannel;->nrpn_control:I

    and-int/lit16 v1, v1, 0x3f80

    add-int/2addr v1, p2

    iput v1, p0, Lcom/codemao/midi/sun/SoftChannel;->nrpn_control:I

    .line 1177
    iput v4, p0, Lcom/codemao/midi/sun/SoftChannel;->rpn_control:I

    goto/16 :goto_1ec

    :pswitch_8f  #0x42
    if-lt p2, v6, :cond_93

    const/4 v1, 0x1

    goto :goto_94

    :cond_93
    const/4 v1, 0x0

    :goto_94
    if-eqz v1, :cond_b7

    const/4 v3, 0x0

    .line 1155
    :goto_97
    iget-object v4, p0, Lcom/codemao/midi/sun/SoftChannel;->voices:[Lcom/codemao/midi/sun/SoftVoice;

    array-length v6, v4

    if-ge v3, v6, :cond_b7

    .line 1156
    aget-object v6, v4, v3

    iget-boolean v6, v6, Lcom/codemao/midi/javax/VoiceStatus;->active:Z

    if-eqz v6, :cond_b4

    aget-object v6, v4, v3

    iget-boolean v6, v6, Lcom/codemao/midi/sun/SoftVoice;->on:Z

    if-eqz v6, :cond_b4

    aget-object v6, v4, v3

    iget v6, v6, Lcom/codemao/midi/javax/VoiceStatus;->channel:I

    iget v7, p0, Lcom/codemao/midi/sun/SoftChannel;->channel:I

    if-ne v6, v7, :cond_b4

    .line 1158
    aget-object v4, v4, v3

    iput-boolean v5, v4, Lcom/codemao/midi/sun/SoftVoice;->sostenuto:Z

    :cond_b4
    add-int/lit8 v3, v3, 0x1

    goto :goto_97

    :cond_b7
    if-nez v1, :cond_1ec

    const/4 v1, 0x0

    .line 1163
    :goto_ba
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftChannel;->voices:[Lcom/codemao/midi/sun/SoftVoice;

    array-length v4, v3

    if-ge v1, v4, :cond_1ec

    .line 1164
    aget-object v4, v3, v1

    iget-boolean v4, v4, Lcom/codemao/midi/javax/VoiceStatus;->active:Z

    if-eqz v4, :cond_e6

    aget-object v4, v3, v1

    iget-boolean v4, v4, Lcom/codemao/midi/sun/SoftVoice;->sostenuto:Z

    if-eqz v4, :cond_e6

    aget-object v4, v3, v1

    iget v4, v4, Lcom/codemao/midi/javax/VoiceStatus;->channel:I

    iget v6, p0, Lcom/codemao/midi/sun/SoftChannel;->channel:I

    if-ne v4, v6, :cond_e6

    .line 1166
    aget-object v4, v3, v1

    iput-boolean v2, v4, Lcom/codemao/midi/sun/SoftVoice;->sostenuto:Z

    .line 1167
    aget-object v4, v3, v1

    iget-boolean v4, v4, Lcom/codemao/midi/sun/SoftVoice;->on:Z

    if-nez v4, :cond_e6

    .line 1168
    aget-object v4, v3, v1

    iput-boolean v5, v4, Lcom/codemao/midi/sun/SoftVoice;->on:Z

    .line 1169
    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Lcom/codemao/midi/sun/SoftVoice;->noteOff(I)V

    :cond_e6
    add-int/lit8 v1, v1, 0x1

    goto :goto_ba

    :pswitch_e9  #0x41
    if-lt p2, v6, :cond_ec

    goto :goto_ed

    :cond_ec
    const/4 v5, 0x0

    .line 1144
    :goto_ed
    iput-boolean v5, p0, Lcom/codemao/midi/sun/SoftChannel;->portamento:Z

    .line 1145
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftChannel;->portamento_lastnote:[I

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 1150
    iput v2, p0, Lcom/codemao/midi/sun/SoftChannel;->portamento_lastnote_ix:I

    goto/16 :goto_1ec

    :pswitch_f8  #0x40
    if-lt p2, v6, :cond_fc

    const/4 v1, 0x1

    goto :goto_fd

    :cond_fc
    const/4 v1, 0x0

    .line 1122
    :goto_fd
    iget-boolean v3, p0, Lcom/codemao/midi/sun/SoftChannel;->sustain:Z

    if-eq v3, v1, :cond_1ec

    .line 1123
    iput-boolean v1, p0, Lcom/codemao/midi/sun/SoftChannel;->sustain:Z

    if-nez v1, :cond_135

    const/4 v1, 0x0

    .line 1125
    :goto_106
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftChannel;->voices:[Lcom/codemao/midi/sun/SoftVoice;

    array-length v4, v3

    if-ge v1, v4, :cond_1ec

    .line 1126
    aget-object v4, v3, v1

    iget-boolean v4, v4, Lcom/codemao/midi/javax/VoiceStatus;->active:Z

    if-eqz v4, :cond_132

    aget-object v4, v3, v1

    iget-boolean v4, v4, Lcom/codemao/midi/sun/SoftVoice;->sustain:Z

    if-eqz v4, :cond_132

    aget-object v4, v3, v1

    iget v4, v4, Lcom/codemao/midi/javax/VoiceStatus;->channel:I

    iget v6, p0, Lcom/codemao/midi/sun/SoftChannel;->channel:I

    if-ne v4, v6, :cond_132

    .line 1128
    aget-object v4, v3, v1

    iput-boolean v2, v4, Lcom/codemao/midi/sun/SoftVoice;->sustain:Z

    .line 1129
    aget-object v4, v3, v1

    iget-boolean v4, v4, Lcom/codemao/midi/sun/SoftVoice;->on:Z

    if-nez v4, :cond_132

    .line 1130
    aget-object v4, v3, v1

    iput-boolean v5, v4, Lcom/codemao/midi/sun/SoftVoice;->on:Z

    .line 1131
    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Lcom/codemao/midi/sun/SoftVoice;->noteOff(I)V

    :cond_132
    add-int/lit8 v1, v1, 0x1

    goto :goto_106

    :cond_135
    const/4 v1, 0x0

    .line 1136
    :goto_136
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftChannel;->voices:[Lcom/codemao/midi/sun/SoftVoice;

    array-length v4, v3

    if-ge v1, v4, :cond_1ec

    .line 1137
    aget-object v4, v3, v1

    iget-boolean v4, v4, Lcom/codemao/midi/javax/VoiceStatus;->active:Z

    if-eqz v4, :cond_14e

    aget-object v4, v3, v1

    iget v4, v4, Lcom/codemao/midi/javax/VoiceStatus;->channel:I

    iget v5, p0, Lcom/codemao/midi/sun/SoftChannel;->channel:I

    if-ne v4, v5, :cond_14e

    .line 1138
    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/codemao/midi/sun/SoftVoice;->redamp()V

    :cond_14e
    add-int/lit8 v1, v1, 0x1

    goto :goto_136

    .line 1089
    :cond_151
    :pswitch_151  #0x60, 0x61
    iget v6, p0, Lcom/codemao/midi/sun/SoftChannel;->nrpn_control:I

    if-eq v6, v4, :cond_166

    .line 1090
    iget-object v7, p0, Lcom/codemao/midi/sun/SoftChannel;->co_midi_nrpn_nrpn_i:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    if-eqz v6, :cond_166

    .line 1092
    aget v6, v6, v2

    goto :goto_167

    :cond_166
    const/4 v6, 0x0

    .line 1094
    :goto_167
    iget v7, p0, Lcom/codemao/midi/sun/SoftChannel;->rpn_control:I

    if-eq v7, v4, :cond_17b

    .line 1095
    iget-object v8, p0, Lcom/codemao/midi/sun/SoftChannel;->co_midi_rpn_rpn_i:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    if-eqz v7, :cond_17b

    .line 1097
    aget v6, v7, v2

    :cond_17b
    if-ne p1, v3, :cond_184

    and-int/lit8 v1, v6, 0x7f

    shl-int/lit8 v3, p2, 0x7

    add-int v6, v1, v3

    goto :goto_1a6

    :cond_184
    if-ne p1, v1, :cond_18b

    and-int/lit16 v1, v6, 0x3f80

    add-int v6, v1, p2

    goto :goto_1a6

    :cond_18b
    const/16 v1, 0x61

    const/16 v3, 0x60

    if-eq p1, v3, :cond_193

    if-ne p1, v1, :cond_1a6

    .line 1106
    :cond_193
    iget v7, p0, Lcom/codemao/midi/sun/SoftChannel;->rpn_control:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_19e

    const/4 v8, 0x3

    if-eq v7, v8, :cond_19e

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1a0

    :cond_19e
    const/16 v5, 0x80

    :cond_1a0
    if-ne p1, v3, :cond_1a3

    add-int/2addr v6, v5

    :cond_1a3
    if-ne p1, v1, :cond_1a6

    sub-int/2addr v6, v5

    .line 1114
    :cond_1a6
    :goto_1a6
    iget v1, p0, Lcom/codemao/midi/sun/SoftChannel;->nrpn_control:I

    if-eq v1, v4, :cond_1ad

    .line 1115
    invoke-virtual {p0, v1, v6}, Lcom/codemao/midi/sun/SoftChannel;->nrpnChange(II)V

    .line 1116
    :cond_1ad
    iget v1, p0, Lcom/codemao/midi/sun/SoftChannel;->rpn_control:I

    if-eq v1, v4, :cond_1ec

    .line 1117
    invoke-virtual {p0, v1, v6}, Lcom/codemao/midi/sun/SoftChannel;->rpnChange(II)V

    goto :goto_1ec

    :cond_1b5
    int-to-double v3, p2

    const-wide/high16 v5, 0x4060000000000000L  # 128.0

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x4000000000000000L  # 2.0

    mul-double v3, v3, v5

    const-wide/high16 v5, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v3, v5

    .line 1076
    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    neg-double v3, v3

    const-wide v5, 0x400921fb54442d18L  # Math.PI

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x3fe0000000000000L  # 0.5

    add-double/2addr v3, v5

    const-wide v5, 0x40f86a0000000000L  # 100000.0

    .line 1077
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    const-wide/high16 v5, 0x4059000000000000L  # 100.0

    div-double/2addr v3, v5

    div-double/2addr v3, v5

    const-wide v5, 0x408f400000000000L  # 1000.0

    mul-double v3, v3, v5

    .line 1081
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftChannel;->synthesizer:Lcom/codemao/midi/sun/SoftSynthesizer;

    invoke-virtual {v1}, Lcom/codemao/midi/sun/SoftSynthesizer;->getControlRate()F

    move-result v1

    float-to-double v5, v1

    div-double/2addr v3, v5

    .line 1082
    iput-wide v3, p0, Lcom/codemao/midi/sun/SoftChannel;->portamento_time:D

    .line 1221
    :cond_1ec
    :goto_1ec
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftChannel;->co_midi_cc_cc:[[D

    aget-object v1, v1, p1

    int-to-double v3, p2

    const-wide/high16 v5, 0x3f80000000000000L  # 0.0078125

    mul-double v3, v3, v5

    aput-wide v3, v1, v2

    if-nez p1, :cond_1ff

    shl-int/lit8 p1, p2, 0x7

    .line 1224
    iput p1, p0, Lcom/codemao/midi/sun/SoftChannel;->bank:I

    .line 1225
    monitor-exit v0

    return-void

    :cond_1ff
    const/16 v1, 0x20

    if-ne p1, v1, :cond_20c

    .line 1229
    iget p1, p0, Lcom/codemao/midi/sun/SoftChannel;->bank:I

    and-int/lit16 p1, p1, 0x3f80

    add-int/2addr p1, p2

    iput p1, p0, Lcom/codemao/midi/sun/SoftChannel;->bank:I

    .line 1230
    monitor-exit v0

    return-void

    .line 1233
    :cond_20c
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftChannel;->controller:[I

    aput p2, v3, p1

    if-ge p1, v1, :cond_216

    add-int/lit8 v1, p1, 0x20

    .line 1235
    aput v2, v3, v1

    .line 1237
    :cond_216
    :goto_216
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftChannel;->voices:[Lcom/codemao/midi/sun/SoftVoice;

    array-length v3, v1

    if-ge v2, v3, :cond_229

    .line 1238
    aget-object v3, v1, v2

    iget-boolean v3, v3, Lcom/codemao/midi/javax/VoiceStatus;->active:Z

    if-eqz v3, :cond_226

    .line 1239
    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2}, Lcom/codemao/midi/sun/SoftVoice;->controlChange(II)V

    :cond_226
    add-int/lit8 v2, v2, 0x1

    goto :goto_216

    .line 1241
    :cond_229
    monitor-exit v0

    return-void

    :catchall_22b
    move-exception p1

    monitor-exit v0
    :try_end_22d
    .catchall {:try_start_2f .. :try_end_22d} :catchall_22b

    throw p1

    :pswitch_data_22e
    .packed-switch 0x40
        :pswitch_f8  #00000040
        :pswitch_e9  #00000041
        :pswitch_8f  #00000042
    .end packed-switch

    :pswitch_data_238
    .packed-switch 0x60
        :pswitch_151  #00000060
        :pswitch_151  #00000061
        :pswitch_84  #00000062
        :pswitch_78  #00000063
        :pswitch_6d  #00000064
        :pswitch_61  #00000065
    .end packed-switch

    :pswitch_data_248
    .packed-switch 0x78
        :pswitch_5c  #00000078
        :pswitch_53  #00000079
        :pswitch_4a  #0000007a
        :pswitch_45  #0000007b
        :pswitch_40  #0000007c
        :pswitch_3b  #0000007d
        :pswitch_34  #0000007e
        :pswitch_2f  #0000007f
    .end packed-switch
.end method

.method public controlChangePerNote(III)V
    .registers 12

    .line 1014
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChannel;->keybasedcontroller_active:[[Z

    const/16 v1, 0x80

    if-nez v0, :cond_e

    new-array v0, v1, [[Z

    .line 1015
    iput-object v0, p0, Lcom/codemao/midi/sun/SoftChannel;->keybasedcontroller_active:[[Z

    new-array v0, v1, [[D

    .line 1016
    iput-object v0, p0, Lcom/codemao/midi/sun/SoftChannel;->keybasedcontroller_value:[[D

    .line 1018
    :cond_e
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChannel;->keybasedcontroller_active:[[Z

    aget-object v2, v0, p1

    const/4 v3, 0x0

    if-nez v2, :cond_2b

    new-array v2, v1, [Z

    .line 1019
    aput-object v2, v0, p1

    .line 1020
    aget-object v0, v0, p1

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([ZZ)V

    .line 1021
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChannel;->keybasedcontroller_value:[[D

    new-array v1, v1, [D

    aput-object v1, v0, p1

    .line 1022
    aget-object v0, v0, p1

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    :cond_2b
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p3, v0, :cond_36

    .line 1026
    iget-object p3, p0, Lcom/codemao/midi/sun/SoftChannel;->keybasedcontroller_active:[[Z

    aget-object p1, p3, p1

    aput-boolean v3, p1, p2

    goto :goto_46

    .line 1028
    :cond_36
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftChannel;->keybasedcontroller_active:[[Z

    aget-object v2, v2, p1

    aput-boolean v1, v2, p2

    .line 1029
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftChannel;->keybasedcontroller_value:[[D

    aget-object p1, v2, p1

    int-to-double v4, p3

    const-wide/high16 v6, 0x4060000000000000L  # 128.0

    div-double/2addr v4, v6

    aput-wide v4, p1, p2

    :goto_46
    const/16 p1, 0x78

    if-ge p2, p1, :cond_5d

    .line 1033
    :goto_4a
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftChannel;->voices:[Lcom/codemao/midi/sun/SoftVoice;

    array-length p3, p1

    if-ge v3, p3, :cond_8a

    .line 1034
    aget-object p3, p1, v3

    iget-boolean p3, p3, Lcom/codemao/midi/javax/VoiceStatus;->active:Z

    if-eqz p3, :cond_5a

    .line 1035
    aget-object p1, p1, v3

    invoke-virtual {p1, p2, v0}, Lcom/codemao/midi/sun/SoftVoice;->controlChange(II)V

    :cond_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    :cond_5d
    if-ne p2, p1, :cond_72

    .line 1037
    :goto_5f
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftChannel;->voices:[Lcom/codemao/midi/sun/SoftVoice;

    array-length p2, p1

    if-ge v3, p2, :cond_8a

    .line 1038
    aget-object p2, p1, v3

    iget-boolean p2, p2, Lcom/codemao/midi/javax/VoiceStatus;->active:Z

    if-eqz p2, :cond_6f

    .line 1039
    aget-object p1, p1, v3

    invoke-virtual {p1, v1, v0}, Lcom/codemao/midi/sun/SoftVoice;->rpnChange(II)V

    :cond_6f
    add-int/lit8 v3, v3, 0x1

    goto :goto_5f

    :cond_72
    const/16 p1, 0x79

    if-ne p2, p1, :cond_8a

    .line 1041
    :goto_76
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftChannel;->voices:[Lcom/codemao/midi/sun/SoftVoice;

    array-length p2, p1

    if-ge v3, p2, :cond_8a

    .line 1042
    aget-object p2, p1, v3

    iget-boolean p2, p2, Lcom/codemao/midi/javax/VoiceStatus;->active:Z

    if-eqz p2, :cond_87

    .line 1043
    aget-object p1, p1, v3

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0}, Lcom/codemao/midi/sun/SoftVoice;->rpnChange(II)V

    :cond_87
    add-int/lit8 v3, v3, 0x1

    goto :goto_76

    :cond_8a
    return-void
.end method

.method protected initVoice(Lcom/codemao/midi/sun/SoftVoice;Lcom/codemao/midi/sun/SoftPerformer;IIII[Lcom/codemao/midi/sun/ModelConnectionBlock;Lcom/codemao/midi/sun/ModelChannelMixer;Z)V
    .registers 14

    .line 342
    iget-boolean v0, p1, Lcom/codemao/midi/javax/VoiceStatus;->active:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    .line 344
    iput-object p0, p1, Lcom/codemao/midi/sun/SoftVoice;->stealer_channel:Lcom/codemao/midi/sun/SoftChannel;

    .line 345
    iput-object p2, p1, Lcom/codemao/midi/sun/SoftVoice;->stealer_performer:Lcom/codemao/midi/sun/SoftPerformer;

    .line 346
    iput p3, p1, Lcom/codemao/midi/sun/SoftVoice;->stealer_voiceID:I

    .line 347
    iput p4, p1, Lcom/codemao/midi/sun/SoftVoice;->stealer_noteNumber:I

    .line 348
    iput p5, p1, Lcom/codemao/midi/sun/SoftVoice;->stealer_velocity:I

    .line 349
    iput-object p7, p1, Lcom/codemao/midi/sun/SoftVoice;->stealer_extendedConnectionBlocks:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    .line 350
    iput-object p8, p1, Lcom/codemao/midi/sun/SoftVoice;->stealer_channelmixer:Lcom/codemao/midi/sun/ModelChannelMixer;

    .line 351
    iput-boolean p9, p1, Lcom/codemao/midi/sun/SoftVoice;->stealer_releaseTriggered:Z

    .line 352
    :goto_15
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftChannel;->voices:[Lcom/codemao/midi/sun/SoftVoice;

    array-length p3, p2

    if-ge v1, p3, :cond_30

    .line 353
    aget-object p3, p2, v1

    iget-boolean p3, p3, Lcom/codemao/midi/javax/VoiceStatus;->active:Z

    if-eqz p3, :cond_2d

    aget-object p3, p2, v1

    iget p3, p3, Lcom/codemao/midi/sun/SoftVoice;->voiceID:I

    iget p4, p1, Lcom/codemao/midi/sun/SoftVoice;->voiceID:I

    if-ne p3, p4, :cond_2d

    .line 354
    aget-object p2, p2, v1

    invoke-virtual {p2}, Lcom/codemao/midi/sun/SoftVoice;->soundOff()V

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_30
    return-void

    .line 358
    :cond_31
    iput-object p7, p1, Lcom/codemao/midi/sun/SoftVoice;->extendedConnectionBlocks:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    .line 359
    iput-object p8, p1, Lcom/codemao/midi/sun/SoftVoice;->channelmixer:Lcom/codemao/midi/sun/ModelChannelMixer;

    .line 360
    iput-boolean p9, p1, Lcom/codemao/midi/sun/SoftVoice;->releaseTriggered:Z

    .line 361
    iput p3, p1, Lcom/codemao/midi/sun/SoftVoice;->voiceID:I

    .line 362
    iget-object p3, p0, Lcom/codemao/midi/sun/SoftChannel;->tuning:Lcom/codemao/midi/sun/SoftTuning;

    iput-object p3, p1, Lcom/codemao/midi/sun/SoftVoice;->tuning:Lcom/codemao/midi/sun/SoftTuning;

    .line 363
    iget p3, p2, Lcom/codemao/midi/sun/SoftPerformer;->exclusiveClass:I

    iput p3, p1, Lcom/codemao/midi/sun/SoftVoice;->exclusiveClass:I

    .line 364
    iput-object p0, p1, Lcom/codemao/midi/sun/SoftVoice;->softchannel:Lcom/codemao/midi/sun/SoftChannel;

    .line 365
    iget p3, p0, Lcom/codemao/midi/sun/SoftChannel;->channel:I

    iput p3, p1, Lcom/codemao/midi/javax/VoiceStatus;->channel:I

    .line 369
    iput-object p2, p1, Lcom/codemao/midi/sun/SoftVoice;->performer:Lcom/codemao/midi/sun/SoftPerformer;

    .line 370
    iget-object p2, p1, Lcom/codemao/midi/sun/SoftVoice;->objects:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 371
    iget-object p2, p1, Lcom/codemao/midi/sun/SoftVoice;->objects:Ljava/util/Map;

    iget-object p3, p0, Lcom/codemao/midi/sun/SoftChannel;->co_midi:[Lcom/codemao/midi/sun/SoftControl;

    aget-object p3, p3, p4

    const-string p7, "midi"

    invoke-interface {p2, p7, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    iget-object p2, p1, Lcom/codemao/midi/sun/SoftVoice;->objects:Ljava/util/Map;

    iget-object p3, p0, Lcom/codemao/midi/sun/SoftChannel;->co_midi_cc:Lcom/codemao/midi/sun/SoftControl;

    const-string p7, "midi_cc"

    invoke-interface {p2, p7, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iget-object p2, p1, Lcom/codemao/midi/sun/SoftVoice;->objects:Ljava/util/Map;

    iget-object p3, p0, Lcom/codemao/midi/sun/SoftChannel;->co_midi_rpn:Lcom/codemao/midi/sun/SoftControl;

    const-string p7, "midi_rpn"

    invoke-interface {p2, p7, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    iget-object p2, p1, Lcom/codemao/midi/sun/SoftVoice;->objects:Ljava/util/Map;

    iget-object p3, p0, Lcom/codemao/midi/sun/SoftChannel;->co_midi_nrpn:Lcom/codemao/midi/sun/SoftControl;

    const-string p7, "midi_nrpn"

    invoke-interface {p2, p7, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    invoke-virtual {p1, p4, p5, p6}, Lcom/codemao/midi/sun/SoftVoice;->noteOn(III)V

    .line 376
    iget-boolean p2, p0, Lcom/codemao/midi/sun/SoftChannel;->mute:Z

    invoke-virtual {p1, p2}, Lcom/codemao/midi/sun/SoftVoice;->setMute(Z)V

    .line 377
    iget-boolean p2, p0, Lcom/codemao/midi/sun/SoftChannel;->solomute:Z

    invoke-virtual {p1, p2}, Lcom/codemao/midi/sun/SoftVoice;->setSoloMute(Z)V

    if-eqz p9, :cond_84

    return-void

    .line 380
    :cond_84
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftChannel;->controller:[I

    const/16 p3, 0x54

    aget p5, p2, p3

    const-wide/high16 p6, 0x3f80000000000000L  # 0.0078125

    const-wide/high16 p8, 0x4059000000000000L  # 100.0

    const/4 v0, 0x1

    if-eqz p5, :cond_a6

    .line 381
    iget-object p4, p1, Lcom/codemao/midi/sun/SoftVoice;->co_noteon_keynumber:[D

    iget-object p5, p0, Lcom/codemao/midi/sun/SoftChannel;->tuning:Lcom/codemao/midi/sun/SoftTuning;

    aget p2, p2, p3

    .line 382
    invoke-virtual {p5, p2}, Lcom/codemao/midi/sun/SoftTuning;->getTuning(I)D

    move-result-wide v2

    div-double/2addr v2, p8

    mul-double v2, v2, p6

    aput-wide v2, p4, v1

    .line 384
    iput-boolean v0, p1, Lcom/codemao/midi/sun/SoftVoice;->portamento:Z

    .line 385
    invoke-virtual {p0, p3, v1}, Lcom/codemao/midi/sun/SoftChannel;->controlChange(II)V

    goto :goto_e8

    .line 386
    :cond_a6
    iget-boolean p2, p0, Lcom/codemao/midi/sun/SoftChannel;->portamento:Z

    if-eqz p2, :cond_e8

    .line 387
    iget-boolean p2, p0, Lcom/codemao/midi/sun/SoftChannel;->mono:Z

    if-eqz p2, :cond_ce

    .line 388
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftChannel;->portamento_lastnote:[I

    aget p5, p2, v1

    const/4 v2, -0x1

    if-eq p5, v2, :cond_c9

    .line 389
    iget-object p5, p1, Lcom/codemao/midi/sun/SoftVoice;->co_noteon_keynumber:[D

    iget-object v2, p0, Lcom/codemao/midi/sun/SoftChannel;->tuning:Lcom/codemao/midi/sun/SoftTuning;

    aget p2, p2, v1

    .line 390
    invoke-virtual {v2, p2}, Lcom/codemao/midi/sun/SoftTuning;->getTuning(I)D

    move-result-wide v2

    div-double/2addr v2, p8

    mul-double v2, v2, p6

    aput-wide v2, p5, v1

    .line 392
    iput-boolean v0, p1, Lcom/codemao/midi/sun/SoftVoice;->portamento:Z

    .line 393
    invoke-virtual {p0, p3, v1}, Lcom/codemao/midi/sun/SoftChannel;->controlChange(II)V

    .line 395
    :cond_c9
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftChannel;->portamento_lastnote:[I

    aput p4, p1, v1

    goto :goto_e8

    .line 397
    :cond_ce
    iget p2, p0, Lcom/codemao/midi/sun/SoftChannel;->portamento_lastnote_ix:I

    if-eqz p2, :cond_e8

    sub-int/2addr p2, v0

    .line 398
    iput p2, p0, Lcom/codemao/midi/sun/SoftChannel;->portamento_lastnote_ix:I

    .line 399
    iget-object p3, p1, Lcom/codemao/midi/sun/SoftVoice;->co_noteon_keynumber:[D

    iget-object p4, p0, Lcom/codemao/midi/sun/SoftChannel;->tuning:Lcom/codemao/midi/sun/SoftTuning;

    iget-object p5, p0, Lcom/codemao/midi/sun/SoftChannel;->portamento_lastnote:[I

    aget p2, p5, p2

    .line 400
    invoke-virtual {p4, p2}, Lcom/codemao/midi/sun/SoftTuning;->getTuning(I)D

    move-result-wide p4

    div-double/2addr p4, p8

    mul-double p4, p4, p6

    aput-wide p4, p3, v1

    .line 404
    iput-boolean v0, p1, Lcom/codemao/midi/sun/SoftVoice;->portamento:Z

    :cond_e8
    :goto_e8
    return-void
.end method

.method public localControl(Z)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public mapChannelPressureToDestination([I[I)V
    .registers 6

    const/4 v0, 0x0

    .line 961
    iput-object v0, p0, Lcom/codemao/midi/sun/SoftChannel;->current_instrument:Lcom/codemao/midi/sun/SoftInstrument;

    .line 962
    array-length v1, p1

    if-nez v1, :cond_9

    .line 963
    iput-object v0, p0, Lcom/codemao/midi/sun/SoftChannel;->cds_channelpressure_connections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    return-void

    .line 966
    :cond_9
    new-instance v0, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v1, "midi"

    const-string v2, "channel_pressure"

    invoke-direct {v0, v1, v2}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    invoke-direct {p0, v0, p1, p2}, Lcom/codemao/midi/sun/SoftChannel;->createModelConnections(Lcom/codemao/midi/sun/ModelIdentifier;[I[I)[Lcom/codemao/midi/sun/ModelConnectionBlock;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/midi/sun/SoftChannel;->cds_channelpressure_connections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    return-void
.end method

.method public mapControlToDestination(I[I[I)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_8

    const/16 v1, 0x1f

    if-le p1, v1, :cond_11

    :cond_8
    const/16 v1, 0x40

    if-lt p1, v1, :cond_2d

    const/16 v1, 0x5f

    if-le p1, v1, :cond_11

    goto :goto_2d

    .line 980
    :cond_11
    iput-object v0, p0, Lcom/codemao/midi/sun/SoftChannel;->current_instrument:Lcom/codemao/midi/sun/SoftInstrument;

    .line 981
    iput p1, p0, Lcom/codemao/midi/sun/SoftChannel;->cds_control_number:I

    .line 982
    array-length v1, p2

    if-nez v1, :cond_1b

    .line 983
    iput-object v0, p0, Lcom/codemao/midi/sun/SoftChannel;->cds_control_connections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    return-void

    .line 986
    :cond_1b
    new-instance v0, Lcom/codemao/midi/sun/ModelIdentifier;

    .line 988
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "midi_cc"

    invoke-direct {v0, v1, p1}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    invoke-direct {p0, v0, p2, p3}, Lcom/codemao/midi/sun/SoftChannel;->createModelConnections(Lcom/codemao/midi/sun/ModelIdentifier;[I[I)[Lcom/codemao/midi/sun/ModelConnectionBlock;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/midi/sun/SoftChannel;->cds_control_connections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    return-void

    .line 976
    :cond_2d
    :goto_2d
    iput-object v0, p0, Lcom/codemao/midi/sun/SoftChannel;->cds_control_connections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    return-void
.end method

.method public mapPolyPressureToDestination([I[I)V
    .registers 6

    const/4 v0, 0x0

    .line 949
    iput-object v0, p0, Lcom/codemao/midi/sun/SoftChannel;->current_instrument:Lcom/codemao/midi/sun/SoftInstrument;

    .line 950
    array-length v1, p1

    if-nez v1, :cond_9

    .line 951
    iput-object v0, p0, Lcom/codemao/midi/sun/SoftChannel;->cds_polypressure_connections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    return-void

    .line 954
    :cond_9
    new-instance v0, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v1, "midi"

    const-string v2, "poly_pressure"

    invoke-direct {v0, v1, v2}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    invoke-direct {p0, v0, p1, p2}, Lcom/codemao/midi/sun/SoftChannel;->createModelConnections(Lcom/codemao/midi/sun/ModelIdentifier;[I[I)[Lcom/codemao/midi/sun/ModelConnectionBlock;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/midi/sun/SoftChannel;->cds_polypressure_connections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    return-void
.end method

.method public noteOff(II)V
    .registers 4

    .line 548
    invoke-static {p1}, Lcom/codemao/midi/sun/SoftChannel;->restrict7Bit(I)I

    move-result p1

    .line 549
    invoke-static {p2}, Lcom/codemao/midi/sun/SoftChannel;->restrict7Bit(I)I

    move-result p2

    .line 550
    invoke-direct {p0, p1, p2}, Lcom/codemao/midi/sun/SoftChannel;->noteOff_internal(II)V

    .line 552
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChannel;->current_mixer:Lcom/codemao/midi/sun/ModelChannelMixer;

    if-eqz v0, :cond_12

    .line 553
    invoke-interface {v0, p1, p2}, Lcom/codemao/midi/javax/MidiChannel;->noteOff(II)V

    :cond_12
    return-void
.end method

.method public noteOn(II)V
    .registers 4

    const/4 v0, 0x0

    .line 411
    invoke-virtual {p0, p1, p2, v0}, Lcom/codemao/midi/sun/SoftChannel;->noteOn(III)V

    return-void
.end method

.method protected noteOn(III)V
    .registers 4

    .line 418
    invoke-static {p1}, Lcom/codemao/midi/sun/SoftChannel;->restrict7Bit(I)I

    move-result p1

    .line 419
    invoke-static {p2}, Lcom/codemao/midi/sun/SoftChannel;->restrict7Bit(I)I

    move-result p2

    .line 420
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/midi/sun/SoftChannel;->noteOn_internal(III)V

    .line 421
    iget-object p3, p0, Lcom/codemao/midi/sun/SoftChannel;->current_mixer:Lcom/codemao/midi/sun/ModelChannelMixer;

    if-eqz p3, :cond_12

    .line 422
    invoke-interface {p3, p1, p2}, Lcom/codemao/midi/javax/MidiChannel;->noteOn(II)V

    :cond_12
    return-void
.end method

.method public nrpnChange(II)V
    .registers 10

    .line 1316
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChannel;->synthesizer:Lcom/codemao/midi/sun/SoftSynthesizer;

    invoke-virtual {v0}, Lcom/codemao/midi/sun/SoftSynthesizer;->getGeneralMidiMode()I

    move-result v0

    if-nez v0, :cond_a2

    const/16 v0, 0x88

    if-ne p1, v0, :cond_13

    const/16 v0, 0x4c

    shr-int/lit8 v1, p2, 0x7

    .line 1318
    invoke-virtual {p0, v0, v1}, Lcom/codemao/midi/sun/SoftChannel;->controlChange(II)V

    :cond_13
    const/16 v0, 0x89

    if-ne p1, v0, :cond_1e

    const/16 v0, 0x4d

    shr-int/lit8 v1, p2, 0x7

    .line 1320
    invoke-virtual {p0, v0, v1}, Lcom/codemao/midi/sun/SoftChannel;->controlChange(II)V

    :cond_1e
    const/16 v0, 0x8a

    if-ne p1, v0, :cond_29

    const/16 v0, 0x4e

    shr-int/lit8 v1, p2, 0x7

    .line 1322
    invoke-virtual {p0, v0, v1}, Lcom/codemao/midi/sun/SoftChannel;->controlChange(II)V

    :cond_29
    const/16 v0, 0xa0

    if-ne p1, v0, :cond_34

    const/16 v0, 0x4a

    shr-int/lit8 v1, p2, 0x7

    .line 1324
    invoke-virtual {p0, v0, v1}, Lcom/codemao/midi/sun/SoftChannel;->controlChange(II)V

    :cond_34
    const/16 v0, 0xa1

    if-ne p1, v0, :cond_3f

    const/16 v0, 0x47

    shr-int/lit8 v1, p2, 0x7

    .line 1326
    invoke-virtual {p0, v0, v1}, Lcom/codemao/midi/sun/SoftChannel;->controlChange(II)V

    :cond_3f
    const/16 v0, 0xe3

    if-ne p1, v0, :cond_4a

    const/16 v0, 0x49

    shr-int/lit8 v1, p2, 0x7

    .line 1328
    invoke-virtual {p0, v0, v1}, Lcom/codemao/midi/sun/SoftChannel;->controlChange(II)V

    :cond_4a
    const/16 v0, 0xe4

    if-ne p1, v0, :cond_55

    const/16 v0, 0x4b

    shr-int/lit8 v1, p2, 0x7

    .line 1330
    invoke-virtual {p0, v0, v1}, Lcom/codemao/midi/sun/SoftChannel;->controlChange(II)V

    :cond_55
    const/16 v0, 0xe6

    if-ne p1, v0, :cond_60

    const/16 v0, 0x48

    shr-int/lit8 v1, p2, 0x7

    .line 1332
    invoke-virtual {p0, v0, v1}, Lcom/codemao/midi/sun/SoftChannel;->controlChange(II)V

    :cond_60
    shr-int/lit8 v0, p1, 0x7

    const/16 v1, 0x18

    if-ne v0, v1, :cond_6f

    .line 1335
    rem-int/lit16 v1, p1, 0x80

    const/16 v2, 0x78

    shr-int/lit8 v3, p2, 0x7

    invoke-virtual {p0, v1, v2, v3}, Lcom/codemao/midi/sun/SoftChannel;->controlChangePerNote(III)V

    :cond_6f
    const/16 v1, 0x1a

    if-ne v0, v1, :cond_7b

    .line 1337
    rem-int/lit16 v1, p1, 0x80

    shr-int/lit8 v2, p2, 0x7

    const/4 v3, 0x7

    invoke-virtual {p0, v1, v3, v2}, Lcom/codemao/midi/sun/SoftChannel;->controlChangePerNote(III)V

    :cond_7b
    const/16 v1, 0x1c

    if-ne v0, v1, :cond_88

    .line 1339
    rem-int/lit16 v1, p1, 0x80

    const/16 v2, 0xa

    shr-int/lit8 v3, p2, 0x7

    invoke-virtual {p0, v1, v2, v3}, Lcom/codemao/midi/sun/SoftChannel;->controlChangePerNote(III)V

    :cond_88
    const/16 v1, 0x1d

    if-ne v0, v1, :cond_95

    .line 1341
    rem-int/lit16 v1, p1, 0x80

    const/16 v2, 0x5b

    shr-int/lit8 v3, p2, 0x7

    invoke-virtual {p0, v1, v2, v3}, Lcom/codemao/midi/sun/SoftChannel;->controlChangePerNote(III)V

    :cond_95
    const/16 v1, 0x1e

    if-ne v0, v1, :cond_a2

    .line 1343
    rem-int/lit16 v0, p1, 0x80

    const/16 v1, 0x5d

    shr-int/lit8 v2, p2, 0x7

    invoke-virtual {p0, v0, v1, v2}, Lcom/codemao/midi/sun/SoftChannel;->controlChangePerNote(III)V

    .line 1346
    :cond_a2
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChannel;->co_midi_nrpn_nrpn_i:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1347
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftChannel;->co_midi_nrpn_nrpn:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    const/4 v2, 0x1

    if-nez v0, :cond_c8

    new-array v0, v2, [I

    .line 1350
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftChannel;->co_midi_nrpn_nrpn_i:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c8
    if-nez v1, :cond_d5

    new-array v1, v2, [D

    .line 1354
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftChannel;->co_midi_nrpn_nrpn:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d5
    const/4 v2, 0x0

    .line 1356
    aput p2, v0, v2

    .line 1357
    aget p2, v0, v2

    int-to-double v3, p2

    const-wide/high16 v5, 0x3f10000000000000L  # 6.103515625E-5

    mul-double v3, v3, v5

    aput-wide v3, v1, v2

    const/4 p2, 0x0

    .line 1359
    :goto_e2
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftChannel;->voices:[Lcom/codemao/midi/sun/SoftVoice;

    array-length v3, v1

    if-ge p2, v3, :cond_f7

    .line 1360
    aget-object v3, v1, p2

    iget-boolean v3, v3, Lcom/codemao/midi/javax/VoiceStatus;->active:Z

    if-eqz v3, :cond_f4

    .line 1361
    aget-object v1, v1, p2

    aget v3, v0, v2

    invoke-virtual {v1, p1, v3}, Lcom/codemao/midi/sun/SoftVoice;->nrpnChange(II)V

    :cond_f4
    add-int/lit8 p2, p2, 0x1

    goto :goto_e2

    :cond_f7
    return-void
.end method

.method public play(I[Lcom/codemao/midi/sun/ModelConnectionBlock;)V
    .registers 13

    .line 630
    iget v4, p0, Lcom/codemao/midi/sun/SoftChannel;->play_noteNumber:I

    .line 631
    iget v5, p0, Lcom/codemao/midi/sun/SoftChannel;->play_velocity:I

    .line 632
    iget v6, p0, Lcom/codemao/midi/sun/SoftChannel;->play_delay:I

    .line 633
    iget-boolean v9, p0, Lcom/codemao/midi/sun/SoftChannel;->play_releasetriggered:Z

    .line 635
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChannel;->current_instrument:Lcom/codemao/midi/sun/SoftInstrument;

    invoke-virtual {v0}, Lcom/codemao/midi/sun/SoftInstrument;->getPerformers()[Lcom/codemao/midi/sun/SoftPerformer;

    move-result-object v0

    aget-object v2, v0, p1

    .line 637
    iget-boolean p1, p0, Lcom/codemao/midi/sun/SoftChannel;->firstVoice:Z

    if-eqz p1, :cond_46

    const/4 p1, 0x0

    .line 638
    iput-boolean p1, p0, Lcom/codemao/midi/sun/SoftChannel;->firstVoice:Z

    .line 639
    iget v0, v2, Lcom/codemao/midi/sun/SoftPerformer;->exclusiveClass:I

    if-eqz v0, :cond_46

    .line 641
    :goto_1b
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftChannel;->voices:[Lcom/codemao/midi/sun/SoftVoice;

    array-length v3, v1

    if-ge p1, v3, :cond_46

    .line 642
    aget-object v3, v1, p1

    iget-boolean v3, v3, Lcom/codemao/midi/javax/VoiceStatus;->active:Z

    if-eqz v3, :cond_43

    aget-object v3, v1, p1

    iget v3, v3, Lcom/codemao/midi/javax/VoiceStatus;->channel:I

    iget v7, p0, Lcom/codemao/midi/sun/SoftChannel;->channel:I

    if-ne v3, v7, :cond_43

    aget-object v3, v1, p1

    iget v3, v3, Lcom/codemao/midi/sun/SoftVoice;->exclusiveClass:I

    if-ne v3, v0, :cond_43

    .line 644
    iget-boolean v3, v2, Lcom/codemao/midi/sun/SoftPerformer;->selfNonExclusive:Z

    if-eqz v3, :cond_3e

    aget-object v3, v1, p1

    iget v3, v3, Lcom/codemao/midi/javax/VoiceStatus;->note:I

    if-eq v3, v4, :cond_43

    .line 645
    :cond_3e
    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/codemao/midi/sun/SoftVoice;->shutdown()V

    :cond_43
    add-int/lit8 p1, p1, 0x1

    goto :goto_1b

    .line 651
    :cond_46
    iget p1, p0, Lcom/codemao/midi/sun/SoftChannel;->voiceNo:I

    invoke-direct {p0, p1}, Lcom/codemao/midi/sun/SoftChannel;->findFreeVoice(I)I

    move-result p1

    iput p1, p0, Lcom/codemao/midi/sun/SoftChannel;->voiceNo:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_52

    return-void

    .line 656
    :cond_52
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChannel;->voices:[Lcom/codemao/midi/sun/SoftVoice;

    aget-object v1, v0, p1

    iget v3, p0, Lcom/codemao/midi/sun/SoftChannel;->prevVoiceID:I

    iget-object v8, p0, Lcom/codemao/midi/sun/SoftChannel;->current_mixer:Lcom/codemao/midi/sun/ModelChannelMixer;

    move-object v0, p0

    move-object v7, p2

    invoke-virtual/range {v0 .. v9}, Lcom/codemao/midi/sun/SoftChannel;->initVoice(Lcom/codemao/midi/sun/SoftVoice;Lcom/codemao/midi/sun/SoftPerformer;IIII[Lcom/codemao/midi/sun/ModelConnectionBlock;Lcom/codemao/midi/sun/ModelChannelMixer;Z)V

    return-void
.end method

.method public programChange(I)V
    .registers 3

    .line 1263
    iget v0, p0, Lcom/codemao/midi/sun/SoftChannel;->bank:I

    invoke-virtual {p0, v0, p1}, Lcom/codemao/midi/sun/SoftChannel;->programChange(II)V

    return-void
.end method

.method public programChange(II)V
    .registers 5

    .line 1267
    invoke-static {p1}, Lcom/codemao/midi/sun/SoftChannel;->restrict14Bit(I)I

    move-result p1

    .line 1268
    invoke-static {p2}, Lcom/codemao/midi/sun/SoftChannel;->restrict7Bit(I)I

    move-result p2

    .line 1269
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChannel;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1270
    :try_start_b
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftChannel;->mainmixer:Lcom/codemao/midi/sun/SoftMainMixer;

    invoke-virtual {v1}, Lcom/codemao/midi/sun/SoftMainMixer;->activity()V

    .line 1271
    iget v1, p0, Lcom/codemao/midi/sun/SoftChannel;->bank:I

    if-ne v1, p1, :cond_18

    iget v1, p0, Lcom/codemao/midi/sun/SoftChannel;->program:I

    if-eq v1, p2, :cond_1f

    .line 1273
    :cond_18
    iput p1, p0, Lcom/codemao/midi/sun/SoftChannel;->bank:I

    .line 1274
    iput p2, p0, Lcom/codemao/midi/sun/SoftChannel;->program:I

    const/4 p1, 0x0

    .line 1275
    iput-object p1, p0, Lcom/codemao/midi/sun/SoftChannel;->current_instrument:Lcom/codemao/midi/sun/SoftInstrument;

    .line 1277
    :cond_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_21

    throw p1
.end method

.method public resetAllControllers(Z)V
    .registers 9

    .line 1406
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChannel;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1407
    :try_start_3
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftChannel;->mainmixer:Lcom/codemao/midi/sun/SoftMainMixer;

    invoke-virtual {v1}, Lcom/codemao/midi/sun/SoftMainMixer;->activity()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_a
    const/16 v3, 0x80

    if-ge v2, v3, :cond_14

    .line 1410
    invoke-virtual {p0, v2, v1}, Lcom/codemao/midi/sun/SoftChannel;->setPolyPressure(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1412
    :cond_14
    invoke-virtual {p0, v1}, Lcom/codemao/midi/sun/SoftChannel;->setChannelPressure(I)V

    const/16 v2, 0x2000

    .line 1413
    invoke-virtual {p0, v2}, Lcom/codemao/midi/sun/SoftChannel;->setPitchBend(I)V

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v3, :cond_2b

    .line 1415
    sget-object v5, Lcom/codemao/midi/sun/SoftChannel;->dontResetControls:[Z

    aget-boolean v5, v5, v4

    if-nez v5, :cond_28

    .line 1416
    invoke-virtual {p0, v4, v1}, Lcom/codemao/midi/sun/SoftChannel;->controlChange(II)V

    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2b
    const/16 v3, 0x47

    const/16 v4, 0x40

    .line 1419
    invoke-virtual {p0, v3, v4}, Lcom/codemao/midi/sun/SoftChannel;->controlChange(II)V

    const/16 v3, 0x48

    .line 1420
    invoke-virtual {p0, v3, v4}, Lcom/codemao/midi/sun/SoftChannel;->controlChange(II)V

    const/16 v3, 0x49

    .line 1421
    invoke-virtual {p0, v3, v4}, Lcom/codemao/midi/sun/SoftChannel;->controlChange(II)V

    const/16 v3, 0x4a

    .line 1422
    invoke-virtual {p0, v3, v4}, Lcom/codemao/midi/sun/SoftChannel;->controlChange(II)V

    const/16 v3, 0x4b

    .line 1423
    invoke-virtual {p0, v3, v4}, Lcom/codemao/midi/sun/SoftChannel;->controlChange(II)V

    const/16 v3, 0x4c

    .line 1424
    invoke-virtual {p0, v3, v4}, Lcom/codemao/midi/sun/SoftChannel;->controlChange(II)V

    const/16 v3, 0x4d

    .line 1425
    invoke-virtual {p0, v3, v4}, Lcom/codemao/midi/sun/SoftChannel;->controlChange(II)V

    const/16 v3, 0x4e

    .line 1426
    invoke-virtual {p0, v3, v4}, Lcom/codemao/midi/sun/SoftChannel;->controlChange(II)V

    const/16 v3, 0x8

    .line 1428
    invoke-virtual {p0, v3, v4}, Lcom/codemao/midi/sun/SoftChannel;->controlChange(II)V

    const/16 v3, 0xb

    const/16 v5, 0x7f

    .line 1429
    invoke-virtual {p0, v3, v5}, Lcom/codemao/midi/sun/SoftChannel;->controlChange(II)V

    const/16 v3, 0x62

    .line 1430
    invoke-virtual {p0, v3, v5}, Lcom/codemao/midi/sun/SoftChannel;->controlChange(II)V

    const/16 v3, 0x63

    .line 1431
    invoke-virtual {p0, v3, v5}, Lcom/codemao/midi/sun/SoftChannel;->controlChange(II)V

    const/16 v3, 0x64

    .line 1432
    invoke-virtual {p0, v3, v5}, Lcom/codemao/midi/sun/SoftChannel;->controlChange(II)V

    const/16 v6, 0x65

    .line 1433
    invoke-virtual {p0, v6, v5}, Lcom/codemao/midi/sun/SoftChannel;->controlChange(II)V

    if-eqz p1, :cond_ea

    const/4 p1, 0x0

    .line 1438
    iput-object p1, p0, Lcom/codemao/midi/sun/SoftChannel;->keybasedcontroller_active:[[Z

    .line 1439
    iput-object p1, p0, Lcom/codemao/midi/sun/SoftChannel;->keybasedcontroller_value:[[D

    const/4 p1, 0x7

    .line 1441
    invoke-virtual {p0, p1, v3}, Lcom/codemao/midi/sun/SoftChannel;->controlChange(II)V

    const/16 p1, 0xa

    .line 1442
    invoke-virtual {p0, p1, v4}, Lcom/codemao/midi/sun/SoftChannel;->controlChange(II)V

    const/16 p1, 0x5b

    const/16 v3, 0x28

    .line 1443
    invoke-virtual {p0, p1, v3}, Lcom/codemao/midi/sun/SoftChannel;->controlChange(II)V

    .line 1445
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftChannel;->co_midi_rpn_rpn:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_96
    :goto_96
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_96

    const/4 v5, 0x4

    if-eq v3, v5, :cond_96

    .line 1448
    invoke-virtual {p0, v3, v1}, Lcom/codemao/midi/sun/SoftChannel;->rpnChange(II)V

    goto :goto_96

    .line 1450
    :cond_b0
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftChannel;->co_midi_nrpn_nrpn:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_ba
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ce

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1451
    invoke-virtual {p0, v3, v1}, Lcom/codemao/midi/sun/SoftChannel;->nrpnChange(II)V

    goto :goto_ba

    :cond_ce
    const/16 p1, 0x100

    .line 1452
    invoke-virtual {p0, v1, p1}, Lcom/codemao/midi/sun/SoftChannel;->rpnChange(II)V

    const/4 p1, 0x1

    .line 1453
    invoke-virtual {p0, p1, v2}, Lcom/codemao/midi/sun/SoftChannel;->rpnChange(II)V

    const/4 p1, 0x2

    .line 1454
    invoke-virtual {p0, p1, v2}, Lcom/codemao/midi/sun/SoftChannel;->rpnChange(II)V

    const/4 p1, 0x5

    .line 1455
    invoke-virtual {p0, p1, v4}, Lcom/codemao/midi/sun/SoftChannel;->rpnChange(II)V

    .line 1457
    iput v1, p0, Lcom/codemao/midi/sun/SoftChannel;->tuning_bank:I

    .line 1458
    iput v1, p0, Lcom/codemao/midi/sun/SoftChannel;->tuning_program:I

    .line 1459
    new-instance p1, Lcom/codemao/midi/sun/SoftTuning;

    invoke-direct {p1}, Lcom/codemao/midi/sun/SoftTuning;-><init>()V

    iput-object p1, p0, Lcom/codemao/midi/sun/SoftChannel;->tuning:Lcom/codemao/midi/sun/SoftTuning;

    .line 1463
    :cond_ea
    monitor-exit v0

    return-void

    :catchall_ec
    move-exception p1

    monitor-exit v0
    :try_end_ee
    .catchall {:try_start_3 .. :try_end_ee} :catchall_ec

    throw p1
.end method

.method public rpnChange(II)V
    .registers 10

    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    shr-int/lit8 v0, p2, 0x7

    and-int/lit8 v0, v0, 0x7f

    .line 1376
    iput v0, p0, Lcom/codemao/midi/sun/SoftChannel;->tuning_program:I

    .line 1377
    iget v1, p0, Lcom/codemao/midi/sun/SoftChannel;->tuning_bank:I

    invoke-virtual {p0, v1, v0}, Lcom/codemao/midi/sun/SoftChannel;->tuningChange(II)V

    :cond_e
    const/4 v0, 0x4

    if-ne p1, v0, :cond_17

    shr-int/lit8 v0, p2, 0x7

    and-int/lit8 v0, v0, 0x7f

    .line 1380
    iput v0, p0, Lcom/codemao/midi/sun/SoftChannel;->tuning_bank:I

    .line 1383
    :cond_17
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChannel;->co_midi_rpn_rpn_i:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1384
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftChannel;->co_midi_rpn_rpn:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    const/4 v2, 0x1

    if-nez v0, :cond_3d

    new-array v0, v2, [I

    .line 1387
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftChannel;->co_midi_rpn_rpn_i:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    if-nez v1, :cond_4a

    new-array v1, v2, [D

    .line 1391
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftChannel;->co_midi_rpn_rpn:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4a
    const/4 v2, 0x0

    .line 1393
    aput p2, v0, v2

    .line 1394
    aget p2, v0, v2

    int-to-double v3, p2

    const-wide/high16 v5, 0x3f10000000000000L  # 6.103515625E-5

    mul-double v3, v3, v5

    aput-wide v3, v1, v2

    const/4 p2, 0x0

    .line 1396
    :goto_57
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftChannel;->voices:[Lcom/codemao/midi/sun/SoftVoice;

    array-length v3, v1

    if-ge p2, v3, :cond_6c

    .line 1397
    aget-object v3, v1, p2

    iget-boolean v3, v3, Lcom/codemao/midi/javax/VoiceStatus;->active:Z

    if-eqz v3, :cond_69

    .line 1398
    aget-object v1, v1, p2

    aget v3, v0, v2

    invoke-virtual {v1, p1, v3}, Lcom/codemao/midi/sun/SoftVoice;->rpnChange(II)V

    :cond_69
    add-int/lit8 p2, p2, 0x1

    goto :goto_57

    :cond_6c
    return-void
.end method

.method public setChannelPressure(I)V
    .registers 8

    .line 690
    invoke-static {p1}, Lcom/codemao/midi/sun/SoftChannel;->restrict7Bit(I)I

    move-result p1

    .line 691
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChannel;->current_mixer:Lcom/codemao/midi/sun/ModelChannelMixer;

    if-eqz v0, :cond_b

    .line 692
    invoke-interface {v0, p1}, Lcom/codemao/midi/javax/MidiChannel;->setChannelPressure(I)V

    .line 693
    :cond_b
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChannel;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 694
    :try_start_e
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftChannel;->mainmixer:Lcom/codemao/midi/sun/SoftMainMixer;

    invoke-virtual {v1}, Lcom/codemao/midi/sun/SoftMainMixer;->activity()V

    .line 695
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftChannel;->co_midi_channel_pressure:[D

    int-to-double v2, p1

    const-wide/high16 v4, 0x3f80000000000000L  # 0.0078125

    mul-double v2, v2, v4

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    .line 697
    :goto_1d
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftChannel;->voices:[Lcom/codemao/midi/sun/SoftVoice;

    array-length v2, v1

    if-ge v4, v2, :cond_30

    .line 698
    aget-object v2, v1, v4

    iget-boolean v2, v2, Lcom/codemao/midi/javax/VoiceStatus;->active:Z

    if-eqz v2, :cond_2d

    .line 699
    aget-object v1, v1, v4

    invoke-virtual {v1, p1}, Lcom/codemao/midi/sun/SoftVoice;->setChannelPressure(I)V

    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 701
    :cond_30
    monitor-exit v0

    return-void

    :catchall_32
    move-exception p1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_e .. :try_end_34} :catchall_32

    throw p1
.end method

.method public setMono(Z)V
    .registers 3

    .line 1493
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChannel;->current_mixer:Lcom/codemao/midi/sun/ModelChannelMixer;

    if-eqz v0, :cond_7

    .line 1494
    invoke-interface {v0, p1}, Lcom/codemao/midi/javax/MidiChannel;->setMono(Z)V

    .line 1495
    :cond_7
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChannel;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1496
    :try_start_a
    invoke-virtual {p0}, Lcom/codemao/midi/sun/SoftChannel;->allNotesOff()V

    .line 1497
    iput-boolean p1, p0, Lcom/codemao/midi/sun/SoftChannel;->mono:Z

    .line 1498
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_11

    throw p1
.end method

.method public setOmni(Z)V
    .registers 3

    .line 1508
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChannel;->current_mixer:Lcom/codemao/midi/sun/ModelChannelMixer;

    if-eqz v0, :cond_7

    .line 1509
    invoke-interface {v0, p1}, Lcom/codemao/midi/javax/MidiChannel;->setOmni(Z)V

    .line 1510
    :cond_7
    invoke-virtual {p0}, Lcom/codemao/midi/sun/SoftChannel;->allNotesOff()V

    return-void
.end method

.method public setPitchBend(I)V
    .registers 8

    .line 1287
    invoke-static {p1}, Lcom/codemao/midi/sun/SoftChannel;->restrict14Bit(I)I

    move-result p1

    .line 1288
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChannel;->current_mixer:Lcom/codemao/midi/sun/ModelChannelMixer;

    if-eqz v0, :cond_b

    .line 1289
    invoke-interface {v0, p1}, Lcom/codemao/midi/javax/MidiChannel;->setPitchBend(I)V

    .line 1290
    :cond_b
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChannel;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1291
    :try_start_e
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftChannel;->mainmixer:Lcom/codemao/midi/sun/SoftMainMixer;

    invoke-virtual {v1}, Lcom/codemao/midi/sun/SoftMainMixer;->activity()V

    .line 1292
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftChannel;->co_midi_pitch:[D

    int-to-double v2, p1

    const-wide/high16 v4, 0x3f10000000000000L  # 6.103515625E-5

    mul-double v2, v2, v4

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    .line 1294
    :goto_1d
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftChannel;->voices:[Lcom/codemao/midi/sun/SoftVoice;

    array-length v2, v1

    if-ge v4, v2, :cond_30

    .line 1295
    aget-object v2, v1, v4

    iget-boolean v2, v2, Lcom/codemao/midi/javax/VoiceStatus;->active:Z

    if-eqz v2, :cond_2d

    .line 1296
    aget-object v1, v1, v4

    invoke-virtual {v1, p1}, Lcom/codemao/midi/sun/SoftVoice;->setPitchBend(I)V

    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 1297
    :cond_30
    monitor-exit v0

    return-void

    :catchall_32
    move-exception p1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_e .. :try_end_34} :catchall_32

    throw p1
.end method

.method public setPolyPressure(II)V
    .registers 11

    .line 666
    invoke-static {p1}, Lcom/codemao/midi/sun/SoftChannel;->restrict7Bit(I)I

    move-result p1

    .line 667
    invoke-static {p2}, Lcom/codemao/midi/sun/SoftChannel;->restrict7Bit(I)I

    move-result p2

    .line 669
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChannel;->current_mixer:Lcom/codemao/midi/sun/ModelChannelMixer;

    if-eqz v0, :cond_f

    .line 670
    invoke-interface {v0, p1, p2}, Lcom/codemao/midi/javax/MidiChannel;->setPolyPressure(II)V

    .line 672
    :cond_f
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChannel;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 673
    :try_start_12
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftChannel;->mainmixer:Lcom/codemao/midi/sun/SoftMainMixer;

    invoke-virtual {v1}, Lcom/codemao/midi/sun/SoftMainMixer;->activity()V

    .line 674
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftChannel;->co_midi:[Lcom/codemao/midi/sun/SoftControl;

    aget-object v1, v1, p1

    const-string v2, "poly_pressure"

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lcom/codemao/midi/sun/SoftControl;->get(ILjava/lang/String;)[D

    move-result-object v1

    int-to-double v4, p2

    const-wide/high16 v6, 0x3f80000000000000L  # 0.0078125

    mul-double v4, v4, v6

    aput-wide v4, v1, v3

    .line 675
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftChannel;->polypressure:[I

    aput p2, v1, p1

    .line 676
    :goto_2d
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftChannel;->voices:[Lcom/codemao/midi/sun/SoftVoice;

    array-length v2, v1

    if-ge v3, v2, :cond_46

    .line 677
    aget-object v2, v1, v3

    iget-boolean v2, v2, Lcom/codemao/midi/javax/VoiceStatus;->active:Z

    if-eqz v2, :cond_43

    aget-object v2, v1, v3

    iget v2, v2, Lcom/codemao/midi/javax/VoiceStatus;->note:I

    if-ne v2, p1, :cond_43

    .line 678
    aget-object v1, v1, v3

    invoke-virtual {v1, p2}, Lcom/codemao/midi/sun/SoftVoice;->setPolyPressure(I)V

    :cond_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 680
    :cond_46
    monitor-exit v0

    return-void

    :catchall_48
    move-exception p1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_12 .. :try_end_4a} :catchall_48

    throw p1
.end method

.method public tuningChange(II)V
    .registers 6

    .line 1257
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChannel;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1258
    :try_start_3
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftChannel;->synthesizer:Lcom/codemao/midi/sun/SoftSynthesizer;

    new-instance v2, Lcom/codemao/midi/javax/Patch;

    invoke-direct {v2, p1, p2}, Lcom/codemao/midi/javax/Patch;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/codemao/midi/sun/SoftSynthesizer;->getTuning(Lcom/codemao/midi/javax/Patch;)Lcom/codemao/midi/sun/SoftTuning;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/midi/sun/SoftChannel;->tuning:Lcom/codemao/midi/sun/SoftTuning;

    .line 1259
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p1
.end method
