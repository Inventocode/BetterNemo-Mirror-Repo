.class public Lcom/codemao/midi/sun/SoftSynthesizer;
.super Ljava/lang/Object;
.source "SoftSynthesizer.java"

# interfaces
.implements Lcom/codemao/midi/javax/Synthesizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/midi/sun/SoftSynthesizer$Info;,
        Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;
    }
.end annotation


# static fields
.field protected static final info:Lcom/codemao/midi/javax/MidiDevice$Info;

.field private static testline:Lcom/codemao/midi/javax/sampled/SourceDataLine;


# instance fields
.field protected agc_on:Z

.field protected channels:[Lcom/codemao/midi/sun/SoftChannel;

.field protected chorus_on:Z

.field protected control_mutex:Ljava/lang/Object;

.field private controlrate:F

.field private deviceid:I

.field protected external_channels:[Lcom/codemao/midi/sun/SoftChannelProxy;

.field private format:Lcom/codemao/midi/javax/sampled/AudioFormat;

.field private gmmode:I

.field private implicitOpen:Z

.field private inslist:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codemao/midi/sun/SoftInstrument;",
            ">;"
        }
    .end annotation
.end field

.field private jitter_correction:Z

.field private largemode:Z

.field private latency:J

.field protected load_default_soundbank:Z

.field private loadedlist:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codemao/midi/sun/ModelInstrument;",
            ">;"
        }
    .end annotation
.end field

.field private mainmixer:Lcom/codemao/midi/sun/SoftMainMixer;

.field private maxpoly:I

.field private number_of_midi_channels:I

.field private open:Z

.field private pusher:Lcom/codemao/midi/sun/SoftAudioPusher;

.field private pusher_stream:Lcom/codemao/midi/javax/sampled/AudioInputStream;

.field private recvslist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/codemao/midi/javax/Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private resampler:Lcom/codemao/midi/sun/SoftResampler;

.field private resamplerType:Ljava/lang/String;

.field protected reverb_light:Z

.field protected reverb_on:Z

.field private sourceDataLine:Lcom/codemao/midi/javax/sampled/SourceDataLine;

.field private tunings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codemao/midi/sun/SoftTuning;",
            ">;"
        }
    .end annotation
.end field

.field protected voiceIDCounter:I

.field protected voice_allocation_mode:I

