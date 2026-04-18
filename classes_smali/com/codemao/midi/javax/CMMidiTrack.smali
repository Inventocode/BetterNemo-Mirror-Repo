.class public Lcom/codemao/midi/javax/CMMidiTrack;
.super Ljava/lang/Object;
.source "CMMidiTrack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/midi/javax/CMMidiTrack$TrackUtils;
    }
.end annotation


# static fields
.field private static final EMPTY_CM_MIDI_TRACKS:[Lcom/codemao/midi/javax/CMMidiTrack;

.field private static final END_OF_TRACK:[B

.field static final midiEventComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/codemao/midi/javax/CMMidiEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/midi/javax/CMMidiEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 20
    fill-array-data v0, :array_16

    sput-object v0, Lcom/codemao/midi/javax/CMMidiTrack;->END_OF_TRACK:[B

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/codemao/midi/javax/CMMidiTrack;

    .line 21
    sput-object v0, Lcom/codemao/midi/javax/CMMidiTrack;->EMPTY_CM_MIDI_TRACKS:[Lcom/codemao/midi/javax/CMMidiTrack;

    .line 33
    new-instance v0, Lcom/codemao/midi/javax/CMMidiTrack$1;

    invoke-direct {v0}, Lcom/codemao/midi/javax/CMMidiTrack$1;-><init>()V

    sput-object v0, Lcom/codemao/midi/javax/CMMidiTrack;->midiEventComparator:Ljava/util/Comparator;

    return-void

    nop

    :array_16
    .array-data 1
        -0x1t
        0x2ft
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/javax/CMMidiTrack;->events:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000()[Lcom/codemao/midi/javax/CMMidiTrack;
    .registers 1

    .line 19
    sget-object v0, Lcom/codemao/midi/javax/CMMidiTrack;->EMPTY_CM_MIDI_TRACKS:[Lcom/codemao/midi/javax/CMMidiTrack;

    return-object v0
.end method

.method static synthetic access$100()[B
    .registers 1

    .line 19
    sget-object v0, Lcom/codemao/midi/javax/CMMidiTrack;->END_OF_TRACK:[B

    return-object v0
.end method


# virtual methods
.method public add(Lcom/codemao/midi/javax/CMMidiEvent;)Z
    .registers 4

    .line 171
    iget-object v0, p0, Lcom/codemao/midi/javax/CMMidiTrack;->events:Ljava/util/List;

    monitor-enter v0

    .line 172
    :try_start_3
    iget-object v1, p0, Lcom/codemao/midi/javax/CMMidiTrack;->events:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_b
    move-exception p1

    .line 173
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public addTrackNote(Lcom/codemao/midi/javax/CMMidiTrack;J)V
    .registers 8

    const/4 v0, 0x0

    .line 368
    :goto_1
    invoke-virtual {p1}, Lcom/codemao/midi/javax/CMMidiTrack;->getEvents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4d

    .line 369
    invoke-virtual {p1}, Lcom/codemao/midi/javax/CMMidiTrack;->getEvents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/midi/javax/CMMidiEvent;

    invoke-virtual {v1}, Lcom/codemao/midi/javax/CMMidiEvent;->getMessage()Lcom/codemao/midi/javax/CMMidiMessage;

    move-result-object v1

    .line 370
    instance-of v2, v1, Lcom/codemao/midi/javax/ShortMessageCM;

    if-eqz v2, :cond_4a

    .line 371
    check-cast v1, Lcom/codemao/midi/javax/ShortMessageCM;

    invoke-virtual {v1}, Lcom/codemao/midi/javax/ShortMessageCM;->getCommand()I

    move-result v2

    const/16 v3, 0x90

    if-eq v2, v3, :cond_2f

    invoke-virtual {v1}, Lcom/codemao/midi/javax/ShortMessageCM;->getCommand()I

    move-result v1

    const/16 v2, 0x80

    if-ne v1, v2, :cond_4a

    .line 372
    :cond_2f
    invoke-virtual {p1}, Lcom/codemao/midi/javax/CMMidiTrack;->getEvents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/midi/javax/CMMidiEvent;

    invoke-virtual {v1}, Lcom/codemao/midi/javax/CMMidiEvent;->copy()Lcom/codemao/midi/javax/CMMidiEvent;

    move-result-object v1

    .line 373
    invoke-virtual {v1}, Lcom/codemao/midi/javax/CMMidiEvent;->getTick()J

    move-result-wide v2

    add-long/2addr v2, p2

    invoke-virtual {v1, v2, v3}, Lcom/codemao/midi/javax/CMMidiEvent;->setTick(J)V

    .line 374
    iget-object v2, p0, Lcom/codemao/midi/javax/CMMidiTrack;->events:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4d
    return-void
.end method

.method public get(I)Lcom/codemao/midi/javax/CMMidiEvent;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/codemao/midi/javax/CMMidiTrack;->events:Ljava/util/List;

    monitor-enter v0

    .line 186
    :try_start_3
    iget-object v1, p0, Lcom/codemao/midi/javax/CMMidiTrack;->events:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/midi/javax/CMMidiEvent;

    monitor-exit v0

    return-object p1

    :catchall_d
    move-exception p1

    .line 187
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public getEvents()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/midi/javax/CMMidiEvent;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/codemao/midi/javax/CMMidiTrack;->events:Ljava/util/List;

    return-object v0
.end method

.method public getTrackMaxTick()J
    .registers 3

    .line 326
    :try_start_0
    invoke-static {p0}, Lcom/codemao/midi/javax/CMMidiTrack$TrackUtils;->sortEvents(Lcom/codemao/midi/javax/CMMidiTrack;)V

    .line 327
    iget-object v0, p0, Lcom/codemao/midi/javax/CMMidiTrack;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/midi/javax/CMMidiEvent;

    invoke-virtual {v0}, Lcom/codemao/midi/javax/CMMidiEvent;->getTick()J

    move-result-wide v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-wide v0

    :catch_16
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTrackProgram()[I
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 352
    fill-array-data v0, :array_4a

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 353
    :goto_8
    iget-object v3, p0, Lcom/codemao/midi/javax/CMMidiTrack;->events:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_48

    .line 354
    iget-object v3, p0, Lcom/codemao/midi/javax/CMMidiTrack;->events:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/midi/javax/CMMidiEvent;

    invoke-virtual {v3}, Lcom/codemao/midi/javax/CMMidiEvent;->getMessage()Lcom/codemao/midi/javax/CMMidiMessage;

    move-result-object v3

    .line 355
    instance-of v4, v3, Lcom/codemao/midi/javax/ShortMessageCM;

    if-eqz v4, :cond_45

    .line 356
    check-cast v3, Lcom/codemao/midi/javax/ShortMessageCM;

    invoke-virtual {v3}, Lcom/codemao/midi/javax/ShortMessageCM;->getCommand()I

    move-result v4

    const/16 v5, 0xc0

    if-ne v4, v5, :cond_30

    .line 357
    invoke-virtual {v3}, Lcom/codemao/midi/javax/ShortMessageCM;->getData1()I

    move-result v4

    aput v4, v0, v1

    .line 359
    :cond_30
    invoke-virtual {v3}, Lcom/codemao/midi/javax/ShortMessageCM;->getCommand()I

    move-result v4

    const/16 v5, 0xb0

    if-ne v4, v5, :cond_45

    invoke-virtual {v3}, Lcom/codemao/midi/javax/ShortMessageCM;->getData1()I

    move-result v4

    if-nez v4, :cond_45

    .line 360
    invoke-virtual {v3}, Lcom/codemao/midi/javax/ShortMessageCM;->getData2()I

    move-result v3

    const/4 v4, 0x1

    aput v3, v0, v4

    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_48
    return-object v0

    nop

    :array_4a
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public getTrackTempo()I
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 335
    :goto_2
    iget-object v2, p0, Lcom/codemao/midi/javax/CMMidiTrack;->events:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4e

    .line 336
    iget-object v2, p0, Lcom/codemao/midi/javax/CMMidiTrack;->events:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/midi/javax/CMMidiEvent;

    invoke-virtual {v2}, Lcom/codemao/midi/javax/CMMidiEvent;->getMessage()Lcom/codemao/midi/javax/CMMidiMessage;

    move-result-object v2

    .line 337
    invoke-virtual {v2}, Lcom/codemao/midi/javax/CMMidiMessage;->getLength()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_4b

    invoke-virtual {v2}, Lcom/codemao/midi/javax/CMMidiMessage;->getStatus()I

    move-result v3

    const/16 v4, 0xff

    if-ne v3, v4, :cond_4b

    .line 338
    invoke-virtual {v2}, Lcom/codemao/midi/javax/CMMidiMessage;->getMessage()[B

    move-result-object v2

    if-eqz v2, :cond_4b

    const/4 v3, 0x1

    .line 339
    aget-byte v3, v2, v3

    and-int/2addr v3, v4

    const/16 v5, 0x51

    if-ne v3, v5, :cond_4b

    const/4 v3, 0x2

    aget-byte v3, v2, v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_4b

    const/4 v0, 0x5

    .line 340
    aget-byte v0, v2, v0

    and-int/2addr v0, v4

    const/4 v1, 0x4

    aget-byte v1, v2, v1

    and-int/2addr v1, v4

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aget-byte v1, v2, v5

    and-int/2addr v1, v4

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    goto :goto_4e

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4e
    :goto_4e
    return v0
.end method

.method public insertChangeMsbAndLsb(III)Lcom/codemao/midi/javax/CMMidiTrack;
    .registers 9

    .line 308
    :try_start_0
    new-instance v0, Lcom/codemao/midi/javax/ShortMessageCM;

    invoke-direct {v0}, Lcom/codemao/midi/javax/ShortMessageCM;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0xb0

    .line 309
    invoke-virtual {v0, v2, p1, v1, p2}, Lcom/codemao/midi/javax/ShortMessageCM;->setMessage(IIII)V

    .line 310
    new-instance p2, Lcom/codemao/midi/javax/CMMidiEvent;

    const-wide/16 v3, 0x0

    invoke-direct {p2, v0, v3, v4}, Lcom/codemao/midi/javax/CMMidiEvent;-><init>(Lcom/codemao/midi/javax/CMMidiMessage;J)V

    invoke-virtual {p0, p2}, Lcom/codemao/midi/javax/CMMidiTrack;->add(Lcom/codemao/midi/javax/CMMidiEvent;)Z

    .line 311
    new-instance p2, Lcom/codemao/midi/javax/ShortMessageCM;

    invoke-direct {p2}, Lcom/codemao/midi/javax/ShortMessageCM;-><init>()V

    const/16 v0, 0x20

    .line 312
    invoke-virtual {p2, v2, p1, v0, p3}, Lcom/codemao/midi/javax/ShortMessageCM;->setMessage(IIII)V

    .line 313
    new-instance p1, Lcom/codemao/midi/javax/CMMidiEvent;

    invoke-direct {p1, p2, v3, v4}, Lcom/codemao/midi/javax/CMMidiEvent;-><init>(Lcom/codemao/midi/javax/CMMidiMessage;J)V

    invoke-virtual {p0, p1}, Lcom/codemao/midi/javax/CMMidiTrack;->add(Lcom/codemao/midi/javax/CMMidiEvent;)Z
    :try_end_27
    .catch Lcom/codemao/midi/javax/InvalidMidiDataException; {:try_start_0 .. :try_end_27} :catch_28

    goto :goto_2c

    :catch_28
    move-exception p1

    .line 315
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2c
    return-object p0
.end method

.method public insertChangeProgram(II)Lcom/codemao/midi/javax/CMMidiTrack;
    .registers 6

    .line 297
    :try_start_0
    new-instance v0, Lcom/codemao/midi/javax/ShortMessageCM;

    invoke-direct {v0}, Lcom/codemao/midi/javax/ShortMessageCM;-><init>()V

    const/16 v1, 0xc0

    const/4 v2, 0x0

    .line 298
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/codemao/midi/javax/ShortMessageCM;->setMessage(IIII)V

    .line 299
    new-instance p1, Lcom/codemao/midi/javax/CMMidiEvent;

    const-wide/16 v1, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/codemao/midi/javax/CMMidiEvent;-><init>(Lcom/codemao/midi/javax/CMMidiMessage;J)V

    invoke-virtual {p0, p1}, Lcom/codemao/midi/javax/CMMidiTrack;->add(Lcom/codemao/midi/javax/CMMidiEvent;)Z
    :try_end_15
    .catch Lcom/codemao/midi/javax/InvalidMidiDataException; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_1a

    :catch_16
    move-exception p1

    .line 301
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1a
    return-object p0
.end method

.method public insertDefaultTimeSignature()Lcom/codemao/midi/javax/CMMidiTrack;
    .registers 5

    .line 270
    new-instance v0, Lcom/codemao/midi/javax/CMMidiEvent;

    invoke-static {}, Lcom/codemao/midi/javax/MetaMessageCM;->getDefaultTimeSignatureMsg()Lcom/codemao/midi/javax/MetaMessageCM;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/codemao/midi/javax/CMMidiEvent;-><init>(Lcom/codemao/midi/javax/CMMidiMessage;J)V

    invoke-virtual {p0, v0}, Lcom/codemao/midi/javax/CMMidiTrack;->add(Lcom/codemao/midi/javax/CMMidiEvent;)Z

    return-object p0
.end method

.method public insertNote(IIIJJ)Lcom/codemao/midi/javax/CMMidiTrack;
    .registers 11

    .line 280
    :try_start_0
    new-instance v0, Lcom/codemao/midi/javax/ShortMessageCM;

    invoke-direct {v0}, Lcom/codemao/midi/javax/ShortMessageCM;-><init>()V

    const/16 v1, 0x90

    .line 281
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/codemao/midi/javax/ShortMessageCM;->setMessage(IIII)V

    .line 282
    new-instance v1, Lcom/codemao/midi/javax/CMMidiEvent;

    invoke-direct {v1, v0, p4, p5}, Lcom/codemao/midi/javax/CMMidiEvent;-><init>(Lcom/codemao/midi/javax/CMMidiMessage;J)V

    .line 283
    new-instance v0, Lcom/codemao/midi/javax/ShortMessageCM;

    invoke-direct {v0}, Lcom/codemao/midi/javax/ShortMessageCM;-><init>()V

    const/16 v2, 0x80

    .line 284
    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/codemao/midi/javax/ShortMessageCM;->setMessage(IIII)V

    .line 285
    new-instance p1, Lcom/codemao/midi/javax/CMMidiEvent;

    add-long/2addr p4, p6

    invoke-direct {p1, v0, p4, p5}, Lcom/codemao/midi/javax/CMMidiEvent;-><init>(Lcom/codemao/midi/javax/CMMidiMessage;J)V

    .line 286
    invoke-virtual {p0, v1}, Lcom/codemao/midi/javax/CMMidiTrack;->add(Lcom/codemao/midi/javax/CMMidiEvent;)Z

    .line 287
    invoke-virtual {p0, p1}, Lcom/codemao/midi/javax/CMMidiTrack;->add(Lcom/codemao/midi/javax/CMMidiEvent;)Z
    :try_end_25
    .catch Lcom/codemao/midi/javax/InvalidMidiDataException; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_2a

    :catch_26
    move-exception p1

    .line 289
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2a
    return-object p0
.end method

.method public insertOrReplaceTempo(I)Lcom/codemao/midi/javax/CMMidiTrack;
    .registers 9

    const/4 v0, 0x0

    .line 250
    :try_start_1
    iget-object v1, p0, Lcom/codemao/midi/javax/CMMidiTrack;->events:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/midi/javax/CMMidiEvent;

    .line 251
    invoke-virtual {v3}, Lcom/codemao/midi/javax/CMMidiEvent;->getMessage()Lcom/codemao/midi/javax/CMMidiMessage;

    move-result-object v4

    instance-of v4, v4, Lcom/codemao/midi/javax/MetaMessageCM;

    if-eqz v4, :cond_8

    .line 252
    invoke-virtual {v3}, Lcom/codemao/midi/javax/CMMidiEvent;->getMessage()Lcom/codemao/midi/javax/CMMidiMessage;

    move-result-object v3

    check-cast v3, Lcom/codemao/midi/javax/MetaMessageCM;

    .line 253
    invoke-virtual {v3}, Lcom/codemao/midi/javax/MetaMessageCM;->getType()I

    move-result v4

    const/16 v5, 0x51

    if-ne v4, v5, :cond_8

    const/4 v2, 0x1

    .line 255
    invoke-static {p1}, Lcom/codemao/midi/javax/MetaMessageCM;->getTempoData(I)[B

    move-result-object v4

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v4, v6}, Lcom/codemao/midi/javax/MetaMessageCM;->setMessage(I[BI)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_33} :catch_36

    goto :goto_8

    :cond_34
    move v0, v2

    goto :goto_37

    :catch_36
    nop

    :goto_37
    if-nez v0, :cond_47

    .line 263
    new-instance v0, Lcom/codemao/midi/javax/CMMidiEvent;

    invoke-static {p1}, Lcom/codemao/midi/javax/MetaMessageCM;->getTempoMsg(I)Lcom/codemao/midi/javax/MetaMessageCM;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/codemao/midi/javax/CMMidiEvent;-><init>(Lcom/codemao/midi/javax/CMMidiMessage;J)V

    invoke-virtual {p0, v0}, Lcom/codemao/midi/javax/CMMidiTrack;->add(Lcom/codemao/midi/javax/CMMidiEvent;)Z

    :cond_47
    return-object p0
.end method

.method public insertTempo(I)Lcom/codemao/midi/javax/CMMidiTrack;
    .registers 5

    .line 243
    new-instance v0, Lcom/codemao/midi/javax/CMMidiEvent;

    invoke-static {p1}, Lcom/codemao/midi/javax/MetaMessageCM;->getTempoMsg(I)Lcom/codemao/midi/javax/MetaMessageCM;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/codemao/midi/javax/CMMidiEvent;-><init>(Lcom/codemao/midi/javax/CMMidiMessage;J)V

    invoke-virtual {p0, v0}, Lcom/codemao/midi/javax/CMMidiTrack;->add(Lcom/codemao/midi/javax/CMMidiEvent;)Z

    return-object p0
.end method

.method public remove(Lcom/codemao/midi/javax/CMMidiEvent;)Z
    .registers 4

    .line 197
    iget-object v0, p0, Lcom/codemao/midi/javax/CMMidiTrack;->events:Ljava/util/List;

    monitor-enter v0

    .line 198
    :try_start_3
    iget-object v1, p0, Lcom/codemao/midi/javax/CMMidiTrack;->events:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_b
    move-exception p1

    .line 199
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public size()I
    .registers 3

    .line 208
    iget-object v0, p0, Lcom/codemao/midi/javax/CMMidiTrack;->events:Ljava/util/List;

    monitor-enter v0

    .line 209
    :try_start_3
    iget-object v1, p0, Lcom/codemao/midi/javax/CMMidiTrack;->events:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    .line 210
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public ticks()J
    .registers 4

    .line 219
    invoke-static {p0}, Lcom/codemao/midi/javax/CMMidiTrack$TrackUtils;->sortEvents(Lcom/codemao/midi/javax/CMMidiTrack;)V

    .line 221
    iget-object v0, p0, Lcom/codemao/midi/javax/CMMidiTrack;->events:Ljava/util/List;

    monitor-enter v0

    .line 222
    :try_start_6
    iget-object v1, p0, Lcom/codemao/midi/javax/CMMidiTrack;->events:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    const-wide/16 v1, 0x0

    .line 223
    monitor-exit v0

    return-wide v1

    .line 226
    :cond_12
    iget-object v1, p0, Lcom/codemao/midi/javax/CMMidiTrack;->events:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/midi/javax/CMMidiEvent;

    invoke-virtual {v1}, Lcom/codemao/midi/javax/CMMidiEvent;->getTick()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_26
    move-exception v1

    .line 227
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_6 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public ticksByReal()J
    .registers 4

    .line 231
    invoke-static {p0}, Lcom/codemao/midi/javax/CMMidiTrack$TrackUtils;->sortEvents(Lcom/codemao/midi/javax/CMMidiTrack;)V

    .line 233
    iget-object v0, p0, Lcom/codemao/midi/javax/CMMidiTrack;->events:Ljava/util/List;

    monitor-enter v0

    .line 234
    :try_start_6
    iget-object v1, p0, Lcom/codemao/midi/javax/CMMidiTrack;->events:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/codemao/midi/javax/CMMidiTrack;->events:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_18

    goto :goto_2c

    .line 238
    :cond_18
    iget-object v1, p0, Lcom/codemao/midi/javax/CMMidiTrack;->events:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/midi/javax/CMMidiEvent;

    invoke-virtual {v1}, Lcom/codemao/midi/javax/CMMidiEvent;->getTick()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :cond_2c
    :goto_2c
    const-wide/16 v1, 0x0

    .line 235
    monitor-exit v0

    return-wide v1

    :catchall_30
    move-exception v1

    .line 239
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_6 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public trackEnd()V
    .registers 1

    .line 321
    invoke-static {p0}, Lcom/codemao/midi/javax/CMMidiTrack$TrackUtils;->sortEvents(Lcom/codemao/midi/javax/CMMidiTrack;)V

    return-void
.end method
