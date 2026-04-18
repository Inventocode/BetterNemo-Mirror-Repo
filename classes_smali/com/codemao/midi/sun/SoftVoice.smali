.class public Lcom/codemao/midi/sun/SoftVoice;
.super Lcom/codemao/midi/javax/VoiceStatus;
.source "SoftVoice.java"


# instance fields
.field private audiostarted:Z

.field protected channelmixer:Lcom/codemao/midi/sun/ModelChannelMixer;

.field private co_filter:Lcom/codemao/midi/sun/SoftControl;

.field private co_filter_freq:[D

.field private co_filter_q:[D

.field private co_filter_type:[D

.field private co_mixer:Lcom/codemao/midi/sun/SoftControl;

.field private co_mixer_active:[D

.field private co_mixer_balance:[D

.field private co_mixer_chorus:[D

.field private co_mixer_gain:[D

.field private co_mixer_pan:[D

.field private co_mixer_reverb:[D

.field private co_noteon:Lcom/codemao/midi/sun/SoftControl;

.field protected co_noteon_keynumber:[D

.field protected co_noteon_on:[D

.field protected co_noteon_velocity:[D

.field private co_osc:Lcom/codemao/midi/sun/SoftControl;

.field private co_osc_pitch:[D

.field private connections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

.field private connections_dst:[[D

.field private connections_last:[D

.field private connections_src:[[[D

.field private connections_src_kc:[[I

.field private delay:I

.field private eg:Lcom/codemao/midi/sun/SoftProcess;

.field public exclusiveClass:I

.field protected extendedConnectionBlocks:[Lcom/codemao/midi/sun/ModelConnectionBlock;

.field private filter_left:Lcom/codemao/midi/sun/SoftFilter;

.field private filter_right:Lcom/codemao/midi/sun/SoftFilter;

.field private lastMuteValue:F

.field private lastSoloMuteValue:F

.field private last_out_mixer_effect1:F

.field private last_out_mixer_effect2:F

.field private last_out_mixer_left:F

.field private last_out_mixer_right:F

.field private lfo:Lcom/codemao/midi/sun/SoftProcess;

.field private noteOff_velocity:I

.field private noteOn_noteNumber:I

.field private noteOn_velocity:I

.field private nrofchannels:I

.field protected objects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codemao/midi/sun/SoftControl;",
            ">;"
        }
    .end annotation
.end field

.field protected on:Z

.field private osc_attenuation:F

.field private osc_buff:[[F

.field private osc_stream:Lcom/codemao/midi/sun/ModelOscillatorStream;

.field private osc_stream_nrofchannels:I

.field private osc_stream_off_transmitted:Z

.field private out_mixer_effect1:F

.field private out_mixer_effect2:F

.field private out_mixer_end:Z

.field private out_mixer_left:F

.field private out_mixer_right:F

.field protected performer:Lcom/codemao/midi/sun/SoftPerformer;

.field protected portamento:Z

.field public releaseTriggered:Z

.field protected resampler:Lcom/codemao/midi/sun/SoftResamplerStreamer;

.field protected softchannel:Lcom/codemao/midi/sun/SoftChannel;

.field protected sostenuto:Z

.field private soundoff:Z

.field private started:Z

.field protected stealer_channel:Lcom/codemao/midi/sun/SoftChannel;

.field protected stealer_channelmixer:Lcom/codemao/midi/sun/ModelChannelMixer;

.field protected stealer_extendedConnectionBlocks:[Lcom/codemao/midi/sun/ModelConnectionBlock;

.field protected stealer_noteNumber:I

.field protected stealer_performer:Lcom/codemao/midi/sun/SoftPerformer;

.field protected stealer_releaseTriggered:Z

.field protected stealer_velocity:I

.field protected stealer_voiceID:I

.field private stopping:Z

.field protected sustain:Z

.field protected synthesizer:Lcom/codemao/midi/sun/SoftSynthesizer;

.field protected tunedKey:D

.field protected tuning:Lcom/codemao/midi/sun/SoftTuning;

.field protected voiceID:I


# direct methods
.method public constructor <init>(Lcom/codemao/midi/sun/SoftSynthesizer;)V
    .registers 8

    .line 186
    invoke-direct {p0}, Lcom/codemao/midi/javax/VoiceStatus;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/codemao/midi/sun/SoftVoice;->exclusiveClass:I

    .line 42
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftVoice;->releaseTriggered:Z

    .line 43
    iput v0, p0, Lcom/codemao/midi/sun/SoftVoice;->noteOn_noteNumber:I

    .line 44
    iput v0, p0, Lcom/codemao/midi/sun/SoftVoice;->noteOn_velocity:I

    .line 45
    iput v0, p0, Lcom/codemao/midi/sun/SoftVoice;->noteOff_velocity:I

    .line 46
    iput v0, p0, Lcom/codemao/midi/sun/SoftVoice;->delay:I

    const/4 v1, 0x0

    .line 47
    iput-object v1, p0, Lcom/codemao/midi/sun/SoftVoice;->channelmixer:Lcom/codemao/midi/sun/ModelChannelMixer;

    const-wide/16 v2, 0x0

    .line 48
    iput-wide v2, p0, Lcom/codemao/midi/sun/SoftVoice;->tunedKey:D

    .line 49
    iput-object v1, p0, Lcom/codemao/midi/sun/SoftVoice;->tuning:Lcom/codemao/midi/sun/SoftTuning;

    .line 50
    iput-object v1, p0, Lcom/codemao/midi/sun/SoftVoice;->stealer_channel:Lcom/codemao/midi/sun/SoftChannel;

    .line 51
    iput-object v1, p0, Lcom/codemao/midi/sun/SoftVoice;->stealer_extendedConnectionBlocks:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    .line 52
    iput-object v1, p0, Lcom/codemao/midi/sun/SoftVoice;->stealer_performer:Lcom/codemao/midi/sun/SoftPerformer;

    .line 53
    iput-object v1, p0, Lcom/codemao/midi/sun/SoftVoice;->stealer_channelmixer:Lcom/codemao/midi/sun/ModelChannelMixer;

    const/4 v2, -0x1

    .line 54
    iput v2, p0, Lcom/codemao/midi/sun/SoftVoice;->stealer_voiceID:I

    .line 55
    iput v0, p0, Lcom/codemao/midi/sun/SoftVoice;->stealer_noteNumber:I

    .line 56
    iput v0, p0, Lcom/codemao/midi/sun/SoftVoice;->stealer_velocity:I

    .line 57
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftVoice;->stealer_releaseTriggered:Z

    .line 58
    iput v2, p0, Lcom/codemao/midi/sun/SoftVoice;->voiceID:I

    .line 59
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftVoice;->sustain:Z

    .line 60
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftVoice;->sostenuto:Z

    .line 61
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftVoice;->portamento:Z

    .line 64
    new-instance v2, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;

    invoke-direct {v2}, Lcom/codemao/midi/sun/SoftEnvelopeGenerator;-><init>()V

    iput-object v2, p0, Lcom/codemao/midi/sun/SoftVoice;->eg:Lcom/codemao/midi/sun/SoftProcess;

    .line 65
    new-instance v2, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;

    invoke-direct {v2}, Lcom/codemao/midi/sun/SoftLowFrequencyOscillator;-><init>()V

    iput-object v2, p0, Lcom/codemao/midi/sun/SoftVoice;->lfo:Lcom/codemao/midi/sun/SoftProcess;

    .line 66
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/codemao/midi/sun/SoftVoice;->objects:Ljava/util/Map;

    .line 71
    iput-object v1, p0, Lcom/codemao/midi/sun/SoftVoice;->softchannel:Lcom/codemao/midi/sun/SoftChannel;

    .line 72
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftVoice;->on:Z

    .line 73
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftVoice;->audiostarted:Z

    .line 74
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftVoice;->started:Z

    .line 75
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftVoice;->stopping:Z

    const/4 v2, 0x0

    .line 76
    iput v2, p0, Lcom/codemao/midi/sun/SoftVoice;->osc_attenuation:F

    const/4 v3, 0x2

    new-array v4, v3, [[F

    .line 79
    iput-object v4, p0, Lcom/codemao/midi/sun/SoftVoice;->osc_buff:[[F

    .line 80
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftVoice;->osc_stream_off_transmitted:Z

    .line 81
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_end:Z

    .line 82
    iput v2, p0, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_left:F

    .line 83
    iput v2, p0, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_right:F

    .line 84
    iput v2, p0, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_effect1:F

    .line 85
    iput v2, p0, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_effect2:F

    .line 86
    iput v2, p0, Lcom/codemao/midi/sun/SoftVoice;->last_out_mixer_left:F

    .line 87
    iput v2, p0, Lcom/codemao/midi/sun/SoftVoice;->last_out_mixer_right:F

    .line 88
    iput v2, p0, Lcom/codemao/midi/sun/SoftVoice;->last_out_mixer_effect1:F

    .line 89
    iput v2, p0, Lcom/codemao/midi/sun/SoftVoice;->last_out_mixer_effect2:F

    .line 90
    iput-object v1, p0, Lcom/codemao/midi/sun/SoftVoice;->extendedConnectionBlocks:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    const/16 v1, 0x32

    new-array v4, v1, [D

    .line 93
    iput-object v4, p0, Lcom/codemao/midi/sun/SoftVoice;->connections_last:[D

    new-array v4, v3, [I

    .line 95
    fill-array-data v4, :array_11a

    const-class v5, [D

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[[D

    iput-object v4, p0, Lcom/codemao/midi/sun/SoftVoice;->connections_src:[[[D

    new-array v3, v3, [I

    .line 97
    fill-array-data v3, :array_122

    const-class v4, I

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    iput-object v3, p0, Lcom/codemao/midi/sun/SoftVoice;->connections_src_kc:[[I

    new-array v1, v1, [[D

    .line 99
    iput-object v1, p0, Lcom/codemao/midi/sun/SoftVoice;->connections_dst:[[D

    .line 100
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftVoice;->soundoff:Z

    .line 101
    iput v2, p0, Lcom/codemao/midi/sun/SoftVoice;->lastMuteValue:F

    .line 102
    iput v2, p0, Lcom/codemao/midi/sun/SoftVoice;->lastSoloMuteValue:F

    const/4 v0, 0x1

    new-array v1, v0, [D

    .line 103
    iput-object v1, p0, Lcom/codemao/midi/sun/SoftVoice;->co_noteon_keynumber:[D

    new-array v1, v0, [D

    .line 104
    iput-object v1, p0, Lcom/codemao/midi/sun/SoftVoice;->co_noteon_velocity:[D

    new-array v1, v0, [D

    .line 105
    iput-object v1, p0, Lcom/codemao/midi/sun/SoftVoice;->co_noteon_on:[D

    .line 106
    new-instance v1, Lcom/codemao/midi/sun/SoftVoice$1;

    invoke-direct {v1, p0}, Lcom/codemao/midi/sun/SoftVoice$1;-><init>(Lcom/codemao/midi/sun/SoftVoice;)V

    iput-object v1, p0, Lcom/codemao/midi/sun/SoftVoice;->co_noteon:Lcom/codemao/midi/sun/SoftControl;

    new-array v1, v0, [D

    .line 122
    iput-object v1, p0, Lcom/codemao/midi/sun/SoftVoice;->co_mixer_active:[D

    new-array v1, v0, [D

    .line 123
    iput-object v1, p0, Lcom/codemao/midi/sun/SoftVoice;->co_mixer_gain:[D

    new-array v1, v0, [D

    .line 124
    iput-object v1, p0, Lcom/codemao/midi/sun/SoftVoice;->co_mixer_pan:[D

    new-array v1, v0, [D

    .line 125
    iput-object v1, p0, Lcom/codemao/midi/sun/SoftVoice;->co_mixer_balance:[D

    new-array v1, v0, [D

    .line 126
    iput-object v1, p0, Lcom/codemao/midi/sun/SoftVoice;->co_mixer_reverb:[D

    new-array v1, v0, [D

    .line 127
    iput-object v1, p0, Lcom/codemao/midi/sun/SoftVoice;->co_mixer_chorus:[D

    .line 128
    new-instance v1, Lcom/codemao/midi/sun/SoftVoice$2;

    invoke-direct {v1, p0}, Lcom/codemao/midi/sun/SoftVoice$2;-><init>(Lcom/codemao/midi/sun/SoftVoice;)V

    iput-object v1, p0, Lcom/codemao/midi/sun/SoftVoice;->co_mixer:Lcom/codemao/midi/sun/SoftControl;

    new-array v1, v0, [D

    .line 153
    iput-object v1, p0, Lcom/codemao/midi/sun/SoftVoice;->co_osc_pitch:[D

    .line 154
    new-instance v1, Lcom/codemao/midi/sun/SoftVoice$3;

    invoke-direct {v1, p0}, Lcom/codemao/midi/sun/SoftVoice$3;-><init>(Lcom/codemao/midi/sun/SoftVoice;)V

    iput-object v1, p0, Lcom/codemao/midi/sun/SoftVoice;->co_osc:Lcom/codemao/midi/sun/SoftControl;

    new-array v1, v0, [D

    .line 164
    iput-object v1, p0, Lcom/codemao/midi/sun/SoftVoice;->co_filter_freq:[D

    new-array v1, v0, [D

    .line 165
    iput-object v1, p0, Lcom/codemao/midi/sun/SoftVoice;->co_filter_type:[D

    new-array v0, v0, [D

    .line 166
    iput-object v0, p0, Lcom/codemao/midi/sun/SoftVoice;->co_filter_q:[D

    .line 167
    new-instance v0, Lcom/codemao/midi/sun/SoftVoice$4;

    invoke-direct {v0, p0}, Lcom/codemao/midi/sun/SoftVoice$4;-><init>(Lcom/codemao/midi/sun/SoftVoice;)V

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftVoice;->co_filter:Lcom/codemao/midi/sun/SoftControl;

    .line 187
    iput-object p1, p0, Lcom/codemao/midi/sun/SoftVoice;->synthesizer:Lcom/codemao/midi/sun/SoftSynthesizer;

    .line 188
    new-instance v0, Lcom/codemao/midi/sun/SoftFilter;

    invoke-virtual {p1}, Lcom/codemao/midi/sun/SoftSynthesizer;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleRate()F

    move-result v1

    invoke-direct {v0, v1}, Lcom/codemao/midi/sun/SoftFilter;-><init>(F)V

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftVoice;->filter_left:Lcom/codemao/midi/sun/SoftFilter;

    .line 189
    new-instance v0, Lcom/codemao/midi/sun/SoftFilter;

    invoke-virtual {p1}, Lcom/codemao/midi/sun/SoftSynthesizer;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleRate()F

    move-result v1

    invoke-direct {v0, v1}, Lcom/codemao/midi/sun/SoftFilter;-><init>(F)V

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftVoice;->filter_right:Lcom/codemao/midi/sun/SoftFilter;

    .line 190
    invoke-virtual {p1}, Lcom/codemao/midi/sun/SoftSynthesizer;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getChannels()I

    move-result p1

    iput p1, p0, Lcom/codemao/midi/sun/SoftVoice;->nrofchannels:I

    return-void

    nop

    :array_11a
    .array-data 4
        0x32
        0x3
    .end array-data

    :array_122
    .array-data 4
        0x32
        0x3
    .end array-data
.end method

.method static synthetic access$000(Lcom/codemao/midi/sun/SoftVoice;)[D
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/codemao/midi/sun/SoftVoice;->co_mixer_active:[D

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/midi/sun/SoftVoice;)[D
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/codemao/midi/sun/SoftVoice;->co_mixer_gain:[D

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/midi/sun/SoftVoice;)[D
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/codemao/midi/sun/SoftVoice;->co_mixer_pan:[D

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/midi/sun/SoftVoice;)[D
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/codemao/midi/sun/SoftVoice;->co_mixer_balance:[D

    return-object p0
.end method

.method static synthetic access$400(Lcom/codemao/midi/sun/SoftVoice;)[D
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/codemao/midi/sun/SoftVoice;->co_mixer_reverb:[D

    return-object p0
.end method

.method static synthetic access$500(Lcom/codemao/midi/sun/SoftVoice;)[D
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/codemao/midi/sun/SoftVoice;->co_mixer_chorus:[D

    return-object p0
.end method

.method static synthetic access$600(Lcom/codemao/midi/sun/SoftVoice;)[D
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/codemao/midi/sun/SoftVoice;->co_osc_pitch:[D

    return-object p0
.end method

.method static synthetic access$700(Lcom/codemao/midi/sun/SoftVoice;)[D
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/codemao/midi/sun/SoftVoice;->co_filter_freq:[D

    return-object p0
.end method

.method static synthetic access$800(Lcom/codemao/midi/sun/SoftVoice;)[D
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/codemao/midi/sun/SoftVoice;->co_filter_type:[D

    return-object p0
.end method

.method static synthetic access$900(Lcom/codemao/midi/sun/SoftVoice;)[D
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/codemao/midi/sun/SoftVoice;->co_filter_q:[D

    return-object p0
.end method

.method private getValue(Lcom/codemao/midi/sun/ModelIdentifier;)[D
    .registers 4

    .line 210
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftVoice;->objects:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/codemao/midi/sun/ModelIdentifier;->getObject()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/midi/sun/SoftControl;

    if-nez v0, :cond_10

    const/4 p1, 0x0

    return-object p1

    .line 213
    :cond_10
    invoke-virtual {p1}, Lcom/codemao/midi/sun/ModelIdentifier;->getInstance()I

    move-result v1

    invoke-virtual {p1}, Lcom/codemao/midi/sun/ModelIdentifier;->getVariable()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/codemao/midi/sun/SoftControl;->get(ILjava/lang/String;)[D

    move-result-object p1

    return-object p1
.end method

.method private getValueKC(Lcom/codemao/midi/sun/ModelIdentifier;)I
    .registers 5

    .line 194
    invoke-virtual {p1}, Lcom/codemao/midi/sun/ModelIdentifier;->getObject()Ljava/lang/String;

    move-result-object v0

    const-string v1, "midi_cc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x78

    if-eqz v0, :cond_1f

    .line 195
    invoke-virtual {p1}, Lcom/codemao/midi/sun/ModelIdentifier;->getVariable()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_47

    const/16 v0, 0x20

    if-eq p1, v0, :cond_47

    if-ge p1, v1, :cond_47

    return p1

    .line 200
    :cond_1f
    invoke-virtual {p1}, Lcom/codemao/midi/sun/ModelIdentifier;->getObject()Ljava/lang/String;

    move-result-object v0

    const-string v2, "midi_rpn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 201
    invoke-virtual {p1}, Lcom/codemao/midi/sun/ModelIdentifier;->getVariable()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    return v1

    .line 203
    :cond_38
    invoke-virtual {p1}, Lcom/codemao/midi/sun/ModelIdentifier;->getVariable()Ljava/lang/String;

    move-result-object p1

    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_47

    const/16 p1, 0x79

    return p1

    :cond_47
    const/4 p1, -0x1

    return p1
.end method

.method private processConnection(I)V
    .registers 16

    .line 250
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftVoice;->connections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    aget-object v0, v0, p1

    .line 251
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftVoice;->connections_src:[[[D

    aget-object v1, v1, p1

    .line 252
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftVoice;->connections_dst:[[D

    aget-object v2, v2, p1

    if-eqz v2, :cond_7a

    const/4 v3, 0x0

    .line 253
    aget-wide v4, v2, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-eqz v4, :cond_18

    goto :goto_7a

    .line 256
    :cond_18
    invoke-virtual {v0}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getScale()D

    move-result-wide v4

    .line 257
    iget-object v6, p0, Lcom/codemao/midi/sun/SoftVoice;->softchannel:Lcom/codemao/midi/sun/SoftChannel;

    iget-object v6, v6, Lcom/codemao/midi/sun/SoftChannel;->keybasedcontroller_active:[[Z

    const-wide/16 v7, 0x0

    if-nez v6, :cond_40

    .line 258
    invoke-virtual {v0}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getSources()[Lcom/codemao/midi/sun/ModelSource;

    move-result-object v6

    const/4 v9, 0x0

    .line 259
    :goto_29
    array-length v10, v6

    if-ge v9, v10, :cond_66

    .line 260
    aget-object v10, v1, v9

    aget-wide v11, v10, v3

    aget-object v10, v6, v9

    invoke-direct {p0, v11, v12, v10}, Lcom/codemao/midi/sun/SoftVoice;->transformValue(DLcom/codemao/midi/sun/ModelSource;)D

    move-result-wide v10

    mul-double v4, v4, v10

    cmpl-double v10, v4, v7

    if-nez v10, :cond_3d

    goto :goto_66

    :cond_3d
    add-int/lit8 v9, v9, 0x1

    goto :goto_29

    .line 265
    :cond_40
    invoke-virtual {v0}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getSources()[Lcom/codemao/midi/sun/ModelSource;

    move-result-object v6

    .line 266
    iget-object v9, p0, Lcom/codemao/midi/sun/SoftVoice;->connections_src_kc:[[I

    aget-object v9, v9, p1

    const/4 v10, 0x0

    .line 267
    :goto_49
    array-length v11, v6

    if-ge v10, v11, :cond_66

    .line 268
    aget-object v11, v1, v10

    aget-wide v12, v11, v3

    aget v11, v9, v10

    invoke-direct {p0, v12, v13, v11}, Lcom/codemao/midi/sun/SoftVoice;->processKeyBasedController(DI)D

    move-result-wide v11

    aget-object v13, v6, v10

    invoke-direct {p0, v11, v12, v13}, Lcom/codemao/midi/sun/SoftVoice;->transformValue(DLcom/codemao/midi/sun/ModelSource;)D

    move-result-wide v11

    mul-double v4, v4, v11

    cmpl-double v11, v4, v7

    if-nez v11, :cond_63

    goto :goto_66

    :cond_63
    add-int/lit8 v10, v10, 0x1

    goto :goto_49

    .line 275
    :cond_66
    :goto_66
    invoke-virtual {v0}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getDestination()Lcom/codemao/midi/sun/ModelDestination;

    move-result-object v0

    invoke-direct {p0, v4, v5, v0}, Lcom/codemao/midi/sun/SoftVoice;->transformValue(DLcom/codemao/midi/sun/ModelDestination;)D

    move-result-wide v0

    .line 276
    aget-wide v4, v2, v3

    iget-object v6, p0, Lcom/codemao/midi/sun/SoftVoice;->connections_last:[D

    aget-wide v7, v6, p1

    sub-double/2addr v4, v7

    add-double/2addr v4, v0

    aput-wide v4, v2, v3

    .line 277
    aput-wide v0, v6, p1

    :cond_7a
    :goto_7a
    return-void
.end method

.method private processKeyBasedController(DI)D
    .registers 12

    const/4 v0, -0x1

    if-ne p3, v0, :cond_4

    return-wide p1

    .line 233
    :cond_4
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftVoice;->softchannel:Lcom/codemao/midi/sun/SoftChannel;

    iget-object v1, v0, Lcom/codemao/midi/sun/SoftChannel;->keybasedcontroller_active:[[Z

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    if-eqz v1, :cond_40

    .line 234
    iget v6, p0, Lcom/codemao/midi/javax/VoiceStatus;->note:I

    aget-object v7, v1, v6

    if-eqz v7, :cond_40

    .line 235
    aget-object v1, v1, v6

    aget-boolean v1, v1, p3

    if-eqz v1, :cond_40

    .line 236
    iget-object v0, v0, Lcom/codemao/midi/sun/SoftChannel;->keybasedcontroller_value:[[D

    aget-object v0, v0, v6

    aget-wide v6, v0, p3

    const/16 v0, 0xa

    if-eq p3, v0, :cond_3f

    const/16 v0, 0x5b

    if-eq p3, v0, :cond_3f

    const/16 v0, 0x5d

    if-ne p3, v0, :cond_2d

    goto :goto_3f

    :cond_2d
    const-wide/high16 v0, 0x4000000000000000L  # 2.0

    mul-double v6, v6, v0

    sub-double/2addr v6, v4

    add-double/2addr p1, v6

    cmpl-double p3, p1, v4

    if-lez p3, :cond_39

    move-wide p1, v4

    goto :goto_40

    :cond_39
    cmpg-double p3, p1, v2

    if-gez p3, :cond_40

    move-wide p1, v2

    goto :goto_40

    :cond_3f
    :goto_3f
    return-wide v6

    :cond_40
    :goto_40
    return-wide p1
.end method

.method private transformValue(DLcom/codemao/midi/sun/ModelDestination;)D
    .registers 5

    .line 224
    invoke-virtual {p3}, Lcom/codemao/midi/sun/ModelDestination;->getTransform()Lcom/codemao/midi/sun/ModelTransform;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 225
    invoke-virtual {p3}, Lcom/codemao/midi/sun/ModelDestination;->getTransform()Lcom/codemao/midi/sun/ModelTransform;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/codemao/midi/sun/ModelTransform;->transform(D)D

    move-result-wide p1

    :cond_e
    return-wide p1
.end method

.method private transformValue(DLcom/codemao/midi/sun/ModelSource;)D
    .registers 5

    .line 217
    invoke-virtual {p3}, Lcom/codemao/midi/sun/ModelSource;->getTransform()Lcom/codemao/midi/sun/ModelTransform;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 218
    invoke-virtual {p3}, Lcom/codemao/midi/sun/ModelSource;->getTransform()Lcom/codemao/midi/sun/ModelTransform;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/codemao/midi/sun/ModelTransform;->transform(D)D

    move-result-wide p1

    :cond_e
    return-wide p1
.end method


# virtual methods
.method protected controlChange(II)V
    .registers 4

    .line 459
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftVoice;->performer:Lcom/codemao/midi/sun/SoftPerformer;

    if-nez p2, :cond_5

    return-void

    .line 461
    :cond_5
    iget-object p2, p2, Lcom/codemao/midi/sun/SoftPerformer;->midi_ctrl_connections:[[I

    aget-object p1, p2, p1

    if-nez p1, :cond_c

    return-void

    :cond_c
    const/4 p2, 0x0

    .line 464
    :goto_d
    array-length v0, p1

    if-ge p2, v0, :cond_18

    .line 465
    aget v0, p1, p2

    invoke-direct {p0, v0}, Lcom/codemao/midi/sun/SoftVoice;->processConnection(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_d

    :cond_18
    return-void
.end method

.method protected mixAudioStream(Lcom/codemao/midi/sun/SoftAudioBuffer;Lcom/codemao/midi/sun/SoftAudioBuffer;Lcom/codemao/midi/sun/SoftAudioBuffer;FF)V
    .registers 12

    .line 766
    invoke-virtual {p1}, Lcom/codemao/midi/sun/SoftAudioBuffer;->getSize()I

    move-result v0

    float-to-double v1, p4

    const-wide v3, 0x3e112e0be826d695L  # 1.0E-9

    cmpg-double v5, v1, v3

    if-gez v5, :cond_14

    float-to-double v1, p5

    cmpg-double v5, v1, v3

    if-gez v5, :cond_14

    return-void

    :cond_14
    const/4 v1, 0x0

    if-eqz p3, :cond_8a

    .line 769
    iget v2, p0, Lcom/codemao/midi/sun/SoftVoice;->delay:I

    if-eqz v2, :cond_8a

    cmpl-float v2, p4, p5

    if-nez v2, :cond_52

    .line 772
    invoke-virtual {p2}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object p2

    .line 773
    invoke-virtual {p1}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object p1

    .line 775
    iget p4, p0, Lcom/codemao/midi/sun/SoftVoice;->delay:I

    const/4 v2, 0x0

    :goto_2a
    if-ge p4, v0, :cond_3b

    .line 776
    aget v3, p2, p4

    add-int/lit8 v4, v2, 0x1

    aget v2, p1, v2

    mul-float v2, v2, p5

    add-float/2addr v3, v2

    aput v3, p2, p4

    add-int/lit8 p4, p4, 0x1

    move v2, v4

    goto :goto_2a

    .line 777
    :cond_3b
    invoke-virtual {p3}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object p2

    .line 778
    :goto_3f
    iget p3, p0, Lcom/codemao/midi/sun/SoftVoice;->delay:I

    if-ge v1, p3, :cond_be

    .line 779
    aget p3, p2, v1

    add-int/lit8 p4, v2, 0x1

    aget v0, p1, v2

    mul-float v0, v0, p5

    add-float/2addr p3, v0

    aput p3, p2, v1

    add-int/lit8 v1, v1, 0x1

    move v2, p4

    goto :goto_3f

    :cond_52
    sub-float/2addr p5, p4

    int-to-float v2, v0

    div-float/2addr p5, v2

    .line 783
    invoke-virtual {p2}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object p2

    .line 784
    invoke-virtual {p1}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object p1

    .line 786
    iget v2, p0, Lcom/codemao/midi/sun/SoftVoice;->delay:I

    const/4 v3, 0x0

    :goto_60
    if-ge v2, v0, :cond_72

    add-float/2addr p4, p5

    .line 788
    aget v4, p2, v2

    add-int/lit8 v5, v3, 0x1

    aget v3, p1, v3

    mul-float v3, v3, p4

    add-float/2addr v4, v3

    aput v4, p2, v2

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_60

    .line 790
    :cond_72
    invoke-virtual {p3}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object p2

    .line 791
    :goto_76
    iget p3, p0, Lcom/codemao/midi/sun/SoftVoice;->delay:I

    if-ge v1, p3, :cond_be

    add-float/2addr p4, p5

    .line 793
    aget p3, p2, v1

    add-int/lit8 v0, v3, 0x1

    aget v2, p1, v3

    mul-float v2, v2, p4

    add-float/2addr p3, v2

    aput p3, p2, v1

    add-int/lit8 v1, v1, 0x1

    move v3, v0

    goto :goto_76

    :cond_8a
    cmpl-float p3, p4, p5

    if-nez p3, :cond_a4

    .line 800
    invoke-virtual {p2}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object p2

    .line 801
    invoke-virtual {p1}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object p1

    :goto_96
    if-ge v1, v0, :cond_be

    .line 803
    aget p3, p2, v1

    aget p4, p1, v1

    mul-float p4, p4, p5

    add-float/2addr p3, p4

    aput p3, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_96

    :cond_a4
    sub-float/2addr p5, p4

    int-to-float p3, v0

    div-float/2addr p5, p3

    .line 807
    invoke-virtual {p2}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object p2

    .line 808
    invoke-virtual {p1}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object p1

    :goto_af
    if-ge v1, v0, :cond_be

    add-float/2addr p4, p5

    .line 811
    aget p3, p2, v1

    aget v2, p1, v1

    mul-float v2, v2, p4

    add-float/2addr p3, v2

    aput p3, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_af

    :cond_be
    return-void
.end method

.method protected noteOff(I)V
    .registers 5

    .line 532
    iget-boolean v0, p0, Lcom/codemao/midi/sun/SoftVoice;->on:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 534
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftVoice;->on:Z

    .line 536
    iput p1, p0, Lcom/codemao/midi/sun/SoftVoice;->noteOff_velocity:I

    .line 538
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftVoice;->softchannel:Lcom/codemao/midi/sun/SoftChannel;

    iget-boolean p1, p1, Lcom/codemao/midi/sun/SoftChannel;->sustain:Z

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    .line 539
    iput-boolean p1, p0, Lcom/codemao/midi/sun/SoftVoice;->sustain:Z

    return-void

    .line 542
    :cond_14
    iget-boolean p1, p0, Lcom/codemao/midi/sun/SoftVoice;->sostenuto:Z

    if-eqz p1, :cond_19

    return-void

    .line 545
    :cond_19
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftVoice;->co_noteon_on:[D

    const-wide/16 v1, 0x0

    aput-wide v1, p1, v0

    .line 547
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftVoice;->performer:Lcom/codemao/midi/sun/SoftPerformer;

    if-nez p1, :cond_24

    return-void

    .line 549
    :cond_24
    iget-object p1, p1, Lcom/codemao/midi/sun/SoftPerformer;->midi_connections:[[I

    const/4 v1, 0x3

    aget-object p1, p1, v1

    if-nez p1, :cond_2c

    return-void

    .line 552
    :cond_2c
    :goto_2c
    array-length v1, p1

    if-ge v0, v1, :cond_37

    .line 553
    aget v1, p1, v0

    invoke-direct {p0, v1}, Lcom/codemao/midi/sun/SoftVoice;->processConnection(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_37
    return-void
.end method

.method protected noteOn(III)V
    .registers 19

    move-object v0, p0

    move/from16 v1, p2

    const/4 v2, 0x0

    .line 303
    iput-boolean v2, v0, Lcom/codemao/midi/sun/SoftVoice;->sustain:Z

    .line 304
    iput-boolean v2, v0, Lcom/codemao/midi/sun/SoftVoice;->sostenuto:Z

    .line 305
    iput-boolean v2, v0, Lcom/codemao/midi/sun/SoftVoice;->portamento:Z

    .line 307
    iput-boolean v2, v0, Lcom/codemao/midi/sun/SoftVoice;->soundoff:Z

    const/4 v3, 0x1

    .line 308
    iput-boolean v3, v0, Lcom/codemao/midi/sun/SoftVoice;->on:Z

    .line 309
    iput-boolean v3, v0, Lcom/codemao/midi/javax/VoiceStatus;->active:Z

    .line 310
    iput-boolean v3, v0, Lcom/codemao/midi/sun/SoftVoice;->started:Z

    move/from16 v3, p1

    .line 313
    iput v3, v0, Lcom/codemao/midi/sun/SoftVoice;->noteOn_noteNumber:I

    .line 314
    iput v1, v0, Lcom/codemao/midi/sun/SoftVoice;->noteOn_velocity:I

    move/from16 v4, p3

    .line 315
    iput v4, v0, Lcom/codemao/midi/sun/SoftVoice;->delay:I

    const/4 v4, 0x0

    .line 317
    iput v4, v0, Lcom/codemao/midi/sun/SoftVoice;->lastMuteValue:F

    .line 318
    iput v4, v0, Lcom/codemao/midi/sun/SoftVoice;->lastSoloMuteValue:F

    .line 320
    invoke-virtual/range {p0 .. p1}, Lcom/codemao/midi/sun/SoftVoice;->setNote(I)V

    .line 322
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftVoice;->performer:Lcom/codemao/midi/sun/SoftPerformer;

    iget-boolean v4, v3, Lcom/codemao/midi/sun/SoftPerformer;->forcedKeynumber:Z

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_32

    .line 323
    iget-object v4, v0, Lcom/codemao/midi/sun/SoftVoice;->co_noteon_keynumber:[D

    aput-wide v5, v4, v2

    goto :goto_3c

    .line 325
    :cond_32
    iget-object v4, v0, Lcom/codemao/midi/sun/SoftVoice;->co_noteon_keynumber:[D

    iget-wide v7, v0, Lcom/codemao/midi/sun/SoftVoice;->tunedKey:D

    const-wide/high16 v9, 0x3f80000000000000L  # 0.0078125

    mul-double v7, v7, v9

    aput-wide v7, v4, v2

    .line 326
    :goto_3c
    iget-boolean v3, v3, Lcom/codemao/midi/sun/SoftPerformer;->forcedVelocity:Z

    if-eqz v3, :cond_45

    .line 327
    iget-object v1, v0, Lcom/codemao/midi/sun/SoftVoice;->co_noteon_velocity:[D

    aput-wide v5, v1, v2

    goto :goto_4f

    .line 329
    :cond_45
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftVoice;->co_noteon_velocity:[D

    int-to-float v1, v1

    const/high16 v4, 0x3c000000  # 0.0078125f

    mul-float v1, v1, v4

    float-to-double v7, v1

    aput-wide v7, v3, v2

    .line 330
    :goto_4f
    iget-object v1, v0, Lcom/codemao/midi/sun/SoftVoice;->co_mixer_active:[D

    aput-wide v5, v1, v2

    .line 331
    iget-object v1, v0, Lcom/codemao/midi/sun/SoftVoice;->co_mixer_gain:[D

    aput-wide v5, v1, v2

    .line 332
    iget-object v1, v0, Lcom/codemao/midi/sun/SoftVoice;->co_mixer_pan:[D

    aput-wide v5, v1, v2

    .line 333
    iget-object v1, v0, Lcom/codemao/midi/sun/SoftVoice;->co_mixer_balance:[D

    aput-wide v5, v1, v2

    .line 334
    iget-object v1, v0, Lcom/codemao/midi/sun/SoftVoice;->co_mixer_reverb:[D

    aput-wide v5, v1, v2

    .line 335
    iget-object v1, v0, Lcom/codemao/midi/sun/SoftVoice;->co_mixer_chorus:[D

    aput-wide v5, v1, v2

    .line 336
    iget-object v1, v0, Lcom/codemao/midi/sun/SoftVoice;->co_osc_pitch:[D

    aput-wide v5, v1, v2

    .line 337
    iget-object v1, v0, Lcom/codemao/midi/sun/SoftVoice;->co_filter_freq:[D

    aput-wide v5, v1, v2

    .line 338
    iget-object v1, v0, Lcom/codemao/midi/sun/SoftVoice;->co_filter_q:[D

    aput-wide v5, v1, v2

    .line 339
    iget-object v1, v0, Lcom/codemao/midi/sun/SoftVoice;->co_filter_type:[D

    aput-wide v5, v1, v2

    .line 340
    iget-object v1, v0, Lcom/codemao/midi/sun/SoftVoice;->co_noteon_on:[D

    const-wide/high16 v3, 0x3ff0000000000000L  # 1.0

    aput-wide v3, v1, v2

    .line 342
    iget-object v1, v0, Lcom/codemao/midi/sun/SoftVoice;->eg:Lcom/codemao/midi/sun/SoftProcess;

    invoke-interface {v1}, Lcom/codemao/midi/sun/SoftProcess;->reset()V

    .line 343
    iget-object v1, v0, Lcom/codemao/midi/sun/SoftVoice;->lfo:Lcom/codemao/midi/sun/SoftProcess;

    invoke-interface {v1}, Lcom/codemao/midi/sun/SoftProcess;->reset()V

    .line 344
    iget-object v1, v0, Lcom/codemao/midi/sun/SoftVoice;->filter_left:Lcom/codemao/midi/sun/SoftFilter;

    invoke-virtual {v1}, Lcom/codemao/midi/sun/SoftFilter;->reset()V

    .line 345
    iget-object v1, v0, Lcom/codemao/midi/sun/SoftVoice;->filter_right:Lcom/codemao/midi/sun/SoftFilter;

    invoke-virtual {v1}, Lcom/codemao/midi/sun/SoftFilter;->reset()V

    .line 347
    iget-object v1, v0, Lcom/codemao/midi/sun/SoftVoice;->objects:Ljava/util/Map;

    iget-object v3, v0, Lcom/codemao/midi/sun/SoftVoice;->synthesizer:Lcom/codemao/midi/sun/SoftSynthesizer;

    invoke-virtual {v3}, Lcom/codemao/midi/sun/SoftSynthesizer;->getMainMixer()Lcom/codemao/midi/sun/SoftMainMixer;

    move-result-object v3

    iget-object v3, v3, Lcom/codemao/midi/sun/SoftMainMixer;->co_master:Lcom/codemao/midi/sun/SoftControl;

    const-string v4, "master"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iget-object v1, v0, Lcom/codemao/midi/sun/SoftVoice;->objects:Ljava/util/Map;

    iget-object v3, v0, Lcom/codemao/midi/sun/SoftVoice;->eg:Lcom/codemao/midi/sun/SoftProcess;

    const-string v4, "eg"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v1, v0, Lcom/codemao/midi/sun/SoftVoice;->objects:Ljava/util/Map;

    iget-object v3, v0, Lcom/codemao/midi/sun/SoftVoice;->lfo:Lcom/codemao/midi/sun/SoftProcess;

    const-string v4, "lfo"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    iget-object v1, v0, Lcom/codemao/midi/sun/SoftVoice;->objects:Ljava/util/Map;

    iget-object v3, v0, Lcom/codemao/midi/sun/SoftVoice;->co_noteon:Lcom/codemao/midi/sun/SoftControl;

    const-string v4, "noteon"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget-object v1, v0, Lcom/codemao/midi/sun/SoftVoice;->objects:Ljava/util/Map;

    iget-object v3, v0, Lcom/codemao/midi/sun/SoftVoice;->co_osc:Lcom/codemao/midi/sun/SoftControl;

    const-string v4, "osc"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object v1, v0, Lcom/codemao/midi/sun/SoftVoice;->objects:Ljava/util/Map;

    iget-object v3, v0, Lcom/codemao/midi/sun/SoftVoice;->co_mixer:Lcom/codemao/midi/sun/SoftControl;

    const-string v4, "mixer"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object v1, v0, Lcom/codemao/midi/sun/SoftVoice;->objects:Ljava/util/Map;

    iget-object v3, v0, Lcom/codemao/midi/sun/SoftVoice;->co_filter:Lcom/codemao/midi/sun/SoftControl;

    const-string v4, "filter"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v1, v0, Lcom/codemao/midi/sun/SoftVoice;->performer:Lcom/codemao/midi/sun/SoftPerformer;

    iget-object v1, v1, Lcom/codemao/midi/sun/SoftPerformer;->connections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    iput-object v1, v0, Lcom/codemao/midi/sun/SoftVoice;->connections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    .line 357
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftVoice;->connections_last:[D

    if-eqz v3, :cond_e4

    array-length v3, v3

    array-length v4, v1

    if-ge v3, v4, :cond_e9

    .line 359
    :cond_e4
    array-length v3, v1

    new-array v3, v3, [D

    iput-object v3, v0, Lcom/codemao/midi/sun/SoftVoice;->connections_last:[D

    .line 361
    :cond_e9
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftVoice;->connections_src:[[[D

    if-eqz v3, :cond_f1

    array-length v3, v3

    array-length v4, v1

    if-ge v3, v4, :cond_fb

    .line 363
    :cond_f1
    array-length v3, v1

    new-array v3, v3, [[[D

    iput-object v3, v0, Lcom/codemao/midi/sun/SoftVoice;->connections_src:[[[D

    .line 364
    array-length v3, v1

    new-array v3, v3, [[I

    iput-object v3, v0, Lcom/codemao/midi/sun/SoftVoice;->connections_src_kc:[[I

    .line 366
    :cond_fb
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftVoice;->connections_dst:[[D

    if-eqz v3, :cond_103

    array-length v3, v3

    array-length v4, v1

    if-ge v3, v4, :cond_108

    .line 368
    :cond_103
    array-length v1, v1

    new-array v1, v1, [[D

    iput-object v1, v0, Lcom/codemao/midi/sun/SoftVoice;->connections_dst:[[D

    :cond_108
    const/4 v1, 0x0

    .line 370
    :goto_109
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftVoice;->connections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    array-length v4, v3

    if-ge v1, v4, :cond_17c

    .line 371
    aget-object v3, v3, v1

    .line 372
    iget-object v4, v0, Lcom/codemao/midi/sun/SoftVoice;->connections_last:[D

    aput-wide v5, v4, v1

    .line 373
    invoke-virtual {v3}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getSources()[Lcom/codemao/midi/sun/ModelSource;

    move-result-object v4

    if-eqz v4, :cond_15d

    .line 374
    invoke-virtual {v3}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getSources()[Lcom/codemao/midi/sun/ModelSource;

    move-result-object v4

    .line 375
    iget-object v7, v0, Lcom/codemao/midi/sun/SoftVoice;->connections_src:[[[D

    aget-object v8, v7, v1

    if-eqz v8, :cond_12a

    aget-object v8, v7, v1

    array-length v8, v8

    array-length v9, v4

    if-ge v8, v9, :cond_136

    .line 377
    :cond_12a
    array-length v8, v4

    new-array v8, v8, [[D

    aput-object v8, v7, v1

    .line 378
    iget-object v8, v0, Lcom/codemao/midi/sun/SoftVoice;->connections_src_kc:[[I

    array-length v9, v4

    new-array v9, v9, [I

    aput-object v9, v8, v1

    .line 380
    :cond_136
    aget-object v8, v7, v1

    .line 381
    iget-object v9, v0, Lcom/codemao/midi/sun/SoftVoice;->connections_src_kc:[[I

    aget-object v9, v9, v1

    .line 382
    aput-object v8, v7, v1

    const/4 v7, 0x0

    .line 383
    :goto_13f
    array-length v10, v4

    if-ge v7, v10, :cond_15d

    .line 384
    aget-object v10, v4, v7

    invoke-virtual {v10}, Lcom/codemao/midi/sun/ModelSource;->getIdentifier()Lcom/codemao/midi/sun/ModelIdentifier;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/codemao/midi/sun/SoftVoice;->getValueKC(Lcom/codemao/midi/sun/ModelIdentifier;)I

    move-result v10

    aput v10, v9, v7

    .line 385
    aget-object v10, v4, v7

    invoke-virtual {v10}, Lcom/codemao/midi/sun/ModelSource;->getIdentifier()Lcom/codemao/midi/sun/ModelIdentifier;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/codemao/midi/sun/SoftVoice;->getValue(Lcom/codemao/midi/sun/ModelIdentifier;)[D

    move-result-object v10

    aput-object v10, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_13f

    .line 389
    :cond_15d
    invoke-virtual {v3}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getDestination()Lcom/codemao/midi/sun/ModelDestination;

    move-result-object v4

    if-eqz v4, :cond_174

    .line 390
    iget-object v4, v0, Lcom/codemao/midi/sun/SoftVoice;->connections_dst:[[D

    invoke-virtual {v3}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getDestination()Lcom/codemao/midi/sun/ModelDestination;

    move-result-object v3

    .line 391
    invoke-virtual {v3}, Lcom/codemao/midi/sun/ModelDestination;->getIdentifier()Lcom/codemao/midi/sun/ModelIdentifier;

    move-result-object v3

    .line 390
    invoke-direct {p0, v3}, Lcom/codemao/midi/sun/SoftVoice;->getValue(Lcom/codemao/midi/sun/ModelIdentifier;)[D

    move-result-object v3

    aput-object v3, v4, v1

    goto :goto_179

    .line 393
    :cond_174
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftVoice;->connections_dst:[[D

    const/4 v4, 0x0

    aput-object v4, v3, v1

    :goto_179
    add-int/lit8 v1, v1, 0x1

    goto :goto_109

    :cond_17c
    const/4 v1, 0x0

    .line 396
    :goto_17d
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftVoice;->connections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    array-length v3, v3

    if-ge v1, v3, :cond_188

    .line 397
    invoke-direct {p0, v1}, Lcom/codemao/midi/sun/SoftVoice;->processConnection(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_17d

    .line 399
    :cond_188
    iget-object v1, v0, Lcom/codemao/midi/sun/SoftVoice;->extendedConnectionBlocks:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    if-eqz v1, :cond_211

    .line 400
    array-length v3, v1

    const/4 v4, 0x0

    :goto_18e
    if-ge v4, v3, :cond_211

    aget-object v7, v1, v4

    .line 403
    iget-object v8, v0, Lcom/codemao/midi/sun/SoftVoice;->softchannel:Lcom/codemao/midi/sun/SoftChannel;

    iget-object v8, v8, Lcom/codemao/midi/sun/SoftChannel;->keybasedcontroller_active:[[Z

    if-nez v8, :cond_1be

    .line 404
    invoke-virtual {v7}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getSources()[Lcom/codemao/midi/sun/ModelSource;

    move-result-object v8

    array-length v9, v8

    move-wide v11, v5

    const/4 v10, 0x0

    :goto_19f
    if-ge v10, v9, :cond_1f0

    aget-object v13, v8, v10

    .line 405
    invoke-virtual {v13}, Lcom/codemao/midi/sun/ModelSource;->getIdentifier()Lcom/codemao/midi/sun/ModelIdentifier;

    move-result-object v14

    invoke-direct {p0, v14}, Lcom/codemao/midi/sun/SoftVoice;->getValue(Lcom/codemao/midi/sun/ModelIdentifier;)[D

    move-result-object v14

    aget-wide v5, v14, v2

    .line 406
    invoke-virtual {v13}, Lcom/codemao/midi/sun/ModelSource;->getTransform()Lcom/codemao/midi/sun/ModelTransform;

    move-result-object v13

    if-nez v13, :cond_1b4

    goto :goto_1b8

    .line 410
    :cond_1b4
    invoke-interface {v13, v5, v6}, Lcom/codemao/midi/sun/ModelTransform;->transform(D)D

    move-result-wide v5

    :goto_1b8
    add-double/2addr v11, v5

    add-int/lit8 v10, v10, 0x1

    const-wide/16 v5, 0x0

    goto :goto_19f

    .line 413
    :cond_1be
    invoke-virtual {v7}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getSources()[Lcom/codemao/midi/sun/ModelSource;

    move-result-object v5

    array-length v6, v5

    const/4 v8, 0x0

    const-wide/16 v11, 0x0

    :goto_1c6
    if-ge v8, v6, :cond_1f0

    aget-object v9, v5, v8

    .line 414
    invoke-virtual {v9}, Lcom/codemao/midi/sun/ModelSource;->getIdentifier()Lcom/codemao/midi/sun/ModelIdentifier;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/codemao/midi/sun/SoftVoice;->getValue(Lcom/codemao/midi/sun/ModelIdentifier;)[D

    move-result-object v10

    aget-wide v13, v10, v2

    .line 416
    invoke-virtual {v9}, Lcom/codemao/midi/sun/ModelSource;->getIdentifier()Lcom/codemao/midi/sun/ModelIdentifier;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/codemao/midi/sun/SoftVoice;->getValueKC(Lcom/codemao/midi/sun/ModelIdentifier;)I

    move-result v10

    .line 415
    invoke-direct {p0, v13, v14, v10}, Lcom/codemao/midi/sun/SoftVoice;->processKeyBasedController(DI)D

    move-result-wide v13

    .line 417
    invoke-virtual {v9}, Lcom/codemao/midi/sun/ModelSource;->getTransform()Lcom/codemao/midi/sun/ModelTransform;

    move-result-object v9

    if-nez v9, :cond_1e8

    add-double/2addr v11, v13

    goto :goto_1ed

    .line 421
    :cond_1e8
    invoke-interface {v9, v13, v14}, Lcom/codemao/midi/sun/ModelTransform;->transform(D)D

    move-result-wide v9

    add-double/2addr v11, v9

    :goto_1ed
    add-int/lit8 v8, v8, 0x1

    goto :goto_1c6

    .line 425
    :cond_1f0
    invoke-virtual {v7}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getDestination()Lcom/codemao/midi/sun/ModelDestination;

    move-result-object v5

    .line 426
    invoke-virtual {v5}, Lcom/codemao/midi/sun/ModelDestination;->getTransform()Lcom/codemao/midi/sun/ModelTransform;

    move-result-object v6

    if-eqz v6, :cond_1fe

    .line 428
    invoke-interface {v6, v11, v12}, Lcom/codemao/midi/sun/ModelTransform;->transform(D)D

    move-result-wide v11

    .line 429
    :cond_1fe
    invoke-virtual {v5}, Lcom/codemao/midi/sun/ModelDestination;->getIdentifier()Lcom/codemao/midi/sun/ModelIdentifier;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/codemao/midi/sun/SoftVoice;->getValue(Lcom/codemao/midi/sun/ModelIdentifier;)[D

    move-result-object v5

    aget-wide v6, v5, v2

    add-double/2addr v6, v11

    aput-wide v6, v5, v2

    add-int/lit8 v4, v4, 0x1

    const-wide/16 v5, 0x0

    goto/16 :goto_18e

    .line 433
    :cond_211
    iget-object v1, v0, Lcom/codemao/midi/sun/SoftVoice;->eg:Lcom/codemao/midi/sun/SoftProcess;

    iget-object v2, v0, Lcom/codemao/midi/sun/SoftVoice;->synthesizer:Lcom/codemao/midi/sun/SoftSynthesizer;

    invoke-interface {v1, v2}, Lcom/codemao/midi/sun/SoftProcess;->init(Lcom/codemao/midi/sun/SoftSynthesizer;)V

    .line 434
    iget-object v1, v0, Lcom/codemao/midi/sun/SoftVoice;->lfo:Lcom/codemao/midi/sun/SoftProcess;

    iget-object v2, v0, Lcom/codemao/midi/sun/SoftVoice;->synthesizer:Lcom/codemao/midi/sun/SoftSynthesizer;

    invoke-interface {v1, v2}, Lcom/codemao/midi/sun/SoftProcess;->init(Lcom/codemao/midi/sun/SoftSynthesizer;)V

    return-void
.end method

.method protected nrpnChange(II)V
    .registers 4

    .line 469
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftVoice;->performer:Lcom/codemao/midi/sun/SoftPerformer;

    if-nez p2, :cond_5

    return-void

    .line 471
    :cond_5
    iget-object p2, p2, Lcom/codemao/midi/sun/SoftPerformer;->midi_nrpn_connections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-nez p1, :cond_14

    return-void

    :cond_14
    const/4 p2, 0x0

    .line 474
    :goto_15
    array-length v0, p1

    if-ge p2, v0, :cond_20

    .line 475
    aget v0, p1, p2

    invoke-direct {p0, v0}, Lcom/codemao/midi/sun/SoftVoice;->processConnection(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_15

    :cond_20
    return-void
.end method

.method protected processAudioLogic([Lcom/codemao/midi/sun/SoftAudioBuffer;)V
    .registers 20

    move-object/from16 v6, p0

    .line 819
    iget-boolean v0, v6, Lcom/codemao/midi/sun/SoftVoice;->audiostarted:Z

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 822
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/codemao/midi/sun/SoftAudioBuffer;->getSize()I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0xa

    const/4 v7, 0x1

    .line 825
    :try_start_13
    iget-object v4, v6, Lcom/codemao/midi/sun/SoftVoice;->osc_buff:[[F

    aget-object v5, p1, v3

    invoke-virtual {v5}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object v5

    aput-object v5, v4, v0

    .line 826
    iget v4, v6, Lcom/codemao/midi/sun/SoftVoice;->nrofchannels:I

    if-eq v4, v7, :cond_2b

    .line 827
    iget-object v4, v6, Lcom/codemao/midi/sun/SoftVoice;->osc_buff:[[F

    aget-object v5, p1, v2

    invoke-virtual {v5}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object v5

    aput-object v5, v4, v7

    .line 828
    :cond_2b
    iget-object v4, v6, Lcom/codemao/midi/sun/SoftVoice;->osc_stream:Lcom/codemao/midi/sun/ModelOscillatorStream;

    iget-object v5, v6, Lcom/codemao/midi/sun/SoftVoice;->osc_buff:[[F

    invoke-interface {v4, v5, v0, v1}, Lcom/codemao/midi/sun/ModelOscillatorStream;->read([[FII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_39

    .line 830
    iput-boolean v7, v6, Lcom/codemao/midi/sun/SoftVoice;->stopping:Z

    return-void

    :cond_39
    if-eq v4, v1, :cond_50

    .line 834
    iget-object v5, v6, Lcom/codemao/midi/sun/SoftVoice;->osc_buff:[[F

    aget-object v5, v5, v0

    const/4 v8, 0x0

    invoke-static {v5, v4, v1, v8}, Ljava/util/Arrays;->fill([FIIF)V

    .line 835
    iget v5, v6, Lcom/codemao/midi/sun/SoftVoice;->nrofchannels:I

    if-eq v5, v7, :cond_50

    .line 836
    iget-object v5, v6, Lcom/codemao/midi/sun/SoftVoice;->osc_buff:[[F

    aget-object v5, v5, v7

    invoke-static {v5, v4, v1, v8}, Ljava/util/Arrays;->fill([FIIF)V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_4e} :catch_4f

    goto :goto_50

    :catch_4f
    nop

    .line 843
    :cond_50
    :goto_50
    aget-object v8, p1, v0

    .line 844
    aget-object v9, p1, v7

    const/4 v1, 0x2

    .line 845
    aget-object v4, p1, v1

    const/4 v1, 0x6

    .line 846
    aget-object v10, p1, v1

    const/4 v1, 0x7

    .line 847
    aget-object v11, p1, v1

    const/4 v1, 0x3

    .line 849
    aget-object v12, p1, v1

    const/4 v1, 0x4

    .line 850
    aget-object v13, p1, v1

    const/4 v1, 0x5

    .line 851
    aget-object v5, p1, v1

    const/16 v1, 0x8

    .line 852
    aget-object v14, p1, v1

    const/16 v1, 0x9

    .line 853
    aget-object v15, p1, v1

    .line 855
    aget-object v3, p1, v3

    .line 856
    aget-object v1, p1, v2

    .line 858
    iget v2, v6, Lcom/codemao/midi/sun/SoftVoice;->osc_stream_nrofchannels:I

    if-ne v2, v7, :cond_77

    const/4 v1, 0x0

    :cond_77
    move-object v2, v1

    .line 861
    iget-object v1, v6, Lcom/codemao/midi/sun/SoftVoice;->co_filter_freq:[D

    aget-wide v0, v1, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_8e

    .line 862
    iget-object v0, v6, Lcom/codemao/midi/sun/SoftVoice;->filter_left:Lcom/codemao/midi/sun/SoftFilter;

    invoke-virtual {v0, v3}, Lcom/codemao/midi/sun/SoftFilter;->processAudio(Lcom/codemao/midi/sun/SoftAudioBuffer;)V

    if-eqz v2, :cond_8e

    .line 864
    iget-object v0, v6, Lcom/codemao/midi/sun/SoftVoice;->filter_right:Lcom/codemao/midi/sun/SoftFilter;

    invoke-virtual {v0, v2}, Lcom/codemao/midi/sun/SoftFilter;->processAudio(Lcom/codemao/midi/sun/SoftAudioBuffer;)V

    .line 867
    :cond_8e
    iget v0, v6, Lcom/codemao/midi/sun/SoftVoice;->nrofchannels:I

    if-ne v0, v7, :cond_bb

    .line 868
    iget v0, v6, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_left:F

    iget v1, v6, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_right:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000  # 2.0f

    div-float v5, v0, v1

    iput v5, v6, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_left:F

    .line 869
    iget v4, v6, Lcom/codemao/midi/sun/SoftVoice;->last_out_mixer_left:F

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v16, v2

    move-object v2, v8

    move-object/from16 v17, v3

    move-object v3, v12

    invoke-virtual/range {v0 .. v5}, Lcom/codemao/midi/sun/SoftVoice;->mixAudioStream(Lcom/codemao/midi/sun/SoftAudioBuffer;Lcom/codemao/midi/sun/SoftAudioBuffer;Lcom/codemao/midi/sun/SoftAudioBuffer;FF)V

    if-eqz v16, :cond_108

    .line 871
    iget v4, v6, Lcom/codemao/midi/sun/SoftVoice;->last_out_mixer_left:F

    iget v5, v6, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_left:F

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v8

    move-object v3, v12

    invoke-virtual/range {v0 .. v5}, Lcom/codemao/midi/sun/SoftVoice;->mixAudioStream(Lcom/codemao/midi/sun/SoftAudioBuffer;Lcom/codemao/midi/sun/SoftAudioBuffer;Lcom/codemao/midi/sun/SoftAudioBuffer;FF)V

    goto :goto_108

    :cond_bb
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    if-nez v16, :cond_de

    .line 874
    iget v3, v6, Lcom/codemao/midi/sun/SoftVoice;->last_out_mixer_left:F

    iget v0, v6, Lcom/codemao/midi/sun/SoftVoice;->last_out_mixer_right:F

    cmpl-float v0, v3, v0

    if-nez v0, :cond_de

    iget v2, v6, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_left:F

    iget v0, v6, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_right:F

    cmpl-float v0, v2, v0

    if-nez v0, :cond_de

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move v8, v2

    move-object v2, v4

    move v4, v3

    move-object v3, v5

    move v5, v8

    .line 878
    invoke-virtual/range {v0 .. v5}, Lcom/codemao/midi/sun/SoftVoice;->mixAudioStream(Lcom/codemao/midi/sun/SoftAudioBuffer;Lcom/codemao/midi/sun/SoftAudioBuffer;Lcom/codemao/midi/sun/SoftAudioBuffer;FF)V

    goto :goto_108

    .line 882
    :cond_de
    iget v4, v6, Lcom/codemao/midi/sun/SoftVoice;->last_out_mixer_left:F

    iget v5, v6, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_left:F

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object v2, v8

    move-object v3, v12

    invoke-virtual/range {v0 .. v5}, Lcom/codemao/midi/sun/SoftVoice;->mixAudioStream(Lcom/codemao/midi/sun/SoftAudioBuffer;Lcom/codemao/midi/sun/SoftAudioBuffer;Lcom/codemao/midi/sun/SoftAudioBuffer;FF)V

    if-eqz v16, :cond_fb

    .line 884
    iget v4, v6, Lcom/codemao/midi/sun/SoftVoice;->last_out_mixer_right:F

    iget v5, v6, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_right:F

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v9

    move-object v3, v13

    invoke-virtual/range {v0 .. v5}, Lcom/codemao/midi/sun/SoftVoice;->mixAudioStream(Lcom/codemao/midi/sun/SoftAudioBuffer;Lcom/codemao/midi/sun/SoftAudioBuffer;Lcom/codemao/midi/sun/SoftAudioBuffer;FF)V

    goto :goto_108

    .line 887
    :cond_fb
    iget v4, v6, Lcom/codemao/midi/sun/SoftVoice;->last_out_mixer_right:F

    iget v5, v6, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_right:F

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object v2, v9

    move-object v3, v13

    invoke-virtual/range {v0 .. v5}, Lcom/codemao/midi/sun/SoftVoice;->mixAudioStream(Lcom/codemao/midi/sun/SoftAudioBuffer;Lcom/codemao/midi/sun/SoftAudioBuffer;Lcom/codemao/midi/sun/SoftAudioBuffer;FF)V

    :cond_108
    :goto_108
    if-nez v16, :cond_121

    .line 893
    iget v4, v6, Lcom/codemao/midi/sun/SoftVoice;->last_out_mixer_effect1:F

    iget v5, v6, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_effect1:F

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object v2, v10

    move-object v3, v14

    invoke-virtual/range {v0 .. v5}, Lcom/codemao/midi/sun/SoftVoice;->mixAudioStream(Lcom/codemao/midi/sun/SoftAudioBuffer;Lcom/codemao/midi/sun/SoftAudioBuffer;Lcom/codemao/midi/sun/SoftAudioBuffer;FF)V

    .line 895
    iget v4, v6, Lcom/codemao/midi/sun/SoftVoice;->last_out_mixer_effect2:F

    iget v5, v6, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_effect2:F

    move-object v2, v11

    move-object v3, v15

    invoke-virtual/range {v0 .. v5}, Lcom/codemao/midi/sun/SoftVoice;->mixAudioStream(Lcom/codemao/midi/sun/SoftAudioBuffer;Lcom/codemao/midi/sun/SoftAudioBuffer;Lcom/codemao/midi/sun/SoftAudioBuffer;FF)V

    goto :goto_163

    .line 898
    :cond_121
    iget v0, v6, Lcom/codemao/midi/sun/SoftVoice;->last_out_mixer_effect1:F

    const/high16 v8, 0x3f000000  # 0.5f

    mul-float v4, v0, v8

    iget v0, v6, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_effect1:F

    mul-float v5, v0, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object v2, v10

    move-object v3, v14

    invoke-virtual/range {v0 .. v5}, Lcom/codemao/midi/sun/SoftVoice;->mixAudioStream(Lcom/codemao/midi/sun/SoftAudioBuffer;Lcom/codemao/midi/sun/SoftAudioBuffer;Lcom/codemao/midi/sun/SoftAudioBuffer;FF)V

    .line 900
    iget v0, v6, Lcom/codemao/midi/sun/SoftVoice;->last_out_mixer_effect2:F

    mul-float v4, v0, v8

    iget v0, v6, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_effect2:F

    mul-float v5, v0, v8

    move-object/from16 v0, p0

    move-object v2, v11

    move-object v3, v15

    invoke-virtual/range {v0 .. v5}, Lcom/codemao/midi/sun/SoftVoice;->mixAudioStream(Lcom/codemao/midi/sun/SoftAudioBuffer;Lcom/codemao/midi/sun/SoftAudioBuffer;Lcom/codemao/midi/sun/SoftAudioBuffer;FF)V

    .line 902
    iget v0, v6, Lcom/codemao/midi/sun/SoftVoice;->last_out_mixer_effect1:F

    mul-float v4, v0, v8

    iget v0, v6, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_effect1:F

    mul-float v5, v0, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v10

    move-object v3, v14

    invoke-virtual/range {v0 .. v5}, Lcom/codemao/midi/sun/SoftVoice;->mixAudioStream(Lcom/codemao/midi/sun/SoftAudioBuffer;Lcom/codemao/midi/sun/SoftAudioBuffer;Lcom/codemao/midi/sun/SoftAudioBuffer;FF)V

    .line 904
    iget v0, v6, Lcom/codemao/midi/sun/SoftVoice;->last_out_mixer_effect2:F

    mul-float v4, v0, v8

    iget v0, v6, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_effect2:F

    mul-float v5, v0, v8

    move-object/from16 v0, p0

    move-object v2, v11

    move-object v3, v15

    invoke-virtual/range {v0 .. v5}, Lcom/codemao/midi/sun/SoftVoice;->mixAudioStream(Lcom/codemao/midi/sun/SoftAudioBuffer;Lcom/codemao/midi/sun/SoftAudioBuffer;Lcom/codemao/midi/sun/SoftAudioBuffer;FF)V

    .line 908
    :goto_163
    iget v0, v6, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_left:F

    iput v0, v6, Lcom/codemao/midi/sun/SoftVoice;->last_out_mixer_left:F

    .line 909
    iget v0, v6, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_right:F

    iput v0, v6, Lcom/codemao/midi/sun/SoftVoice;->last_out_mixer_right:F

    .line 910
    iget v0, v6, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_effect1:F

    iput v0, v6, Lcom/codemao/midi/sun/SoftVoice;->last_out_mixer_effect1:F

    .line 911
    iget v0, v6, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_effect2:F

    iput v0, v6, Lcom/codemao/midi/sun/SoftVoice;->last_out_mixer_effect2:F

    .line 913
    iget-boolean v0, v6, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_end:Z

    if-eqz v0, :cond_179

    .line 914
    iput-boolean v7, v6, Lcom/codemao/midi/sun/SoftVoice;->stopping:Z

    :cond_179
    return-void
.end method

.method protected processControlLogic()V
    .registers 21

    move-object/from16 v10, p0

    .line 575
    iget-boolean v0, v10, Lcom/codemao/midi/sun/SoftVoice;->stopping:Z

    const/4 v11, 0x0

    if-eqz v0, :cond_48

    .line 576
    iput-boolean v11, v10, Lcom/codemao/midi/javax/VoiceStatus;->active:Z

    .line 577
    iput-boolean v11, v10, Lcom/codemao/midi/sun/SoftVoice;->stopping:Z

    .line 578
    iput-boolean v11, v10, Lcom/codemao/midi/sun/SoftVoice;->audiostarted:Z

    const/4 v12, 0x0

    .line 580
    iput-object v12, v10, Lcom/codemao/midi/sun/SoftVoice;->performer:Lcom/codemao/midi/sun/SoftPerformer;

    .line 581
    iput-object v12, v10, Lcom/codemao/midi/sun/SoftVoice;->connections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    .line 582
    iput-object v12, v10, Lcom/codemao/midi/sun/SoftVoice;->extendedConnectionBlocks:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    .line 583
    iput-object v12, v10, Lcom/codemao/midi/sun/SoftVoice;->channelmixer:Lcom/codemao/midi/sun/ModelChannelMixer;

    .line 584
    iget-object v0, v10, Lcom/codemao/midi/sun/SoftVoice;->osc_stream:Lcom/codemao/midi/sun/ModelOscillatorStream;

    if-eqz v0, :cond_1f

    .line 586
    :try_start_1a
    invoke-interface {v0}, Lcom/codemao/midi/sun/ModelOscillatorStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_1f

    :catch_1e
    nop

    .line 591
    :cond_1f
    :goto_1f
    iget-object v0, v10, Lcom/codemao/midi/sun/SoftVoice;->stealer_channel:Lcom/codemao/midi/sun/SoftChannel;

    if-eqz v0, :cond_48

    .line 592
    iget-object v2, v10, Lcom/codemao/midi/sun/SoftVoice;->stealer_performer:Lcom/codemao/midi/sun/SoftPerformer;

    iget v3, v10, Lcom/codemao/midi/sun/SoftVoice;->stealer_voiceID:I

    iget v4, v10, Lcom/codemao/midi/sun/SoftVoice;->stealer_noteNumber:I

    iget v5, v10, Lcom/codemao/midi/sun/SoftVoice;->stealer_velocity:I

    const/4 v6, 0x0

    iget-object v7, v10, Lcom/codemao/midi/sun/SoftVoice;->stealer_extendedConnectionBlocks:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    iget-object v8, v10, Lcom/codemao/midi/sun/SoftVoice;->stealer_channelmixer:Lcom/codemao/midi/sun/ModelChannelMixer;

    iget-boolean v9, v10, Lcom/codemao/midi/sun/SoftVoice;->stealer_releaseTriggered:Z

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v9}, Lcom/codemao/midi/sun/SoftChannel;->initVoice(Lcom/codemao/midi/sun/SoftVoice;Lcom/codemao/midi/sun/SoftPerformer;IIII[Lcom/codemao/midi/sun/ModelConnectionBlock;Lcom/codemao/midi/sun/ModelChannelMixer;Z)V

    .line 596
    iput-boolean v11, v10, Lcom/codemao/midi/sun/SoftVoice;->stealer_releaseTriggered:Z

    .line 597
    iput-object v12, v10, Lcom/codemao/midi/sun/SoftVoice;->stealer_channel:Lcom/codemao/midi/sun/SoftChannel;

    .line 598
    iput-object v12, v10, Lcom/codemao/midi/sun/SoftVoice;->stealer_performer:Lcom/codemao/midi/sun/SoftPerformer;

    const/4 v0, -0x1

    .line 599
    iput v0, v10, Lcom/codemao/midi/sun/SoftVoice;->stealer_voiceID:I

    .line 600
    iput v11, v10, Lcom/codemao/midi/sun/SoftVoice;->stealer_noteNumber:I

    .line 601
    iput v11, v10, Lcom/codemao/midi/sun/SoftVoice;->stealer_velocity:I

    .line 602
    iput-object v12, v10, Lcom/codemao/midi/sun/SoftVoice;->stealer_extendedConnectionBlocks:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    .line 603
    iput-object v12, v10, Lcom/codemao/midi/sun/SoftVoice;->stealer_channelmixer:Lcom/codemao/midi/sun/ModelChannelMixer;

    .line 606
    :cond_48
    iget-boolean v0, v10, Lcom/codemao/midi/sun/SoftVoice;->started:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a8

    .line 607
    iput-boolean v1, v10, Lcom/codemao/midi/sun/SoftVoice;->audiostarted:Z

    .line 609
    iget-object v0, v10, Lcom/codemao/midi/sun/SoftVoice;->performer:Lcom/codemao/midi/sun/SoftPerformer;

    iget-object v0, v0, Lcom/codemao/midi/sun/SoftPerformer;->oscillators:[Lcom/codemao/midi/sun/ModelOscillator;

    aget-object v0, v0, v11

    .line 611
    iput-boolean v11, v10, Lcom/codemao/midi/sun/SoftVoice;->osc_stream_off_transmitted:Z

    .line 612
    instance-of v2, v0, Lcom/codemao/midi/sun/ModelWavetable;

    if-eqz v2, :cond_74

    .line 614
    :try_start_5b
    iget-object v2, v10, Lcom/codemao/midi/sun/SoftVoice;->resampler:Lcom/codemao/midi/sun/SoftResamplerStreamer;

    move-object v3, v0

    check-cast v3, Lcom/codemao/midi/sun/ModelWavetable;

    iget-object v4, v10, Lcom/codemao/midi/sun/SoftVoice;->synthesizer:Lcom/codemao/midi/sun/SoftSynthesizer;

    .line 615
    invoke-virtual {v4}, Lcom/codemao/midi/sun/SoftSynthesizer;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleRate()F

    move-result v4

    .line 614
    invoke-interface {v2, v3, v4}, Lcom/codemao/midi/sun/SoftResamplerStreamer;->open(Lcom/codemao/midi/sun/ModelWavetable;F)V

    .line 616
    iget-object v2, v10, Lcom/codemao/midi/sun/SoftVoice;->resampler:Lcom/codemao/midi/sun/SoftResamplerStreamer;

    iput-object v2, v10, Lcom/codemao/midi/sun/SoftVoice;->osc_stream:Lcom/codemao/midi/sun/ModelOscillatorStream;
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_71} :catch_72

    goto :goto_84

    :catch_72
    nop

    goto :goto_84

    .line 621
    :cond_74
    iget-object v2, v10, Lcom/codemao/midi/sun/SoftVoice;->synthesizer:Lcom/codemao/midi/sun/SoftSynthesizer;

    invoke-virtual {v2}, Lcom/codemao/midi/sun/SoftSynthesizer;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleRate()F

    move-result v2

    invoke-interface {v0, v2}, Lcom/codemao/midi/sun/ModelOscillator;->open(F)Lcom/codemao/midi/sun/ModelOscillatorStream;

    move-result-object v2

    iput-object v2, v10, Lcom/codemao/midi/sun/SoftVoice;->osc_stream:Lcom/codemao/midi/sun/ModelOscillatorStream;

    .line 623
    :goto_84
    invoke-interface {v0}, Lcom/codemao/midi/sun/ModelOscillator;->getAttenuation()F

    move-result v2

    iput v2, v10, Lcom/codemao/midi/sun/SoftVoice;->osc_attenuation:F

    .line 624
    invoke-interface {v0}, Lcom/codemao/midi/sun/ModelOscillator;->getChannels()I

    move-result v0

    iput v0, v10, Lcom/codemao/midi/sun/SoftVoice;->osc_stream_nrofchannels:I

    .line 625
    iget-object v2, v10, Lcom/codemao/midi/sun/SoftVoice;->osc_buff:[[F

    if-eqz v2, :cond_97

    array-length v2, v2

    if-ge v2, v0, :cond_9b

    .line 626
    :cond_97
    new-array v0, v0, [[F

    iput-object v0, v10, Lcom/codemao/midi/sun/SoftVoice;->osc_buff:[[F

    .line 628
    :cond_9b
    iget-object v0, v10, Lcom/codemao/midi/sun/SoftVoice;->osc_stream:Lcom/codemao/midi/sun/ModelOscillatorStream;

    if-eqz v0, :cond_a8

    .line 629
    iget-object v2, v10, Lcom/codemao/midi/sun/SoftVoice;->softchannel:Lcom/codemao/midi/sun/SoftChannel;

    iget v3, v10, Lcom/codemao/midi/sun/SoftVoice;->noteOn_noteNumber:I

    iget v4, v10, Lcom/codemao/midi/sun/SoftVoice;->noteOn_velocity:I

    invoke-interface {v0, v2, v10, v3, v4}, Lcom/codemao/midi/sun/ModelOscillatorStream;->noteOn(Lcom/codemao/midi/javax/MidiChannel;Lcom/codemao/midi/javax/VoiceStatus;II)V

    .line 634
    :cond_a8
    iget-boolean v0, v10, Lcom/codemao/midi/sun/SoftVoice;->audiostarted:Z

    if-eqz v0, :cond_26b

    .line 635
    iget-boolean v0, v10, Lcom/codemao/midi/sun/SoftVoice;->portamento:Z

    if-eqz v0, :cond_106

    .line 636
    iget-wide v2, v10, Lcom/codemao/midi/sun/SoftVoice;->tunedKey:D

    iget-object v0, v10, Lcom/codemao/midi/sun/SoftVoice;->co_noteon_keynumber:[D

    aget-wide v4, v0, v11

    const-wide/high16 v6, 0x4060000000000000L  # 128.0

    mul-double v4, v4, v6

    sub-double/2addr v2, v4

    .line 637
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3ddb7cdfd9d7bdbbL  # 1.0E-10

    const-wide/high16 v8, 0x3f80000000000000L  # 0.0078125

    cmpg-double v0, v4, v6

    if-gez v0, :cond_d5

    .line 639
    iget-object v0, v10, Lcom/codemao/midi/sun/SoftVoice;->co_noteon_keynumber:[D

    iget-wide v2, v10, Lcom/codemao/midi/sun/SoftVoice;->tunedKey:D

    mul-double v2, v2, v8

    aput-wide v2, v0, v11

    .line 640
    iput-boolean v11, v10, Lcom/codemao/midi/sun/SoftVoice;->portamento:Z

    goto :goto_f0

    .line 642
    :cond_d5
    iget-object v0, v10, Lcom/codemao/midi/sun/SoftVoice;->softchannel:Lcom/codemao/midi/sun/SoftChannel;

    iget-wide v6, v0, Lcom/codemao/midi/sun/SoftChannel;->portamento_time:D

    cmpl-double v0, v4, v6

    if-lez v0, :cond_e7

    .line 643
    invoke-static {v2, v3}, Ljava/lang/Math;->signum(D)D

    move-result-wide v2

    iget-object v0, v10, Lcom/codemao/midi/sun/SoftVoice;->softchannel:Lcom/codemao/midi/sun/SoftChannel;

    iget-wide v4, v0, Lcom/codemao/midi/sun/SoftChannel;->portamento_time:D

    mul-double v2, v2, v4

    .line 645
    :cond_e7
    iget-object v0, v10, Lcom/codemao/midi/sun/SoftVoice;->co_noteon_keynumber:[D

    aget-wide v4, v0, v11

    mul-double v2, v2, v8

    add-double/2addr v4, v2

    aput-wide v4, v0, v11

    .line 648
    :goto_f0
    iget-object v0, v10, Lcom/codemao/midi/sun/SoftVoice;->performer:Lcom/codemao/midi/sun/SoftPerformer;

    iget-object v0, v0, Lcom/codemao/midi/sun/SoftPerformer;->midi_connections:[[I

    const/4 v2, 0x4

    aget-object v0, v0, v2

    if-nez v0, :cond_fa

    return-void

    :cond_fa
    const/4 v2, 0x0

    .line 651
    :goto_fb
    array-length v3, v0

    if-ge v2, v3, :cond_106

    .line 652
    aget v3, v0, v2

    invoke-direct {v10, v3}, Lcom/codemao/midi/sun/SoftVoice;->processConnection(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_fb

    .line 655
    :cond_106
    iget-object v0, v10, Lcom/codemao/midi/sun/SoftVoice;->eg:Lcom/codemao/midi/sun/SoftProcess;

    invoke-interface {v0}, Lcom/codemao/midi/sun/SoftProcess;->processControlLogic()V

    .line 656
    iget-object v0, v10, Lcom/codemao/midi/sun/SoftVoice;->lfo:Lcom/codemao/midi/sun/SoftProcess;

    invoke-interface {v0}, Lcom/codemao/midi/sun/SoftProcess;->processControlLogic()V

    const/4 v0, 0x0

    .line 658
    :goto_111
    iget-object v2, v10, Lcom/codemao/midi/sun/SoftVoice;->performer:Lcom/codemao/midi/sun/SoftPerformer;

    iget-object v2, v2, Lcom/codemao/midi/sun/SoftPerformer;->ctrl_connections:[I

    array-length v3, v2

    if-ge v0, v3, :cond_120

    .line 659
    aget v2, v2, v0

    invoke-direct {v10, v2}, Lcom/codemao/midi/sun/SoftVoice;->processConnection(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_111

    .line 661
    :cond_120
    iget-object v0, v10, Lcom/codemao/midi/sun/SoftVoice;->osc_stream:Lcom/codemao/midi/sun/ModelOscillatorStream;

    iget-object v2, v10, Lcom/codemao/midi/sun/SoftVoice;->co_osc_pitch:[D

    aget-wide v3, v2, v11

    double-to-float v2, v3

    invoke-interface {v0, v2}, Lcom/codemao/midi/sun/ModelOscillatorStream;->setPitch(F)V

    .line 663
    iget-object v0, v10, Lcom/codemao/midi/sun/SoftVoice;->co_filter_type:[D

    aget-wide v2, v0, v11

    double-to-int v0, v2

    .line 666
    iget-object v2, v10, Lcom/codemao/midi/sun/SoftVoice;->co_filter_freq:[D

    aget-wide v3, v2, v11

    const-wide v5, 0x40ca5e0000000000L  # 13500.0

    const-wide/high16 v7, 0x4000000000000000L  # 2.0

    cmpl-double v9, v3, v5

    if-nez v9, :cond_144

    const-wide v2, 0x40d3720820155763L  # 19912.126958213175

    goto :goto_163

    :cond_144
    const-wide v3, 0x407b800000000000L  # 440.0

    .line 669
    aget-wide v5, v2, v11

    const-wide v12, 0x40baf40000000000L  # 6900.0

    sub-double/2addr v5, v12

    .line 671
    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    const-wide v14, 0x4092c00000000000L  # 1200.0

    div-double/2addr v12, v14

    mul-double v5, v5, v12

    .line 669
    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    mul-double v2, v5, v3

    .line 680
    :goto_163
    iget-object v4, v10, Lcom/codemao/midi/sun/SoftVoice;->co_filter_q:[D

    aget-wide v5, v4, v11

    const-wide/high16 v12, 0x4024000000000000L  # 10.0

    div-double/2addr v5, v12

    .line 681
    iget-object v4, v10, Lcom/codemao/midi/sun/SoftVoice;->filter_left:Lcom/codemao/midi/sun/SoftFilter;

    invoke-virtual {v4, v0}, Lcom/codemao/midi/sun/SoftFilter;->setFilterType(I)V

    .line 682
    iget-object v4, v10, Lcom/codemao/midi/sun/SoftVoice;->filter_left:Lcom/codemao/midi/sun/SoftFilter;

    invoke-virtual {v4, v2, v3}, Lcom/codemao/midi/sun/SoftFilter;->setFrequency(D)V

    .line 683
    iget-object v4, v10, Lcom/codemao/midi/sun/SoftVoice;->filter_left:Lcom/codemao/midi/sun/SoftFilter;

    invoke-virtual {v4, v5, v6}, Lcom/codemao/midi/sun/SoftFilter;->setResonance(D)V

    .line 684
    iget-object v4, v10, Lcom/codemao/midi/sun/SoftVoice;->filter_right:Lcom/codemao/midi/sun/SoftFilter;

    invoke-virtual {v4, v0}, Lcom/codemao/midi/sun/SoftFilter;->setFilterType(I)V

    .line 685
    iget-object v0, v10, Lcom/codemao/midi/sun/SoftVoice;->filter_right:Lcom/codemao/midi/sun/SoftFilter;

    invoke-virtual {v0, v2, v3}, Lcom/codemao/midi/sun/SoftFilter;->setFrequency(D)V

    .line 686
    iget-object v0, v10, Lcom/codemao/midi/sun/SoftVoice;->filter_right:Lcom/codemao/midi/sun/SoftFilter;

    invoke-virtual {v0, v5, v6}, Lcom/codemao/midi/sun/SoftFilter;->setResonance(D)V

    .line 691
    iget v0, v10, Lcom/codemao/midi/sun/SoftVoice;->osc_attenuation:F

    neg-float v0, v0

    float-to-double v2, v0

    iget-object v0, v10, Lcom/codemao/midi/sun/SoftVoice;->co_mixer_gain:[D

    aget-wide v4, v0, v11

    add-double/2addr v2, v4

    .line 692
    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    const-wide/high16 v12, 0x4069000000000000L  # 200.0

    div-double/2addr v4, v12

    mul-double v2, v2, v4

    .line 691
    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 694
    iget-object v2, v10, Lcom/codemao/midi/sun/SoftVoice;->co_mixer_gain:[D

    aget-wide v3, v2, v11

    const-wide/high16 v5, -0x3f72000000000000L  # -960.0

    cmpg-double v9, v3, v5

    if-gtz v9, :cond_1aa

    const/4 v0, 0x0

    .line 697
    :cond_1aa
    iget-boolean v3, v10, Lcom/codemao/midi/sun/SoftVoice;->soundoff:Z

    if-eqz v3, :cond_1b1

    .line 698
    iput-boolean v1, v10, Lcom/codemao/midi/sun/SoftVoice;->stopping:Z

    const/4 v0, 0x0

    :cond_1b1
    float-to-double v3, v0

    .line 706
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 710
    iget-object v3, v10, Lcom/codemao/midi/sun/SoftVoice;->co_mixer_pan:[D

    aget-wide v4, v3, v11

    const-wide v12, 0x3f50624dd2f1a9fcL  # 0.001

    mul-double v4, v4, v12

    const-wide/16 v14, 0x0

    const-wide/high16 v16, 0x3ff0000000000000L  # 1.0

    cmpg-double v3, v4, v14

    if-gez v3, :cond_1ca

    move-wide v4, v14

    goto :goto_1d0

    :cond_1ca
    cmpl-double v3, v4, v16

    if-lez v3, :cond_1d0

    move-wide/from16 v4, v16

    :cond_1d0
    :goto_1d0
    const-wide/high16 v14, 0x3fe0000000000000L  # 0.5

    cmpl-double v3, v4, v14

    if-nez v3, :cond_1e0

    const v3, 0x3f3504f3

    mul-float v3, v3, v0

    .line 718
    iput v3, v10, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_left:F

    .line 719
    iput v3, v10, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_right:F

    goto :goto_1fb

    :cond_1e0
    const-wide v18, 0x400921fb54442d18L  # Math.PI

    mul-double v4, v4, v18

    mul-double v4, v4, v14

    .line 721
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v1, v1, v0

    iput v1, v10, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_left:F

    .line 722
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v1, v1, v0

    iput v1, v10, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_right:F

    .line 725
    :goto_1fb
    iget-object v1, v10, Lcom/codemao/midi/sun/SoftVoice;->co_mixer_balance:[D

    aget-wide v4, v1, v11

    mul-double v4, v4, v12

    cmpl-double v1, v4, v14

    if-eqz v1, :cond_21e

    if-lez v1, :cond_214

    .line 728
    iget v1, v10, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_left:F

    float-to-double v1, v1

    sub-double v16, v16, v4

    mul-double v16, v16, v7

    mul-double v1, v1, v16

    double-to-float v1, v1

    iput v1, v10, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_left:F

    goto :goto_21e

    .line 730
    :cond_214
    iget v1, v10, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_right:F

    float-to-double v1, v1

    mul-double v4, v4, v7

    mul-double v1, v1, v4

    double-to-float v1, v1

    iput v1, v10, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_right:F

    .line 733
    :cond_21e
    :goto_21e
    iget-object v1, v10, Lcom/codemao/midi/sun/SoftVoice;->synthesizer:Lcom/codemao/midi/sun/SoftSynthesizer;

    iget-boolean v2, v1, Lcom/codemao/midi/sun/SoftSynthesizer;->reverb_on:Z

    if-eqz v2, :cond_232

    .line 734
    iget-object v2, v10, Lcom/codemao/midi/sun/SoftVoice;->co_mixer_reverb:[D

    aget-wide v4, v2, v11

    mul-double v4, v4, v12

    double-to-float v2, v4

    iput v2, v10, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_effect1:F

    mul-float v2, v2, v0

    .line 735
    iput v2, v10, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_effect1:F

    goto :goto_235

    :cond_232
    const/4 v2, 0x0

    .line 737
    iput v2, v10, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_effect1:F

    .line 738
    :goto_235
    iget-boolean v1, v1, Lcom/codemao/midi/sun/SoftSynthesizer;->chorus_on:Z

    if-eqz v1, :cond_247

    .line 739
    iget-object v1, v10, Lcom/codemao/midi/sun/SoftVoice;->co_mixer_chorus:[D

    aget-wide v4, v1, v11

    mul-double v4, v4, v12

    double-to-float v1, v4

    iput v1, v10, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_effect2:F

    mul-float v1, v1, v0

    .line 740
    iput v1, v10, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_effect2:F

    goto :goto_24a

    :cond_247
    const/4 v0, 0x0

    .line 742
    iput v0, v10, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_effect2:F

    .line 743
    :goto_24a
    iget-object v0, v10, Lcom/codemao/midi/sun/SoftVoice;->co_mixer_active:[D

    aget-wide v1, v0, v11

    cmpg-double v0, v1, v14

    if-gez v0, :cond_254

    const/4 v0, 0x1

    goto :goto_255

    :cond_254
    const/4 v0, 0x0

    :goto_255
    iput-boolean v0, v10, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_end:Z

    .line 745
    iget-boolean v0, v10, Lcom/codemao/midi/sun/SoftVoice;->on:Z

    if-nez v0, :cond_26b

    .line 746
    iget-boolean v0, v10, Lcom/codemao/midi/sun/SoftVoice;->osc_stream_off_transmitted:Z

    if-nez v0, :cond_26b

    const/4 v0, 0x1

    .line 747
    iput-boolean v0, v10, Lcom/codemao/midi/sun/SoftVoice;->osc_stream_off_transmitted:Z

    .line 748
    iget-object v0, v10, Lcom/codemao/midi/sun/SoftVoice;->osc_stream:Lcom/codemao/midi/sun/ModelOscillatorStream;

    if-eqz v0, :cond_26b

    .line 749
    iget v1, v10, Lcom/codemao/midi/sun/SoftVoice;->noteOff_velocity:I

    invoke-interface {v0, v1}, Lcom/codemao/midi/sun/ModelOscillatorStream;->noteOff(I)V

    .line 753
    :cond_26b
    iget-boolean v0, v10, Lcom/codemao/midi/sun/SoftVoice;->started:Z

    if-eqz v0, :cond_281

    .line 754
    iget v0, v10, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_left:F

    iput v0, v10, Lcom/codemao/midi/sun/SoftVoice;->last_out_mixer_left:F

    .line 755
    iget v0, v10, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_right:F

    iput v0, v10, Lcom/codemao/midi/sun/SoftVoice;->last_out_mixer_right:F

    .line 756
    iget v0, v10, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_effect1:F

    iput v0, v10, Lcom/codemao/midi/sun/SoftVoice;->last_out_mixer_effect1:F

    .line 757
    iget v0, v10, Lcom/codemao/midi/sun/SoftVoice;->out_mixer_effect2:F

    iput v0, v10, Lcom/codemao/midi/sun/SoftVoice;->last_out_mixer_effect2:F

    .line 758
    iput-boolean v11, v10, Lcom/codemao/midi/sun/SoftVoice;->started:Z

    :cond_281
    return-void
.end method

.method protected redamp()V
    .registers 8

    .line 557
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftVoice;->co_noteon_on:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/high16 v4, 0x3fe0000000000000L  # 0.5

    cmpl-double v6, v2, v4

    if-lez v6, :cond_c

    return-void

    .line 559
    :cond_c
    aget-wide v2, v0, v1

    const-wide/high16 v4, -0x4020000000000000L  # -0.5

    cmpg-double v6, v2, v4

    if-gez v6, :cond_15

    return-void

    :cond_15
    const/4 v2, 0x1

    .line 562
    iput-boolean v2, p0, Lcom/codemao/midi/sun/SoftVoice;->sustain:Z

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    .line 563
    aput-wide v2, v0, v1

    .line 565
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftVoice;->performer:Lcom/codemao/midi/sun/SoftPerformer;

    if-nez v0, :cond_21

    return-void

    .line 567
    :cond_21
    iget-object v0, v0, Lcom/codemao/midi/sun/SoftPerformer;->midi_connections:[[I

    const/4 v2, 0x3

    aget-object v0, v0, v2

    if-nez v0, :cond_29

    return-void

    .line 570
    :cond_29
    :goto_29
    array-length v2, v0

    if-ge v1, v2, :cond_34

    .line 571
    aget v2, v0, v1

    invoke-direct {p0, v2}, Lcom/codemao/midi/sun/SoftVoice;->processConnection(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_34
    return-void
.end method

.method protected rpnChange(II)V
    .registers 4

    .line 479
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftVoice;->performer:Lcom/codemao/midi/sun/SoftPerformer;

    if-nez p2, :cond_5

    return-void

    .line 481
    :cond_5
    iget-object p2, p2, Lcom/codemao/midi/sun/SoftPerformer;->midi_rpn_connections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-nez p1, :cond_14

    return-void

    :cond_14
    const/4 p2, 0x0

    .line 484
    :goto_15
    array-length v0, p1

    if-ge p2, v0, :cond_20

    .line 485
    aget v0, p1, p2

    invoke-direct {p0, v0}, Lcom/codemao/midi/sun/SoftVoice;->processConnection(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_15

    :cond_20
    return-void
.end method

.method protected setChannelPressure(I)V
    .registers 4

    .line 449
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftVoice;->performer:Lcom/codemao/midi/sun/SoftPerformer;

    if-nez p1, :cond_5

    return-void

    .line 451
    :cond_5
    iget-object p1, p1, Lcom/codemao/midi/sun/SoftPerformer;->midi_connections:[[I

    const/4 v0, 0x1

    aget-object p1, p1, v0

    if-nez p1, :cond_d

    return-void

    :cond_d
    const/4 v0, 0x0

    .line 454
    :goto_e
    array-length v1, p1

    if-ge v0, v1, :cond_19

    .line 455
    aget v1, p1, v0

    invoke-direct {p0, v1}, Lcom/codemao/midi/sun/SoftVoice;->processConnection(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_19
    return-void
.end method

.method protected setMute(Z)V
    .registers 8

    .line 499
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftVoice;->co_mixer_gain:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    iget v4, p0, Lcom/codemao/midi/sun/SoftVoice;->lastMuteValue:F

    float-to-double v4, v4

    sub-double/2addr v2, v4

    aput-wide v2, v0, v1

    if-eqz p1, :cond_10

    const/high16 p1, -0x3b900000  # -960.0f

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    .line 500
    :goto_11
    iput p1, p0, Lcom/codemao/midi/sun/SoftVoice;->lastMuteValue:F

    .line 501
    aget-wide v2, v0, v1

    float-to-double v4, p1

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    return-void
.end method

.method protected setNote(I)V
    .registers 6

    .line 297
    iput p1, p0, Lcom/codemao/midi/javax/VoiceStatus;->note:I

    .line 298
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftVoice;->tuning:Lcom/codemao/midi/sun/SoftTuning;

    invoke-virtual {v0, p1}, Lcom/codemao/midi/sun/SoftTuning;->getTuning(I)D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L  # 100.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/midi/sun/SoftVoice;->tunedKey:D

    return-void
.end method

.method protected setPitchBend(I)V
    .registers 4

    .line 489
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftVoice;->performer:Lcom/codemao/midi/sun/SoftPerformer;

    if-nez p1, :cond_5

    return-void

    .line 491
    :cond_5
    iget-object p1, p1, Lcom/codemao/midi/sun/SoftPerformer;->midi_connections:[[I

    const/4 v0, 0x0

    aget-object p1, p1, v0

    if-nez p1, :cond_d

    return-void

    .line 494
    :cond_d
    :goto_d
    array-length v1, p1

    if-ge v0, v1, :cond_18

    .line 495
    aget v1, p1, v0

    invoke-direct {p0, v1}, Lcom/codemao/midi/sun/SoftVoice;->processConnection(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_18
    return-void
.end method

.method protected setPolyPressure(I)V
    .registers 4

    .line 439
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftVoice;->performer:Lcom/codemao/midi/sun/SoftPerformer;

    if-nez p1, :cond_5

    return-void

    .line 441
    :cond_5
    iget-object p1, p1, Lcom/codemao/midi/sun/SoftPerformer;->midi_connections:[[I

    const/4 v0, 0x2

    aget-object p1, p1, v0

    if-nez p1, :cond_d

    return-void

    :cond_d
    const/4 v0, 0x0

    .line 444
    :goto_e
    array-length v1, p1

    if-ge v0, v1, :cond_19

    .line 445
    aget v1, p1, v0

    invoke-direct {p0, v1}, Lcom/codemao/midi/sun/SoftVoice;->processConnection(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_19
    return-void
.end method

.method protected setSoloMute(Z)V
    .registers 8

    .line 505
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftVoice;->co_mixer_gain:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    iget v4, p0, Lcom/codemao/midi/sun/SoftVoice;->lastSoloMuteValue:F

    float-to-double v4, v4

    sub-double/2addr v2, v4

    aput-wide v2, v0, v1

    if-eqz p1, :cond_10

    const/high16 p1, -0x3b900000  # -960.0f

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    .line 506
    :goto_11
    iput p1, p0, Lcom/codemao/midi/sun/SoftVoice;->lastSoloMuteValue:F

    .line 507
    aget-wide v2, v0, v1

    float-to-double v4, p1

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    return-void
.end method

.method protected shutdown()V
    .registers 8

    .line 511
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftVoice;->co_noteon_on:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/high16 v4, -0x4020000000000000L  # -0.5

    cmpg-double v6, v2, v4

    if-gez v6, :cond_c

    return-void

    .line 513
    :cond_c
    iput-boolean v1, p0, Lcom/codemao/midi/sun/SoftVoice;->on:Z

    const-wide/high16 v2, -0x4010000000000000L  # -1.0

    .line 515
    aput-wide v2, v0, v1

    .line 517
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftVoice;->performer:Lcom/codemao/midi/sun/SoftPerformer;

    if-nez v0, :cond_17

    return-void

    .line 519
    :cond_17
    iget-object v0, v0, Lcom/codemao/midi/sun/SoftPerformer;->midi_connections:[[I

    const/4 v2, 0x3

    aget-object v0, v0, v2

    if-nez v0, :cond_1f

    return-void

    .line 522
    :cond_1f
    :goto_1f
    array-length v2, v0

    if-ge v1, v2, :cond_2a

    .line 523
    aget v2, v0, v1

    invoke-direct {p0, v2}, Lcom/codemao/midi/sun/SoftVoice;->processConnection(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_2a
    return-void
.end method

.method protected soundOff()V
    .registers 2

    const/4 v0, 0x0

    .line 527
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftVoice;->on:Z

    const/4 v0, 0x1

    .line 528
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftVoice;->soundoff:Z

    return-void
.end method

.method protected updateTuning(Lcom/codemao/midi/sun/SoftTuning;)V
    .registers 6

    .line 282
    iput-object p1, p0, Lcom/codemao/midi/sun/SoftVoice;->tuning:Lcom/codemao/midi/sun/SoftTuning;

    .line 283
    iget v0, p0, Lcom/codemao/midi/javax/VoiceStatus;->note:I

    invoke-virtual {p1, v0}, Lcom/codemao/midi/sun/SoftTuning;->getTuning(I)D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L  # 100.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/midi/sun/SoftVoice;->tunedKey:D

    .line 284
    iget-boolean p1, p0, Lcom/codemao/midi/sun/SoftVoice;->portamento:Z

    if-nez p1, :cond_32

    .line 285
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftVoice;->co_noteon_keynumber:[D

    const-wide/high16 v2, 0x3f80000000000000L  # 0.0078125

    mul-double v0, v0, v2

    const/4 v2, 0x0

    aput-wide v0, p1, v2

    .line 286
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftVoice;->performer:Lcom/codemao/midi/sun/SoftPerformer;

    if-nez p1, :cond_1f

    return-void

    .line 288
    :cond_1f
    iget-object p1, p1, Lcom/codemao/midi/sun/SoftPerformer;->midi_connections:[[I

    const/4 v0, 0x4

    aget-object p1, p1, v0

    if-nez p1, :cond_27

    return-void

    .line 291
    :cond_27
    :goto_27
    array-length v0, p1

    if-ge v2, v0, :cond_32

    .line 292
    aget v0, p1, v2

    invoke-direct {p0, v0}, Lcom/codemao/midi/sun/SoftVoice;->processConnection(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_32
    return-void
.end method