.field private voices:[Lcom/codemao/midi/sun/SoftVoice;

.field protected weakstream:Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 172
    new-instance v0, Lcom/codemao/midi/sun/SoftSynthesizer$Info;

    invoke-direct {v0}, Lcom/codemao/midi/sun/SoftSynthesizer$Info;-><init>()V

    sput-object v0, Lcom/codemao/midi/sun/SoftSynthesizer;->info:Lcom/codemao/midi/javax/MidiDevice$Info;

    const/4 v0, 0x0

    .line 174
    sput-object v0, Lcom/codemao/midi/sun/SoftSynthesizer;->testline:Lcom/codemao/midi/javax/sampled/SourceDataLine;

    return-void
.end method

.method public constructor <init>()V
    .registers 10

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->weakstream:Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;

    .line 180
    iput-object p0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 182
    iput v1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->voiceIDCounter:I

    .line 186
    iput v1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->voice_allocation_mode:I

    .line 188
    iput-boolean v1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->load_default_soundbank:Z

    const/4 v2, 0x1

    .line 189
    iput-boolean v2, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->reverb_light:Z

    .line 190
    iput-boolean v2, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->reverb_on:Z

    .line 191
    iput-boolean v2, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->chorus_on:Z

    .line 192
    iput-boolean v2, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->agc_on:Z

    .line 195
    iput-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->external_channels:[Lcom/codemao/midi/sun/SoftChannelProxy;

    .line 197
    iput-boolean v1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->largemode:Z

    .line 202
    iput v1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->gmmode:I

    .line 204
    iput v1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->deviceid:I

    .line 206
    new-instance v2, Lcom/codemao/midi/javax/sampled/AudioFormat;

    const v4, 0x472c4400  # 44100.0f

    const/16 v5, 0x10

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/codemao/midi/javax/sampled/AudioFormat;-><init>(FIIZZ)V

    iput-object v2, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    .line 208
    iput-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->sourceDataLine:Lcom/codemao/midi/javax/sampled/SourceDataLine;

    .line 210
    iput-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->pusher:Lcom/codemao/midi/sun/SoftAudioPusher;

    .line 211
    iput-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->pusher_stream:Lcom/codemao/midi/javax/sampled/AudioInputStream;

    const/high16 v0, 0x43130000  # 147.0f

    .line 213
    iput v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->controlrate:F

    .line 215
    iput-boolean v1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->open:Z

    .line 216
    iput-boolean v1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->implicitOpen:Z

    const-string v0, "linear"

    .line 218
    iput-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->resamplerType:Ljava/lang/String;

    .line 219
    new-instance v0, Lcom/codemao/midi/sun/SoftLinearResampler;

    invoke-direct {v0}, Lcom/codemao/midi/sun/SoftLinearResampler;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->resampler:Lcom/codemao/midi/sun/SoftResampler;

    const/16 v0, 0x10

    .line 221
    iput v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->number_of_midi_channels:I

    const/16 v0, 0x40

    .line 222
    iput v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->maxpoly:I

    const-wide/32 v2, 0x30d40

    .line 223
    iput-wide v2, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->latency:J

    .line 224
    iput-boolean v1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->jitter_correction:Z

    .line 229
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->tunings:Ljava/util/Map;

    .line 231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->inslist:Ljava/util/Map;

    .line 233
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->loadedlist:Ljava/util/Map;

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->recvslist:Ljava/util/ArrayList;

    return-void
.end method

.method private getBuffers(Lcom/codemao/midi/sun/ModelInstrument;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/midi/sun/ModelInstrument;",
            "Ljava/util/List<",
            "Lcom/codemao/midi/sun/ModelByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 240
    invoke-virtual {p1}, Lcom/codemao/midi/sun/ModelInstrument;->getPerformers()[Lcom/codemao/midi/sun/ModelPerformer;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_40

    aget-object v2, p1, v1

    .line 241
    invoke-virtual {v2}, Lcom/codemao/midi/sun/ModelPerformer;->getOscillators()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3d

    .line 242
    invoke-virtual {v2}, Lcom/codemao/midi/sun/ModelPerformer;->getOscillators()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/midi/sun/ModelOscillator;

    .line 243
    instance-of v4, v3, Lcom/codemao/midi/sun/ModelByteBufferWavetable;

    if-eqz v4, :cond_18

    .line 244
    check-cast v3, Lcom/codemao/midi/sun/ModelByteBufferWavetable;

    .line 245
    invoke-virtual {v3}, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->getBuffer()Lcom/codemao/midi/sun/ModelByteBuffer;

    move-result-object v4

    if-eqz v4, :cond_33

    .line 247
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_33
    invoke-virtual {v3}, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->get8BitExtensionBuffer()Lcom/codemao/midi/sun/ModelByteBuffer;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 250
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_40
    return-void
.end method

.method private getStoredProperties()Ljava/util/Properties;
    .registers 2

    .line 704
    new-instance v0, Lcom/codemao/midi/sun/SoftSynthesizer$1;

    invoke-direct {v0, p0}, Lcom/codemao/midi/sun/SoftSynthesizer$1;-><init>(Lcom/codemao/midi/sun/SoftSynthesizer;)V

    .line 705
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    return-object v0
.end method

.method private loadInstruments(Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/midi/sun/ModelInstrument;",
            ">;)Z"
        }
    .end annotation

    .line 272
    invoke-virtual {p0}, Lcom/codemao/midi/sun/SoftSynthesizer;->isOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 274
    :cond_8
    invoke-direct {p0, p1}, Lcom/codemao/midi/sun/SoftSynthesizer;->loadSamples(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_f

    return v1

    .line 277
    :cond_f
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_12
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->channels:[Lcom/codemao/midi/sun/SoftChannel;

    if-eqz v2, :cond_23

    .line 279
    array-length v3, v2

    :goto_17
    if-ge v1, v3, :cond_23

    aget-object v4, v2, v1

    const/4 v5, 0x0

    .line 281
    iput-object v5, v4, Lcom/codemao/midi/sun/SoftChannel;->current_instrument:Lcom/codemao/midi/sun/SoftInstrument;

    .line 282
    iput-object v5, v4, Lcom/codemao/midi/sun/SoftChannel;->current_director:Lcom/codemao/midi/sun/ModelDirector;

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 284
    :cond_23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/midi/javax/Instrument;

    .line 285
    invoke-virtual {v1}, Lcom/codemao/midi/javax/Instrument;->getPatch()Lcom/codemao/midi/javax/Patch;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/codemao/midi/sun/SoftSynthesizer;->patchToString(Lcom/codemao/midi/javax/Patch;)Ljava/lang/String;

    move-result-object v2

    .line 286
    new-instance v3, Lcom/codemao/midi/sun/SoftInstrument;

    move-object v4, v1

    check-cast v4, Lcom/codemao/midi/sun/ModelInstrument;

    invoke-direct {v3, v4}, Lcom/codemao/midi/sun/SoftInstrument;-><init>(Lcom/codemao/midi/sun/ModelInstrument;)V

    .line 288
    iget-object v4, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->inslist:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->loadedlist:Ljava/util/Map;

    check-cast v1, Lcom/codemao/midi/sun/ModelInstrument;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    .line 291
    :cond_50
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_53
    move-exception p1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_12 .. :try_end_55} :catchall_53

    throw p1
.end method

.method private loadSamples(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/midi/sun/ModelInstrument;",
            ">;)Z"
        }
    .end annotation

    .line 258
    iget-boolean v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->largemode:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 260
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 261
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/midi/sun/ModelInstrument;

    .line 262
    invoke-direct {p0, v2, v0}, Lcom/codemao/midi/sun/SoftSynthesizer;->getBuffers(Lcom/codemao/midi/sun/ModelInstrument;Ljava/util/List;)V

    goto :goto_f

    .line 264
    :cond_1f
    :try_start_1f
    invoke-static {v0}, Lcom/codemao/midi/sun/ModelByteBuffer;->loadAll(Ljava/util/Collection;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_23

    return v1

    :catch_23
    const/4 p1, 0x0

    return p1
.end method

.method private patchToString(Lcom/codemao/midi/javax/Patch;)Ljava/lang/String;
    .registers 5

    .line 352
    instance-of v0, p1, Lcom/codemao/midi/sun/ModelPatch;

    const-string v1, "."

    if-eqz v0, :cond_2f

    move-object v0, p1

    check-cast v0, Lcom/codemao/midi/sun/ModelPatch;

    invoke-virtual {v0}, Lcom/codemao/midi/sun/ModelPatch;->isPercussion()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/codemao/midi/javax/Patch;->getProgram()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/codemao/midi/javax/Patch;->getBank()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 355
    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/codemao/midi/javax/Patch;->getProgram()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/codemao/midi/javax/Patch;->getBank()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private processPropertyInfo(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 297
    invoke-virtual {p0, p1}, Lcom/codemao/midi/sun/SoftSynthesizer;->getPropertyInfo(Ljava/util/Map;)[Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;

    move-result-object p1

    const/4 v0, 0x0

    .line 299
    aget-object v0, p1, v0

    iget-object v0, v0, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "point"

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 302
    new-instance v0, Lcom/codemao/midi/sun/SoftPointResampler;

    invoke-direct {v0}, Lcom/codemao/midi/sun/SoftPointResampler;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->resampler:Lcom/codemao/midi/sun/SoftResampler;

    .line 303
    iput-object v1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->resamplerType:Ljava/lang/String;

    goto :goto_88

    :cond_1d
    const-string v1, "linear"

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 307
    new-instance v0, Lcom/codemao/midi/sun/SoftLinearResampler2;

    invoke-direct {v0}, Lcom/codemao/midi/sun/SoftLinearResampler2;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->resampler:Lcom/codemao/midi/sun/SoftResampler;

    .line 308
    iput-object v1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->resamplerType:Ljava/lang/String;

    goto :goto_88

    :cond_2f
    const-string v1, "linear1"

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 312
    new-instance v0, Lcom/codemao/midi/sun/SoftLinearResampler;

    invoke-direct {v0}, Lcom/codemao/midi/sun/SoftLinearResampler;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->resampler:Lcom/codemao/midi/sun/SoftResampler;

    .line 313
    iput-object v1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->resamplerType:Ljava/lang/String;

    goto :goto_88

    :cond_41
    const-string v1, "linear2"

    .line 315
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 317
    new-instance v0, Lcom/codemao/midi/sun/SoftLinearResampler2;

    invoke-direct {v0}, Lcom/codemao/midi/sun/SoftLinearResampler2;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->resampler:Lcom/codemao/midi/sun/SoftResampler;

    .line 318
    iput-object v1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->resamplerType:Ljava/lang/String;

    goto :goto_88

    :cond_53
    const-string v1, "cubic"

    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 322
    new-instance v0, Lcom/codemao/midi/sun/SoftCubicResampler;

    invoke-direct {v0}, Lcom/codemao/midi/sun/SoftCubicResampler;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->resampler:Lcom/codemao/midi/sun/SoftResampler;

    .line 323
    iput-object v1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->resamplerType:Ljava/lang/String;

    goto :goto_88

    :cond_65
    const-string v1, "lanczos"

    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 327
    new-instance v0, Lcom/codemao/midi/sun/SoftLanczosResampler;

    invoke-direct {v0}, Lcom/codemao/midi/sun/SoftLanczosResampler;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->resampler:Lcom/codemao/midi/sun/SoftResampler;

    .line 328
    iput-object v1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->resamplerType:Ljava/lang/String;

    goto :goto_88

    :cond_77
    const-string v1, "sinc"

    .line 330
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 332
    new-instance v0, Lcom/codemao/midi/sun/SoftSincResampler;

    invoke-direct {v0}, Lcom/codemao/midi/sun/SoftSincResampler;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->resampler:Lcom/codemao/midi/sun/SoftResampler;

    .line 333
    iput-object v1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->resamplerType:Ljava/lang/String;

    :cond_88
    :goto_88
    const/4 v0, 0x2

    .line 336
    aget-object v0, p1, v0

    iget-object v0, v0, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    check-cast v0, Lcom/codemao/midi/javax/sampled/AudioFormat;

    invoke-direct {p0, v0}, Lcom/codemao/midi/sun/SoftSynthesizer;->setFormat(Lcom/codemao/midi/javax/sampled/AudioFormat;)V

    const/4 v0, 0x1

    .line 337
    aget-object v0, p1, v0

    iget-object v0, v0, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->controlrate:F

    const/4 v0, 0x3

    .line 338
    aget-object v0, p1, v0

    iget-object v0, v0, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->latency:J

    const/4 v0, 0x4

    .line 339
    aget-object v0, p1, v0

    iget-object v0, v0, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->deviceid:I

    const/4 v0, 0x5

    .line 340
    aget-object v0, p1, v0

    iget-object v0, v0, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->maxpoly:I

    const/4 v0, 0x6

    .line 341
    aget-object v0, p1, v0

    iget-object v0, v0, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->reverb_on:Z

    const/4 v0, 0x7

    .line 342
    aget-object v0, p1, v0

    iget-object v0, v0, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->chorus_on:Z

    const/16 v0, 0x8

    .line 343
    aget-object v0, p1, v0

    iget-object v0, v0, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->agc_on:Z

    const/16 v0, 0x9

    .line 344
    aget-object v0, p1, v0

    iget-object v0, v0, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->largemode:Z

    const/16 v0, 0xa

    .line 345
    aget-object v0, p1, v0

    iget-object v0, v0, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->number_of_midi_channels:I

    const/16 v0, 0xb

    .line 346
    aget-object v0, p1, v0

    iget-object v0, v0, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->jitter_correction:Z

    const/16 v0, 0xc

    .line 347
    aget-object v0, p1, v0

    iget-object v0, v0, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->reverb_light:Z

    const/16 v0, 0xd

    .line 348
    aget-object p1, p1, v0

    iget-object p1, p1, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->load_default_soundbank:Z

    return-void
.end method

.method private setFormat(Lcom/codemao/midi/javax/sampled/AudioFormat;)V
    .registers 4

    .line 359
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getChannels()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_18

    .line 363
    invoke-static {p1}, Lcom/codemao/midi/sun/AudioFloatConverter;->getConverter(Lcom/codemao/midi/javax/sampled/AudioFormat;)Lcom/codemao/midi/sun/AudioFloatConverter;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 365
    iput-object p1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    return-void

    .line 364
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Audio format not supported."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 360
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only mono and stereo audio supported."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .registers 6

    .line 1080
    invoke-virtual {p0}, Lcom/codemao/midi/sun/SoftSynthesizer;->isOpen()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1085
    :cond_7
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1086
    :try_start_a
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->pusher:Lcom/codemao/midi/sun/SoftAudioPusher;

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    .line 1088
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->pusher_stream:Lcom/codemao/midi/javax/sampled/AudioInputStream;

    .line 1089
    iput-object v2, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->pusher:Lcom/codemao/midi/sun/SoftAudioPusher;

    .line 1090
    iput-object v2, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->pusher_stream:Lcom/codemao/midi/javax/sampled/AudioInputStream;

    goto :goto_18

    :cond_16
    move-object v1, v2

    move-object v3, v1

    .line 1092
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_7e

    if-eqz v1, :cond_21

    .line 1098
    invoke-virtual {v1}, Lcom/codemao/midi/sun/SoftAudioPusher;->stop()V

    .line 1101
    :try_start_1e
    invoke-virtual {v3}, Lcom/codemao/midi/javax/sampled/AudioInputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_21

    .line 1107
    :catch_21
    :cond_21
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1109
    :try_start_24
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->mainmixer:Lcom/codemao/midi/sun/SoftMainMixer;

    if-eqz v0, :cond_2b

    .line 1110
    invoke-virtual {v0}, Lcom/codemao/midi/sun/SoftMainMixer;->close()V

    :cond_2b
    const/4 v0, 0x0

    .line 1111
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->open:Z

    .line 1112
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->implicitOpen:Z

    .line 1113
    iput-object v2, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->mainmixer:Lcom/codemao/midi/sun/SoftMainMixer;

    .line 1114
    iput-object v2, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->voices:[Lcom/codemao/midi/sun/SoftVoice;

    .line 1115
    iput-object v2, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->channels:[Lcom/codemao/midi/sun/SoftChannel;

    .line 1117
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->external_channels:[Lcom/codemao/midi/sun/SoftChannelProxy;

    if-eqz v3, :cond_47

    .line 1118
    :goto_3a
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->external_channels:[Lcom/codemao/midi/sun/SoftChannelProxy;

    array-length v4, v3

    if-ge v0, v4, :cond_47

    .line 1119
    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Lcom/codemao/midi/sun/SoftChannelProxy;->setChannel(Lcom/codemao/midi/javax/MidiChannel;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 1121
    :cond_47
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->sourceDataLine:Lcom/codemao/midi/javax/sampled/SourceDataLine;

    if-eqz v0, :cond_50

    .line 1122
    invoke-interface {v0}, Lcom/codemao/midi/javax/sampled/Line;->close()V

    .line 1123
    iput-object v2, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->sourceDataLine:Lcom/codemao/midi/javax/sampled/SourceDataLine;

    .line 1126
    :cond_50
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->inslist:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1127
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->loadedlist:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1128
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->tunings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1130
    :goto_5f
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->recvslist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_79

    .line 1131
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->recvslist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/midi/javax/Receiver;

    invoke-interface {v0}, Lcom/codemao/midi/javax/Receiver;->close()V

    goto :goto_5f

    .line 1133
    :cond_79
    monitor-exit v1

    return-void

    :catchall_7b
    move-exception v0

    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_24 .. :try_end_7d} :catchall_7b

    throw v0

    :catchall_7e
    move-exception v1

    .line 1092
    :try_start_7f
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw v1
.end method

.method protected findInstrument(III)Lcom/codemao/midi/sun/SoftInstrument;
    .registers 13

    shr-int/lit8 v0, p2, 0x7

    const/4 v1, 0x0

    const-string v2, "0.0"

    const-string v3, ".0"

    const-string v4, "p."

    const-string v5, ""

    const/16 v6, 0x78

    const-string v7, "."

    if-eq v0, v6, :cond_74

    const/16 v8, 0x79

    if-ne v0, v8, :cond_16

    goto :goto_74

    :cond_16
    const/16 v0, 0x9

    if-ne p3, v0, :cond_1b

    goto :goto_1c

    :cond_1b
    move-object v4, v5

    .line 432
    :goto_1c
    iget-object p3, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->inslist:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 433
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/midi/sun/SoftInstrument;

    if-eqz p2, :cond_3c

    return-object p2

    .line 437
    :cond_3c
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->inslist:Ljava/util/Map;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/midi/sun/SoftInstrument;

    if-eqz p1, :cond_59

    return-object p1

    .line 441
    :cond_59
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->inslist:Ljava/util/Map;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/midi/sun/SoftInstrument;

    if-eqz p1, :cond_73

    return-object p1

    :cond_73
    return-object v1

    .line 393
    :cond_74
    :goto_74
    iget-object p3, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->inslist:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 394
    invoke-interface {p3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/codemao/midi/sun/SoftInstrument;

    if-eqz p3, :cond_91

    return-object p3

    :cond_91
    if-ne v0, v6, :cond_94

    goto :goto_95

    :cond_94
    move-object v4, v5

    .line 405
    :goto_95
    iget-object p3, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->inslist:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p2, p2, 0x80

    shl-int/lit8 v5, p2, 0x7

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/codemao/midi/sun/SoftInstrument;

    if-eqz p3, :cond_b9

    return-object p3

    .line 410
    :cond_b9
    iget-object p3, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->inslist:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/midi/sun/SoftInstrument;

    if-eqz p2, :cond_d9

    return-object p2

    .line 415
    :cond_d9
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->inslist:Ljava/util/Map;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/midi/sun/SoftInstrument;

    if-eqz p2, :cond_f6

    return-object p2

    .line 419
    :cond_f6
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->inslist:Ljava/util/Map;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/midi/sun/SoftInstrument;

    if-eqz p1, :cond_113

    return-object p1

    :cond_113
    return-object v1
.end method

.method public getChannels()[Lcom/codemao/midi/javax/MidiChannel;
    .registers 7

    .line 501
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 505
    :try_start_3
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->external_channels:[Lcom/codemao/midi/sun/SoftChannelProxy;

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-nez v1, :cond_1e

    new-array v1, v3, [Lcom/codemao/midi/sun/SoftChannelProxy;

    .line 506
    iput-object v1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->external_channels:[Lcom/codemao/midi/sun/SoftChannelProxy;

    const/4 v1, 0x0

    .line 507
    :goto_f
    iget-object v4, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->external_channels:[Lcom/codemao/midi/sun/SoftChannelProxy;

    array-length v5, v4

    if-ge v1, v5, :cond_1e

    .line 508
    new-instance v5, Lcom/codemao/midi/sun/SoftChannelProxy;

    invoke-direct {v5}, Lcom/codemao/midi/sun/SoftChannelProxy;-><init>()V

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 511
    :cond_1e
    invoke-virtual {p0}, Lcom/codemao/midi/sun/SoftSynthesizer;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 512
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->channels:[Lcom/codemao/midi/sun/SoftChannel;

    array-length v1, v1

    new-array v1, v1, [Lcom/codemao/midi/javax/MidiChannel;

    goto :goto_2c

    :cond_2a
    new-array v1, v3, [Lcom/codemao/midi/javax/MidiChannel;

    .line 515
    :goto_2c
    array-length v3, v1

    if-ge v2, v3, :cond_38

    .line 516
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->external_channels:[Lcom/codemao/midi/sun/SoftChannelProxy;

    aget-object v3, v3, v2

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 517
    :cond_38
    monitor-exit v0

    return-object v1

    :catchall_3a
    move-exception v1

    .line 518
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method protected getControlRate()F
    .registers 2

    .line 464
    iget v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->controlrate:F

    return v0
.end method

.method public getDefaultSoundbank()Lcom/codemao/midi/javax/Soundbank;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDeviceID()I
    .registers 2

    .line 460
    iget v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->deviceid:I

    return v0
.end method

.method public getDeviceInfo()Lcom/codemao/midi/javax/MidiDevice$Info;
    .registers 2

    .line 700
    sget-object v0, Lcom/codemao/midi/sun/SoftSynthesizer;->info:Lcom/codemao/midi/javax/MidiDevice$Info;

    return-object v0
.end method

.method public getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;
    .registers 3

    .line 488
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 489
    :try_start_3
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 490
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method protected getGeneralMidiMode()I
    .registers 2

    .line 452
    iget v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->gmmode:I

    return v0
.end method

.method protected getMainMixer()Lcom/codemao/midi/sun/SoftMainMixer;
    .registers 2

    .line 381
    invoke-virtual {p0}, Lcom/codemao/midi/sun/SoftSynthesizer;->isOpen()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 383
    :cond_8
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->mainmixer:Lcom/codemao/midi/sun/SoftMainMixer;

    return-object v0
.end method

.method public getPropertyInfo(Ljava/util/Map;)[Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[",
            "Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 729
    const-class v2, Ljava/lang/Double;

    const-class v3, Ljava/lang/Float;

    const-class v4, Ljava/lang/Long;

    const-class v5, Ljava/lang/Integer;

    const-class v6, Ljava/lang/Short;

    const-class v7, Ljava/lang/Byte;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-nez v1, :cond_1d

    .line 738
    iget-boolean v11, v0, Lcom/codemao/midi/sun/SoftSynthesizer;->open:Z

    if-eqz v11, :cond_1d

    const/4 v11, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v11, 0x0

    .line 740
    :goto_1e
    new-instance v12, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;

    if-eqz v11, :cond_25

    iget-object v13, v0, Lcom/codemao/midi/sun/SoftSynthesizer;->resamplerType:Ljava/lang/String;

    goto :goto_27

    :cond_25
    const-string v13, "linear"

    :goto_27
    const-string v14, "interpolation"

    invoke-direct {v12, v14, v13}, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 744
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 746
    new-instance v12, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;

    if-eqz v11, :cond_36

    iget v13, v0, Lcom/codemao/midi/sun/SoftSynthesizer;->controlrate:F

    goto :goto_38

    :cond_36
    const/high16 v13, 0x43130000  # 147.0f

    :goto_38
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    const-string v14, "control rate"

    invoke-direct {v12, v14, v13}, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 748
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 750
    new-instance v12, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;

    if-eqz v11, :cond_4b

    .line 751
    iget-object v13, v0, Lcom/codemao/midi/sun/SoftSynthesizer;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    goto :goto_5c

    :cond_4b
    new-instance v13, Lcom/codemao/midi/javax/sampled/AudioFormat;

    const v15, 0x472c4400  # 44100.0f

    const/16 v16, 0x10

    const/16 v17, 0x2

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object v14, v13

    invoke-direct/range {v14 .. v19}, Lcom/codemao/midi/javax/sampled/AudioFormat;-><init>(FIIZZ)V

    :goto_5c
    const-string v14, "format"

    invoke-direct {v12, v14, v13}, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 753
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 755
    new-instance v12, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;

    if-eqz v11, :cond_6b

    iget-wide v13, v0, Lcom/codemao/midi/sun/SoftSynthesizer;->latency:J

    goto :goto_6e

    :cond_6b
    const-wide/32 v13, 0x1d4c0

    :goto_6e
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const-string v14, "latency"

    invoke-direct {v12, v14, v13}, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 757
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 759
    new-instance v12, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;

    if-eqz v11, :cond_81

    iget v13, v0, Lcom/codemao/midi/sun/SoftSynthesizer;->deviceid:I

    goto :goto_82

    :cond_81
    const/4 v13, 0x0

    :goto_82
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "device id"

    invoke-direct {v12, v14, v13}, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 761
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    new-instance v12, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;

    if-eqz v11, :cond_95

    iget v13, v0, Lcom/codemao/midi/sun/SoftSynthesizer;->maxpoly:I

    goto :goto_97

    :cond_95
    const/16 v13, 0x40

    :goto_97
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "max polyphony"

    invoke-direct {v12, v14, v13}, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 765
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 767
    new-instance v12, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;

    if-eqz v11, :cond_aa

    iget-boolean v13, v0, Lcom/codemao/midi/sun/SoftSynthesizer;->reverb_on:Z

    goto :goto_ab

    :cond_aa
    const/4 v13, 0x1

    :goto_ab
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const-string v14, "reverb"

    invoke-direct {v12, v14, v13}, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 769
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 771
    new-instance v12, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;

    if-eqz v11, :cond_be

    iget-boolean v13, v0, Lcom/codemao/midi/sun/SoftSynthesizer;->chorus_on:Z

    goto :goto_bf

    :cond_be
    const/4 v13, 0x1

    :goto_bf
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const-string v14, "chorus"

    invoke-direct {v12, v14, v13}, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 773
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    new-instance v12, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;

    if-eqz v11, :cond_d2

    iget-boolean v13, v0, Lcom/codemao/midi/sun/SoftSynthesizer;->agc_on:Z

    goto :goto_d3

    :cond_d2
    const/4 v13, 0x1

    :goto_d3
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const-string v14, "auto gain control"

    invoke-direct {v12, v14, v13}, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 777
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    new-instance v12, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;

    if-eqz v11, :cond_e6

    iget-boolean v13, v0, Lcom/codemao/midi/sun/SoftSynthesizer;->largemode:Z

    goto :goto_e7

    :cond_e6
    const/4 v13, 0x0

    :goto_e7
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const-string v14, "large mode"

    invoke-direct {v12, v14, v13}, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 781
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
    new-instance v12, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;

    if-eqz v11, :cond_fb

    iget-object v14, v0, Lcom/codemao/midi/sun/SoftSynthesizer;->channels:[Lcom/codemao/midi/sun/SoftChannel;

    array-length v14, v14

    goto :goto_fd

    :cond_fb
    const/16 v14, 0x10

    :goto_fd
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "com.codemao.midi channels"

    invoke-direct {v12, v15, v14}, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 785
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 787
    new-instance v12, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;

    if-eqz v11, :cond_110

    iget-boolean v14, v0, Lcom/codemao/midi/sun/SoftSynthesizer;->jitter_correction:Z

    goto :goto_111

    :cond_110
    const/4 v14, 0x1

    :goto_111
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const-string v15, "jitter correction"

    invoke-direct {v12, v15, v14}, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 789
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 791
    new-instance v12, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;

    if-eqz v11, :cond_124

    iget-boolean v14, v0, Lcom/codemao/midi/sun/SoftSynthesizer;->reverb_light:Z

    goto :goto_125

    :cond_124
    const/4 v14, 0x1

    :goto_125
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const-string v15, "light reverb"

    invoke-direct {v12, v15, v14}, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 793
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 795
    new-instance v12, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;

    if-eqz v11, :cond_138

    iget-boolean v11, v0, Lcom/codemao/midi/sun/SoftSynthesizer;->load_default_soundbank:Z

    goto :goto_139

    :cond_138
    const/4 v11, 0x1

    :goto_139
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const-string v14, "load default soundbank"

    invoke-direct {v12, v14, v11}, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 797
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 800
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;

    invoke-interface {v8, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;

    .line 802
    invoke-direct/range {p0 .. p0}, Lcom/codemao/midi/sun/SoftSynthesizer;->getStoredProperties()Ljava/util/Properties;

    move-result-object v11

    .line 804
    array-length v12, v8

    const/4 v14, 0x0

    :goto_157
    if-ge v14, v12, :cond_2aa

    aget-object v15, v8, v14

    if-nez v1, :cond_162

    const/16 v16, 0x0

    move-object/from16 v9, v16

    goto :goto_168

    .line 805
    :cond_162
    iget-object v9, v15, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;->name:Ljava/lang/String;

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    :goto_168
    if-eqz v9, :cond_16b

    goto :goto_171

    .line 806
    :cond_16b
    iget-object v9, v15, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :goto_171
    if-eqz v9, :cond_2a4

    .line 808
    iget-object v10, v15, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;->valueClass:Ljava/lang/Class;

    .line 809
    invoke-virtual {v10, v9}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_17f

    .line 810
    iput-object v9, v15, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    goto/16 :goto_2a4

    .line 811
    :cond_17f
    instance-of v13, v9, Ljava/lang/String;

    if-eqz v13, :cond_256

    .line 812
    check-cast v9, Ljava/lang/String;

    .line 813
    const-class v13, Ljava/lang/Boolean;

    if-ne v10, v13, :cond_1a3

    const-string v10, "true"

    .line 814
    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_195

    .line 815
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v10, v15, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    :cond_195
    const-string v10, "false"

    .line 816
    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2a4

    .line 817
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v9, v15, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    goto/16 :goto_2a4

    .line 818
    :cond_1a3
    const-class v13, Lcom/codemao/midi/javax/sampled/AudioFormat;

    if-ne v10, v13, :cond_21e

    .line 825
    :try_start_1a7
    new-instance v10, Ljava/util/StringTokenizer;

    const-string v13, ", "

    invoke-direct {v10, v9, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, ""

    const v20, 0x472c4400  # 44100.0f

    const/16 v21, 0x10

    const/16 v22, 0x2

    const/16 v23, 0x1

    const/16 v24, 0x0

    .line 827
    :goto_1bb
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_213

    .line 828
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v0, "mono"

    .line 829
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d3

    const/16 v22, 0x1

    :cond_1d3
    const-string v0, "channel"

    .line 831
    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e1

    .line 832
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v22, v0

    :cond_1e1
    const-string v0, "unsigned"

    .line 833
    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1eb

    const/16 v23, 0x0

    :cond_1eb
    const-string v0, "big-endian"

    .line 835
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f5

    const/16 v24, 0x1

    :cond_1f5
    const-string v0, "bit"

    .line 837
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_201

    .line 838
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    :cond_201
    const-string v0, "hz"

    .line 839
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20f

    .line 840
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    move/from16 v20, v0

    :cond_20f
    move-object/from16 v0, p0

    move-object v9, v13

    goto :goto_1bb

    .line 843
    :cond_213
    new-instance v0, Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v24}, Lcom/codemao/midi/javax/sampled/AudioFormat;-><init>(FIIZZ)V

    iput-object v0, v15, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    goto/16 :goto_2a4

    :cond_21e
    if-ne v10, v7, :cond_228

    .line 851
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, v15, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    goto/16 :goto_2a4

    :cond_228
    if-ne v10, v6, :cond_232

    .line 853
    invoke-static {v9}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    iput-object v0, v15, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    goto/16 :goto_2a4

    :cond_232
    if-ne v10, v5, :cond_23b

    .line 855
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v15, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    goto :goto_2a4

    :cond_23b
    if-ne v10, v4, :cond_244

    .line 857
    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v15, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    goto :goto_2a4

    :cond_244
    if-ne v10, v3, :cond_24d

    .line 859
    invoke-static {v9}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v15, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    goto :goto_2a4

    :cond_24d
    if-ne v10, v2, :cond_2a4

    .line 861
    invoke-static {v9}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v15, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;
    :try_end_255
    .catch Ljava/lang/NumberFormatException; {:try_start_1a7 .. :try_end_255} :catch_2a4

    goto :goto_2a4

    .line 864
    :cond_256
    instance-of v0, v9, Ljava/lang/Number;

    if-eqz v0, :cond_2a4

    .line 865
    check-cast v9, Ljava/lang/Number;

    if-ne v10, v7, :cond_268

    .line 867
    invoke-virtual {v9}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, v15, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    :cond_268
    if-ne v10, v6, :cond_274

    .line 869
    invoke-virtual {v9}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    iput-object v0, v15, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    :cond_274
    if-ne v10, v5, :cond_280

    .line 871
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v15, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    :cond_280
    if-ne v10, v4, :cond_28c

    .line 873
    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v15, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    :cond_28c
    if-ne v10, v3, :cond_298

    .line 875
    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v15, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    :cond_298
    if-ne v10, v2, :cond_2a4

    .line 877
    invoke-virtual {v9}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v15, Lcom/codemao/midi/sun/AudioSynthesizerPropertyInfo;->value:Ljava/lang/Object;

    :catch_2a4
    :cond_2a4
    :goto_2a4
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_157

    :cond_2aa
    return-object v8
.end method

.method public getReceiver()Lcom/codemao/midi/javax/Receiver;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/midi/javax/MidiUnavailableException;
        }
    .end annotation

    .line 1162
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1163
    :try_start_3
    new-instance v1, Lcom/codemao/midi/sun/SoftReceiver;

    invoke-direct {v1, p0}, Lcom/codemao/midi/sun/SoftReceiver;-><init>(Lcom/codemao/midi/sun/SoftSynthesizer;)V

    .line 1164
    iget-boolean v2, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->open:Z

    iput-boolean v2, v1, Lcom/codemao/midi/sun/SoftReceiver;->open:Z

    .line 1165
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->recvslist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1166
    monitor-exit v0

    return-object v1

    :catchall_13
    move-exception v1

    .line 1167
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getReceivers()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/midi/javax/Receiver;",
            ">;"
        }
    .end annotation

    .line 1172
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1173
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1174
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->recvslist:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1175
    monitor-exit v0

    return-object v1

    :catchall_f
    move-exception v1

    .line 1176
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getTransmitters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/midi/javax/Transmitter;",
            ">;"
        }
    .end annotation

    .line 1186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method protected getTuning(Lcom/codemao/midi/javax/Patch;)Lcom/codemao/midi/sun/SoftTuning;
    .registers 4

    .line 472
    invoke-direct {p0, p1}, Lcom/codemao/midi/sun/SoftSynthesizer;->patchToString(Lcom/codemao/midi/javax/Patch;)Ljava/lang/String;

    move-result-object v0

    .line 473
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->tunings:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/midi/sun/SoftTuning;

    if-nez v1, :cond_18

    .line 475
    new-instance v1, Lcom/codemao/midi/sun/SoftTuning;

    invoke-direct {v1, p1}, Lcom/codemao/midi/sun/SoftTuning;-><init>(Lcom/codemao/midi/javax/Patch;)V

    .line 476
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->tunings:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    return-object v1
.end method

.method protected getVoiceAllocationMode()I
    .registers 2

    .line 448
    iget v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->voice_allocation_mode:I

    return v0
.end method

.method protected getVoices()[Lcom/codemao/midi/sun/SoftVoice;
    .registers 2

    .line 468
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->voices:[Lcom/codemao/midi/sun/SoftVoice;

    return-object v0
.end method

.method public isOpen()Z
    .registers 3

    .line 1137
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1138
    :try_start_3
    iget-boolean v1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->open:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 1139
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public loadAllInstruments(Lcom/codemao/midi/javax/Soundbank;)Z
    .registers 7

    .line 646
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 647
    invoke-interface {p1}, Lcom/codemao/midi/javax/Soundbank;->getInstruments()[Lcom/codemao/midi/javax/Instrument;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_34

    aget-object v3, p1, v2

    if-eqz v3, :cond_1d

    .line 648
    instance-of v4, v3, Lcom/codemao/midi/sun/ModelInstrument;

    if-eqz v4, :cond_1d

    .line 652
    check-cast v3, Lcom/codemao/midi/sun/ModelInstrument;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 649
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported instrument: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 654
    :cond_34
    invoke-direct {p0, v0}, Lcom/codemao/midi/sun/SoftSynthesizer;->loadInstruments(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public open()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/midi/javax/MidiUnavailableException;
        }
    .end annotation

    .line 886
    invoke-virtual {p0}, Lcom/codemao/midi/sun/SoftSynthesizer;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 887
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 888
    :try_start_a
    iput-boolean v1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->implicitOpen:Z

    .line 889
    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_e

    throw v1

    :cond_11
    const/4 v0, 0x0

    .line 892
    invoke-virtual {p0, v0, v0}, Lcom/codemao/midi/sun/SoftSynthesizer;->open(Lcom/codemao/midi/javax/sampled/SourceDataLine;Ljava/util/Map;)V

    return-void
.end method

.method public open(Lcom/codemao/midi/javax/sampled/SourceDataLine;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/midi/javax/sampled/SourceDataLine;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/midi/javax/MidiUnavailableException;
        }
    .end annotation

    .line 896
    invoke-virtual {p0}, Lcom/codemao/midi/sun/SoftSynthesizer;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 897
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    const/4 p1, 0x0

    .line 898
    :try_start_a
    iput-boolean p1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->implicitOpen:Z

    .line 899
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_e

    throw p1

    .line 902
    :cond_11
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1e

    .line 907
    :try_start_17
    invoke-interface {p1}, Lcom/codemao/midi/javax/sampled/DataLine;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/codemao/midi/sun/SoftSynthesizer;->setFormat(Lcom/codemao/midi/javax/sampled/AudioFormat;)V

    .line 910
    :cond_1e
    invoke-virtual {p0}, Lcom/codemao/midi/sun/SoftSynthesizer;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/codemao/midi/sun/SoftSynthesizer;->openStream(Lcom/codemao/midi/javax/sampled/AudioFormat;Ljava/util/Map;)Lcom/codemao/midi/javax/sampled/AudioInputStream;

    move-result-object p2

    .line 912
    new-instance v2, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;

    invoke-direct {v2, p2}, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;-><init>(Lcom/codemao/midi/javax/sampled/AudioInputStream;)V

    iput-object v2, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->weakstream:Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;

    .line 913
    invoke-virtual {v2}, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->getAudioInputStream()Lcom/codemao/midi/javax/sampled/AudioInputStream;

    move-result-object p2

    if-nez p1, :cond_40

    .line 917
    sget-object p1, Lcom/codemao/midi/sun/SoftSynthesizer;->testline:Lcom/codemao/midi/javax/sampled/SourceDataLine;

    if-eqz p1, :cond_38

    goto :goto_40

    .line 922
    :cond_38
    invoke-virtual {p0}, Lcom/codemao/midi/sun/SoftSynthesizer;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/midi/javax/sampled/AudioSystem;->getSourceDataLine(Lcom/codemao/midi/javax/sampled/AudioFormat;)Lcom/codemao/midi/javax/sampled/SourceDataLine;

    move-result-object p1

    .line 926
    :cond_40
    :goto_40
    iget-wide v2, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->latency:J

    long-to-double v2, v2

    .line 928
    invoke-interface {p1}, Lcom/codemao/midi/javax/sampled/Line;->isOpen()Z

    move-result v4

    if-nez v4, :cond_6e

    .line 929
    invoke-virtual {p0}, Lcom/codemao/midi/sun/SoftSynthesizer;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getFrameSize()I

    move-result v4

    .line 930
    invoke-virtual {p0}, Lcom/codemao/midi/sun/SoftSynthesizer;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v5

    invoke-virtual {v5}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getFrameRate()F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x412e848000000000L  # 1000000.0

    div-double/2addr v2, v7

    mul-double v5, v5, v2

    double-to-int v2, v5

    mul-int v4, v4, v2

    .line 933
    invoke-virtual {p0}, Lcom/codemao/midi/sun/SoftSynthesizer;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v2

    invoke-interface {p1, v2, v4}, Lcom/codemao/midi/javax/sampled/SourceDataLine;->open(Lcom/codemao/midi/javax/sampled/AudioFormat;I)V

    .line 937
    iput-object p1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->sourceDataLine:Lcom/codemao/midi/javax/sampled/SourceDataLine;

    .line 939
    :cond_6e
    invoke-interface {p1}, Lcom/codemao/midi/javax/sampled/DataLine;->isActive()Z

    move-result v2

    if-nez v2, :cond_77

    .line 940
    invoke-interface {p1}, Lcom/codemao/midi/javax/sampled/DataLine;->start()V
    :try_end_77
    .catch Lcom/codemao/midi/javax/sampled/LineUnavailableException; {:try_start_17 .. :try_end_77} :catch_b9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_77} :catch_b7
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_77} :catch_b4
    .catchall {:try_start_17 .. :try_end_77} :catchall_b2

    :cond_77
    const/16 v2, 0x200

    .line 944
    :try_start_79
    invoke-virtual {p2}, Lcom/codemao/midi/javax/sampled/AudioInputStream;->available()I

    move-result v2
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7d} :catch_7d
    .catch Lcom/codemao/midi/javax/sampled/LineUnavailableException; {:try_start_79 .. :try_end_7d} :catch_b9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_79 .. :try_end_7d} :catch_b7
    .catch Ljava/lang/SecurityException; {:try_start_79 .. :try_end_7d} :catch_b4
    .catchall {:try_start_79 .. :try_end_7d} :catchall_b2

    .line 954
    :catch_7d
    :try_start_7d
    invoke-interface {p1}, Lcom/codemao/midi/javax/sampled/DataLine;->getBufferSize()I

    move-result v3

    .line 955
    rem-int v4, v3, v2

    sub-int/2addr v3, v4

    mul-int/lit8 v4, v2, 0x3

    if-ge v3, v4, :cond_89

    move v3, v4

    .line 960
    :cond_89
    iget-boolean v4, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->jitter_correction:Z

    if-eqz v4, :cond_99

    .line 961
    new-instance v4, Lcom/codemao/midi/sun/SoftJitterCorrector;

    invoke-direct {v4, p2, v3, v2}, Lcom/codemao/midi/sun/SoftJitterCorrector;-><init>(Lcom/codemao/midi/javax/sampled/AudioInputStream;II)V

    .line 963
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->weakstream:Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;

    if-eqz p2, :cond_98

    .line 964
    iput-object v4, p2, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->jitter_stream:Lcom/codemao/midi/javax/sampled/AudioInputStream;

    :cond_98
    move-object p2, v4

    .line 966
    :cond_99
    new-instance v3, Lcom/codemao/midi/sun/SoftAudioPusher;

    invoke-direct {v3, p1, p2, v2}, Lcom/codemao/midi/sun/SoftAudioPusher;-><init>(Lcom/codemao/midi/javax/sampled/SourceDataLine;Lcom/codemao/midi/javax/sampled/AudioInputStream;I)V

    iput-object v3, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->pusher:Lcom/codemao/midi/sun/SoftAudioPusher;

    .line 967
    iput-object p2, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->pusher_stream:Lcom/codemao/midi/javax/sampled/AudioInputStream;

    .line 968
    invoke-virtual {v3}, Lcom/codemao/midi/sun/SoftAudioPusher;->start()V

    .line 970
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->weakstream:Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;

    if-eqz p1, :cond_bb

    .line 972
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->pusher:Lcom/codemao/midi/sun/SoftAudioPusher;

    iput-object p2, p1, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->pusher:Lcom/codemao/midi/sun/SoftAudioPusher;

    .line 973
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->sourceDataLine:Lcom/codemao/midi/javax/sampled/SourceDataLine;

    iput-object p2, p1, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->sourceDataLine:Lcom/codemao/midi/javax/sampled/SourceDataLine;
    :try_end_b1
    .catch Lcom/codemao/midi/javax/sampled/LineUnavailableException; {:try_start_7d .. :try_end_b1} :catch_b9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7d .. :try_end_b1} :catch_b7
    .catch Ljava/lang/SecurityException; {:try_start_7d .. :try_end_b1} :catch_b4
    .catchall {:try_start_7d .. :try_end_b1} :catchall_b2

    goto :goto_bb

    :catchall_b2
    move-exception p1

    goto :goto_d3

    :catch_b4
    move-exception p1

    :goto_b5
    move-object v1, p1

    goto :goto_bb

    :catch_b7
    move-exception p1

    goto :goto_b5

    :catch_b9
    move-exception p1

    goto :goto_b5

    :cond_bb
    :goto_bb
    if-eqz v1, :cond_d1

    .line 985
    :try_start_bd
    invoke-virtual {p0}, Lcom/codemao/midi/sun/SoftSynthesizer;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_c6

    .line 986
    invoke-virtual {p0}, Lcom/codemao/midi/sun/SoftSynthesizer;->close()V

    .line 988
    :cond_c6
    new-instance p1, Lcom/codemao/midi/javax/MidiUnavailableException;

    const-string p2, "Can not open line"

    invoke-direct {p1, p2}, Lcom/codemao/midi/javax/MidiUnavailableException;-><init>(Ljava/lang/String;)V

    .line 990
    invoke-virtual {p1, v1}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 991
    throw p1

    .line 994
    :cond_d1
    monitor-exit v0

    return-void

    :goto_d3
    monitor-exit v0
    :try_end_d4
    .catchall {:try_start_bd .. :try_end_d4} :catchall_b2

    throw p1
.end method

.method public openStream(Lcom/codemao/midi/javax/sampled/AudioFormat;Ljava/util/Map;)Lcom/codemao/midi/javax/sampled/AudioInputStream;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/midi/javax/sampled/AudioFormat;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/codemao/midi/javax/sampled/AudioInputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/midi/javax/MidiUnavailableException;
        }
    .end annotation

    .line 1000
    invoke-virtual {p0}, Lcom/codemao/midi/sun/SoftSynthesizer;->isOpen()Z

    move-result v0

    if-nez v0, :cond_f4

    .line 1003
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1005
    :try_start_a
    iput v1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->gmmode:I

    .line 1006
    iput v1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->voice_allocation_mode:I

    .line 1008
    invoke-direct {p0, p2}, Lcom/codemao/midi/sun/SoftSynthesizer;->processPropertyInfo(Ljava/util/Map;)V

    const/4 p2, 0x1

    .line 1010
    iput-boolean p2, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->open:Z

    .line 1011
    iput-boolean v1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->implicitOpen:Z

    if-eqz p1, :cond_1b

    .line 1014
    invoke-direct {p0, p1}, Lcom/codemao/midi/sun/SoftSynthesizer;->setFormat(Lcom/codemao/midi/javax/sampled/AudioFormat;)V

    .line 1016
    :cond_1b
    iget-boolean p1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->load_default_soundbank:Z

    if-eqz p1, :cond_28

    .line 1018
    invoke-virtual {p0}, Lcom/codemao/midi/sun/SoftSynthesizer;->getDefaultSoundbank()Lcom/codemao/midi/javax/Soundbank;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 1020
    invoke-virtual {p0, p1}, Lcom/codemao/midi/sun/SoftSynthesizer;->loadAllInstruments(Lcom/codemao/midi/javax/Soundbank;)Z

    .line 1024
    :cond_28
    iget p1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->maxpoly:I

    new-array p1, p1, [Lcom/codemao/midi/sun/SoftVoice;

    iput-object p1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->voices:[Lcom/codemao/midi/sun/SoftVoice;

    const/4 p1, 0x0

    .line 1025
    :goto_2f
    iget p2, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->maxpoly:I

    if-ge p1, p2, :cond_3f

    .line 1026
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->voices:[Lcom/codemao/midi/sun/SoftVoice;

    new-instance v2, Lcom/codemao/midi/sun/SoftVoice;

    invoke-direct {v2, p0}, Lcom/codemao/midi/sun/SoftVoice;-><init>(Lcom/codemao/midi/sun/SoftSynthesizer;)V

    aput-object v2, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2f

    .line 1028
    :cond_3f
    new-instance p1, Lcom/codemao/midi/sun/SoftMainMixer;

    invoke-direct {p1, p0}, Lcom/codemao/midi/sun/SoftMainMixer;-><init>(Lcom/codemao/midi/sun/SoftSynthesizer;)V

    iput-object p1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->mainmixer:Lcom/codemao/midi/sun/SoftMainMixer;

    .line 1030
    iget p1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->number_of_midi_channels:I

    new-array p1, p1, [Lcom/codemao/midi/sun/SoftChannel;

    iput-object p1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->channels:[Lcom/codemao/midi/sun/SoftChannel;

    const/4 p1, 0x0

    .line 1031
    :goto_4d
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->channels:[Lcom/codemao/midi/sun/SoftChannel;

    array-length v2, p2

    if-ge p1, v2, :cond_5c

    .line 1032
    new-instance v2, Lcom/codemao/midi/sun/SoftChannel;

    invoke-direct {v2, p0, p1}, Lcom/codemao/midi/sun/SoftChannel;-><init>(Lcom/codemao/midi/sun/SoftSynthesizer;I)V

    aput-object v2, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_4d

    .line 1034
    :cond_5c
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->external_channels:[Lcom/codemao/midi/sun/SoftChannelProxy;

    if-nez p1, :cond_7f

    .line 1039
    array-length p1, p2

    const/16 v2, 0x10

    if-ge p1, v2, :cond_6a

    new-array p1, v2, [Lcom/codemao/midi/sun/SoftChannelProxy;

    .line 1040
    iput-object p1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->external_channels:[Lcom/codemao/midi/sun/SoftChannelProxy;

    goto :goto_6f

    .line 1042
    :cond_6a
    array-length p1, p2

    new-array p1, p1, [Lcom/codemao/midi/sun/SoftChannelProxy;

    iput-object p1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->external_channels:[Lcom/codemao/midi/sun/SoftChannelProxy;

    :goto_6f
    const/4 p1, 0x0

    .line 1043
    :goto_70
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->external_channels:[Lcom/codemao/midi/sun/SoftChannelProxy;

    array-length v2, p2

    if-ge p1, v2, :cond_a0

    .line 1044
    new-instance v2, Lcom/codemao/midi/sun/SoftChannelProxy;

    invoke-direct {v2}, Lcom/codemao/midi/sun/SoftChannelProxy;-><init>()V

    aput-object v2, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_70

    .line 1049
    :cond_7f
    array-length v2, p2

    array-length p1, p1

    if-le v2, p1, :cond_a0

    .line 1050
    array-length p1, p2

    new-array p2, p1, [Lcom/codemao/midi/sun/SoftChannelProxy;

    const/4 v2, 0x0

    .line 1052
    :goto_87
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->external_channels:[Lcom/codemao/midi/sun/SoftChannelProxy;

    array-length v4, v3

    if-ge v2, v4, :cond_93

    .line 1053
    aget-object v3, v3, v2

    aput-object v3, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_87

    .line 1054
    :cond_93
    array-length v2, v3

    :goto_94
    if-ge v2, p1, :cond_a0

    .line 1056
    new-instance v3, Lcom/codemao/midi/sun/SoftChannelProxy;

    invoke-direct {v3}, Lcom/codemao/midi/sun/SoftChannelProxy;-><init>()V

    aput-object v3, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_94

    :cond_a0
    const/4 p1, 0x0

    .line 1061
    :goto_a1
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->channels:[Lcom/codemao/midi/sun/SoftChannel;

    array-length v2, p2

    if-ge p1, v2, :cond_b2

    .line 1062
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->external_channels:[Lcom/codemao/midi/sun/SoftChannelProxy;

    aget-object v2, v2, p1

    aget-object p2, p2, p1

    invoke-virtual {v2, p2}, Lcom/codemao/midi/sun/SoftChannelProxy;->setChannel(Lcom/codemao/midi/javax/MidiChannel;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_a1

    .line 1064
    :cond_b2
    invoke-virtual {p0}, Lcom/codemao/midi/sun/SoftSynthesizer;->getVoices()[Lcom/codemao/midi/sun/SoftVoice;

    move-result-object p1

    array-length p2, p1

    :goto_b7
    if-ge v1, p2, :cond_c6

    aget-object v2, p1, v1

    .line 1065
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->resampler:Lcom/codemao/midi/sun/SoftResampler;

    invoke-interface {v3}, Lcom/codemao/midi/sun/SoftResampler;->openStreamer()Lcom/codemao/midi/sun/SoftResamplerStreamer;

    move-result-object v3

    iput-object v3, v2, Lcom/codemao/midi/sun/SoftVoice;->resampler:Lcom/codemao/midi/sun/SoftResamplerStreamer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b7

    .line 1067
    :cond_c6
    invoke-virtual {p0}, Lcom/codemao/midi/sun/SoftSynthesizer;->getReceivers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_ce
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/midi/javax/Receiver;

    .line 1068
    check-cast p2, Lcom/codemao/midi/sun/SoftReceiver;

    .line 1069
    iget-boolean v1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->open:Z

    iput-boolean v1, p2, Lcom/codemao/midi/sun/SoftReceiver;->open:Z

    .line 1070
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->mainmixer:Lcom/codemao/midi/sun/SoftMainMixer;

    iput-object v1, p2, Lcom/codemao/midi/sun/SoftReceiver;->mainmixer:Lcom/codemao/midi/sun/SoftMainMixer;

    .line 1071
    iget-object v1, v1, Lcom/codemao/midi/sun/SoftMainMixer;->midimessages:Ljava/util/TreeMap;

    iput-object v1, p2, Lcom/codemao/midi/sun/SoftReceiver;->midimessages:Ljava/util/TreeMap;

    goto :goto_ce

    .line 1074
    :cond_e9
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->mainmixer:Lcom/codemao/midi/sun/SoftMainMixer;

    invoke-virtual {p1}, Lcom/codemao/midi/sun/SoftMainMixer;->getInputStream()Lcom/codemao/midi/javax/sampled/AudioInputStream;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_f1
    move-exception p1

    .line 1075
    monitor-exit v0
    :try_end_f3
    .catchall {:try_start_a .. :try_end_f3} :catchall_f1

    throw p1

    .line 1001
    :cond_f4
    new-instance p1, Lcom/codemao/midi/javax/MidiUnavailableException;

    const-string p2, "Synthesizer is already open"

    invoke-direct {p1, p2}, Lcom/codemao/midi/javax/MidiUnavailableException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected removeReceiver(Lcom/codemao/midi/javax/Receiver;)V
    .registers 4

    .line 370
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    :try_start_3
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->recvslist:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 372
    iget-boolean p1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->implicitOpen:Z

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->recvslist:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    .line 375
    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_21

    if-eqz p1, :cond_20

    .line 377
    invoke-virtual {p0}, Lcom/codemao/midi/sun/SoftSynthesizer;->close()V

    :cond_20
    return-void

    :catchall_21
    move-exception p1

    .line 375
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p1
.end method

.method protected setGeneralMidiMode(I)V
    .registers 2

    .line 456
    iput p1, p0, Lcom/codemao/midi/sun/SoftSynthesizer;->gmmode:I

    return-void
.end method
