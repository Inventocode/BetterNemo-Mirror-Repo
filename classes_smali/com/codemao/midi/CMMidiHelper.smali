.class public final Lcom/codemao/midi/CMMidiHelper;
.super Ljava/lang/Object;
.source "CMMidiHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/midi/CMMidiHelper$SingletonHolder;,
        Lcom/codemao/midi/CMMidiHelper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCMMidiHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CMMidiHelper.kt\ncom/codemao/midi/CMMidiHelper\n*L\n1#1,481:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/midi/CMMidiHelper$Companion;

.field private static final instance:Lcom/codemao/midi/CMMidiHelper;


# instance fields
.field private recv:Lcom/codemao/midi/javax/Receiver;

.field private sequencers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/codemao/midi/javax/Sequencer;",
            ">;"
        }
    .end annotation
.end field

.field private synth:Lcom/codemao/midi/sun/SoftSynthesizer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/midi/CMMidiHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/midi/CMMidiHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/midi/CMMidiHelper;->Companion:Lcom/codemao/midi/CMMidiHelper$Companion;

    .line 26
    sget-object v0, Lcom/codemao/midi/CMMidiHelper$SingletonHolder;->INSTANCE:Lcom/codemao/midi/CMMidiHelper$SingletonHolder;

    invoke-virtual {v0}, Lcom/codemao/midi/CMMidiHelper$SingletonHolder;->getInstance()Lcom/codemao/midi/CMMidiHelper;

    move-result-object v0

    sput-object v0, Lcom/codemao/midi/CMMidiHelper;->instance:Lcom/codemao/midi/CMMidiHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 22
    invoke-direct {p0}, Lcom/codemao/midi/CMMidiHelper;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/codemao/midi/CMMidiHelper;
    .registers 1

    .line 22
    sget-object v0, Lcom/codemao/midi/CMMidiHelper;->instance:Lcom/codemao/midi/CMMidiHelper;

    return-object v0
.end method

.method public static final synthetic access$getRecv$p(Lcom/codemao/midi/CMMidiHelper;)Lcom/codemao/midi/javax/Receiver;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/codemao/midi/CMMidiHelper;->recv:Lcom/codemao/midi/javax/Receiver;

    return-object p0
.end method

.method public static final getInstance()Lcom/codemao/midi/CMMidiHelper;
    .registers 1

    sget-object v0, Lcom/codemao/midi/CMMidiHelper;->instance:Lcom/codemao/midi/CMMidiHelper;

    return-object v0
.end method

.method private final init()V
    .registers 2

    .line 122
    invoke-direct {p0}, Lcom/codemao/midi/CMMidiHelper;->initPalyer()V

    .line 123
    iget-object v0, p0, Lcom/codemao/midi/CMMidiHelper;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    if-nez v0, :cond_37

    .line 125
    :try_start_7
    new-instance v0, Lcom/codemao/midi/sun/SoftSynthesizer;

    invoke-direct {v0}, Lcom/codemao/midi/sun/SoftSynthesizer;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/CMMidiHelper;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    .line 126
    invoke-virtual {v0}, Lcom/codemao/midi/sun/SoftSynthesizer;->open()V

    .line 127
    iget-object v0, p0, Lcom/codemao/midi/CMMidiHelper;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    if-nez v0, :cond_18

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_18
    invoke-virtual {v0}, Lcom/codemao/midi/sun/SoftSynthesizer;->getReceiver()Lcom/codemao/midi/javax/Receiver;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/midi/CMMidiHelper;->recv:Lcom/codemao/midi/javax/Receiver;

    .line 128
    iget-object v0, p0, Lcom/codemao/midi/CMMidiHelper;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    if-nez v0, :cond_25

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_25
    invoke-static {v0}, Lcom/codemao/midi/javax/MidiSystem;->addSynthesizer(Lcom/codemao/midi/javax/Synthesizer;)V

    .line 129
    iget-object v0, p0, Lcom/codemao/midi/CMMidiHelper;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    if-nez v0, :cond_2f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2f
    invoke-static {v0}, Lcom/codemao/midi/javax/MidiSystem;->addMidiDevice(Lcom/codemao/midi/javax/MidiDevice;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_32} :catch_33

    goto :goto_37

    :catch_33
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_37
    :goto_37
    return-void
