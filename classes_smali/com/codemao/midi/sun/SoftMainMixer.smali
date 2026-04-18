.class public Lcom/codemao/midi/sun/SoftMainMixer;
.super Ljava/lang/Object;
.source "SoftMainMixer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/midi/sun/SoftMainMixer$SoftChannelMixerContainer;
    }
.end annotation


# instance fields
.field protected active_sensing_on:Z

.field private agc:Lcom/codemao/midi/sun/SoftAudioProcessor;

.field private ais:Lcom/codemao/midi/javax/sampled/AudioInputStream;

.field private buffer_len:I

.field private buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

.field private chorus:Lcom/codemao/midi/sun/SoftAudioProcessor;

.field protected co_master:Lcom/codemao/midi/sun/SoftControl;

.field private co_master_balance:[D

.field private co_master_coarse_tuning:[D

.field private co_master_fine_tuning:[D

.field private co_master_volume:[D

.field private control_mutex:Ljava/lang/Object;

.field private cur_registeredMixers:[Lcom/codemao/midi/sun/SoftMainMixer$SoftChannelMixerContainer;

.field private delay_midievent:I

.field last_volume_left:D

.field last_volume_right:D

.field private max_delay_midievent:I

.field protected midimessages:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private msec_buffer_len:J

.field private msec_last_activity:J

.field private nrofchannels:I

.field private pusher_silent:Z

.field private pusher_silent_count:I

.field protected readfully:Z

.field private registeredMixers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/codemao/midi/sun/SoftMainMixer$SoftChannelMixerContainer;",
            ">;"
        }
    .end annotation
.end field

.field private reverb:Lcom/codemao/midi/sun/SoftReverb;

.field private sample_pos:J

.field private samplerate:F

.field private stoppedMixers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/codemao/midi/sun/ModelChannelMixer;",
            ">;"
        }
    .end annotation
.end field

.field private synth:Lcom/codemao/midi/sun/SoftSynthesizer;

.field private voicestatus:[Lcom/codemao/midi/sun/SoftVoice;


# direct methods
.method public constructor <init>(Lcom/codemao/midi/sun/SoftSynthesizer;)V
    .registers 14

    .line 799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftMainMixer;->active_sensing_on:Z

    const-wide/16 v1, -0x1

    .line 71
    iput-wide v1, p0, Lcom/codemao/midi/sun/SoftMainMixer;->msec_last_activity:J

    .line 72
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftMainMixer;->pusher_silent:Z

    .line 73
    iput v0, p0, Lcom/codemao/midi/sun/SoftMainMixer;->pusher_silent_count:I

    const-wide/16 v3, 0x0

    .line 74
    iput-wide v3, p0, Lcom/codemao/midi/sun/SoftMainMixer;->sample_pos:J

    const/4 v5, 0x1

    .line 75
    iput-boolean v5, p0, Lcom/codemao/midi/sun/SoftMainMixer;->readfully:Z

    const v6, 0x472c4400  # 44100.0f

    .line 78
    iput v6, p0, Lcom/codemao/midi/sun/SoftMainMixer;->samplerate:F

    const/4 v6, 0x2

    .line 79
    iput v6, p0, Lcom/codemao/midi/sun/SoftMainMixer;->nrofchannels:I

    const/4 v7, 0x0

    .line 80
    iput-object v7, p0, Lcom/codemao/midi/sun/SoftMainMixer;->voicestatus:[Lcom/codemao/midi/sun/SoftVoice;

    .line 85
    iput-wide v3, p0, Lcom/codemao/midi/sun/SoftMainMixer;->msec_buffer_len:J

    .line 86
    iput v0, p0, Lcom/codemao/midi/sun/SoftMainMixer;->buffer_len:I

    .line 87
    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    iput-object v8, p0, Lcom/codemao/midi/sun/SoftMainMixer;->midimessages:Ljava/util/TreeMap;

    .line 88
    iput v0, p0, Lcom/codemao/midi/sun/SoftMainMixer;->delay_midievent:I

    .line 89
    iput v0, p0, Lcom/codemao/midi/sun/SoftMainMixer;->max_delay_midievent:I

    const-wide/high16 v8, 0x3ff0000000000000L  # 1.0

    .line 90
    iput-wide v8, p0, Lcom/codemao/midi/sun/SoftMainMixer;->last_volume_left:D

    .line 91
    iput-wide v8, p0, Lcom/codemao/midi/sun/SoftMainMixer;->last_volume_right:D

    new-array v10, v5, [D

    .line 92
    iput-object v10, p0, Lcom/codemao/midi/sun/SoftMainMixer;->co_master_balance:[D

    new-array v10, v5, [D

    .line 93
    iput-object v10, p0, Lcom/codemao/midi/sun/SoftMainMixer;->co_master_volume:[D

    new-array v10, v5, [D

    .line 94
    iput-object v10, p0, Lcom/codemao/midi/sun/SoftMainMixer;->co_master_coarse_tuning:[D

    new-array v10, v5, [D

    .line 95
    iput-object v10, p0, Lcom/codemao/midi/sun/SoftMainMixer;->co_master_fine_tuning:[D

    .line 97
    iput-object v7, p0, Lcom/codemao/midi/sun/SoftMainMixer;->registeredMixers:Ljava/util/Set;

    .line 98
    iput-object v7, p0, Lcom/codemao/midi/sun/SoftMainMixer;->stoppedMixers:Ljava/util/Set;

    .line 99
    iput-object v7, p0, Lcom/codemao/midi/sun/SoftMainMixer;->cur_registeredMixers:[Lcom/codemao/midi/sun/SoftMainMixer$SoftChannelMixerContainer;

    .line 100
    new-instance v7, Lcom/codemao/midi/sun/SoftMainMixer$1;

    invoke-direct {v7, p0}, Lcom/codemao/midi/sun/SoftMainMixer$1;-><init>(Lcom/codemao/midi/sun/SoftMainMixer;)V

    iput-object v7, p0, Lcom/codemao/midi/sun/SoftMainMixer;->co_master:Lcom/codemao/midi/sun/SoftControl;

    .line 800
    iput-object p1, p0, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    .line 802
    iput-wide v3, p0, Lcom/codemao/midi/sun/SoftMainMixer;->sample_pos:J

    .line 804
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftMainMixer;->co_master_balance:[D

    const-wide/high16 v10, 0x3fe0000000000000L  # 0.5

    aput-wide v10, v3, v0

    .line 805
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftMainMixer;->co_master_volume:[D

    aput-wide v8, v3, v0

    .line 806
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftMainMixer;->co_master_coarse_tuning:[D

    aput-wide v10, v3, v0

    .line 807
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftMainMixer;->co_master_fine_tuning:[D

    aput-wide v10, v3, v0

    .line 809
    invoke-virtual {p1}, Lcom/codemao/midi/sun/SoftSynthesizer;->getControlRate()F

    move-result v3

    float-to-double v3, v3

    const-wide v7, 0x412e848000000000L  # 1000000.0

    div-double/2addr v7, v3

    double-to-long v3, v7

    iput-wide v3, p0, Lcom/codemao/midi/sun/SoftMainMixer;->msec_buffer_len:J

    .line 810
    invoke-virtual {p1}, Lcom/codemao/midi/sun/SoftSynthesizer;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleRate()F

    move-result v3

    iput v3, p0, Lcom/codemao/midi/sun/SoftMainMixer;->samplerate:F

    .line 811
    invoke-virtual {p1}, Lcom/codemao/midi/sun/SoftSynthesizer;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getChannels()I

    move-result v3

    iput v3, p0, Lcom/codemao/midi/sun/SoftMainMixer;->nrofchannels:I

    .line 813
    invoke-virtual {p1}, Lcom/codemao/midi/sun/SoftSynthesizer;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleRate()F

    move-result v3

    .line 814
    invoke-virtual {p1}, Lcom/codemao/midi/sun/SoftSynthesizer;->getControlRate()F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 816
    iput v3, p0, Lcom/codemao/midi/sun/SoftMainMixer;->buffer_len:I

    .line 818
    iput v3, p0, Lcom/codemao/midi/sun/SoftMainMixer;->max_delay_midievent:I

    .line 820
    iget-object v4, p1, Lcom/codemao/midi/sun/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    iput-object v4, p0, Lcom/codemao/midi/sun/SoftMainMixer;->control_mutex:Ljava/lang/Object;

    const/16 v4, 0xe

    new-array v4, v4, [Lcom/codemao/midi/sun/SoftAudioBuffer;

    .line 821
    iput-object v4, p0, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    const/4 v4, 0x0

    .line 822
    :goto_a7
    iget-object v7, p0, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    array-length v8, v7

    if-ge v4, v8, :cond_ba

    .line 823
    new-instance v8, Lcom/codemao/midi/sun/SoftAudioBuffer;

    invoke-virtual {p1}, Lcom/codemao/midi/sun/SoftSynthesizer;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v9

    invoke-direct {v8, v3, v9}, Lcom/codemao/midi/sun/SoftAudioBuffer;-><init>(ILcom/codemao/midi/javax/sampled/AudioFormat;)V

    aput-object v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_a7

    .line 825
    :cond_ba
    invoke-virtual {p1}, Lcom/codemao/midi/sun/SoftSynthesizer;->getVoices()[Lcom/codemao/midi/sun/SoftVoice;

    move-result-object v3

    iput-object v3, p0, Lcom/codemao/midi/sun/SoftMainMixer;->voicestatus:[Lcom/codemao/midi/sun/SoftVoice;

    .line 827
    new-instance v3, Lcom/codemao/midi/sun/SoftReverb;

    invoke-direct {v3}, Lcom/codemao/midi/sun/SoftReverb;-><init>()V

    iput-object v3, p0, Lcom/codemao/midi/sun/SoftMainMixer;->reverb:Lcom/codemao/midi/sun/SoftReverb;

    .line 828
    new-instance v3, Lcom/codemao/midi/sun/SoftChorus;

    invoke-direct {v3}, Lcom/codemao/midi/sun/SoftChorus;-><init>()V

    iput-object v3, p0, Lcom/codemao/midi/sun/SoftMainMixer;->chorus:Lcom/codemao/midi/sun/SoftAudioProcessor;

    .line 829
    new-instance v3, Lcom/codemao/midi/sun/SoftLimiter;

    invoke-direct {v3}, Lcom/codemao/midi/sun/SoftLimiter;-><init>()V

    iput-object v3, p0, Lcom/codemao/midi/sun/SoftMainMixer;->agc:Lcom/codemao/midi/sun/SoftAudioProcessor;

    .line 831
    invoke-virtual {p1}, Lcom/codemao/midi/sun/SoftSynthesizer;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleRate()F

    move-result v3

    .line 832
    invoke-virtual {p1}, Lcom/codemao/midi/sun/SoftSynthesizer;->getControlRate()F

    move-result v4

    .line 833
    iget-object v7, p0, Lcom/codemao/midi/sun/SoftMainMixer;->reverb:Lcom/codemao/midi/sun/SoftReverb;

    invoke-virtual {v7, v3, v4}, Lcom/codemao/midi/sun/SoftReverb;->init(FF)V

    .line 834
    iget-object v7, p0, Lcom/codemao/midi/sun/SoftMainMixer;->chorus:Lcom/codemao/midi/sun/SoftAudioProcessor;

    invoke-interface {v7, v3, v4}, Lcom/codemao/midi/sun/SoftAudioProcessor;->init(FF)V

    .line 835
    iget-object v7, p0, Lcom/codemao/midi/sun/SoftMainMixer;->agc:Lcom/codemao/midi/sun/SoftAudioProcessor;

    invoke-interface {v7, v3, v4}, Lcom/codemao/midi/sun/SoftAudioProcessor;->init(FF)V

    .line 837
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftMainMixer;->reverb:Lcom/codemao/midi/sun/SoftReverb;

    iget-boolean v4, p1, Lcom/codemao/midi/sun/SoftSynthesizer;->reverb_light:Z

    invoke-virtual {v3, v4}, Lcom/codemao/midi/sun/SoftReverb;->setLightMode(Z)V

    .line 839
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftMainMixer;->reverb:Lcom/codemao/midi/sun/SoftReverb;

    invoke-virtual {v3, v5}, Lcom/codemao/midi/sun/SoftReverb;->setMixMode(Z)V

    .line 840
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftMainMixer;->chorus:Lcom/codemao/midi/sun/SoftAudioProcessor;

    invoke-interface {v3, v5}, Lcom/codemao/midi/sun/SoftAudioProcessor;->setMixMode(Z)V

    .line 841
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftMainMixer;->agc:Lcom/codemao/midi/sun/SoftAudioProcessor;

    invoke-interface {v3, v0}, Lcom/codemao/midi/sun/SoftAudioProcessor;->setMixMode(Z)V

    .line 843
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftMainMixer;->chorus:Lcom/codemao/midi/sun/SoftAudioProcessor;

    iget-object v4, p0, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    const/4 v7, 0x7

    aget-object v4, v4, v7

    invoke-interface {v3, v0, v4}, Lcom/codemao/midi/sun/SoftAudioProcessor;->setInput(ILcom/codemao/midi/sun/SoftAudioBuffer;)V

    .line 844
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftMainMixer;->chorus:Lcom/codemao/midi/sun/SoftAudioProcessor;

    iget-object v4, p0, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    aget-object v4, v4, v0

    invoke-interface {v3, v0, v4}, Lcom/codemao/midi/sun/SoftAudioProcessor;->setOutput(ILcom/codemao/midi/sun/SoftAudioBuffer;)V

    .line 845
    iget v3, p0, Lcom/codemao/midi/sun/SoftMainMixer;->nrofchannels:I

    if-eq v3, v5, :cond_126

    .line 846
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftMainMixer;->chorus:Lcom/codemao/midi/sun/SoftAudioProcessor;

    iget-object v4, p0, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    aget-object v4, v4, v5

    invoke-interface {v3, v5, v4}, Lcom/codemao/midi/sun/SoftAudioProcessor;->setOutput(ILcom/codemao/midi/sun/SoftAudioBuffer;)V

    .line 847
    :cond_126
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftMainMixer;->chorus:Lcom/codemao/midi/sun/SoftAudioProcessor;

    iget-object v4, p0, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    const/4 v7, 0x6

    aget-object v4, v4, v7

    invoke-interface {v3, v6, v4}, Lcom/codemao/midi/sun/SoftAudioProcessor;->setOutput(ILcom/codemao/midi/sun/SoftAudioBuffer;)V

    .line 849
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftMainMixer;->reverb:Lcom/codemao/midi/sun/SoftReverb;

    iget-object v4, p0, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    aget-object v4, v4, v7

    invoke-virtual {v3, v0, v4}, Lcom/codemao/midi/sun/SoftReverb;->setInput(ILcom/codemao/midi/sun/SoftAudioBuffer;)V

    .line 850
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftMainMixer;->reverb:Lcom/codemao/midi/sun/SoftReverb;

    iget-object v4, p0, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    aget-object v4, v4, v0

    invoke-virtual {v3, v0, v4}, Lcom/codemao/midi/sun/SoftReverb;->setOutput(ILcom/codemao/midi/sun/SoftAudioBuffer;)V

    .line 851
    iget v3, p0, Lcom/codemao/midi/sun/SoftMainMixer;->nrofchannels:I

    if-eq v3, v5, :cond_14f

    .line 852
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftMainMixer;->reverb:Lcom/codemao/midi/sun/SoftReverb;

    iget-object v4, p0, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    aget-object v4, v4, v5

    invoke-virtual {v3, v5, v4}, Lcom/codemao/midi/sun/SoftReverb;->setOutput(ILcom/codemao/midi/sun/SoftAudioBuffer;)V

    .line 854
    :cond_14f
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftMainMixer;->agc:Lcom/codemao/midi/sun/SoftAudioProcessor;

    iget-object v4, p0, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    aget-object v4, v4, v0

    invoke-interface {v3, v0, v4}, Lcom/codemao/midi/sun/SoftAudioProcessor;->setInput(ILcom/codemao/midi/sun/SoftAudioBuffer;)V

    .line 855
    iget v3, p0, Lcom/codemao/midi/sun/SoftMainMixer;->nrofchannels:I

    if-eq v3, v5, :cond_165

    .line 856
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftMainMixer;->agc:Lcom/codemao/midi/sun/SoftAudioProcessor;

    iget-object v4, p0, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    aget-object v4, v4, v5

    invoke-interface {v3, v5, v4}, Lcom/codemao/midi/sun/SoftAudioProcessor;->setInput(ILcom/codemao/midi/sun/SoftAudioBuffer;)V

    .line 857
    :cond_165
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftMainMixer;->agc:Lcom/codemao/midi/sun/SoftAudioProcessor;

    iget-object v4, p0, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    aget-object v4, v4, v0

    invoke-interface {v3, v0, v4}, Lcom/codemao/midi/sun/SoftAudioProcessor;->setOutput(ILcom/codemao/midi/sun/SoftAudioBuffer;)V

    .line 858
    iget v0, p0, Lcom/codemao/midi/sun/SoftMainMixer;->nrofchannels:I

    if-eq v0, v5, :cond_17b

    .line 859
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftMainMixer;->agc:Lcom/codemao/midi/sun/SoftAudioProcessor;

    iget-object v3, p0, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    aget-object v3, v3, v5

    invoke-interface {v0, v5, v3}, Lcom/codemao/midi/sun/SoftAudioProcessor;->setOutput(ILcom/codemao/midi/sun/SoftAudioBuffer;)V

    .line 861
    :cond_17b
    new-instance v0, Lcom/codemao/midi/sun/SoftMainMixer$2;

    invoke-direct {v0, p0}, Lcom/codemao/midi/sun/SoftMainMixer$2;-><init>(Lcom/codemao/midi/sun/SoftMainMixer;)V

    .line 923
    new-instance v3, Lcom/codemao/midi/javax/sampled/AudioInputStream;

    invoke-virtual {p1}, Lcom/codemao/midi/sun/SoftSynthesizer;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object p1

    invoke-direct {v3, v0, p1, v1, v2}, Lcom/codemao/midi/javax/sampled/AudioInputStream;-><init>(Ljava/io/InputStream;Lcom/codemao/midi/javax/sampled/AudioFormat;J)V

    iput-object v3, p0, Lcom/codemao/midi/sun/SoftMainMixer;->ais:Lcom/codemao/midi/javax/sampled/AudioInputStream;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/midi/sun/SoftMainMixer;)[D
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/codemao/midi/sun/SoftMainMixer;->co_master_balance:[D

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/midi/sun/SoftMainMixer;)[D
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/codemao/midi/sun/SoftMainMixer;->co_master_volume:[D

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/midi/sun/SoftMainMixer;)[D
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/codemao/midi/sun/SoftMainMixer;->co_master_coarse_tuning:[D

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/midi/sun/SoftMainMixer;)[D
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/codemao/midi/sun/SoftMainMixer;->co_master_fine_tuning:[D

    return-object p0
.end method

.method static synthetic access$500(Lcom/codemao/midi/sun/SoftMainMixer;)[Lcom/codemao/midi/sun/SoftAudioBuffer;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/codemao/midi/sun/SoftMainMixer;)Lcom/codemao/midi/sun/SoftSynthesizer;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    return-object p0
.end method

.method private processMessages(J)V
    .registers 12

    .line 424
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftMainMixer;->midimessages:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 425
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5d

    .line 426
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 427
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/codemao/midi/sun/SoftMainMixer;->msec_buffer_len:J

    add-long/2addr v5, p1

    cmp-long v7, v3, v5

    if-ltz v7, :cond_29

    return-void

    .line 429
    :cond_29
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v3, p1

    long-to-double v3, v3

    .line 430
    iget v5, p0, Lcom/codemao/midi/sun/SoftMainMixer;->samplerate:F

    float-to-double v5, v5

    const-wide v7, 0x412e848000000000L  # 1000000.0

    div-double/2addr v5, v7

    mul-double v3, v3, v5

    const-wide/high16 v5, 0x3fe0000000000000L  # 0.5

    add-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, p0, Lcom/codemao/midi/sun/SoftMainMixer;->delay_midievent:I

    .line 431
    iget v4, p0, Lcom/codemao/midi/sun/SoftMainMixer;->max_delay_midievent:I

    if-le v3, v4, :cond_4c

    .line 432
    iput v4, p0, Lcom/codemao/midi/sun/SoftMainMixer;->delay_midievent:I

    .line 433
    :cond_4c
    iget v3, p0, Lcom/codemao/midi/sun/SoftMainMixer;->delay_midievent:I

    if-gez v3, :cond_52

    .line 434
    iput v2, p0, Lcom/codemao/midi/sun/SoftMainMixer;->delay_midievent:I

    .line 435
    :cond_52
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/codemao/midi/sun/SoftMainMixer;->processMessage(Ljava/lang/Object;)V

    .line 436
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    .line 438
    :cond_5d
    iput v2, p0, Lcom/codemao/midi/sun/SoftMainMixer;->delay_midievent:I

    return-void
.end method

.method private processSystemExclusiveMessage([B)V
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 123
    iget-object v2, v1, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    iget-object v2, v2, Lcom/codemao/midi/sun/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 124
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/midi/sun/SoftMainMixer;->activity()V

    const/4 v3, 0x1

    .line 127
    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x7e

    const/16 v6, 0x7f

    const/4 v7, 0x3

    const/4 v8, 0x6

    const/4 v9, 0x4

    const/4 v10, 0x7

    const/4 v11, 0x5

    const/4 v12, 0x0

    const/4 v13, 0x2

    if-ne v4, v5, :cond_f9

    .line 128
    aget-byte v4, v0, v13

    and-int/lit16 v4, v4, 0xff

    if-eq v4, v6, :cond_2c

    .line 129
    iget-object v5, v1, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    invoke-virtual {v5}, Lcom/codemao/midi/sun/SoftSynthesizer;->getDeviceID()I

    move-result v5

    if-ne v4, v5, :cond_f9

    .line 130
    :cond_2c
    aget-byte v4, v0, v7

    and-int/lit16 v4, v4, 0xff

    packed-switch v4, :pswitch_data_34e

    goto/16 :goto_f9

    .line 195
    :pswitch_35  #0xa
    aget-byte v4, v0, v9

    and-int/lit16 v4, v4, 0xff

    if-eq v4, v3, :cond_5d

    if-eq v4, v13, :cond_4f

    if-eq v4, v7, :cond_49

    if-eq v4, v9, :cond_43

    goto/16 :goto_f9

    .line 212
    :cond_43
    iget-object v4, v1, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    iput v3, v4, Lcom/codemao/midi/sun/SoftSynthesizer;->voice_allocation_mode:I

    goto/16 :goto_f9

    .line 209
    :cond_49
    iget-object v4, v1, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    iput v12, v4, Lcom/codemao/midi/sun/SoftSynthesizer;->voice_allocation_mode:I

    goto/16 :goto_f9

    .line 204
    :cond_4f
    iget-object v4, v1, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    invoke-virtual {v4, v12}, Lcom/codemao/midi/sun/SoftSynthesizer;->setGeneralMidiMode(I)V

    .line 205
    iget-object v4, v1, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    iput v12, v4, Lcom/codemao/midi/sun/SoftSynthesizer;->voice_allocation_mode:I

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/midi/sun/SoftMainMixer;->reset()V

    goto/16 :goto_f9

    .line 198
    :cond_5d
    iget-object v4, v1, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    invoke-virtual {v4}, Lcom/codemao/midi/sun/SoftSynthesizer;->getGeneralMidiMode()I

    move-result v4

    if-nez v4, :cond_6a

    .line 199
    iget-object v4, v1, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    invoke-virtual {v4, v3}, Lcom/codemao/midi/sun/SoftSynthesizer;->setGeneralMidiMode(I)V

    .line 200
    :cond_6a
    iget-object v4, v1, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    iput v3, v4, Lcom/codemao/midi/sun/SoftSynthesizer;->voice_allocation_mode:I

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/midi/sun/SoftMainMixer;->reset()V

    goto/16 :goto_f9

    .line 176
    :pswitch_73  #0x9
    aget-byte v4, v0, v9

    and-int/lit16 v4, v4, 0xff

    if-eq v4, v3, :cond_92

    if-eq v4, v13, :cond_89

    if-eq v4, v7, :cond_7f

    goto/16 :goto_f9

    .line 187
    :cond_7f
    iget-object v4, v1, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    invoke-virtual {v4, v13}, Lcom/codemao/midi/sun/SoftSynthesizer;->setGeneralMidiMode(I)V

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/midi/sun/SoftMainMixer;->reset()V

    goto/16 :goto_f9

    .line 183
    :cond_89
    iget-object v4, v1, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    invoke-virtual {v4, v12}, Lcom/codemao/midi/sun/SoftSynthesizer;->setGeneralMidiMode(I)V

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/midi/sun/SoftMainMixer;->reset()V

    goto :goto_f9

    .line 179
    :cond_92
    iget-object v4, v1, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    invoke-virtual {v4, v3}, Lcom/codemao/midi/sun/SoftSynthesizer;->setGeneralMidiMode(I)V

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/midi/sun/SoftMainMixer;->reset()V

    goto :goto_f9

    .line 134
    :pswitch_9b  #0x8
    aget-byte v4, v0, v9

    and-int/lit16 v4, v4, 0xff

    if-eq v4, v3, :cond_e7

    packed-switch v4, :pswitch_data_358

    goto :goto_f9

    .line 162
    :pswitch_a5  #0x8, 0x9
    new-instance v4, Lcom/codemao/midi/sun/SoftTuning;

    invoke-direct {v4, v0}, Lcom/codemao/midi/sun/SoftTuning;-><init>([B)V

    .line 163
    aget-byte v5, v0, v11

    and-int/lit16 v5, v5, 0xff

    mul-int/lit16 v5, v5, 0x4000

    aget-byte v14, v0, v8

    and-int/lit16 v14, v14, 0xff

    mul-int/lit16 v14, v14, 0x80

    add-int/2addr v5, v14

    aget-byte v14, v0, v10

    and-int/lit16 v14, v14, 0xff

    add-int/2addr v5, v14

    .line 165
    iget-object v14, v1, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    iget-object v14, v14, Lcom/codemao/midi/sun/SoftSynthesizer;->channels:[Lcom/codemao/midi/sun/SoftChannel;

    const/4 v15, 0x0

    .line 166
    :goto_c1
    array-length v10, v14

    if-ge v15, v10, :cond_f9

    shl-int v10, v3, v15

    and-int/2addr v10, v5

    if-eqz v10, :cond_cd

    .line 168
    aget-object v10, v14, v15

    iput-object v4, v10, Lcom/codemao/midi/sun/SoftChannel;->tuning:Lcom/codemao/midi/sun/SoftTuning;

    :cond_cd
    add-int/lit8 v15, v15, 0x1

    goto :goto_c1

    .line 151
    :pswitch_d0  #0x4, 0x5, 0x6, 0x7
    iget-object v4, v1, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    new-instance v5, Lcom/codemao/midi/javax/Patch;

    aget-byte v10, v0, v11

    and-int/lit16 v10, v10, 0xff

    aget-byte v14, v0, v8

    and-int/lit16 v14, v14, 0xff

    invoke-direct {v5, v10, v14}, Lcom/codemao/midi/javax/Patch;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/codemao/midi/sun/SoftSynthesizer;->getTuning(Lcom/codemao/midi/javax/Patch;)Lcom/codemao/midi/sun/SoftTuning;

    move-result-object v4

    .line 153
    invoke-virtual {v4, v0}, Lcom/codemao/midi/sun/SoftTuning;->load([B)V

    goto :goto_f9

    .line 139
    :cond_e7
    iget-object v4, v1, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    new-instance v5, Lcom/codemao/midi/javax/Patch;

    aget-byte v10, v0, v11

    and-int/lit16 v10, v10, 0xff

    invoke-direct {v5, v12, v10}, Lcom/codemao/midi/javax/Patch;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/codemao/midi/sun/SoftSynthesizer;->getTuning(Lcom/codemao/midi/javax/Patch;)Lcom/codemao/midi/sun/SoftTuning;

    move-result-object v4

    .line 141
    invoke-virtual {v4, v0}, Lcom/codemao/midi/sun/SoftTuning;->load([B)V

    .line 226
    :cond_f9
    :goto_f9
    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    if-ne v4, v6, :cond_348

    .line 227
    aget-byte v4, v0, v13

    and-int/lit16 v4, v4, 0xff

    if-eq v4, v6, :cond_10d

    .line 228
    iget-object v5, v1, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    invoke-virtual {v5}, Lcom/codemao/midi/sun/SoftSynthesizer;->getDeviceID()I

    move-result v5

    if-ne v4, v5, :cond_348

    .line 229
    :cond_10d
    aget-byte v4, v0, v7

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8

    if-eq v4, v9, :cond_2a8

    packed-switch v4, :pswitch_data_368

    goto/16 :goto_348

    .line 396
    :pswitch_11a  #0xa
    aget-byte v4, v0, v9

    and-int/lit16 v4, v4, 0xff

    if-eq v4, v3, :cond_122

    goto/16 :goto_348

    .line 399
    :cond_122
    aget-byte v4, v0, v11

    and-int/lit16 v4, v4, 0xff

    .line 400
    aget-byte v5, v0, v8

    and-int/lit16 v5, v5, 0xff

    .line 401
    iget-object v6, v1, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    iget-object v6, v6, Lcom/codemao/midi/sun/SoftSynthesizer;->channels:[Lcom/codemao/midi/sun/SoftChannel;

    aget-object v4, v6, v4

    const/4 v10, 0x7

    .line 402
    :goto_131
    array-length v6, v0

    sub-int/2addr v6, v3

    if-ge v10, v6, :cond_348

    .line 403
    aget-byte v6, v0, v10

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v10, 0x1

    .line 404
    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    .line 405
    invoke-virtual {v4, v5, v6, v7}, Lcom/codemao/midi/sun/SoftChannel;->controlChangePerNote(III)V

    add-int/lit8 v10, v10, 0x2

    goto :goto_131

    .line 338
    :pswitch_145  #0x9
    aget-byte v4, v0, v9

    and-int/lit16 v4, v4, 0xff

    if-eq v4, v3, :cond_1b8

    if-eq v4, v13, :cond_187

    if-eq v4, v7, :cond_151

    goto/16 :goto_348

    .line 374
    :cond_151
    array-length v4, v0

    const/4 v5, 0x7

    sub-int/2addr v4, v5

    div-int/2addr v4, v13

    new-array v4, v4, [I

    .line 375
    array-length v6, v0

    sub-int/2addr v6, v5

    div-int/2addr v6, v13

    new-array v5, v6, [I

    const/4 v10, 0x7

    .line 377
    :goto_15d
    array-length v6, v0

    sub-int/2addr v6, v3

    if-ge v10, v6, :cond_174

    .line 378
    aget-byte v6, v0, v10

    and-int/lit16 v6, v6, 0xff

    aput v6, v4, v12

    add-int/lit8 v6, v10, 0x1

    .line 379
    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    aput v6, v5, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v10, v10, 0x2

    goto :goto_15d

    .line 382
    :cond_174
    aget-byte v3, v0, v11

    and-int/lit16 v3, v3, 0xff

    .line 383
    iget-object v6, v1, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    iget-object v6, v6, Lcom/codemao/midi/sun/SoftSynthesizer;->channels:[Lcom/codemao/midi/sun/SoftChannel;

    aget-object v3, v6, v3

    .line 384
    aget-byte v0, v0, v8

    and-int/lit16 v0, v0, 0xff

    .line 385
    invoke-virtual {v3, v0, v4, v5}, Lcom/codemao/midi/sun/SoftChannel;->mapControlToDestination(I[I[I)V

    goto/16 :goto_348

    .line 358
    :cond_187
    array-length v4, v0

    const/4 v5, 0x7

    sub-int/2addr v4, v5

    div-int/2addr v4, v13

    new-array v4, v4, [I

    .line 359
    array-length v6, v0

    sub-int/2addr v6, v5

    div-int/2addr v6, v13

    new-array v5, v6, [I

    .line 361
    :goto_192
    array-length v6, v0

    sub-int/2addr v6, v3

    if-ge v8, v6, :cond_1a9

    .line 362
    aget-byte v6, v0, v8

    and-int/lit16 v6, v6, 0xff

    aput v6, v4, v12

    add-int/lit8 v6, v8, 0x1

    .line 363
    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    aput v6, v5, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v8, v8, 0x2

    goto :goto_192

    .line 366
    :cond_1a9
    aget-byte v0, v0, v11

    and-int/lit16 v0, v0, 0xff

    .line 367
    iget-object v3, v1, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    iget-object v3, v3, Lcom/codemao/midi/sun/SoftSynthesizer;->channels:[Lcom/codemao/midi/sun/SoftChannel;

    aget-object v0, v3, v0

    .line 368
    invoke-virtual {v0, v4, v5}, Lcom/codemao/midi/sun/SoftChannel;->mapPolyPressureToDestination([I[I)V

    goto/16 :goto_348

    .line 342
    :cond_1b8
    array-length v4, v0

    const/4 v5, 0x7

    sub-int/2addr v4, v5

    div-int/2addr v4, v13

    new-array v4, v4, [I

    .line 343
    array-length v6, v0

    sub-int/2addr v6, v5

    div-int/2addr v6, v13

    new-array v5, v6, [I

    .line 345
    :goto_1c3
    array-length v6, v0

    sub-int/2addr v6, v3

    if-ge v8, v6, :cond_1da

    .line 346
    aget-byte v6, v0, v8

    and-int/lit16 v6, v6, 0xff

    aput v6, v4, v12

    add-int/lit8 v6, v8, 0x1

    .line 347
    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    aput v6, v5, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v8, v8, 0x2

    goto :goto_1c3

    .line 350
    :cond_1da
    aget-byte v0, v0, v11

    and-int/lit16 v0, v0, 0xff

    .line 351
    iget-object v3, v1, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    iget-object v3, v3, Lcom/codemao/midi/sun/SoftSynthesizer;->channels:[Lcom/codemao/midi/sun/SoftChannel;

    aget-object v0, v3, v0

    .line 352
    invoke-virtual {v0, v4, v5}, Lcom/codemao/midi/sun/SoftChannel;->mapChannelPressureToDestination([I[I)V

    goto/16 :goto_348

    .line 284
    :pswitch_1e9  #0x8
    aget-byte v4, v0, v9

    and-int/lit16 v4, v4, 0xff

    if-eq v4, v13, :cond_279

    const/4 v6, 0x7

    if-eq v4, v6, :cond_246

    if-eq v4, v5, :cond_1fa

    const/16 v5, 0x9

    if-eq v4, v5, :cond_1fa

    goto/16 :goto_348

    .line 319
    :cond_1fa
    new-instance v4, Lcom/codemao/midi/sun/SoftTuning;

    invoke-direct {v4, v0}, Lcom/codemao/midi/sun/SoftTuning;-><init>([B)V

    .line 320
    aget-byte v5, v0, v11

    and-int/lit16 v5, v5, 0xff

    mul-int/lit16 v5, v5, 0x4000

    aget-byte v6, v0, v8

    and-int/lit16 v6, v6, 0xff

    mul-int/lit16 v6, v6, 0x80

    add-int/2addr v5, v6

    const/4 v6, 0x7

    aget-byte v0, v0, v6

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v5, v0

    .line 322
    iget-object v0, v1, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    iget-object v0, v0, Lcom/codemao/midi/sun/SoftSynthesizer;->channels:[Lcom/codemao/midi/sun/SoftChannel;

    const/4 v6, 0x0

    .line 323
    :goto_217
    array-length v7, v0

    if-ge v6, v7, :cond_226

    shl-int v7, v3, v6

    and-int/2addr v7, v5

    if-eqz v7, :cond_223

    .line 325
    aget-object v7, v0, v6

    iput-object v4, v7, Lcom/codemao/midi/sun/SoftChannel;->tuning:Lcom/codemao/midi/sun/SoftTuning;

    :cond_223
    add-int/lit8 v6, v6, 0x1

    goto :goto_217

    .line 326
    :cond_226
    iget-object v0, v1, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    invoke-virtual {v0}, Lcom/codemao/midi/sun/SoftSynthesizer;->getVoices()[Lcom/codemao/midi/sun/SoftVoice;

    move-result-object v0

    .line 327
    :goto_22c
    array-length v6, v0

    if-ge v12, v6, :cond_348

    .line 328
    aget-object v6, v0, v12

    iget-boolean v6, v6, Lcom/codemao/midi/javax/VoiceStatus;->active:Z

    if-eqz v6, :cond_243

    .line 329
    aget-object v6, v0, v12

    iget v6, v6, Lcom/codemao/midi/javax/VoiceStatus;->channel:I

    shl-int v6, v3, v6

    and-int/2addr v6, v5

    if-eqz v6, :cond_243

    .line 330
    aget-object v6, v0, v12

    invoke-virtual {v6, v4}, Lcom/codemao/midi/sun/SoftVoice;->updateTuning(Lcom/codemao/midi/sun/SoftTuning;)V

    :cond_243
    add-int/lit8 v12, v12, 0x1

    goto :goto_22c

    .line 303
    :cond_246
    iget-object v3, v1, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    new-instance v4, Lcom/codemao/midi/javax/Patch;

    aget-byte v5, v0, v11

    and-int/lit16 v5, v5, 0xff

    aget-byte v6, v0, v8

    and-int/lit16 v6, v6, 0xff

    invoke-direct {v4, v5, v6}, Lcom/codemao/midi/javax/Patch;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/codemao/midi/sun/SoftSynthesizer;->getTuning(Lcom/codemao/midi/javax/Patch;)Lcom/codemao/midi/sun/SoftTuning;

    move-result-object v3

    .line 305
    invoke-virtual {v3, v0}, Lcom/codemao/midi/sun/SoftTuning;->load([B)V

    .line 306
    iget-object v0, v1, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    invoke-virtual {v0}, Lcom/codemao/midi/sun/SoftSynthesizer;->getVoices()[Lcom/codemao/midi/sun/SoftVoice;

    move-result-object v0

    .line 307
    :goto_262
    array-length v4, v0

    if-ge v12, v4, :cond_348

    .line 308
    aget-object v4, v0, v12

    iget-boolean v4, v4, Lcom/codemao/midi/javax/VoiceStatus;->active:Z

    if-eqz v4, :cond_276

    .line 309
    aget-object v4, v0, v12

    iget-object v4, v4, Lcom/codemao/midi/sun/SoftVoice;->tuning:Lcom/codemao/midi/sun/SoftTuning;

    if-ne v4, v3, :cond_276

    .line 310
    aget-object v4, v0, v12

    invoke-virtual {v4, v3}, Lcom/codemao/midi/sun/SoftVoice;->updateTuning(Lcom/codemao/midi/sun/SoftTuning;)V

    :cond_276
    add-int/lit8 v12, v12, 0x1

    goto :goto_262

    .line 289
    :cond_279
    iget-object v3, v1, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    new-instance v4, Lcom/codemao/midi/javax/Patch;

    aget-byte v5, v0, v11

    and-int/lit16 v5, v5, 0xff

    invoke-direct {v4, v12, v5}, Lcom/codemao/midi/javax/Patch;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/codemao/midi/sun/SoftSynthesizer;->getTuning(Lcom/codemao/midi/javax/Patch;)Lcom/codemao/midi/sun/SoftTuning;

    move-result-object v3

    .line 291
    invoke-virtual {v3, v0}, Lcom/codemao/midi/sun/SoftTuning;->load([B)V

    .line 292
    iget-object v0, v1, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    invoke-virtual {v0}, Lcom/codemao/midi/sun/SoftSynthesizer;->getVoices()[Lcom/codemao/midi/sun/SoftVoice;

    move-result-object v0

    .line 293
    :goto_291
    array-length v4, v0

    if-ge v12, v4, :cond_348

    .line 294
    aget-object v4, v0, v12

    iget-boolean v4, v4, Lcom/codemao/midi/javax/VoiceStatus;->active:Z

    if-eqz v4, :cond_2a5

    .line 295
    aget-object v4, v0, v12

    iget-object v4, v4, Lcom/codemao/midi/sun/SoftVoice;->tuning:Lcom/codemao/midi/sun/SoftTuning;

    if-ne v4, v3, :cond_2a5

    .line 296
    aget-object v4, v0, v12

    invoke-virtual {v4, v3}, Lcom/codemao/midi/sun/SoftVoice;->updateTuning(Lcom/codemao/midi/sun/SoftTuning;)V

    :cond_2a5
    add-int/lit8 v12, v12, 0x1

    goto :goto_291

    .line 234
    :cond_2a8
    aget-byte v4, v0, v9

    and-int/lit16 v4, v4, 0xff

    if-eq v4, v3, :cond_328

    if-eq v4, v13, :cond_328

    if-eq v4, v7, :cond_328

    if-eq v4, v9, :cond_328

    if-eq v4, v11, :cond_2b8

    goto/16 :goto_348

    .line 253
    :cond_2b8
    aget-byte v4, v0, v11

    and-int/lit16 v4, v4, 0xff

    .line 254
    aget-byte v6, v0, v8

    and-int/lit16 v6, v6, 0xff

    const/4 v7, 0x7

    .line 255
    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    .line 256
    new-array v8, v4, [I

    const/4 v9, 0x0

    :goto_2c8
    if-ge v9, v4, :cond_2df

    add-int/lit8 v10, v5, 0x1

    .line 258
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v11, v10, 0x1

    .line 259
    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    mul-int/lit16 v5, v5, 0x80

    add-int/2addr v5, v10

    .line 260
    aput v5, v8, v9

    add-int/lit8 v9, v9, 0x1

    move v5, v11

    goto :goto_2c8

    .line 262
    :cond_2df
    array-length v4, v0

    sub-int/2addr v4, v3

    sub-int/2addr v4, v5

    add-int v3, v6, v7

    div-int/2addr v4, v3

    .line 264
    new-array v3, v4, [J

    .line 265
    new-array v9, v4, [J

    const/4 v10, 0x0

    :goto_2ea
    if-ge v10, v4, :cond_324

    const-wide/16 v13, 0x0

    .line 267
    aput-wide v13, v9, v10

    const/4 v11, 0x0

    :goto_2f1
    const-wide/16 v13, 0x80

    if-ge v11, v6, :cond_309

    .line 269
    aget-wide v15, v3, v10

    mul-long v15, v15, v13

    add-int/lit8 v13, v5, 0x1

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    move v14, v13

    int-to-long v12, v5

    add-long/2addr v15, v12

    aput-wide v15, v3, v10

    add-int/lit8 v11, v11, 0x1

    move v5, v14

    const/4 v12, 0x0

    goto :goto_2f1

    :cond_309
    const/4 v11, 0x0

    :goto_30a
    if-ge v11, v7, :cond_320

    .line 272
    aget-wide v15, v9, v10

    mul-long v15, v15, v13

    add-int/lit8 v12, v5, 0x1

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v13, v5

    add-long/2addr v15, v13

    aput-wide v15, v9, v10

    add-int/lit8 v11, v11, 0x1

    move v5, v12

    const-wide/16 v13, 0x80

    goto :goto_30a

    :cond_320
    add-int/lit8 v10, v10, 0x1

    const/4 v12, 0x0

    goto :goto_2ea

    .line 276
    :cond_324
    invoke-virtual {v1, v8, v3, v9}, Lcom/codemao/midi/sun/SoftMainMixer;->globalParameterControlChange([I[J[J)V

    goto :goto_348

    .line 240
    :cond_328
    aget-byte v5, v0, v11

    and-int/2addr v5, v6

    aget-byte v0, v0, v8

    and-int/2addr v0, v6

    mul-int/lit16 v0, v0, 0x80

    add-int/2addr v5, v0

    if-ne v4, v3, :cond_337

    .line 243
    invoke-virtual {v1, v5}, Lcom/codemao/midi/sun/SoftMainMixer;->setVolume(I)V

    goto :goto_348

    :cond_337
    if-ne v4, v13, :cond_33d

    .line 245
    invoke-virtual {v1, v5}, Lcom/codemao/midi/sun/SoftMainMixer;->setBalance(I)V

    goto :goto_348

    :cond_33d
    if-ne v4, v7, :cond_343

    .line 247
    invoke-virtual {v1, v5}, Lcom/codemao/midi/sun/SoftMainMixer;->setFineTuning(I)V

    goto :goto_348

    :cond_343
    if-ne v4, v9, :cond_348

    .line 249
    invoke-virtual {v1, v5}, Lcom/codemao/midi/sun/SoftMainMixer;->setCoarseTuning(I)V

    .line 420
    :cond_348
    :goto_348
    monitor-exit v2

    return-void

    :catchall_34a
    move-exception v0

    monitor-exit v2
    :try_end_34c
    .catchall {:try_start_9 .. :try_end_34c} :catchall_34a

    throw v0

    nop

    :pswitch_data_34e
    .packed-switch 0x8
        :pswitch_9b  #00000008
        :pswitch_73  #00000009
        :pswitch_35  #0000000a
    .end packed-switch

    :pswitch_data_358
    .packed-switch 0x4
        :pswitch_d0  #00000004
        :pswitch_d0  #00000005
        :pswitch_d0  #00000006
        :pswitch_d0  #00000007
        :pswitch_a5  #00000008
        :pswitch_a5  #00000009
    .end packed-switch

    :pswitch_data_368
    .packed-switch 0x8
        :pswitch_1e9  #00000008
        :pswitch_145  #00000009
        :pswitch_11a  #0000000a
    .end packed-switch
.end method


# virtual methods
.method public activity()V
    .registers 7

    .line 766
    iget-boolean v0, p0, Lcom/codemao/midi/sun/SoftMainMixer;->pusher_silent:Z

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    .line 768
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftMainMixer;->pusher_silent:Z

    .line 769
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    iget-object v0, v0, Lcom/codemao/midi/sun/SoftSynthesizer;->weakstream:Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;

    if-eqz v0, :cond_19

    .line 771
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftMainMixer;->ais:Lcom/codemao/midi/javax/sampled/AudioInputStream;

    invoke-virtual {v0, v1}, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->setInputStream(Lcom/codemao/midi/javax/sampled/AudioInputStream;)V

    .line 772
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    iget-object v0, v0, Lcom/codemao/midi/sun/SoftSynthesizer;->weakstream:Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;

    iget-wide v0, v0, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->silent_samples:J

    goto :goto_1b

    :cond_19
    const-wide/16 v0, 0x0

    .line 775
    :goto_1b
    iget-wide v2, p0, Lcom/codemao/midi/sun/SoftMainMixer;->sample_pos:J

    add-long/2addr v2, v0

    long-to-double v0, v2

    const-wide v2, 0x412e848000000000L  # 1000000.0

    iget v4, p0, Lcom/codemao/midi/sun/SoftMainMixer;->samplerate:F

    float-to-double v4, v4

    div-double/2addr v2, v4

    mul-double v0, v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/codemao/midi/sun/SoftMainMixer;->msec_last_activity:J

    return-void
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method public getInputStream()Lcom/codemao/midi/javax/sampled/AudioInputStream;
    .registers 2

    .line 928
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftMainMixer;->ais:Lcom/codemao/midi/javax/sampled/AudioInputStream;

    return-object v0
.end method

.method public globalParameterControlChange([I[J[J)V
    .registers 14

    .line 1008
    array-length v0, p1

    if-nez v0, :cond_4

    return-void

    .line 1011
    :cond_4
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftMainMixer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1015
    :try_start_8
    aget v2, p1, v1

    const/16 v3, 0x81

    if-ne v2, v3, :cond_1f

    const/4 v2, 0x0

    .line 1016
    :goto_f
    array-length v3, p3

    if-ge v2, v3, :cond_1f

    .line 1017
    iget-object v4, p0, Lcom/codemao/midi/sun/SoftMainMixer;->reverb:Lcom/codemao/midi/sun/SoftReverb;

    aget-wide v6, p2, v2

    aget-wide v8, p3, v2

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/codemao/midi/sun/SoftReverb;->globalParameterControlChange([IJJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1021
    :cond_1f
    aget v2, p1, v1

    const/16 v3, 0x82

    if-ne v2, v3, :cond_35

    .line 1022
    :goto_25
    array-length v2, p3

    if-ge v1, v2, :cond_35

    .line 1023
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftMainMixer;->chorus:Lcom/codemao/midi/sun/SoftAudioProcessor;

    aget-wide v5, p2, v1

    aget-wide v7, p3, v1

    move-object v4, p1

    invoke-interface/range {v3 .. v8}, Lcom/codemao/midi/sun/SoftAudioProcessor;->globalParameterControlChange([IJJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 1029
    :cond_35
    monitor-exit v0

    return-void

    :catchall_37
    move-exception p1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_8 .. :try_end_39} :catchall_37

    throw p1
.end method

.method protected processAudioBuffers()V
    .registers 35

    move-object/from16 v1, p0

    .line 443
    iget-object v0, v1, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    iget-object v0, v0, Lcom/codemao/midi/sun/SoftSynthesizer;->weakstream:Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;

    if-eqz v0, :cond_21

    iget-wide v2, v0, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->silent_samples:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_21

    .line 445
    iget-wide v2, v1, Lcom/codemao/midi/sun/SoftMainMixer;->sample_pos:J

    iget-object v0, v1, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    iget-object v0, v0, Lcom/codemao/midi/sun/SoftSynthesizer;->weakstream:Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;

    iget-wide v6, v0, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->silent_samples:J

    add-long/2addr v2, v6

    iput-wide v2, v1, Lcom/codemao/midi/sun/SoftMainMixer;->sample_pos:J

    .line 446
    iget-object v0, v1, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    iget-object v0, v0, Lcom/codemao/midi/sun/SoftSynthesizer;->weakstream:Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;

    iput-wide v4, v0, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->silent_samples:J

    :cond_21
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 449
    :goto_23
    iget-object v3, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    array-length v4, v3

    const/16 v5, 0x9

    const/16 v6, 0x8

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x5

    if-ge v2, v4, :cond_41

    if-eq v2, v8, :cond_3e

    if-eq v2, v7, :cond_3e

    if-eq v2, v9, :cond_3e

    if-eq v2, v6, :cond_3e

    if-eq v2, v5, :cond_3e

    .line 455
    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/codemao/midi/sun/SoftAudioBuffer;->clear()V

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 458
    :cond_41
    aget-object v2, v3, v8

    invoke-virtual {v2}, Lcom/codemao/midi/sun/SoftAudioBuffer;->isSilent()Z

    move-result v2

    if-nez v2, :cond_52

    .line 460
    iget-object v2, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    aget-object v3, v2, v0

    aget-object v2, v2, v8

    invoke-virtual {v3, v2}, Lcom/codemao/midi/sun/SoftAudioBuffer;->swap(Lcom/codemao/midi/sun/SoftAudioBuffer;)V

    .line 462
    :cond_52
    iget-object v2, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lcom/codemao/midi/sun/SoftAudioBuffer;->isSilent()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_66

    .line 464
    iget-object v2, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    aget-object v4, v2, v3

    aget-object v2, v2, v7

    invoke-virtual {v4, v2}, Lcom/codemao/midi/sun/SoftAudioBuffer;->swap(Lcom/codemao/midi/sun/SoftAudioBuffer;)V

    .line 466
    :cond_66
    iget-object v2, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Lcom/codemao/midi/sun/SoftAudioBuffer;->isSilent()Z

    move-result v2

    const/4 v4, 0x2

    if-nez v2, :cond_7a

    .line 468
    iget-object v2, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    aget-object v10, v2, v4

    aget-object v2, v2, v9

    invoke-virtual {v10, v2}, Lcom/codemao/midi/sun/SoftAudioBuffer;->swap(Lcom/codemao/midi/sun/SoftAudioBuffer;)V

    .line 470
    :cond_7a
    iget-object v2, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lcom/codemao/midi/sun/SoftAudioBuffer;->isSilent()Z

    move-result v2

    if-nez v2, :cond_8e

    .line 472
    iget-object v2, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    const/4 v10, 0x6

    aget-object v10, v2, v10

    aget-object v2, v2, v6

    invoke-virtual {v10, v2}, Lcom/codemao/midi/sun/SoftAudioBuffer;->swap(Lcom/codemao/midi/sun/SoftAudioBuffer;)V

    .line 474
    :cond_8e
    iget-object v2, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lcom/codemao/midi/sun/SoftAudioBuffer;->isSilent()Z

    move-result v2

    if-nez v2, :cond_a2

    .line 476
    iget-object v2, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    const/4 v6, 0x7

    aget-object v6, v2, v6

    aget-object v2, v2, v5

    invoke-virtual {v6, v2}, Lcom/codemao/midi/sun/SoftAudioBuffer;->swap(Lcom/codemao/midi/sun/SoftAudioBuffer;)V

    .line 485
    :cond_a2
    iget-object v2, v1, Lcom/codemao/midi/sun/SoftMainMixer;->control_mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 487
    :try_start_a5
    iget-wide v5, v1, Lcom/codemao/midi/sun/SoftMainMixer;->sample_pos:J

    long-to-double v5, v5

    const-wide v10, 0x412e848000000000L  # 1000000.0

    iget v12, v1, Lcom/codemao/midi/sun/SoftMainMixer;->samplerate:F

    float-to-double v12, v12

    div-double/2addr v10, v12

    mul-double v5, v5, v10

    double-to-long v5, v5

    .line 489
    invoke-direct {v1, v5, v6}, Lcom/codemao/midi/sun/SoftMainMixer;->processMessages(J)V

    .line 491
    iget-boolean v10, v1, Lcom/codemao/midi/sun/SoftMainMixer;->active_sensing_on:Z

    if-eqz v10, :cond_d7

    .line 495
    iget-wide v10, v1, Lcom/codemao/midi/sun/SoftMainMixer;->msec_last_activity:J

    sub-long/2addr v5, v10

    const-wide/32 v10, 0xf4240

    cmp-long v12, v5, v10

    if-lez v12, :cond_d7

    .line 496
    iput-boolean v0, v1, Lcom/codemao/midi/sun/SoftMainMixer;->active_sensing_on:Z

    .line 497
    iget-object v5, v1, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    iget-object v5, v5, Lcom/codemao/midi/sun/SoftSynthesizer;->channels:[Lcom/codemao/midi/sun/SoftChannel;

    array-length v6, v5

    const/4 v10, 0x0

    :goto_cd
    if-ge v10, v6, :cond_d7

    aget-object v11, v5, v10

    .line 498
    invoke-virtual {v11}, Lcom/codemao/midi/sun/SoftChannel;->allSoundOff()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_cd

    :cond_d7
    const/4 v5, 0x0

    .line 503
    :goto_d8
    iget-object v6, v1, Lcom/codemao/midi/sun/SoftMainMixer;->voicestatus:[Lcom/codemao/midi/sun/SoftVoice;

    array-length v10, v6

    if-ge v5, v10, :cond_eb

    .line 504
    aget-object v10, v6, v5

    iget-boolean v10, v10, Lcom/codemao/midi/javax/VoiceStatus;->active:Z

    if-eqz v10, :cond_e8

    .line 505
    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/codemao/midi/sun/SoftVoice;->processControlLogic()V

    :cond_e8
    add-int/lit8 v5, v5, 0x1

    goto :goto_d8

    .line 506
    :cond_eb
    iget-wide v5, v1, Lcom/codemao/midi/sun/SoftMainMixer;->sample_pos:J

    iget v10, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffer_len:I

    int-to-long v10, v10

    add-long/2addr v5, v10

    iput-wide v5, v1, Lcom/codemao/midi/sun/SoftMainMixer;->sample_pos:J

    .line 508
    iget-object v5, v1, Lcom/codemao/midi/sun/SoftMainMixer;->co_master_volume:[D

    aget-wide v10, v5, v0

    .line 512
    iget-object v5, v1, Lcom/codemao/midi/sun/SoftMainMixer;->co_master_balance:[D

    aget-wide v12, v5, v0

    const-wide/high16 v5, 0x3fe0000000000000L  # 0.5

    const-wide/high16 v14, 0x3ff0000000000000L  # 1.0

    const-wide/high16 v16, 0x4000000000000000L  # 2.0

    cmpl-double v18, v12, v5

    if-lez v18, :cond_10e

    sub-double v5, v14, v12

    mul-double v5, v5, v16

    mul-double v5, v5, v10

    move-wide v12, v10

    move-wide v10, v5

    goto :goto_112

    :cond_10e
    mul-double v12, v12, v16

    mul-double v12, v12, v10

    .line 518
    :goto_112
    iget-object v5, v1, Lcom/codemao/midi/sun/SoftMainMixer;->chorus:Lcom/codemao/midi/sun/SoftAudioProcessor;

    invoke-interface {v5}, Lcom/codemao/midi/sun/SoftAudioProcessor;->processControlLogic()V

    .line 519
    iget-object v5, v1, Lcom/codemao/midi/sun/SoftMainMixer;->reverb:Lcom/codemao/midi/sun/SoftReverb;

    invoke-virtual {v5}, Lcom/codemao/midi/sun/SoftReverb;->processControlLogic()V

    .line 520
    iget-object v5, v1, Lcom/codemao/midi/sun/SoftMainMixer;->agc:Lcom/codemao/midi/sun/SoftAudioProcessor;

    invoke-interface {v5}, Lcom/codemao/midi/sun/SoftAudioProcessor;->processControlLogic()V

    .line 522
    iget-object v5, v1, Lcom/codemao/midi/sun/SoftMainMixer;->cur_registeredMixers:[Lcom/codemao/midi/sun/SoftMainMixer$SoftChannelMixerContainer;

    if-nez v5, :cond_136

    .line 523
    iget-object v5, v1, Lcom/codemao/midi/sun/SoftMainMixer;->registeredMixers:Ljava/util/Set;

    if-eqz v5, :cond_136

    .line 525
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    new-array v5, v5, [Lcom/codemao/midi/sun/SoftMainMixer$SoftChannelMixerContainer;

    iput-object v5, v1, Lcom/codemao/midi/sun/SoftMainMixer;->cur_registeredMixers:[Lcom/codemao/midi/sun/SoftMainMixer$SoftChannelMixerContainer;

    .line 526
    iget-object v6, v1, Lcom/codemao/midi/sun/SoftMainMixer;->registeredMixers:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 530
    :cond_136
    iget-object v5, v1, Lcom/codemao/midi/sun/SoftMainMixer;->cur_registeredMixers:[Lcom/codemao/midi/sun/SoftMainMixer$SoftChannelMixerContainer;

    if-eqz v5, :cond_13e

    .line 532
    array-length v14, v5

    if-nez v14, :cond_13e

    const/4 v5, 0x0

    .line 535
    :cond_13e
    monitor-exit v2
    :try_end_13f
    .catchall {:try_start_a5 .. :try_end_13f} :catchall_46c

    if-eqz v5, :cond_2ea

    .line 540
    iget-object v2, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    aget-object v14, v2, v0

    .line 541
    aget-object v15, v2, v3

    .line 542
    aget-object v19, v2, v4

    .line 543
    aget-object v20, v2, v8

    .line 544
    aget-object v21, v2, v7

    .line 545
    aget-object v22, v2, v9

    .line 547
    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/codemao/midi/sun/SoftAudioBuffer;->getSize()I

    move-result v2

    .line 549
    iget v6, v1, Lcom/codemao/midi/sun/SoftMainMixer;->nrofchannels:I

    new-array v9, v6, [[F

    .line 550
    new-array v7, v6, [[F

    .line 551
    invoke-virtual {v14}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object v25

    aput-object v25, v7, v0

    .line 552
    iget v8, v1, Lcom/codemao/midi/sun/SoftMainMixer;->nrofchannels:I

    if-eq v8, v3, :cond_16b

    .line 553
    invoke-virtual {v15}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object v8

    aput-object v8, v7, v3

    .line 555
    :cond_16b
    array-length v8, v5

    const/4 v4, 0x0

    :goto_16d
    if-ge v4, v8, :cond_2d3

    aget-object v3, v5, v4

    move-object/from16 v28, v5

    .line 559
    iget-object v5, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    move/from16 v29, v8

    iget-object v8, v3, Lcom/codemao/midi/sun/SoftMainMixer$SoftChannelMixerContainer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    aget-object v30, v8, v0

    aput-object v30, v5, v0

    const/16 v27, 0x1

    .line 560
    aget-object v30, v8, v27

    aput-object v30, v5, v27

    const/16 v26, 0x2

    .line 561
    aget-object v30, v8, v26

    aput-object v30, v5, v26

    const/16 v25, 0x3

    .line 562
    aget-object v30, v8, v25

    aput-object v30, v5, v25

    const/16 v24, 0x4

    .line 563
    aget-object v30, v8, v24

    aput-object v30, v5, v24

    const/16 v23, 0x5

    .line 564
    aget-object v8, v8, v23

    aput-object v8, v5, v23

    .line 566
    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/codemao/midi/sun/SoftAudioBuffer;->clear()V

    .line 567
    iget-object v5, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    const/4 v8, 0x1

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/codemao/midi/sun/SoftAudioBuffer;->clear()V

    .line 568
    iget-object v5, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    const/4 v8, 0x2

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/codemao/midi/sun/SoftAudioBuffer;->clear()V

    .line 570
    iget-object v5, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    const/4 v8, 0x3

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/codemao/midi/sun/SoftAudioBuffer;->isSilent()Z

    move-result v5

    if-nez v5, :cond_1c7

    .line 572
    iget-object v5, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    move-wide/from16 v30, v10

    aget-object v10, v5, v0

    aget-object v5, v5, v8

    invoke-virtual {v10, v5}, Lcom/codemao/midi/sun/SoftAudioBuffer;->swap(Lcom/codemao/midi/sun/SoftAudioBuffer;)V

    goto :goto_1c9

    :cond_1c7
    move-wide/from16 v30, v10

    .line 574
    :goto_1c9
    iget-object v5, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    const/4 v8, 0x4

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/codemao/midi/sun/SoftAudioBuffer;->isSilent()Z

    move-result v5

    if-nez v5, :cond_1de

    .line 576
    iget-object v5, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    const/4 v10, 0x1

    aget-object v11, v5, v10

    aget-object v5, v5, v8

    invoke-virtual {v11, v5}, Lcom/codemao/midi/sun/SoftAudioBuffer;->swap(Lcom/codemao/midi/sun/SoftAudioBuffer;)V

    .line 578
    :cond_1de
    iget-object v5, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    const/4 v8, 0x5

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/codemao/midi/sun/SoftAudioBuffer;->isSilent()Z

    move-result v5

    if-nez v5, :cond_1f3

    .line 580
    iget-object v5, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    const/4 v10, 0x2

    aget-object v11, v5, v10

    aget-object v5, v5, v8

    invoke-virtual {v11, v5}, Lcom/codemao/midi/sun/SoftAudioBuffer;->swap(Lcom/codemao/midi/sun/SoftAudioBuffer;)V

    .line 583
    :cond_1f3
    iget-object v5, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object v5

    aput-object v5, v9, v0

    .line 584
    iget v5, v1, Lcom/codemao/midi/sun/SoftMainMixer;->nrofchannels:I

    const/4 v8, 0x1

    if-eq v5, v8, :cond_20c

    .line 585
    iget-object v5, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object v5

    aput-object v5, v9, v8

    :cond_20c
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 588
    :goto_20e
    iget-object v10, v1, Lcom/codemao/midi/sun/SoftMainMixer;->voicestatus:[Lcom/codemao/midi/sun/SoftVoice;

    array-length v11, v10

    if-ge v5, v11, :cond_22d

    .line 589
    aget-object v11, v10, v5

    iget-boolean v11, v11, Lcom/codemao/midi/javax/VoiceStatus;->active:Z

    if-eqz v11, :cond_229

    .line 590
    aget-object v11, v10, v5

    iget-object v11, v11, Lcom/codemao/midi/sun/SoftVoice;->channelmixer:Lcom/codemao/midi/sun/ModelChannelMixer;

    iget-object v0, v3, Lcom/codemao/midi/sun/SoftMainMixer$SoftChannelMixerContainer;->mixer:Lcom/codemao/midi/sun/ModelChannelMixer;

    if-ne v11, v0, :cond_229

    .line 591
    aget-object v0, v10, v5

    iget-object v8, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    invoke-virtual {v0, v8}, Lcom/codemao/midi/sun/SoftVoice;->processAudioLogic([Lcom/codemao/midi/sun/SoftAudioBuffer;)V

    const/4 v8, 0x1

    :cond_229
    add-int/lit8 v5, v5, 0x1

    const/4 v0, 0x0

    goto :goto_20e

    .line 596
    :cond_22d
    iget-object v0, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    const/4 v5, 0x2

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/codemao/midi/sun/SoftAudioBuffer;->isSilent()Z

    move-result v0

    if-nez v0, :cond_278

    .line 598
    iget-object v0, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object v0

    .line 599
    iget-object v5, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    const/4 v10, 0x0

    aget-object v5, v5, v10

    invoke-virtual {v5}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object v5

    .line 600
    iget v10, v1, Lcom/codemao/midi/sun/SoftMainMixer;->nrofchannels:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_26a

    .line 601
    iget-object v10, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    aget-object v10, v10, v11

    invoke-virtual {v10}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object v10

    const/4 v11, 0x0

    :goto_257
    if-ge v11, v2, :cond_278

    .line 603
    aget v32, v0, v11

    .line 604
    aget v33, v5, v11

    add-float v33, v33, v32

    aput v33, v5, v11

    .line 605
    aget v33, v10, v11

    add-float v33, v33, v32

    aput v33, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_257

    :cond_26a
    const/4 v10, 0x0

    :goto_26b
    if-ge v10, v2, :cond_278

    .line 611
    aget v11, v5, v10

    aget v32, v0, v10

    add-float v11, v11, v32

    aput v11, v5, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_26b

    .line 616
    :cond_278
    iget-object v0, v3, Lcom/codemao/midi/sun/SoftMainMixer$SoftChannelMixerContainer;->mixer:Lcom/codemao/midi/sun/ModelChannelMixer;

    const/4 v5, 0x0

    invoke-interface {v0, v9, v5, v2}, Lcom/codemao/midi/sun/ModelChannelMixer;->process([[FII)Z

    move-result v0

    if-nez v0, :cond_291

    .line 617
    iget-object v5, v1, Lcom/codemao/midi/sun/SoftMainMixer;->control_mutex:Ljava/lang/Object;

    monitor-enter v5

    .line 618
    :try_start_284
    iget-object v0, v1, Lcom/codemao/midi/sun/SoftMainMixer;->registeredMixers:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 619
    iput-object v0, v1, Lcom/codemao/midi/sun/SoftMainMixer;->cur_registeredMixers:[Lcom/codemao/midi/sun/SoftMainMixer$SoftChannelMixerContainer;

    .line 620
    monitor-exit v5

    goto :goto_291

    :catchall_28e
    move-exception v0

    monitor-exit v5
    :try_end_290
    .catchall {:try_start_284 .. :try_end_290} :catchall_28e

    throw v0

    :cond_291
    :goto_291
    const/4 v0, 0x0

    :goto_292
    if-ge v0, v6, :cond_2a9

    .line 624
    aget-object v5, v9, v0

    .line 625
    aget-object v10, v7, v0

    const/4 v11, 0x0

    :goto_299
    if-ge v11, v2, :cond_2a6

    .line 627
    aget v32, v10, v11

    aget v33, v5, v11

    add-float v32, v32, v33

    aput v32, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_299

    :cond_2a6
    add-int/lit8 v0, v0, 0x1

    goto :goto_292

    :cond_2a9
    if-nez v8, :cond_2c7

    .line 631
    iget-object v5, v1, Lcom/codemao/midi/sun/SoftMainMixer;->control_mutex:Ljava/lang/Object;

    monitor-enter v5

    .line 632
    :try_start_2ae
    iget-object v0, v1, Lcom/codemao/midi/sun/SoftMainMixer;->stoppedMixers:Ljava/util/Set;

    if-eqz v0, :cond_2c2

    .line 633
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c2

    .line 634
    iget-object v0, v1, Lcom/codemao/midi/sun/SoftMainMixer;->stoppedMixers:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 635
    iget-object v0, v3, Lcom/codemao/midi/sun/SoftMainMixer$SoftChannelMixerContainer;->mixer:Lcom/codemao/midi/sun/ModelChannelMixer;

    invoke-interface {v0}, Lcom/codemao/midi/sun/ModelChannelMixer;->stop()V

    .line 638
    :cond_2c2
    monitor-exit v5

    goto :goto_2c7

    :catchall_2c4
    move-exception v0

    monitor-exit v5
    :try_end_2c6
    .catchall {:try_start_2ae .. :try_end_2c6} :catchall_2c4

    throw v0

    :cond_2c7
    :goto_2c7
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v5, v28

    move/from16 v8, v29

    move-wide/from16 v10, v30

    const/4 v0, 0x0

    const/4 v3, 0x1

    goto/16 :goto_16d

    :cond_2d3
    move-wide/from16 v30, v10

    .line 643
    iget-object v0, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    const/4 v2, 0x0

    aput-object v14, v0, v2

    const/4 v2, 0x1

    .line 644
    aput-object v15, v0, v2

    const/4 v2, 0x2

    .line 645
    aput-object v19, v0, v2

    const/4 v2, 0x3

    .line 646
    aput-object v20, v0, v2

    const/4 v2, 0x4

    .line 647
    aput-object v21, v0, v2

    const/4 v2, 0x5

    .line 648
    aput-object v22, v0, v2

    goto :goto_2ec

    :cond_2ea
    move-wide/from16 v30, v10

    :goto_2ec
    const/4 v0, 0x0

    .line 652
    :goto_2ed
    iget-object v2, v1, Lcom/codemao/midi/sun/SoftMainMixer;->voicestatus:[Lcom/codemao/midi/sun/SoftVoice;

    array-length v3, v2

    if-ge v0, v3, :cond_308

    .line 653
    aget-object v3, v2, v0

    iget-boolean v3, v3, Lcom/codemao/midi/javax/VoiceStatus;->active:Z

    if-eqz v3, :cond_305

    .line 654
    aget-object v3, v2, v0

    iget-object v3, v3, Lcom/codemao/midi/sun/SoftVoice;->channelmixer:Lcom/codemao/midi/sun/ModelChannelMixer;

    if-nez v3, :cond_305

    .line 655
    aget-object v2, v2, v0

    iget-object v3, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    invoke-virtual {v2, v3}, Lcom/codemao/midi/sun/SoftVoice;->processAudioLogic([Lcom/codemao/midi/sun/SoftAudioBuffer;)V

    :cond_305
    add-int/lit8 v0, v0, 0x1

    goto :goto_2ed

    .line 657
    :cond_308
    iget-object v0, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/codemao/midi/sun/SoftAudioBuffer;->isSilent()Z

    move-result v0

    if-nez v0, :cond_358

    .line 659
    iget-object v0, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object v0

    .line 660
    iget-object v2, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object v2

    .line 661
    iget-object v4, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/codemao/midi/sun/SoftAudioBuffer;->getSize()I

    move-result v3

    .line 662
    iget v4, v1, Lcom/codemao/midi/sun/SoftMainMixer;->nrofchannels:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_34b

    .line 663
    iget-object v4, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object v4

    const/4 v5, 0x0

    :goto_33a
    if-ge v5, v3, :cond_358

    .line 665
    aget v6, v0, v5

    .line 666
    aget v7, v2, v5

    add-float/2addr v7, v6

    aput v7, v2, v5

    .line 667
    aget v7, v4, v5

    add-float/2addr v7, v6

    aput v7, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_33a

    :cond_34b
    const/4 v4, 0x0

    :goto_34c
    if-ge v4, v3, :cond_358

    .line 673
    aget v5, v2, v4

    aget v6, v0, v4

    add-float/2addr v5, v6

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_34c

    .line 679
    :cond_358
    iget-object v0, v1, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    iget-boolean v0, v0, Lcom/codemao/midi/sun/SoftSynthesizer;->chorus_on:Z

    if-eqz v0, :cond_363

    .line 680
    iget-object v0, v1, Lcom/codemao/midi/sun/SoftMainMixer;->chorus:Lcom/codemao/midi/sun/SoftAudioProcessor;

    invoke-interface {v0}, Lcom/codemao/midi/sun/SoftAudioProcessor;->processAudio()V

    .line 682
    :cond_363
    iget-object v0, v1, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    iget-boolean v0, v0, Lcom/codemao/midi/sun/SoftSynthesizer;->reverb_on:Z

    if-eqz v0, :cond_36e

    .line 683
    iget-object v0, v1, Lcom/codemao/midi/sun/SoftMainMixer;->reverb:Lcom/codemao/midi/sun/SoftReverb;

    invoke-virtual {v0}, Lcom/codemao/midi/sun/SoftReverb;->processAudio()V

    .line 685
    :cond_36e
    iget v0, v1, Lcom/codemao/midi/sun/SoftMainMixer;->nrofchannels:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_378

    add-double v10, v30, v12

    div-double v10, v10, v16

    goto :goto_37a

    :cond_378
    move-wide/from16 v10, v30

    .line 689
    :goto_37a
    iget-wide v2, v1, Lcom/codemao/midi/sun/SoftMainMixer;->last_volume_left:D

    cmpl-double v0, v2, v10

    if-nez v0, :cond_3ce

    iget-wide v2, v1, Lcom/codemao/midi/sun/SoftMainMixer;->last_volume_right:D

    cmpl-double v0, v2, v12

    if-eqz v0, :cond_387

    goto :goto_3ce

    :cond_387
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    cmpl-double v0, v10, v2

    if-nez v0, :cond_391

    cmpl-double v0, v12, v2

    if-eqz v0, :cond_418

    .line 715
    :cond_391
    iget-object v0, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object v0

    .line 716
    iget-object v3, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object v3

    .line 717
    iget-object v4, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/codemao/midi/sun/SoftAudioBuffer;->getSize()I

    move-result v2

    mul-double v10, v10, v10

    double-to-float v4, v10

    const/4 v5, 0x0

    :goto_3af
    if-ge v5, v2, :cond_3ba

    .line 721
    aget v6, v0, v5

    mul-float v6, v6, v4

    aput v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3af

    .line 722
    :cond_3ba
    iget v0, v1, Lcom/codemao/midi/sun/SoftMainMixer;->nrofchannels:I

    const/4 v4, 0x1

    if-eq v0, v4, :cond_418

    mul-double v12, v12, v12

    double-to-float v0, v12

    const/4 v4, 0x0

    :goto_3c3
    if-ge v4, v2, :cond_418

    .line 725
    aget v5, v3, v4

    mul-float v5, v5, v0

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3c3

    .line 690
    :cond_3ce
    :goto_3ce
    iget-object v0, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object v0

    .line 691
    iget-object v3, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object v3

    .line 692
    iget-object v4, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/codemao/midi/sun/SoftAudioBuffer;->getSize()I

    move-result v2

    .line 696
    iget-wide v4, v1, Lcom/codemao/midi/sun/SoftMainMixer;->last_volume_left:D

    mul-double v4, v4, v4

    double-to-float v4, v4

    mul-double v5, v10, v10

    float-to-double v7, v4

    sub-double/2addr v5, v7

    int-to-double v7, v2

    div-double/2addr v5, v7

    double-to-float v5, v5

    const/4 v6, 0x0

    :goto_3f5
    if-ge v6, v2, :cond_401

    add-float/2addr v4, v5

    .line 700
    aget v7, v0, v6

    mul-float v7, v7, v4

    aput v7, v0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3f5

    .line 702
    :cond_401
    iget v0, v1, Lcom/codemao/midi/sun/SoftMainMixer;->nrofchannels:I

    const/4 v4, 0x1

    if-eq v0, v4, :cond_414

    const/4 v0, 0x0

    :goto_407
    if-ge v0, v2, :cond_414

    .line 707
    aget v4, v3, v0

    float-to-double v4, v4

    mul-double v4, v4, v12

    double-to-float v4, v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_407

    .line 710
    :cond_414
    iput-wide v10, v1, Lcom/codemao/midi/sun/SoftMainMixer;->last_volume_left:D

    .line 711
    iput-wide v12, v1, Lcom/codemao/midi/sun/SoftMainMixer;->last_volume_right:D

    .line 731
    :cond_418
    iget-object v0, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/codemao/midi/sun/SoftAudioBuffer;->isSilent()Z

    move-result v0

    if-eqz v0, :cond_45d

    iget-object v0, v1, Lcom/codemao/midi/sun/SoftMainMixer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    .line 732
    invoke-virtual {v0}, Lcom/codemao/midi/sun/SoftAudioBuffer;->isSilent()Z

    move-result v0

    if-eqz v0, :cond_45d

    .line 736
    iget-object v2, v1, Lcom/codemao/midi/sun/SoftMainMixer;->control_mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 737
    :try_start_431
    iget-object v0, v1, Lcom/codemao/midi/sun/SoftMainMixer;->midimessages:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    .line 738
    monitor-exit v2
    :try_end_438
    .catchall {:try_start_431 .. :try_end_438} :catchall_45a

    if-nez v0, :cond_460

    .line 742
    iget v0, v1, Lcom/codemao/midi/sun/SoftMainMixer;->pusher_silent_count:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, v1, Lcom/codemao/midi/sun/SoftMainMixer;->pusher_silent_count:I

    const/4 v3, 0x5

    if-le v0, v3, :cond_460

    const/4 v0, 0x0

    .line 745
    iput v0, v1, Lcom/codemao/midi/sun/SoftMainMixer;->pusher_silent_count:I

    .line 746
    iget-object v3, v1, Lcom/codemao/midi/sun/SoftMainMixer;->control_mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 747
    :try_start_449
    iput-boolean v2, v1, Lcom/codemao/midi/sun/SoftMainMixer;->pusher_silent:Z

    .line 748
    iget-object v0, v1, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    iget-object v0, v0, Lcom/codemao/midi/sun/SoftSynthesizer;->weakstream:Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;

    if-eqz v0, :cond_455

    const/4 v2, 0x0

    .line 749
    invoke-virtual {v0, v2}, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->setInputStream(Lcom/codemao/midi/javax/sampled/AudioInputStream;)V

    .line 750
    :cond_455
    monitor-exit v3

    goto :goto_460

    :catchall_457
    move-exception v0

    monitor-exit v3
    :try_end_459
    .catchall {:try_start_449 .. :try_end_459} :catchall_457

    throw v0

    :catchall_45a
    move-exception v0

    .line 738
    :try_start_45b
    monitor-exit v2
    :try_end_45c
    .catchall {:try_start_45b .. :try_end_45c} :catchall_45a

    throw v0

    :cond_45d
    const/4 v0, 0x0

    .line 755
    iput v0, v1, Lcom/codemao/midi/sun/SoftMainMixer;->pusher_silent_count:I

    .line 757
    :cond_460
    :goto_460
    iget-object v0, v1, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    iget-boolean v0, v0, Lcom/codemao/midi/sun/SoftSynthesizer;->agc_on:Z

    if-eqz v0, :cond_46b

    .line 758
    iget-object v0, v1, Lcom/codemao/midi/sun/SoftMainMixer;->agc:Lcom/codemao/midi/sun/SoftAudioProcessor;

    invoke-interface {v0}, Lcom/codemao/midi/sun/SoftAudioProcessor;->processAudio()V

    :cond_46b
    return-void

    :catchall_46c
    move-exception v0

    .line 535
    :try_start_46d
    monitor-exit v2
    :try_end_46e
    .catchall {:try_start_46d .. :try_end_46e} :catchall_46c

    throw v0
.end method

.method public processMessage(IIII)V
    .registers 7

    .line 1078
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    iget-object v0, v0, Lcom/codemao/midi/sun/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1079
    :try_start_5
    invoke-virtual {p0}, Lcom/codemao/midi/sun/SoftMainMixer;->activity()V

    .line 1080
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_6e

    const/16 v0, 0xf0

    if-ne p2, v0, :cond_20

    or-int/2addr p1, p2

    const/16 p2, 0xfe

    if-eq p1, p2, :cond_13

    goto :goto_1c

    .line 1086
    :cond_13
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    iget-object v0, p1, Lcom/codemao/midi/sun/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    const/4 p1, 0x1

    .line 1087
    :try_start_19
    iput-boolean p1, p0, Lcom/codemao/midi/sun/SoftMainMixer;->active_sensing_on:Z

    .line 1088
    monitor-exit v0

    :goto_1c
    return-void

    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_1d

    throw p1

    .line 1096
    :cond_20
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    iget-object v0, v0, Lcom/codemao/midi/sun/SoftSynthesizer;->channels:[Lcom/codemao/midi/sun/SoftChannel;

    .line 1097
    array-length v1, v0

    if-lt p1, v1, :cond_28

    return-void

    .line 1099
    :cond_28
    aget-object p1, v0, p1

    const/16 v0, 0x80

    if-eq p2, v0, :cond_6a

    const/16 v1, 0x90

    if-eq p2, v1, :cond_5e

    const/16 v1, 0xa0

    if-eq p2, v1, :cond_5a

    const/16 v1, 0xb0

    if-eq p2, v1, :cond_56

    const/16 v1, 0xc0

    if-eq p2, v1, :cond_52

    const/16 v1, 0xd0

    if-eq p2, v1, :cond_4e

    const/16 v1, 0xe0

    if-eq p2, v1, :cond_47

    goto :goto_6d

    :cond_47
    mul-int/lit16 p4, p4, 0x80

    add-int/2addr p3, p4

    .line 1124
    invoke-virtual {p1, p3}, Lcom/codemao/midi/sun/SoftChannel;->setPitchBend(I)V

    goto :goto_6d

    .line 1121
    :cond_4e
    invoke-virtual {p1, p3}, Lcom/codemao/midi/sun/SoftChannel;->setChannelPressure(I)V

    goto :goto_6d

    .line 1118
    :cond_52
    invoke-virtual {p1, p3}, Lcom/codemao/midi/sun/SoftChannel;->programChange(I)V

    goto :goto_6d

    .line 1115
    :cond_56
    invoke-virtual {p1, p3, p4}, Lcom/codemao/midi/sun/SoftChannel;->controlChange(II)V

    goto :goto_6d

    .line 1112
    :cond_5a
    invoke-virtual {p1, p3, p4}, Lcom/codemao/midi/sun/SoftChannel;->setPolyPressure(II)V

    goto :goto_6d

    .line 1103
    :cond_5e
    iget p2, p0, Lcom/codemao/midi/sun/SoftMainMixer;->delay_midievent:I

    if-eqz p2, :cond_66

    .line 1104
    invoke-virtual {p1, p3, p4, p2}, Lcom/codemao/midi/sun/SoftChannel;->noteOn(III)V

    goto :goto_6d

    .line 1106
    :cond_66
    invoke-virtual {p1, p3, p4}, Lcom/codemao/midi/sun/SoftChannel;->noteOn(II)V

    goto :goto_6d

    .line 1109
    :cond_6a
    invoke-virtual {p1, p3, p4}, Lcom/codemao/midi/sun/SoftChannel;->noteOff(II)V

    :goto_6d
    return-void

    :catchall_6e
    move-exception p1

    .line 1080
    :try_start_6f
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw p1
.end method

.method public processMessage(Lcom/codemao/midi/javax/CMMidiMessage;)V
    .registers 5

    .line 1040
    instance-of v0, p1, Lcom/codemao/midi/javax/ShortMessageCM;

    if-eqz v0, :cond_1a

    .line 1041
    check-cast p1, Lcom/codemao/midi/javax/ShortMessageCM;

    .line 1042
    invoke-virtual {p1}, Lcom/codemao/midi/javax/ShortMessageCM;->getChannel()I

    move-result v0

    invoke-virtual {p1}, Lcom/codemao/midi/javax/ShortMessageCM;->getCommand()I

    move-result v1

    .line 1043
    invoke-virtual {p1}, Lcom/codemao/midi/javax/ShortMessageCM;->getData1()I

    move-result v2

    invoke-virtual {p1}, Lcom/codemao/midi/javax/ShortMessageCM;->getData2()I

    move-result p1

    .line 1042
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/codemao/midi/sun/SoftMainMixer;->processMessage(IIII)V

    return-void

    .line 1046
    :cond_1a
    invoke-virtual {p1}, Lcom/codemao/midi/javax/CMMidiMessage;->getMessage()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/codemao/midi/sun/SoftMainMixer;->processMessage([B)V

    return-void
.end method

.method public processMessage(Ljava/lang/Object;)V
    .registers 3

    .line 1033
    instance-of v0, p1, [B

    if-eqz v0, :cond_a

    .line 1034
    move-object v0, p1

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lcom/codemao/midi/sun/SoftMainMixer;->processMessage([B)V

    .line 1035
    :cond_a
    instance-of v0, p1, Lcom/codemao/midi/javax/CMMidiMessage;

    if-eqz v0, :cond_13

    .line 1036
    check-cast p1, Lcom/codemao/midi/javax/CMMidiMessage;

    invoke-virtual {p0, p1}, Lcom/codemao/midi/sun/SoftMainMixer;->processMessage(Lcom/codemao/midi/javax/CMMidiMessage;)V

    :cond_13
    return-void
.end method

.method public processMessage([B)V
    .registers 8

    .line 1051
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_9

    .line 1052
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    const/16 v2, 0xf0

    if-ne v0, v2, :cond_12

    .line 1055
    invoke-direct {p0, p1}, Lcom/codemao/midi/sun/SoftMainMixer;->processSystemExclusiveMessage([B)V

    return-void

    :cond_12
    and-int/lit16 v2, v0, 0xf0

    and-int/lit8 v0, v0, 0xf

    .line 1064
    array-length v3, p1

    const/4 v4, 0x1

    if-le v3, v4, :cond_1f

    .line 1065
    aget-byte v3, p1, v4

    and-int/lit16 v3, v3, 0xff

    goto :goto_20

    :cond_1f
    const/4 v3, 0x0

    .line 1068
    :goto_20
    array-length v4, p1

    const/4 v5, 0x2

    if-le v4, v5, :cond_28

    .line 1069
    aget-byte p1, p1, v5

    and-int/lit16 v1, p1, 0xff

    .line 1073
    :cond_28
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/codemao/midi/sun/SoftMainMixer;->processMessage(IIII)V

    return-void
.end method

.method public registerMixer(Lcom/codemao/midi/sun/ModelChannelMixer;)V
    .registers 9

    .line 786
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftMainMixer;->registeredMixers:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 787
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftMainMixer;->registeredMixers:Ljava/util/Set;

    .line 788
    :cond_b
    new-instance v0, Lcom/codemao/midi/sun/SoftMainMixer$SoftChannelMixerContainer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/codemao/midi/sun/SoftMainMixer$SoftChannelMixerContainer;-><init>(Lcom/codemao/midi/sun/SoftMainMixer;Lcom/codemao/midi/sun/SoftMainMixer$1;)V

    const/4 v2, 0x6

    new-array v2, v2, [Lcom/codemao/midi/sun/SoftAudioBuffer;

    .line 789
    iput-object v2, v0, Lcom/codemao/midi/sun/SoftMainMixer$SoftChannelMixerContainer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    const/4 v2, 0x0

    .line 790
    :goto_17
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftMainMixer$SoftChannelMixerContainer;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    array-length v4, v3

    if-ge v2, v4, :cond_2e

    .line 791
    new-instance v4, Lcom/codemao/midi/sun/SoftAudioBuffer;

    iget v5, p0, Lcom/codemao/midi/sun/SoftMainMixer;->buffer_len:I

    iget-object v6, p0, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    .line 792
    invoke-virtual {v6}, Lcom/codemao/midi/sun/SoftSynthesizer;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/codemao/midi/sun/SoftAudioBuffer;-><init>(ILcom/codemao/midi/javax/sampled/AudioFormat;)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 794
    :cond_2e
    iput-object p1, v0, Lcom/codemao/midi/sun/SoftMainMixer$SoftChannelMixerContainer;->mixer:Lcom/codemao/midi/sun/ModelChannelMixer;

    .line 795
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftMainMixer;->registeredMixers:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 796
    iput-object v1, p0, Lcom/codemao/midi/sun/SoftMainMixer;->cur_registeredMixers:[Lcom/codemao/midi/sun/SoftMainMixer$SoftChannelMixerContainer;

    return-void
.end method

.method public reset()V
    .registers 10

    .line 933
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    iget-object v0, v0, Lcom/codemao/midi/sun/SoftSynthesizer;->channels:[Lcom/codemao/midi/sun/SoftChannel;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 934
    :goto_6
    array-length v3, v0

    const/4 v4, 0x1

    if-ge v2, v3, :cond_39

    .line 935
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/codemao/midi/sun/SoftChannel;->allSoundOff()V

    .line 936
    aget-object v3, v0, v2

    invoke-virtual {v3, v4}, Lcom/codemao/midi/sun/SoftChannel;->resetAllControllers(Z)V

    .line 938
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftMainMixer;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    invoke-virtual {v3}, Lcom/codemao/midi/sun/SoftSynthesizer;->getGeneralMidiMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_31

    const/16 v3, 0x9

    if-ne v2, v3, :cond_29

    .line 940
    aget-object v3, v0, v2

    const/16 v4, 0x3c00

    invoke-virtual {v3, v1, v4}, Lcom/codemao/midi/sun/SoftChannel;->programChange(II)V

    goto :goto_36

    .line 942
    :cond_29
    aget-object v3, v0, v2

    const/16 v4, 0x3c80

    invoke-virtual {v3, v1, v4}, Lcom/codemao/midi/sun/SoftChannel;->programChange(II)V

    goto :goto_36

    .line 944
    :cond_31
    aget-object v3, v0, v2

    invoke-virtual {v3, v1, v1}, Lcom/codemao/midi/sun/SoftChannel;->programChange(II)V

    :goto_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_39
    const/16 v0, 0x3fff

    .line 946
    invoke-virtual {p0, v0}, Lcom/codemao/midi/sun/SoftMainMixer;->setVolume(I)V

    const/16 v0, 0x2000

    .line 947
    invoke-virtual {p0, v0}, Lcom/codemao/midi/sun/SoftMainMixer;->setBalance(I)V

    .line 948
    invoke-virtual {p0, v0}, Lcom/codemao/midi/sun/SoftMainMixer;->setCoarseTuning(I)V

    .line 949
    invoke-virtual {p0, v0}, Lcom/codemao/midi/sun/SoftMainMixer;->setFineTuning(I)V

    new-array v0, v4, [I

    const/16 v2, 0x81

    aput v2, v0, v1

    new-array v2, v4, [J

    const-wide/16 v5, 0x0

    aput-wide v5, v2, v1

    new-array v3, v4, [J

    const-wide/16 v7, 0x4

    aput-wide v7, v3, v1

    .line 951
    invoke-virtual {p0, v0, v2, v3}, Lcom/codemao/midi/sun/SoftMainMixer;->globalParameterControlChange([I[J[J)V

    new-array v0, v4, [I

    const/16 v2, 0x82

    aput v2, v0, v1

    new-array v2, v4, [J

    aput-wide v5, v2, v1

    new-array v3, v4, [J

    const-wide/16 v4, 0x2

    aput-wide v4, v3, v1

    .line 954
    invoke-virtual {p0, v0, v2, v3}, Lcom/codemao/midi/sun/SoftMainMixer;->globalParameterControlChange([I[J[J)V

    return-void
.end method

.method public setBalance(I)V
    .registers 9

    .line 965
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftMainMixer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 966
    :try_start_3
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftMainMixer;->co_master_balance:[D

    const/4 v2, 0x0

    int-to-double v3, p1

    const-wide/high16 v5, 0x40d0000000000000L  # 16384.0

    div-double/2addr v3, v5

    aput-wide v3, v1, v2

    .line 967
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public setCoarseTuning(I)V
    .registers 9

    .line 977
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftMainMixer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 978
    :try_start_3
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftMainMixer;->co_master_coarse_tuning:[D

    const/4 v2, 0x0

    int-to-double v3, p1

    const-wide/high16 v5, 0x40d0000000000000L  # 16384.0

    div-double/2addr v3, v5

    aput-wide v3, v1, v2

    .line 979
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public setFineTuning(I)V
    .registers 9

    .line 971
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftMainMixer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 972
    :try_start_3
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftMainMixer;->co_master_fine_tuning:[D

    const/4 v2, 0x0

    int-to-double v3, p1

    const-wide/high16 v5, 0x40d0000000000000L  # 16384.0

    div-double/2addr v3, v5

    aput-wide v3, v1, v2

    .line 973
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public setVolume(I)V
    .registers 9

    .line 959
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftMainMixer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 960
    :try_start_3
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftMainMixer;->co_master_volume:[D

    const/4 v2, 0x0

    int-to-double v3, p1

    const-wide/high16 v5, 0x40d0000000000000L  # 16384.0

    div-double/2addr v3, v5

    aput-wide v3, v1, v2

    .line 961
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public stopMixer(Lcom/codemao/midi/sun/ModelChannelMixer;)V
    .registers 3

    .line 780
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftMainMixer;->stoppedMixers:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 781
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftMainMixer;->stoppedMixers:Ljava/util/Set;

    .line 782
    :cond_b
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftMainMixer;->stoppedMixers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
