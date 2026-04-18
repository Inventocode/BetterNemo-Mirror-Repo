.class public Lcom/codemao/midi/sun/SoftReceiver;
.super Ljava/lang/Object;
.source "SoftReceiver.java"

# interfaces
.implements Lcom/codemao/midi/javax/Receiver;


# instance fields
.field private control_mutex:Ljava/lang/Object;

.field protected mainmixer:Lcom/codemao/midi/sun/SoftMainMixer;

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

.field protected open:Z

.field private synth:Lcom/codemao/midi/sun/SoftSynthesizer;


# direct methods
.method public constructor <init>(Lcom/codemao/midi/sun/SoftSynthesizer;)V
    .registers 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftReceiver;->open:Z

    .line 47
    iget-object v0, p1, Lcom/codemao/midi/sun/SoftSynthesizer;->control_mutex:Ljava/lang/Object;

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftReceiver;->control_mutex:Ljava/lang/Object;

    .line 48
    iput-object p1, p0, Lcom/codemao/midi/sun/SoftReceiver;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    .line 49
    invoke-virtual {p1}, Lcom/codemao/midi/sun/SoftSynthesizer;->getMainMixer()Lcom/codemao/midi/sun/SoftMainMixer;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/midi/sun/SoftReceiver;->mainmixer:Lcom/codemao/midi/sun/SoftMainMixer;

    if-eqz p1, :cond_18

    .line 51
    iget-object p1, p1, Lcom/codemao/midi/sun/SoftMainMixer;->midimessages:Ljava/util/TreeMap;

    iput-object p1, p0, Lcom/codemao/midi/sun/SoftReceiver;->midimessages:Ljava/util/TreeMap;

    :cond_18
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 83
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftReceiver;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 84
    :try_start_4
    iput-boolean v1, p0, Lcom/codemao/midi/sun/SoftReceiver;->open:Z

    .line 85
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_d

    .line 86
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftReceiver;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    invoke-virtual {v0, p0}, Lcom/codemao/midi/sun/SoftSynthesizer;->removeReceiver(Lcom/codemao/midi/javax/Receiver;)V

    return-void

    :catchall_d
    move-exception v1

    .line 85
    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v1
.end method

.method public send(Lcom/codemao/midi/javax/CMMidiMessage;J)V
    .registers 7

    .line 60
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftReceiver;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    :try_start_3
    iget-boolean v1, p0, Lcom/codemao/midi/sun/SoftReceiver;->open:Z

    if-eqz v1, :cond_5b

    .line 63
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_63

    const-wide/16 v0, -0x1

    cmp-long v2, p2, v0

    if-eqz v2, :cond_55

    .line 66
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftReceiver;->control_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_11
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftReceiver;->mainmixer:Lcom/codemao/midi/sun/SoftMainMixer;

    invoke-virtual {v1}, Lcom/codemao/midi/sun/SoftMainMixer;->activity()V

    .line 68
    :goto_16
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftReceiver;->midimessages:Ljava/util/TreeMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_26

    const-wide/16 v1, 0x1

    add-long/2addr p2, v1

    goto :goto_16

    .line 70
    :cond_26
    instance-of v1, p1, Lcom/codemao/midi/javax/ShortMessageCM;

    if-eqz v1, :cond_43

    move-object v1, p1

    check-cast v1, Lcom/codemao/midi/javax/ShortMessageCM;

    .line 71
    invoke-virtual {v1}, Lcom/codemao/midi/javax/ShortMessageCM;->getChannel()I

    move-result v1

    const/16 v2, 0xf

    if-le v1, v2, :cond_43

    .line 72
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftReceiver;->midimessages:Ljava/util/TreeMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1}, Lcom/codemao/midi/javax/CMMidiMessage;->clone()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_50

    .line 74
    :cond_43
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftReceiver;->midimessages:Ljava/util/TreeMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1}, Lcom/codemao/midi/javax/CMMidiMessage;->getMessage()[B

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :goto_50
    monitor-exit v0

    goto :goto_5a

    :catchall_52
    move-exception p1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_11 .. :try_end_54} :catchall_52

    throw p1

    .line 78
    :cond_55
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftReceiver;->mainmixer:Lcom/codemao/midi/sun/SoftMainMixer;

    invoke-virtual {p2, p1}, Lcom/codemao/midi/sun/SoftMainMixer;->processMessage(Lcom/codemao/midi/javax/CMMidiMessage;)V

    :goto_5a
    return-void

    .line 62
    :cond_5b
    :try_start_5b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Receiver is not open"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_63
    move-exception p1

    .line 63
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_63

    throw p1
.end method