.end method

.method private final initPalyer()V
    .registers 4

    .line 156
    iget-object v0, p0, Lcom/codemao/midi/CMMidiHelper;->sequencers:Ljava/util/HashMap;

    if-eqz v0, :cond_3b

    if-nez v0, :cond_9

    .line 157
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 158
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/midi/javax/Sequencer;

    invoke-interface {v2}, Lcom/codemao/midi/javax/Sequencer;->stop()V

    .line 159
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/midi/javax/Sequencer;

    invoke-interface {v1}, Lcom/codemao/midi/javax/MidiDevice;->close()V

    goto :goto_11

    .line 161
    :cond_30
    iget-object v0, p0, Lcom/codemao/midi/CMMidiHelper;->sequencers:Ljava/util/HashMap;

    if-nez v0, :cond_37

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_37
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_42

    .line 163
    :cond_3b
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/CMMidiHelper;->sequencers:Ljava/util/HashMap;

    :goto_42
    return-void
.end method

.method public static final parseMidiFile(Ljava/io/InputStream;)Lcom/codemao/midi/javax/CMMidiFile;
    .registers 2

    sget-object v0, Lcom/codemao/midi/CMMidiHelper;->Companion:Lcom/codemao/midi/CMMidiHelper$Companion;

    invoke-virtual {v0, p0}, Lcom/codemao/midi/CMMidiHelper$Companion;->parseMidiFile(Ljava/io/InputStream;)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object p0

    return-object p0
.end method

