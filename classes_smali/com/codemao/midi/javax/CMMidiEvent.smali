.class public Lcom/codemao/midi/javax/CMMidiEvent;
.super Ljava/lang/Object;
.source "CMMidiEvent.java"


# instance fields
.field private final message:Lcom/codemao/midi/javax/CMMidiMessage;

.field private tick:J


# direct methods
.method public constructor <init>(Lcom/codemao/midi/javax/CMMidiMessage;J)V
    .registers 4

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/codemao/midi/javax/CMMidiEvent;->message:Lcom/codemao/midi/javax/CMMidiMessage;

    .line 25
    iput-wide p2, p0, Lcom/codemao/midi/javax/CMMidiEvent;->tick:J

    return-void
.end method


# virtual methods
.method public copy()Lcom/codemao/midi/javax/CMMidiEvent;
    .registers 5

    .line 58
    iget-object v0, p0, Lcom/codemao/midi/javax/CMMidiEvent;->message:Lcom/codemao/midi/javax/CMMidiMessage;

    instance-of v1, v0, Lcom/codemao/midi/sun/SoftShortMessageCM;

    if-eqz v1, :cond_14

    .line 59
    new-instance v1, Lcom/codemao/midi/javax/CMMidiEvent;

    invoke-virtual {v0}, Lcom/codemao/midi/javax/CMMidiMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/midi/sun/SoftShortMessageCM;

    iget-wide v2, p0, Lcom/codemao/midi/javax/CMMidiEvent;->tick:J

    invoke-direct {v1, v0, v2, v3}, Lcom/codemao/midi/javax/CMMidiEvent;-><init>(Lcom/codemao/midi/javax/CMMidiMessage;J)V

    return-object v1

    .line 60
    :cond_14
    instance-of v1, v0, Lcom/codemao/midi/javax/ShortMessageCM;

    if-eqz v1, :cond_26

    .line 61
    new-instance v1, Lcom/codemao/midi/javax/CMMidiEvent;

    invoke-virtual {v0}, Lcom/codemao/midi/javax/CMMidiMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/midi/javax/ShortMessageCM;

    iget-wide v2, p0, Lcom/codemao/midi/javax/CMMidiEvent;->tick:J

    invoke-direct {v1, v0, v2, v3}, Lcom/codemao/midi/javax/CMMidiEvent;-><init>(Lcom/codemao/midi/javax/CMMidiMessage;J)V

    return-object v1

    .line 62
    :cond_26
    instance-of v1, v0, Lcom/codemao/midi/javax/SysexMessageCM;

    if-eqz v1, :cond_38

    .line 63
    new-instance v1, Lcom/codemao/midi/javax/CMMidiEvent;

    invoke-virtual {v0}, Lcom/codemao/midi/javax/CMMidiMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/midi/javax/SysexMessageCM;

    iget-wide v2, p0, Lcom/codemao/midi/javax/CMMidiEvent;->tick:J

    invoke-direct {v1, v0, v2, v3}, Lcom/codemao/midi/javax/CMMidiEvent;-><init>(Lcom/codemao/midi/javax/CMMidiMessage;J)V

    return-object v1

    .line 64
    :cond_38
    instance-of v1, v0, Lcom/codemao/midi/javax/MetaMessageCM;

    if-eqz v1, :cond_4a

    .line 65
    new-instance v1, Lcom/codemao/midi/javax/CMMidiEvent;

    invoke-virtual {v0}, Lcom/codemao/midi/javax/CMMidiMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/midi/javax/MetaMessageCM;

    iget-wide v2, p0, Lcom/codemao/midi/javax/CMMidiEvent;->tick:J

    invoke-direct {v1, v0, v2, v3}, Lcom/codemao/midi/javax/CMMidiEvent;-><init>(Lcom/codemao/midi/javax/CMMidiMessage;J)V

    return-object v1

    .line 67
    :cond_4a
    new-instance v1, Lcom/codemao/midi/javax/CMMidiEvent;

    invoke-virtual {v0}, Lcom/codemao/midi/javax/CMMidiMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/midi/javax/CMMidiMessage;

    iget-wide v2, p0, Lcom/codemao/midi/javax/CMMidiEvent;->tick:J

    invoke-direct {v1, v0, v2, v3}, Lcom/codemao/midi/javax/CMMidiEvent;-><init>(Lcom/codemao/midi/javax/CMMidiMessage;J)V

    return-object v1
.end method

.method public getMessage()Lcom/codemao/midi/javax/CMMidiMessage;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/codemao/midi/javax/CMMidiEvent;->message:Lcom/codemao/midi/javax/CMMidiMessage;

    return-object v0
.end method

.method public getTick()J
    .registers 3

    .line 44
    iget-wide v0, p0, Lcom/codemao/midi/javax/CMMidiEvent;->tick:J

    return-wide v0
.end method

.method public setTick(J)V
    .registers 3

    .line 53
    iput-wide p1, p0, Lcom/codemao/midi/javax/CMMidiEvent;->tick:J

    return-void
.end method