.method public static final startCreateEditor(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 11

    sget-object v0, Lcom/codemao/midi/CMMidiHelper;->Companion:Lcom/codemao/midi/CMMidiHelper$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/codemao/midi/CMMidiHelper$Companion;->startCreateEditor(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static final startEditorMidi(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 13

    sget-object v0, Lcom/codemao/midi/CMMidiHelper;->Companion:Lcom/codemao/midi/CMMidiHelper$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/codemao/midi/CMMidiHelper$Companion;->startEditorMidi(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final changeMsbAndLsb(III)V
    .registers 6

    .line 328
    iget-object v0, p0, Lcom/codemao/midi/CMMidiHelper;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    if-nez v0, :cond_7

    .line 329
    invoke-direct {p0}, Lcom/codemao/midi/CMMidiHelper;->init()V

    .line 331
    :cond_7
    iget-object v0, p0, Lcom/codemao/midi/CMMidiHelper;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    if-nez v0, :cond_e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_e
    invoke-virtual {v0}, Lcom/codemao/midi/sun/SoftSynthesizer;->getChannels()[Lcom/codemao/midi/javax/MidiChannel;

    move-result-object v0

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Lcom/codemao/midi/javax/MidiChannel;->controlChange(II)V

    .line 332
    iget-object p2, p0, Lcom/codemao/midi/CMMidiHelper;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    if-nez p2, :cond_1f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1f
    invoke-virtual {p2}, Lcom/codemao/midi/sun/SoftSynthesizer;->getChannels()[Lcom/codemao/midi/javax/MidiChannel;

    move-result-object p2

    aget-object p1, p2, p1

    const/16 p2, 0x20

    invoke-interface {p1, p2, p3}, Lcom/codemao/midi/javax/MidiChannel;->controlChange(II)V

    return-void
.end method

.method public final changeProgram(II)V
    .registers 4

    .line 314
    iget-object v0, p0, Lcom/codemao/midi/CMMidiHelper;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    if-nez v0, :cond_7

    .line 315
    invoke-direct {p0}, Lcom/codemao/midi/CMMidiHelper;->init()V

    .line 317
    :cond_7
    iget-object v0, p0, Lcom/codemao/midi/CMMidiHelper;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    if-nez v0, :cond_e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_e
    invoke-virtual {v0}, Lcom/codemao/midi/sun/SoftSynthesizer;->getChannels()[Lcom/codemao/midi/javax/MidiChannel;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-interface {p1, p2}, Lcom/codemao/midi/javax/MidiChannel;->programChange(I)V

    return-void
.end method

.method public final destroy()V
    .registers 1

    .line 380
    invoke-virtual {p0}, Lcom/codemao/midi/CMMidiHelper;->stopAll()V

    return-void
.end method

.method public final getAccompanyTrack(Lcom/codemao/midi/javax/CMMidiTrack;JI)Lcom/codemao/midi/javax/CMMidiTrack;
    .registers 21

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    const-string v3, "accompanyTrack"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    new-instance v3, Lcom/codemao/midi/javax/CMMidiTrack;

    invoke-direct {v3}, Lcom/codemao/midi/javax/CMMidiTrack;-><init>()V

    .line 424
    invoke-virtual/range {p1 .. p1}, Lcom/codemao/midi/javax/CMMidiTrack;->getTrackMaxTick()J

    move-result-wide v4

    .line 425
    invoke-virtual/range {p1 .. p1}, Lcom/codemao/midi/javax/CMMidiTrack;->getTrackMaxTick()J

    move-result-wide v6

    div-long v6, v1, v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_2f

    cmp-long v10, v8, v6

    if-gtz v10, :cond_3f

    :goto_22
    mul-long v10, v4, v8

    .line 429
    invoke-virtual {v3, v0, v10, v11}, Lcom/codemao/midi/javax/CMMidiTrack;->addTrackNote(Lcom/codemao/midi/javax/CMMidiTrack;J)V

    cmp-long v10, v8, v6

    if-eqz v10, :cond_3f

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto :goto_22

    .line 432
    :cond_2f
    invoke-virtual {v3}, Lcom/codemao/midi/javax/CMMidiTrack;->getEvents()Ljava/util/List;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/codemao/midi/javax/CMMidiTrack;->getEvents()Ljava/util/List;

    move-result-object v0

    const-string v5, "accompanyTrack.events"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 434
    :cond_3f
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 435
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 436
    invoke-virtual {v3}, Lcom/codemao/midi/javax/CMMidiTrack;->getEvents()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_51
    :goto_51
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/16 v7, 0x80

    if-eqz v6, :cond_f3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codemao/midi/javax/CMMidiEvent;

    const-string v8, "cmMidiEvent"

    .line 437
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/codemao/midi/javax/CMMidiEvent;->getTick()J

    move-result-wide v8

    .line 438
    invoke-virtual {v6}, Lcom/codemao/midi/javax/CMMidiEvent;->getMessage()Lcom/codemao/midi/javax/CMMidiMessage;

    move-result-object v10

    const-string v11, "cmMidiEvent.message"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    instance-of v11, v10, Lcom/codemao/midi/javax/ShortMessageCM;

    if-eqz v11, :cond_ef

    .line 440
    move-object v11, v10

    check-cast v11, Lcom/codemao/midi/javax/ShortMessageCM;

    invoke-virtual {v11}, Lcom/codemao/midi/javax/ShortMessageCM;->getCommand()I

    move-result v12

    invoke-virtual {v11}, Lcom/codemao/midi/javax/ShortMessageCM;->getData1()I

    move-result v13

    invoke-virtual {v11}, Lcom/codemao/midi/javax/ShortMessageCM;->getData2()I

    move-result v14

    move/from16 v15, p4

    invoke-virtual {v11, v12, v15, v13, v14}, Lcom/codemao/midi/javax/ShortMessageCM;->setMessage(IIII)V

    .line 441
    invoke-virtual {v11}, Lcom/codemao/midi/javax/ShortMessageCM;->getCommand()I

    move-result v12

    const/16 v13, 0x90

    if-ne v12, v13, :cond_c9

    cmp-long v7, v8, v1

    if-gez v7, :cond_51

    .line 443
    invoke-virtual {v11}, Lcom/codemao/midi/javax/ShortMessageCM;->getData1()I

    move-result v7

    .line 444
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_b9

    .line 446
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_b3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b3
    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 448
    :cond_b9
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 449
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_51

    .line 453
    :cond_c9
    invoke-virtual {v11}, Lcom/codemao/midi/javax/ShortMessageCM;->getCommand()I

    move-result v10

    if-ne v10, v7, :cond_51

    cmp-long v7, v8, v1

    if-gez v7, :cond_51

    .line 455
    invoke-virtual {v11}, Lcom/codemao/midi/javax/ShortMessageCM;->getData1()I

    move-result v7

    .line 456
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_51

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codemao/midi/javax/ShortMessageCM;

    goto/16 :goto_51

    :cond_ef
    move/from16 v15, p4

    goto/16 :goto_51

    .line 462
    :cond_f3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_fb
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_140

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 463
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 464
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_fb

    .line 465
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_117
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_fb

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codemao/midi/javax/ShortMessageCM;

    .line 466
    new-instance v8, Lcom/codemao/midi/javax/ShortMessageCM;

    invoke-direct {v8}, Lcom/codemao/midi/javax/ShortMessageCM;-><init>()V

    .line 469
    invoke-virtual {v6}, Lcom/codemao/midi/javax/ShortMessageCM;->getChannel()I

    move-result v9

    .line 470
    invoke-virtual {v6}, Lcom/codemao/midi/javax/ShortMessageCM;->getData1()I

    move-result v10

    .line 471
    invoke-virtual {v6}, Lcom/codemao/midi/javax/ShortMessageCM;->getData2()I

    move-result v6

    .line 467
    invoke-virtual {v8, v7, v9, v10, v6}, Lcom/codemao/midi/javax/ShortMessageCM;->setMessage(IIII)V

    .line 473
    new-instance v6, Lcom/codemao/midi/javax/CMMidiEvent;

    invoke-direct {v6, v8, v1, v2}, Lcom/codemao/midi/javax/CMMidiEvent;-><init>(Lcom/codemao/midi/javax/CMMidiMessage;J)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_117

    .line 477
    :cond_140
    invoke-virtual {v3}, Lcom/codemao/midi/javax/CMMidiTrack;->getEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 478
    invoke-virtual {v3}, Lcom/codemao/midi/javax/CMMidiTrack;->getEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v3
.end method

.method public final getCurrentDuration(Ljava/lang/String;)J
    .registers 4

    const-string v0, "playId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    :try_start_5
    iget-object v0, p0, Lcom/codemao/midi/CMMidiHelper;->sequencers:Ljava/util/HashMap;

    if-nez v0, :cond_c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_c
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_15

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_15
    const-string v0, "sequencers!!.get(playId)!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/codemao/midi/javax/Sequencer;

    invoke-interface {p1}, Lcom/codemao/midi/javax/Sequencer;->getCurrentDuration()J

    move-result-wide v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_20} :catch_21

    return-wide v0

    :catch_21
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getTotalDuration(Ljava/lang/String;)J
    .registers 4

    const-string v0, "playId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    :try_start_5
    iget-object v0, p0, Lcom/codemao/midi/CMMidiHelper;->sequencers:Ljava/util/HashMap;

    if-nez v0, :cond_c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_c
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_15

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_15
    const-string v0, "sequencers!!.get(playId)!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/codemao/midi/javax/Sequencer;

    invoke-interface {p1}, Lcom/codemao/midi/javax/Sequencer;->getTotalDuration()J

    move-result-wide v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_20} :catch_21

    return-wide v0

    :catch_21
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final init(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-direct {p0}, Lcom/codemao/midi/CMMidiHelper;->initPalyer()V

    .line 139
    iget-object v0, p0, Lcom/codemao/midi/CMMidiHelper;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    if-nez v0, :cond_5e

    .line 141
    :try_start_c
    new-instance v0, Lcom/codemao/midi/sun/SoftSynthesizer;

    invoke-direct {v0}, Lcom/codemao/midi/sun/SoftSynthesizer;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/CMMidiHelper;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    .line 142
    invoke-virtual {v0}, Lcom/codemao/midi/sun/SoftSynthesizer;->open()V

    .line 143
    iget-object v0, p0, Lcom/codemao/midi/CMMidiHelper;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    if-nez v0, :cond_1d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1d
    invoke-virtual {v0}, Lcom/codemao/midi/sun/SoftSynthesizer;->getReceiver()Lcom/codemao/midi/javax/Receiver;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/midi/CMMidiHelper;->recv:Lcom/codemao/midi/javax/Receiver;

    .line 144
    new-instance v0, Lcom/codemao/midi/sun/SF2Soundbank;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "context.applicationContext"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v1, "midi_default.sf2"

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/codemao/midi/sun/SF2Soundbank;-><init>(Ljava/io/InputStream;)V

    .line 145
    iget-object p1, p0, Lcom/codemao/midi/CMMidiHelper;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    if-nez p1, :cond_42

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_42
    invoke-virtual {p1, v0}, Lcom/codemao/midi/sun/SoftSynthesizer;->loadAllInstruments(Lcom/codemao/midi/javax/Soundbank;)Z

    .line 146
    iget-object p1, p0, Lcom/codemao/midi/CMMidiHelper;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    if-nez p1, :cond_4c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4c
    invoke-static {p1}, Lcom/codemao/midi/javax/MidiSystem;->addSynthesizer(Lcom/codemao/midi/javax/Synthesizer;)V

    .line 147
    iget-object p1, p0, Lcom/codemao/midi/CMMidiHelper;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    if-nez p1, :cond_56

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_56
    invoke-static {p1}, Lcom/codemao/midi/javax/MidiSystem;->addMidiDevice(Lcom/codemao/midi/javax/MidiDevice;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_59} :catch_5a

    goto :goto_5e

    :catch_5a
    move-exception p1

    .line 149
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5e
    :goto_5e
    return-void
.end method

.method public final isRuning(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "playId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    :try_start_5
    iget-object v0, p0, Lcom/codemao/midi/CMMidiHelper;->sequencers:Ljava/util/HashMap;

    if-nez v0, :cond_c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_c
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_15

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_15
    const-string v0, "sequencers!!.get(playId)!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/codemao/midi/javax/Sequencer;

    invoke-interface {p1}, Lcom/codemao/midi/javax/Sequencer;->isRunning()Z

    move-result p1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_20} :catch_21

    return p1

    :catch_21
    const/4 p1, 0x0

    return p1
.end method

.method public final playMidiFile(Ljava/lang/String;Lcom/codemao/midi/javax/CMMidiFile;Z)V
    .registers 5

    const-string v0, "playId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cmMidiFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/codemao/midi/CMMidiHelper;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    if-nez v0, :cond_11

    .line 360
    invoke-direct {p0}, Lcom/codemao/midi/CMMidiHelper;->init()V

    :cond_11
    if-eqz p3, :cond_16

    .line 363
    invoke-virtual {p0}, Lcom/codemao/midi/CMMidiHelper;->stopAll()V

    .line 366
    :cond_16
    :try_start_16
    invoke-static {}, Lcom/codemao/midi/javax/MidiSystem;->getSequencer()Lcom/codemao/midi/javax/Sequencer;

    move-result-object p3

    const-string v0, "MidiSystem.getSequencer()"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/codemao/midi/CMMidiHelper;->sequencers:Ljava/util/HashMap;

    if-nez v0, :cond_26

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_26
    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    invoke-interface {p3}, Lcom/codemao/midi/javax/MidiDevice;->open()V

    .line 369
    invoke-interface {p3, p2}, Lcom/codemao/midi/javax/Sequencer;->setSequence(Lcom/codemao/midi/javax/CMMidiFile;)V

    .line 370
    invoke-interface {p3}, Lcom/codemao/midi/javax/Sequencer;->isRunning()Z

    move-result p1

    if-nez p1, :cond_3d

    .line 371
    invoke-interface {p3}, Lcom/codemao/midi/javax/Sequencer;->start()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_38} :catch_39

    goto :goto_3d

    :catch_39
    move-exception p1

    .line 374
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3d
    :goto_3d
    return-void
.end method

.method public final playMidiFile(Ljava/lang/String;Ljava/io/File;Z)V
    .registers 5

    const-string v0, "playId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "midiFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/codemao/midi/CMMidiHelper;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    if-nez v0, :cond_11

    .line 294
    invoke-direct {p0}, Lcom/codemao/midi/CMMidiHelper;->init()V

    :cond_11
    if-eqz p3, :cond_16

    .line 297
    invoke-virtual {p0}, Lcom/codemao/midi/CMMidiHelper;->stopAll()V

    .line 300
    :cond_16
    :try_start_16
    invoke-static {p2}, Lcom/codemao/midi/javax/MidiSystem;->getSequence(Ljava/io/File;)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object p2

    const-string p3, "MidiSystem.getSequence(midiFile!!)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    invoke-static {}, Lcom/codemao/midi/javax/MidiSystem;->getSequencer()Lcom/codemao/midi/javax/Sequencer;

    move-result-object p3

    const-string v0, "MidiSystem.getSequencer()"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/codemao/midi/CMMidiHelper;->sequencers:Ljava/util/HashMap;

    if-nez v0, :cond_2f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2f
    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    invoke-interface {p3}, Lcom/codemao/midi/javax/MidiDevice;->open()V

    .line 304
    invoke-interface {p3, p2}, Lcom/codemao/midi/javax/Sequencer;->setSequence(Lcom/codemao/midi/javax/CMMidiFile;)V

    .line 305
    invoke-interface {p3}, Lcom/codemao/midi/javax/Sequencer;->isRunning()Z

    move-result p1

    if-nez p1, :cond_46

    .line 306
    invoke-interface {p3}, Lcom/codemao/midi/javax/Sequencer;->start()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_41} :catch_42

    goto :goto_46

    :catch_42
    move-exception p1

    .line 309
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_46
    :goto_46
    return-void
.end method

.method public final playSingleNote(IIIZJ)V
    .registers 15

    .line 260
    iget-object v0, p0, Lcom/codemao/midi/CMMidiHelper;->synth:Lcom/codemao/midi/sun/SoftSynthesizer;

    if-nez v0, :cond_7

    .line 261
    invoke-direct {p0}, Lcom/codemao/midi/CMMidiHelper;->init()V

    :cond_7
    if-eqz p4, :cond_c

    .line 264
    invoke-virtual {p0}, Lcom/codemao/midi/CMMidiHelper;->stopAll()V

    .line 266
    :cond_c
    new-instance p4, Lcom/codemao/midi/javax/ShortMessageCM;

    invoke-direct {p4}, Lcom/codemao/midi/javax/ShortMessageCM;-><init>()V

    const/16 v0, 0x90

    .line 267
    invoke-virtual {p4, v0, p1, p2, p3}, Lcom/codemao/midi/javax/ShortMessageCM;->setMessage(IIII)V

    .line 268
    iget-object p3, p0, Lcom/codemao/midi/CMMidiHelper;->recv:Lcom/codemao/midi/javax/Receiver;

    if-nez p3, :cond_1d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1d
    const-wide/16 v0, -0x1

    invoke-interface {p3, p4, v0, v1}, Lcom/codemao/midi/javax/Receiver;->send(Lcom/codemao/midi/javax/CMMidiMessage;J)V

    .line 269
    new-instance p3, Lcom/codemao/midi/CMMidiHelper$playSingleNote$1;

    move-object v2, p3

    move-object v3, p0

    move-wide v4, p5

    move v6, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/codemao/midi/CMMidiHelper$playSingleNote$1;-><init>(Lcom/codemao/midi/CMMidiHelper;JII)V

    invoke-static {p3}, Lcom/codemao/midi/util/MidiThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final stopAll()V
    .registers 9

    .line 204
    iget-object v0, p0, Lcom/codemao/midi/CMMidiHelper;->recv:Lcom/codemao/midi/javax/Receiver;

    if-eqz v0, :cond_40

    const/16 v0, 0x1e

    const/16 v1, 0x1e

    :goto_8
    const-wide/16 v2, -0x1

    const/16 v4, 0x7f

    const/16 v5, 0x80

    const/16 v6, 0x5a

    if-gt v1, v6, :cond_28

    .line 206
    new-instance v6, Lcom/codemao/midi/javax/ShortMessageCM;

    invoke-direct {v6}, Lcom/codemao/midi/javax/ShortMessageCM;-><init>()V

    const/4 v7, 0x1

    .line 207
    invoke-virtual {v6, v5, v7, v1, v4}, Lcom/codemao/midi/javax/ShortMessageCM;->setMessage(IIII)V

    .line 208
    iget-object v4, p0, Lcom/codemao/midi/CMMidiHelper;->recv:Lcom/codemao/midi/javax/Receiver;

    if-nez v4, :cond_22

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_22
    invoke-interface {v4, v6, v2, v3}, Lcom/codemao/midi/javax/Receiver;->send(Lcom/codemao/midi/javax/CMMidiMessage;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_28
    :goto_28
    if-gt v0, v6, :cond_40

    .line 211
    new-instance v1, Lcom/codemao/midi/javax/ShortMessageCM;

    invoke-direct {v1}, Lcom/codemao/midi/javax/ShortMessageCM;-><init>()V

    const/4 v7, 0x0

    .line 212
    invoke-virtual {v1, v5, v7, v0, v4}, Lcom/codemao/midi/javax/ShortMessageCM;->setMessage(IIII)V

    .line 213
    iget-object v7, p0, Lcom/codemao/midi/CMMidiHelper;->recv:Lcom/codemao/midi/javax/Receiver;

    if-nez v7, :cond_3a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3a
    invoke-interface {v7, v1, v2, v3}, Lcom/codemao/midi/javax/Receiver;->send(Lcom/codemao/midi/javax/CMMidiMessage;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 217
    :cond_40
    iget-object v0, p0, Lcom/codemao/midi/CMMidiHelper;->sequencers:Ljava/util/HashMap;

    if-eqz v0, :cond_7b

    if-nez v0, :cond_49

    .line 218
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_49
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_51
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 219
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/midi/javax/Sequencer;

    invoke-interface {v2}, Lcom/codemao/midi/javax/Sequencer;->stop()V

    .line 220
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/midi/javax/Sequencer;

    invoke-interface {v1}, Lcom/codemao/midi/javax/MidiDevice;->close()V

    goto :goto_51

    .line 222
    :cond_70
    iget-object v0, p0, Lcom/codemao/midi/CMMidiHelper;->sequencers:Ljava/util/HashMap;

    if-nez v0, :cond_77

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_77
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_82

    .line 224
    :cond_7b
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/CMMidiHelper;->sequencers:Ljava/util/HashMap;

    :goto_82
    return-void
.end method
