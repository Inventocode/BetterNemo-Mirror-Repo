.class public final Lcom/codemao/midi/view/midiview/MidiModelConvertTools;
.super Ljava/lang/Object;
.source "MidiModelConvertTools.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMidiModelConvertTools.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MidiModelConvertTools.kt\ncom/codemao/midi/view/midiview/MidiModelConvertTools\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,693:1\n1657#2,3:694\n1657#2,3:697\n1657#2,3:700\n*E\n*S KotlinDebug\n*F\n+ 1 MidiModelConvertTools.kt\ncom/codemao/midi/view/midiview/MidiModelConvertTools\n*L\n302#1,3:694\n337#1,3:697\n354#1,3:700\n*E\n"
.end annotation


# instance fields
.field private final ACTIVATING_COLLOR_1:I

.field private final ACTIVATING_COLLOR_2:I

.field private final ACTIVATING_COLLOR_3:I

.field private final ACTIVATING_COLLOR_4:I

.field private final ACTIVATING_COLLOR_5:I

.field private final ACTIVATING_COLLOR_6:I

.field private final ACTIVATING_COLLOR_7:I

.field private final COLLOR_1:I

.field private final COLLOR_2:I

.field private final COLLOR_3:I

.field private final COLLOR_4:I

.field private final COLLOR_5:I

.field private final COLLOR_6:I

.field private final COLLOR_7:I

.field private final difficultScales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final difficultSheetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/codemao/midi/view/midiview/NoteModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final midiView:Lcom/codemao/midi/view/midiview/MidiView;

.field private final noteCacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/codemao/midi/view/midiview/NoteModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final noteRectBackGroundColor:I

.field private final noteRectBackGroundColorLight:I

.field private final sheetIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/codemao/midi/view/midiview/MidiView;)V
    .registers 3

    const-string v0, "midiView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->midiView:Lcom/codemao/midi/view/midiview/MidiView;

    const-string p1, "#FF81F6"

    .line 16
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->COLLOR_7:I

    const-string p1, "#C172FF"

    .line 17
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->COLLOR_6:I

    const-string p1, "#508BFF"

    .line 18
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->COLLOR_5:I

    const-string p1, "#40C4D9"

    .line 19
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->COLLOR_4:I

    const-string p1, "#64D96E"

    .line 20
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->COLLOR_3:I

    const-string p1, "#FFB35A"

    .line 21
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->COLLOR_2:I

    const-string p1, "#FF6363"

    .line 22
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->COLLOR_1:I

    const-string p1, "#F5AEF6"

    .line 24
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->ACTIVATING_COLLOR_7:I

    const-string p1, "#C99FF8"

    .line 25
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->ACTIVATING_COLLOR_6:I

    const-string p1, "#9DC4FF"

    .line 26
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->ACTIVATING_COLLOR_5:I

    const-string p1, "#99EAF6"

    .line 27
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->ACTIVATING_COLLOR_4:I

    const-string p1, "#B5F6A0"

    .line 28
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->ACTIVATING_COLLOR_3:I

    const-string p1, "#FFCE95"

    .line 29
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->ACTIVATING_COLLOR_2:I

    const-string p1, "#FF9696"

    .line 30
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->ACTIVATING_COLLOR_1:I

    const-string p1, "#56239D"

    .line 32
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->noteRectBackGroundColorLight:I

    const-string p1, "#4B1B8C"

    .line 33
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->noteRectBackGroundColor:I

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->difficultSheetList:Ljava/util/List;

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->difficultScales:Ljava/util/List;

    .line 37
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->sheetIndexMap:Ljava/util/Map;

    .line 38
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->noteCacheMap:Ljava/util/Map;

    return-void
.end method

.method public static synthetic checkPlayRange$default(Lcom/codemao/midi/view/midiview/MidiModelConvertTools;ZFFILjava/lang/Object;)Z
    .registers 8

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x1

    if-eqz p5, :cond_6

    const/4 p1, 0x1

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_12

    .line 463
    iget-object p2, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->midiView:Lcom/codemao/midi/view/midiview/MidiView;

    const/4 p5, 0x0

    const/4 v1, 0x0

    invoke-static {p2, p5, v0, v1}, Lcom/codemao/midi/view/midiview/MidiView;->calcPlayLineX$default(Lcom/codemao/midi/view/midiview/MidiView;ZILjava/lang/Object;)F

    move-result p2

    :cond_12
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1c

    .line 464
    iget-object p3, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->midiView:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {p3}, Lcom/codemao/midi/view/midiview/MidiView;->getContentWidth()F

    move-result p3

    :cond_1c
    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->checkPlayRange(ZFF)Z

    move-result p0

    return p0
.end method

.method public static synthetic convertWithRange$default(Lcom/codemao/midi/view/midiview/MidiModelConvertTools;Lcom/codemao/midi/bean/MidiSettingInfo;JJZZILjava/lang/Object;)Lcom/codemao/midi/javax/CMMidiFile;
    .registers 20

    and-int/lit8 v0, p8, 0x8

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    const/4 v8, 0x1

    goto :goto_9

    :cond_7
    move/from16 v8, p6

    :goto_9
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_f

    const/4 v9, 0x1

    goto :goto_11

    :cond_f
    move/from16 v9, p7

    :goto_11
    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 506
    invoke-virtual/range {v2 .. v9}, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->convertWithRange(Lcom/codemao/midi/bean/MidiSettingInfo;JJZZ)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object v0

    return-object v0
.end method

.method private final upDateAllNoteModelState(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/codemao/midi/view/midiview/NoteModel;",
            ">;>;)V"
        }
    .end annotation

    .line 1658
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-gez v0, :cond_16

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_16
    check-cast v1, Ljava/util/List;

    .line 355
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/midi/view/midiview/NoteModel;

    .line 356
    invoke-virtual {v3, v0}, Lcom/codemao/midi/view/midiview/NoteModel;->setPreSheetIndex(I)V

    .line 357
    iget-object v4, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->midiView:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {v3}, Lcom/codemao/midi/view/midiview/NoteModel;->getTickStart()I

    move-result v5

    invoke-virtual {v3}, Lcom/codemao/midi/view/midiview/NoteModel;->getTickEnd()I

    move-result v6

    invoke-virtual {v4, v3, v5, v6, v0}, Lcom/codemao/midi/view/midiview/MidiView;->upDateRect(Lcom/codemao/midi/view/midiview/NoteModel;III)V

    goto :goto_1c

    :cond_39
    move v0, v2

    goto :goto_5

    :cond_3b
    return-void
.end method

.method private final upDateDifficultSheetList()V
    .registers 4

    .line 343
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->midiView:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {v0}, Lcom/codemao/midi/view/midiview/MidiView;->getSheetList()Ljava/util/List;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->difficultSheetList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 345
    iget-object v1, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->difficultSheetList:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    iget-object v1, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->difficultSheetList:Ljava/util/List;

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object v1, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->difficultSheetList:Ljava/util/List;

    const/16 v2, 0x8

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v1, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->difficultSheetList:Ljava/util/List;

    const/16 v2, 0xb

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    iget-object v1, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->difficultSheetList:Ljava/util/List;

    const/16 v2, 0xf

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    iget-object v1, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->difficultSheetList:Ljava/util/List;

    const/16 v2, 0x12

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final buildAccompanyMidiFile(I)Lcom/codemao/midi/javax/CMMidiFile;
    .registers 5

    const/4 v0, 0x0

    if-gtz p1, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x1

    const-string v2, "midiView.context"

    if-ne p1, v1, :cond_29

    .line 414
    sget-object p1, Lcom/codemao/midi/CMMidiHelper;->Companion:Lcom/codemao/midi/CMMidiHelper$Companion;

    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->midiView:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/codemao/midi/R$raw;->midi_fangke:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/midi/CMMidiHelper$Companion;->parseMidiFile(Ljava/io/InputStream;)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object v0

    if-nez v0, :cond_d3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    goto/16 :goto_d3

    :cond_29
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4c

    .line 417
    sget-object p1, Lcom/codemao/midi/CMMidiHelper;->Companion:Lcom/codemao/midi/CMMidiHelper$Companion;

    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->midiView:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/codemao/midi/R$raw;->midi_jueshi:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/midi/CMMidiHelper$Companion;->parseMidiFile(Ljava/io/InputStream;)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object v0

    if-nez v0, :cond_d3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    goto/16 :goto_d3

    :cond_4c
    const/4 v1, 0x3

    if-ne p1, v1, :cond_6e

    .line 420
    sget-object p1, Lcom/codemao/midi/CMMidiHelper;->Companion:Lcom/codemao/midi/CMMidiHelper$Companion;

    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->midiView:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/codemao/midi/R$raw;->midi_lading:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/midi/CMMidiHelper$Companion;->parseMidiFile(Ljava/io/InputStream;)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object v0

    if-nez v0, :cond_d3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    goto :goto_d3

    :cond_6e
    const/4 v1, 0x4

    if-ne p1, v1, :cond_90

    .line 423
    sget-object p1, Lcom/codemao/midi/CMMidiHelper;->Companion:Lcom/codemao/midi/CMMidiHelper$Companion;

    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->midiView:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/codemao/midi/R$raw;->midi_wuqu:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/midi/CMMidiHelper$Companion;->parseMidiFile(Ljava/io/InputStream;)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object v0

    if-nez v0, :cond_d3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    goto :goto_d3

    :cond_90
    const/4 v1, 0x5

    if-ne p1, v1, :cond_b2

    .line 426
    sget-object p1, Lcom/codemao/midi/CMMidiHelper;->Companion:Lcom/codemao/midi/CMMidiHelper$Companion;

    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->midiView:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/codemao/midi/R$raw;->midi_xiha:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/midi/CMMidiHelper$Companion;->parseMidiFile(Ljava/io/InputStream;)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object v0

    if-nez v0, :cond_d3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    goto :goto_d3

    :cond_b2
    const/4 v1, 0x6

    if-ne p1, v1, :cond_d3

    .line 429
    sget-object p1, Lcom/codemao/midi/CMMidiHelper;->Companion:Lcom/codemao/midi/CMMidiHelper$Companion;

    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->midiView:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/codemao/midi/R$raw;->midi_yaogun:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/midi/CMMidiHelper$Companion;->parseMidiFile(Ljava/io/InputStream;)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object v0

    if-nez v0, :cond_d3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_d3
    :goto_d3
    return-object v0
.end method

.method public final buildAccompanyTrack(Lcom/codemao/midi/javax/CMMidiFile;JLcom/codemao/midi/bean/MidiSettingInfo;)Lcom/codemao/midi/javax/CMMidiTrack;
    .registers 8

    const-string v0, "accompanyMidiFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "midiSettingInfo"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 620
    sget-object v0, Lcom/codemao/midi/CMMidiHelper;->Companion:Lcom/codemao/midi/CMMidiHelper$Companion;

    invoke-virtual {v0}, Lcom/codemao/midi/CMMidiHelper$Companion;->getInstance()Lcom/codemao/midi/CMMidiHelper;

    move-result-object v0

    .line 621
    invoke-virtual {p1}, Lcom/codemao/midi/javax/CMMidiFile;->getCMMidiTracks()[Lcom/codemao/midi/javax/CMMidiTrack;

    move-result-object p1

    const/4 v1, 0x0

    aget-object p1, p1, v1

    const-string v2, "accompanyMidiFile.cmMidiTracks[0]"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 622
    invoke-virtual {p4}, Lcom/codemao/midi/bean/MidiSettingInfo;->getAccompanyIndex()I

    move-result v2

    .line 620
    invoke-virtual {v0, p1, p2, p3, v2}, Lcom/codemao/midi/CMMidiHelper;->getAccompanyTrack(Lcom/codemao/midi/javax/CMMidiTrack;JI)Lcom/codemao/midi/javax/CMMidiTrack;

    move-result-object p1

    .line 624
    invoke-virtual {p4}, Lcom/codemao/midi/bean/MidiSettingInfo;->getBeat()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/codemao/midi/javax/CMMidiTrack;->insertTempo(I)Lcom/codemao/midi/javax/CMMidiTrack;

    move-result-object p2

    .line 625
    invoke-virtual {p2}, Lcom/codemao/midi/javax/CMMidiTrack;->insertDefaultTimeSignature()Lcom/codemao/midi/javax/CMMidiTrack;

    move-result-object p2

    .line 627
    invoke-virtual {p4}, Lcom/codemao/midi/bean/MidiSettingInfo;->getAccompanyIndex()I

    move-result p3

    .line 628
    invoke-virtual {p4}, Lcom/codemao/midi/bean/MidiSettingInfo;->getAccompany()Lcom/codemao/midi/bean/InstrumentInfo;

    move-result-object v0

    const-string v2, "midiSettingInfo.accompany"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/codemao/midi/bean/InstrumentInfo;->getProgram()I

    move-result v0

    .line 626
    invoke-virtual {p2, p3, v0}, Lcom/codemao/midi/javax/CMMidiTrack;->insertChangeProgram(II)Lcom/codemao/midi/javax/CMMidiTrack;

    move-result-object p2

    .line 631
    invoke-virtual {p4}, Lcom/codemao/midi/bean/MidiSettingInfo;->getAccompanyIndex()I

    move-result p3

    .line 632
    invoke-virtual {p4}, Lcom/codemao/midi/bean/MidiSettingInfo;->getAccompany()Lcom/codemao/midi/bean/InstrumentInfo;

    move-result-object p4

    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/codemao/midi/bean/InstrumentInfo;->getMsb()I

    move-result p4

    .line 630
    invoke-virtual {p2, p3, p4, v1}, Lcom/codemao/midi/javax/CMMidiTrack;->insertChangeMsbAndLsb(III)Lcom/codemao/midi/javax/CMMidiTrack;

    move-result-object p2

    .line 635
    invoke-virtual {p2}, Lcom/codemao/midi/javax/CMMidiTrack;->trackEnd()V

    return-object p1
.end method

.method public final buildMidiWithAccompany(Lcom/codemao/midi/bean/MidiSettingInfo;JLcom/codemao/midi/javax/CMMidiFile;)V
    .registers 6

    const-string v0, "midiSettingInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cmMidiFile"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 606
    invoke-virtual {p1}, Lcom/codemao/midi/bean/MidiSettingInfo;->getAccompanyIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->buildAccompanyMidiFile(I)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 609
    invoke-virtual {p0, v0, p2, p3, p1}, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->buildAccompanyTrack(Lcom/codemao/midi/javax/CMMidiFile;JLcom/codemao/midi/bean/MidiSettingInfo;)Lcom/codemao/midi/javax/CMMidiTrack;

    move-result-object p1

    .line 610
    invoke-virtual {p4, p1}, Lcom/codemao/midi/javax/CMMidiFile;->addTrack(Lcom/codemao/midi/javax/CMMidiTrack;)V

    :cond_1b
    return-void
.end method

.method public final calcMidiViewMaxTick()J
    .registers 5

    .line 593
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->midiView:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {v0}, Lcom/codemao/midi/view/midiview/MidiView;->getMaxTickCount()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xf0

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public final calcPlayLineLeftTick()J
    .registers 6

    .line 582
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->midiView:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {v0}, Lcom/codemao/midi/view/midiview/MidiView;->getOffsetMoveX()F

    move-result v0

    iget-object v1, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->midiView:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {v1}, Lcom/codemao/midi/view/midiview/MidiView;->getItemDecorationWidth()F

    move-result v1

    const/4 v2, 0x3

    int-to-float v2, v2

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->midiView:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {v1}, Lcom/codemao/midi/view/midiview/MidiView;->getItemWidth()F

    move-result v1

    div-float/2addr v0, v1

    const/16 v1, 0xf0

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_25

    move-wide v0, v2

    :cond_25
    return-wide v0
.end method

.method public final changeMode(I)V
    .registers 11

    .line 310
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->midiView:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {v0}, Lcom/codemao/midi/view/midiview/MidiView;->getSheetList()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x12

    const/16 v2, 0xf

    const/16 v3, 0xb

    const/16 v4, 0x8

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne p1, v7, :cond_35

    .line 312
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/16 v8, 0x10

    if-ne p1, v8, :cond_1c

    return-void

    .line 315
    :cond_1c
    invoke-direct {p0}, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->upDateDifficultSheetList()V

    .line 316
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 317
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 318
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 319
    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 320
    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 321
    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 322
    invoke-direct {p0, v0}, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->upDateAllNoteModelState(Ljava/util/List;)V

    goto :goto_7a

    .line 324
    :cond_35
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/16 v8, 0x16

    if-ne p1, v8, :cond_3e

    return-void

    .line 327
    :cond_3e
    iget-object p1, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->difficultSheetList:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v7, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 328
    iget-object p1, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->difficultSheetList:Ljava/util/List;

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v5, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 329
    iget-object p1, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->difficultSheetList:Ljava/util/List;

    const/4 v7, 0x2

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 330
    iget-object p1, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->difficultSheetList:Ljava/util/List;

    const/4 v4, 0x3

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 331
    iget-object p1, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->difficultSheetList:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 332
    iget-object p1, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->difficultSheetList:Ljava/util/List;

    const/4 v2, 0x5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 333
    invoke-direct {p0, v0}, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->upDateAllNoteModelState(Ljava/util/List;)V

    .line 335
    :goto_7a
    iget-object p1, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->midiView:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {p1}, Lcom/codemao/midi/view/midiview/MidiView;->removeEmptyNoteModel()V

    .line 336
    iget-object p1, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->sheetIndexMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 1658
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_89
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-gez v0, :cond_9a

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_9a
    check-cast v1, Ljava/util/List;

    .line 338
    iget-object v3, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->sheetIndexMap:Ljava/util/Map;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/midi/view/midiview/NoteModel;

    invoke-virtual {v1}, Lcom/codemao/midi/view/midiview/NoteModel;->getNoteType()Lcom/codemao/midi/view/midiview/NoteType;

    move-result-object v1

    if-eqz v1, :cond_b3

    invoke-virtual {v1}, Lcom/codemao/midi/view/midiview/NoteType;->getNoteCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_b4

    :cond_b3
    const/4 v1, 0x0

    :goto_b4
    if-nez v1, :cond_b9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    goto :goto_89

    :cond_c2
    return-void
.end method

.method public final checkPlayRange(ZFF)Z
    .registers 9

    .line 466
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->midiView:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {v0}, Lcom/codemao/midi/view/midiview/MidiView;->getSheetList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 467
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/midi/view/midiview/NoteModel;

    .line 468
    invoke-virtual {v2}, Lcom/codemao/midi/view/midiview/NoteModel;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    if-nez v3, :cond_2d

    goto :goto_1a

    :cond_2d
    const/4 v3, 0x1

    if-eqz p1, :cond_4f

    .line 472
    invoke-virtual {v2}, Lcom/codemao/midi/view/midiview/NoteModel;->getRect()Landroid/graphics/RectF;

    move-result-object v4

    if-nez v4, :cond_39

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_39
    iget v4, v4, Landroid/graphics/RectF;->left:F

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_1a

    invoke-virtual {v2}, Lcom/codemao/midi/view/midiview/NoteModel;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    if-nez v2, :cond_48

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_48
    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_1a

    return v3

    .line 478
    :cond_4f
    invoke-virtual {v2}, Lcom/codemao/midi/view/midiview/NoteModel;->getRect()Landroid/graphics/RectF;

    move-result-object v4

    if-nez v4, :cond_58

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_58
    iget v4, v4, Landroid/graphics/RectF;->right:F

    cmpg-float v4, v4, p2

    if-gtz v4, :cond_5f

    goto :goto_1a

    .line 480
    :cond_5f
    invoke-virtual {v2}, Lcom/codemao/midi/view/midiview/NoteModel;->getRect()Landroid/graphics/RectF;

    move-result-object p1

    if-nez p1, :cond_68

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_68
    iget p1, p1, Landroid/graphics/RectF;->left:F

    return v3

    :cond_6b
    const/4 p1, 0x0

    return p1
.end method

.method public final checkRangeMidiSource(JJ)Z
    .registers 14

    .line 442
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->midiView:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {v0}, Lcom/codemao/midi/view/midiview/MidiView;->getSheetList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 443
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/midi/view/midiview/NoteModel;

    .line 444
    invoke-virtual {v2}, Lcom/codemao/midi/view/midiview/NoteModel;->getTickStart()I

    move-result v3

    if-ltz v3, :cond_1a

    invoke-virtual {v2}, Lcom/codemao/midi/view/midiview/NoteModel;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 445
    invoke-virtual {v2}, Lcom/codemao/midi/view/midiview/NoteModel;->getTickStart()I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0xf0

    mul-long v3, v3, v5

    .line 446
    invoke-virtual {v2}, Lcom/codemao/midi/view/midiview/NoteModel;->getTickEnd()I

    move-result v2

    int-to-long v7, v2

    mul-long v7, v7, v5

    const-wide/16 v5, 0x1

    add-long/2addr v5, p1

    cmp-long v2, v5, v3

    if-gtz v2, :cond_4d

    cmp-long v2, p3, v3

    if-gez v2, :cond_56

    :cond_4d
    cmp-long v2, v5, v7

    if-lez v2, :cond_52

    goto :goto_1a

    :cond_52
    cmp-long v2, p3, v7

    if-ltz v2, :cond_1a

    :cond_56
    const/4 p1, 0x1

    return p1

    :cond_58
    const/4 p1, 0x0

    return p1
.end method

.method public final convert(Lcom/codemao/midi/bean/MidiSettingInfo;)Lcom/codemao/midi/javax/CMMidiFile;
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "midiSettingInfo"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    new-instance v2, Lcom/codemao/midi/javax/CMMidiFile;

    const/4 v3, 0x0

    const/16 v4, 0x1e0

    invoke-direct {v2, v3, v4}, Lcom/codemao/midi/javax/CMMidiFile;-><init>(FI)V

    .line 364
    invoke-virtual {v2}, Lcom/codemao/midi/javax/CMMidiFile;->createAndAddTrack()Lcom/codemao/midi/javax/CMMidiTrack;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/codemao/midi/bean/MidiSettingInfo;->getBeat()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/codemao/midi/javax/CMMidiTrack;->insertTempo(I)Lcom/codemao/midi/javax/CMMidiTrack;

    move-result-object v3

    .line 365
    invoke-virtual {v3}, Lcom/codemao/midi/javax/CMMidiTrack;->insertDefaultTimeSignature()Lcom/codemao/midi/javax/CMMidiTrack;

    move-result-object v3

    .line 366
    invoke-virtual/range {p1 .. p1}, Lcom/codemao/midi/bean/MidiSettingInfo;->getInstrument()Lcom/codemao/midi/bean/InstrumentInfo;

    move-result-object v4

    const-string v5, "midiSettingInfo.instrument"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/codemao/midi/bean/InstrumentInfo;->getProgram()I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v4}, Lcom/codemao/midi/javax/CMMidiTrack;->insertChangeProgram(II)Lcom/codemao/midi/javax/CMMidiTrack;

    move-result-object v3

    .line 367
    invoke-virtual/range {p1 .. p1}, Lcom/codemao/midi/bean/MidiSettingInfo;->getInstrument()Lcom/codemao/midi/bean/InstrumentInfo;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/codemao/midi/bean/InstrumentInfo;->getMsb()I

    move-result v4

    invoke-virtual {v3, v6, v4, v6}, Lcom/codemao/midi/javax/CMMidiTrack;->insertChangeMsbAndLsb(III)Lcom/codemao/midi/javax/CMMidiTrack;

    move-result-object v3

    .line 369
    iget-object v4, v0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->midiView:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {v4}, Lcom/codemao/midi/view/midiview/MidiView;->getSheetList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide/16 v15, 0x0

    move-wide/from16 v17, v15

    :cond_50
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ad

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 370
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/codemao/midi/view/midiview/NoteModel;

    invoke-virtual {v7}, Lcom/codemao/midi/view/midiview/NoteModel;->getNoteType()Lcom/codemao/midi/view/midiview/NoteType;

    move-result-object v7

    if-eqz v7, :cond_6f

    invoke-virtual {v7}, Lcom/codemao/midi/view/midiview/NoteType;->getNoteCode()I

    move-result v7

    move/from16 v19, v7

    goto :goto_71

    :cond_6f
    const/16 v19, 0x0

    .line 371
    :goto_71
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_75
    :goto_75
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_50

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/codemao/midi/view/midiview/NoteModel;

    .line 372
    invoke-virtual {v7}, Lcom/codemao/midi/view/midiview/NoteModel;->getTickStart()I

    move-result v8

    if-ltz v8, :cond_75

    invoke-virtual {v7}, Lcom/codemao/midi/view/midiview/NoteModel;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_75

    .line 373
    invoke-virtual {v7}, Lcom/codemao/midi/view/midiview/NoteModel;->getTickStart()I

    move-result v8

    mul-int/lit16 v8, v8, 0xf0

    int-to-long v11, v8

    .line 374
    invoke-virtual {v7}, Lcom/codemao/midi/view/midiview/NoteModel;->getTickEnd()I

    move-result v7

    mul-int/lit16 v7, v7, 0xf0

    int-to-long v7, v7

    sub-long v13, v7, v11

    cmp-long v9, v7, v17

    if-lez v9, :cond_a3

    move-wide/from16 v17, v7

    :cond_a3
    const/4 v8, 0x0

    const/16 v10, 0x7f

    move-object v7, v3

    move/from16 v9, v19

    .line 379
    invoke-virtual/range {v7 .. v14}, Lcom/codemao/midi/javax/CMMidiTrack;->insertNote(IIIJJ)Lcom/codemao/midi/javax/CMMidiTrack;

    goto :goto_75

    :cond_ad
    const-wide/16 v4, 0x780

    .line 383
    rem-long v6, v17, v4

    cmp-long v8, v6, v15

    if-eqz v8, :cond_c1

    sub-long v15, v4, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, v3

    move-wide/from16 v11, v17

    move-wide v13, v15

    .line 387
    invoke-virtual/range {v7 .. v14}, Lcom/codemao/midi/javax/CMMidiTrack;->insertNote(IIIJJ)Lcom/codemao/midi/javax/CMMidiTrack;

    .line 389
    :cond_c1
    invoke-virtual {v3}, Lcom/codemao/midi/javax/CMMidiTrack;->trackEnd()V

    add-long v3, v17, v15

    .line 391
    invoke-virtual {v2, v3, v4}, Lcom/codemao/midi/javax/CMMidiFile;->setCalcTickLength(J)V

    .line 393
    invoke-virtual/range {p1 .. p1}, Lcom/codemao/midi/bean/MidiSettingInfo;->getAccompanyIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->buildAccompanyMidiFile(I)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object v3

    if-eqz v3, :cond_de

    .line 396
    invoke-virtual {v2}, Lcom/codemao/midi/javax/CMMidiFile;->getCalcTickLength()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->buildAccompanyTrack(Lcom/codemao/midi/javax/CMMidiFile;JLcom/codemao/midi/bean/MidiSettingInfo;)Lcom/codemao/midi/javax/CMMidiTrack;

    move-result-object v1

    .line 397
    invoke-virtual {v2, v1}, Lcom/codemao/midi/javax/CMMidiFile;->addTrack(Lcom/codemao/midi/javax/CMMidiTrack;)V

    :cond_de
    return-object v2
.end method

.method public final convertMidiFile(Lcom/codemao/midi/javax/CMMidiFile;)Lcom/codemao/midi/bean/MidiSettingInfo;
    .registers 27

    move-object/from16 v0, p0

    const-string v1, "cmMidiFile"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 640
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->initSheetList()V

    .line 641
    new-instance v1, Lcom/codemao/midi/bean/MidiSettingInfo;

    invoke-direct {v1}, Lcom/codemao/midi/bean/MidiSettingInfo;-><init>()V

    .line 642
    invoke-virtual/range {p1 .. p1}, Lcom/codemao/midi/javax/CMMidiFile;->getCMMidiTracks()[Lcom/codemao/midi/javax/CMMidiTrack;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    if-eqz v3, :cond_1f

    invoke-virtual {v3}, Lcom/codemao/midi/javax/CMMidiTrack;->getTrackTempo()I

    move-result v3

    goto :goto_22

    :cond_1f
    const v3, 0x7a120

    :goto_22
    const v5, 0x3938700

    .line 643
    div-int/2addr v5, v3

    .line 644
    invoke-virtual {v1, v5}, Lcom/codemao/midi/bean/MidiSettingInfo;->setBeat(I)V

    .line 645
    invoke-virtual/range {p1 .. p1}, Lcom/codemao/midi/javax/CMMidiFile;->getCMMidiTracks()[Lcom/codemao/midi/javax/CMMidiTrack;

    move-result-object v2

    array-length v3, v2

    const/4 v5, 0x0

    :goto_2f
    if-ge v5, v3, :cond_1a6

    aget-object v6, v2, v5

    const-string v7, "cmMidiTrack"

    .line 646
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/codemao/midi/javax/CMMidiTrack;->getTrackProgram()[I

    move-result-object v7

    .line 647
    aget v8, v7, v4

    const/4 v9, 0x1

    aget v10, v7, v9

    invoke-static {v8, v10}, Lcom/codemao/midi/bean/MidiSettingInfo;->isMainTrack(II)Z

    move-result v8

    const-string v10, "cmMidiEvent.message"

    const-string v11, "cmMidiEvent"

    if-eqz v8, :cond_16b

    .line 648
    new-instance v8, Lcom/codemao/midi/bean/InstrumentInfo;

    aget v12, v7, v4

    aget v7, v7, v9

    invoke-direct {v8, v12, v7}, Lcom/codemao/midi/bean/InstrumentInfo;-><init>(II)V

    invoke-virtual {v1, v8}, Lcom/codemao/midi/bean/MidiSettingInfo;->setInstrument(Lcom/codemao/midi/bean/InstrumentInfo;)V

    .line 649
    invoke-virtual {v6}, Lcom/codemao/midi/javax/CMMidiTrack;->getEvents()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5f
    :goto_5f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1a2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/codemao/midi/javax/CMMidiEvent;

    .line 650
    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/codemao/midi/javax/CMMidiEvent;->getTick()J

    move-result-wide v8

    .line 651
    invoke-virtual {v7}, Lcom/codemao/midi/javax/CMMidiEvent;->getMessage()Lcom/codemao/midi/javax/CMMidiMessage;

    move-result-object v7

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 652
    instance-of v12, v7, Lcom/codemao/midi/javax/ShortMessageCM;

    if-eqz v12, :cond_5f

    .line 653
    check-cast v7, Lcom/codemao/midi/javax/ShortMessageCM;

    invoke-virtual {v7}, Lcom/codemao/midi/javax/ShortMessageCM;->getCommand()I

    move-result v12

    const/16 v13, 0x90

    if-ne v12, v13, :cond_120

    .line 655
    invoke-virtual {v7}, Lcom/codemao/midi/javax/ShortMessageCM;->getData1()I

    move-result v7

    .line 656
    iget-object v12, v0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->difficultScales:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9b

    const/4 v12, 0x2

    .line 657
    invoke-virtual {v1, v12}, Lcom/codemao/midi/bean/MidiSettingInfo;->setMode(I)V

    .line 659
    :cond_9b
    iget-object v12, v0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->sheetIndexMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_5f

    .line 660
    new-instance v12, Lcom/codemao/midi/view/midiview/NoteModel;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1ff

    const/16 v24, 0x0

    move-object v13, v12

    invoke-direct/range {v13 .. v24}, Lcom/codemao/midi/view/midiview/NoteModel;-><init>(IIILandroid/graphics/RectF;Lcom/codemao/midi/view/midiview/NoteType;ZIZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    long-to-int v9, v8

    .line 661
    div-int/lit16 v9, v9, 0xf0

    invoke-virtual {v12, v9}, Lcom/codemao/midi/view/midiview/NoteModel;->setTickStart(I)V

    .line 662
    iget-object v8, v0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->midiView:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {v8}, Lcom/codemao/midi/view/midiview/MidiView;->getSheetList()Ljava/util/List;

    move-result-object v8

    iget-object v9, v0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->sheetIndexMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_dc

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_dc
    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    iget-object v8, v0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->noteCacheMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_10d

    .line 664
    iget-object v8, v0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->noteCacheMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_106

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_106
    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5f

    .line 666
    :cond_10d
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 667
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    iget-object v9, v0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->noteCacheMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v9, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5f

    .line 671
    :cond_120
    invoke-virtual {v7}, Lcom/codemao/midi/javax/ShortMessageCM;->getCommand()I

    move-result v12

    const/16 v13, 0x80

    if-ne v12, v13, :cond_5f

    .line 672
    invoke-virtual {v7}, Lcom/codemao/midi/javax/ShortMessageCM;->getData1()I

    move-result v7

    .line 673
    iget-object v12, v0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->noteCacheMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_5f

    .line 674
    iget-object v12, v0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->noteCacheMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_147

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_147
    check-cast v12, Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/codemao/midi/view/midiview/NoteModel;

    long-to-int v9, v8

    div-int/lit16 v9, v9, 0xf0

    invoke-virtual {v12, v9}, Lcom/codemao/midi/view/midiview/NoteModel;->setTickEnd(I)V

    .line 675
    iget-object v8, v0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->noteCacheMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_5f

    invoke-interface {v7, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/codemao/midi/view/midiview/NoteModel;

    goto/16 :goto_5f

    .line 681
    :cond_16b
    new-instance v8, Lcom/codemao/midi/bean/InstrumentInfo;

    aget v12, v7, v4

    aget v7, v7, v9

    invoke-direct {v8, v12, v7}, Lcom/codemao/midi/bean/InstrumentInfo;-><init>(II)V

    invoke-virtual {v1, v8}, Lcom/codemao/midi/bean/MidiSettingInfo;->setAccompany(Lcom/codemao/midi/bean/InstrumentInfo;)V

    .line 682
    invoke-virtual {v6}, Lcom/codemao/midi/javax/CMMidiTrack;->getEvents()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_17f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1a2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/codemao/midi/javax/CMMidiEvent;

    .line 683
    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/codemao/midi/javax/CMMidiEvent;->getMessage()Lcom/codemao/midi/javax/CMMidiMessage;

    move-result-object v7

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 684
    instance-of v8, v7, Lcom/codemao/midi/javax/ShortMessageCM;

    if-eqz v8, :cond_17f

    .line 685
    check-cast v7, Lcom/codemao/midi/javax/ShortMessageCM;

    invoke-virtual {v7}, Lcom/codemao/midi/javax/ShortMessageCM;->getChannel()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/codemao/midi/bean/MidiSettingInfo;->setAccompanyIndex(I)V

    :cond_1a2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2f

    :cond_1a6
    return-object v1
.end method

.method public final convertWithRange(Lcom/codemao/midi/bean/MidiSettingInfo;JJZZ)Lcom/codemao/midi/javax/CMMidiFile;
    .registers 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "midiSettingInfo"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    new-instance v2, Lcom/codemao/midi/javax/CMMidiFile;

    const/4 v3, 0x0

    const/16 v4, 0x1e0

    invoke-direct {v2, v3, v4}, Lcom/codemao/midi/javax/CMMidiFile;-><init>(FI)V

    cmp-long v3, p4, p2

    if-gtz v3, :cond_16

    return-object v2

    .line 514
    :cond_16
    invoke-virtual {v2}, Lcom/codemao/midi/javax/CMMidiFile;->createAndAddTrack()Lcom/codemao/midi/javax/CMMidiTrack;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/codemao/midi/bean/MidiSettingInfo;->getBeat()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/codemao/midi/javax/CMMidiTrack;->insertTempo(I)Lcom/codemao/midi/javax/CMMidiTrack;

    move-result-object v3

    .line 515
    invoke-virtual {v3}, Lcom/codemao/midi/javax/CMMidiTrack;->insertDefaultTimeSignature()Lcom/codemao/midi/javax/CMMidiTrack;

    move-result-object v3

    .line 516
    invoke-virtual/range {p1 .. p1}, Lcom/codemao/midi/bean/MidiSettingInfo;->getInstrument()Lcom/codemao/midi/bean/InstrumentInfo;

    move-result-object v4

    const-string v5, "midiSettingInfo.instrument"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/codemao/midi/bean/InstrumentInfo;->getProgram()I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v4}, Lcom/codemao/midi/javax/CMMidiTrack;->insertChangeProgram(II)Lcom/codemao/midi/javax/CMMidiTrack;

    move-result-object v3

    .line 517
    invoke-virtual/range {p1 .. p1}, Lcom/codemao/midi/bean/MidiSettingInfo;->getInstrument()Lcom/codemao/midi/bean/InstrumentInfo;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/codemao/midi/bean/InstrumentInfo;->getMsb()I

    move-result v4

    invoke-virtual {v3, v6, v4, v6}, Lcom/codemao/midi/javax/CMMidiTrack;->insertChangeMsbAndLsb(III)Lcom/codemao/midi/javax/CMMidiTrack;

    move-result-object v3

    .line 520
    iget-object v4, v0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->midiView:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {v4}, Lcom/codemao/midi/view/midiview/MidiView;->getSheetList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide/16 v15, 0x0

    move-wide v7, v15

    :cond_54
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_118

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 521
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/codemao/midi/view/midiview/NoteModel;

    invoke-virtual {v9}, Lcom/codemao/midi/view/midiview/NoteModel;->getNoteType()Lcom/codemao/midi/view/midiview/NoteType;

    move-result-object v9

    if-eqz v9, :cond_73

    invoke-virtual {v9}, Lcom/codemao/midi/view/midiview/NoteType;->getNoteCode()I

    move-result v9

    move/from16 v17, v9

    goto :goto_75

    :cond_73
    const/16 v17, 0x0

    .line 522
    :goto_75
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_79
    :goto_79
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_54

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/codemao/midi/view/midiview/NoteModel;

    .line 523
    invoke-virtual {v9}, Lcom/codemao/midi/view/midiview/NoteModel;->getTickStart()I

    move-result v10

    if-ltz v10, :cond_79

    invoke-virtual {v9}, Lcom/codemao/midi/view/midiview/NoteModel;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_79

    .line 525
    invoke-virtual {v9}, Lcom/codemao/midi/view/midiview/NoteModel;->getTickStart()I

    move-result v10

    mul-int/lit16 v10, v10, 0xf0

    int-to-long v10, v10

    .line 526
    invoke-virtual {v9}, Lcom/codemao/midi/view/midiview/NoteModel;->getTickEnd()I

    move-result v9

    mul-int/lit16 v9, v9, 0xf0

    int-to-long v12, v9

    sub-long v18, v12, v10

    cmp-long v9, v12, v7

    if-lez v9, :cond_a6

    move-wide v7, v12

    :cond_a6
    cmp-long v9, v7, p4

    if-lez v9, :cond_ad

    move-wide/from16 v20, p4

    goto :goto_af

    :cond_ad
    move-wide/from16 v20, v7

    :goto_af
    if-eqz p6, :cond_c7

    cmp-long v7, v10, p2

    if-ltz v7, :cond_114

    cmp-long v7, v12, p4

    if-gtz v7, :cond_114

    sub-long v11, v10, p2

    const/4 v8, 0x0

    const/16 v10, 0x7f

    move-object v7, v3

    move/from16 v9, v17

    move-wide/from16 v13, v18

    .line 537
    invoke-virtual/range {v7 .. v14}, Lcom/codemao/midi/javax/CMMidiTrack;->insertNote(IIIJJ)Lcom/codemao/midi/javax/CMMidiTrack;

    goto :goto_114

    :cond_c7
    const-wide/16 v7, 0x1

    cmp-long v9, v10, p2

    if-gez v9, :cond_e6

    add-long v22, p2, v7

    cmp-long v14, v22, v12

    if-lez v14, :cond_d4

    goto :goto_e6

    :cond_d4
    cmp-long v14, p4, v12

    if-ltz v14, :cond_e6

    sub-long v13, v12, p2

    const/4 v8, 0x0

    const/16 v10, 0x7f

    const-wide/16 v11, 0x0

    move-object v7, v3

    move/from16 v9, v17

    .line 542
    invoke-virtual/range {v7 .. v14}, Lcom/codemao/midi/javax/CMMidiTrack;->insertNote(IIIJJ)Lcom/codemao/midi/javax/CMMidiTrack;

    goto :goto_114

    :cond_e6
    :goto_e6
    if-ltz v9, :cond_fa

    cmp-long v9, v12, p4

    if-gtz v9, :cond_fa

    sub-long v11, v10, p2

    const/4 v8, 0x0

    const/16 v10, 0x7f

    move-object v7, v3

    move/from16 v9, v17

    move-wide/from16 v13, v18

    .line 545
    invoke-virtual/range {v7 .. v14}, Lcom/codemao/midi/javax/CMMidiTrack;->insertNote(IIIJJ)Lcom/codemao/midi/javax/CMMidiTrack;

    goto :goto_114

    :cond_fa
    add-long/2addr v7, v10

    cmp-long v9, v7, p4

    if-lez v9, :cond_100

    goto :goto_114

    :cond_100
    cmp-long v7, v12, p4

    if-lez v7, :cond_114

    sub-long v12, v10, p2

    sub-long v18, p4, v10

    const/4 v8, 0x0

    const/16 v10, 0x7f

    move-object v7, v3

    move/from16 v9, v17

    move-wide v11, v12

    move-wide/from16 v13, v18

    .line 549
    invoke-virtual/range {v7 .. v14}, Lcom/codemao/midi/javax/CMMidiTrack;->insertNote(IIIJJ)Lcom/codemao/midi/javax/CMMidiTrack;

    :cond_114
    :goto_114
    move-wide/from16 v7, v20

    goto/16 :goto_79

    :cond_118
    const-wide/16 v4, 0x780

    .line 557
    rem-long v9, v7, v4

    cmp-long v6, p2, v15

    if-lez v6, :cond_122

    sub-long v7, v7, p2

    :cond_122
    move-wide/from16 v17, v7

    cmp-long v6, v9, v15

    if-eqz v6, :cond_134

    sub-long v15, v4, v9

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, v3

    move-wide/from16 v11, v17

    move-wide v13, v15

    .line 566
    invoke-virtual/range {v7 .. v14}, Lcom/codemao/midi/javax/CMMidiTrack;->insertNote(IIIJJ)Lcom/codemao/midi/javax/CMMidiTrack;

    .line 568
    :cond_134
    invoke-virtual {v3}, Lcom/codemao/midi/javax/CMMidiTrack;->trackEnd()V

    add-long v3, v17, v15

    .line 569
    invoke-virtual {v2, v3, v4}, Lcom/codemao/midi/javax/CMMidiFile;->setCalcTickLength(J)V

    if-eqz p7, :cond_145

    .line 572
    invoke-virtual {v2}, Lcom/codemao/midi/javax/CMMidiFile;->getCalcTickLength()J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->buildMidiWithAccompany(Lcom/codemao/midi/bean/MidiSettingInfo;JLcom/codemao/midi/javax/CMMidiFile;)V

    :cond_145
    return-object v2
.end method

.method public final getSheetIndexMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->sheetIndexMap:Ljava/util/Map;

    return-object v0
.end method

.method public final initSheetList()V
    .registers 12

    .line 42
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->midiView:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->midiView:Lcom/codemao/midi/view/midiview/MidiView;

    invoke-virtual {v1}, Lcom/codemao/midi/view/midiview/MidiView;->getSheetList()Ljava/util/List;

    move-result-object v7

    .line 44
    invoke-interface {v7}, Ljava/util/List;->clear()V

    const/4 v8, 0x1

    new-array v9, v8, [Lcom/codemao/midi/view/midiview/NoteModel;

    .line 49
    sget v2, Lcom/codemao/midi/R$mipmap;->midi_note_high11:I

    .line 51
    iget v4, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->COLLOR_1:I

    .line 52
    iget v5, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->ACTIVATING_COLLOR_1:I

    .line 53
    iget v6, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->noteRectBackGroundColorLight:I

    const/16 v3, 0x54

    move-object v1, v0

    .line 48
    invoke-static/range {v1 .. v6}, Lcom/codemao/midi/view/midiview/NoteModelKt;->initNoteModel(Landroid/content/Context;IIIII)Lcom/codemao/midi/view/midiview/NoteModel;

    move-result-object v1

    const/4 v10, 0x0

    aput-object v1, v9, v10

    .line 47
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 46
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v9, v8, [Lcom/codemao/midi/view/midiview/NoteModel;

    .line 61
    sget v2, Lcom/codemao/midi/R$mipmap;->midi_note_high7:I

    .line 63
    iget v4, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->COLLOR_7:I

    .line 64
    iget v5, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->ACTIVATING_COLLOR_7:I

    .line 65
    iget v6, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->noteRectBackGroundColor:I

    const/16 v3, 0x53

    move-object v1, v0

    .line 60
    invoke-static/range {v1 .. v6}, Lcom/codemao/midi/view/midiview/NoteModelKt;->initNoteModel(Landroid/content/Context;IIIII)Lcom/codemao/midi/view/midiview/NoteModel;

    move-result-object v1

    aput-object v1, v9, v10

    .line 59
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 58
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v9, v8, [Lcom/codemao/midi/view/midiview/NoteModel;

    .line 72
    sget v2, Lcom/codemao/midi/R$mipmap;->midi_note_high6:I

    .line 74
    iget v4, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->COLLOR_6:I

    .line 75
    iget v5, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->ACTIVATING_COLLOR_6:I

    .line 76
    iget v6, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->noteRectBackGroundColor:I

    const/16 v3, 0x51

    move-object v1, v0

    .line 71
    invoke-static/range {v1 .. v6}, Lcom/codemao/midi/view/midiview/NoteModelKt;->initNoteModel(Landroid/content/Context;IIIII)Lcom/codemao/midi/view/midiview/NoteModel;

    move-result-object v1

    aput-object v1, v9, v10

    .line 70
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 69
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v9, v8, [Lcom/codemao/midi/view/midiview/NoteModel;

    .line 83
    sget v2, Lcom/codemao/midi/R$mipmap;->midi_note_high5:I

    .line 85
    iget v4, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->COLLOR_5:I

    .line 86
    iget v5, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->ACTIVATING_COLLOR_5:I

    .line 87
    iget v6, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->noteRectBackGroundColor:I

    const/16 v3, 0x4f

    move-object v1, v0

    .line 82
    invoke-static/range {v1 .. v6}, Lcom/codemao/midi/view/midiview/NoteModelKt;->initNoteModel(Landroid/content/Context;IIIII)Lcom/codemao/midi/view/midiview/NoteModel;

    move-result-object v1

    aput-object v1, v9, v10

    .line 81
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 80
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v9, v8, [Lcom/codemao/midi/view/midiview/NoteModel;

    .line 94
    sget v2, Lcom/codemao/midi/R$mipmap;->midi_note_high4:I

    .line 96
    iget v4, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->COLLOR_4:I

    .line 97
    iget v5, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->ACTIVATING_COLLOR_4:I

    .line 98
    iget v6, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->noteRectBackGroundColor:I

    const/16 v3, 0x4d

    move-object v1, v0

    .line 93
    invoke-static/range {v1 .. v6}, Lcom/codemao/midi/view/midiview/NoteModelKt;->initNoteModel(Landroid/content/Context;IIIII)Lcom/codemao/midi/view/midiview/NoteModel;

    move-result-object v1

    aput-object v1, v9, v10

    .line 92
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 91
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v9, v8, [Lcom/codemao/midi/view/midiview/NoteModel;

    .line 105
    sget v2, Lcom/codemao/midi/R$mipmap;->midi_note_high3:I

    .line 107
    iget v4, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->COLLOR_3:I

    .line 108
    iget v5, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->ACTIVATING_COLLOR_3:I

    .line 109
    iget v6, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->noteRectBackGroundColor:I

    const/16 v3, 0x4c

    move-object v1, v0

    .line 104
    invoke-static/range {v1 .. v6}, Lcom/codemao/midi/view/midiview/NoteModelKt;->initNoteModel(Landroid/content/Context;IIIII)Lcom/codemao/midi/view/midiview/NoteModel;

    move-result-object v1

    aput-object v1, v9, v10

    .line 103
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 102
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v9, v8, [Lcom/codemao/midi/view/midiview/NoteModel;

    .line 116
    sget v2, Lcom/codemao/midi/R$mipmap;->midi_note_high2:I

    .line 118
    iget v4, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->COLLOR_2:I

    .line 119
    iget v5, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->ACTIVATING_COLLOR_2:I

    .line 120
    iget v6, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->noteRectBackGroundColor:I

    const/16 v3, 0x4a

    move-object v1, v0

    .line 115
    invoke-static/range {v1 .. v6}, Lcom/codemao/midi/view/midiview/NoteModelKt;->initNoteModel(Landroid/content/Context;IIIII)Lcom/codemao/midi/view/midiview/NoteModel;

    move-result-object v1

    aput-object v1, v9, v10

    .line 114
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 113
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v9, v8, [Lcom/codemao/midi/view/midiview/NoteModel;

    .line 127
    sget v2, Lcom/codemao/midi/R$mipmap;->midi_note_high1:I

    .line 129
    iget v4, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->COLLOR_1:I

    .line 130
    iget v5, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->ACTIVATING_COLLOR_1:I

    .line 131
    iget v6, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->noteRectBackGroundColorLight:I

    const/16 v3, 0x48

    move-object v1, v0

    .line 126
    invoke-static/range {v1 .. v6}, Lcom/codemao/midi/view/midiview/NoteModelKt;->initNoteModel(Landroid/content/Context;IIIII)Lcom/codemao/midi/view/midiview/NoteModel;

    move-result-object v1

    aput-object v1, v9, v10

    .line 125
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 124
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v9, v8, [Lcom/codemao/midi/view/midiview/NoteModel;

    .line 139
    sget v2, Lcom/codemao/midi/R$mipmap;->midi_note_mid7:I

    .line 141
    iget v4, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->COLLOR_7:I

    .line 142
    iget v5, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->ACTIVATING_COLLOR_7:I

    .line 143
    iget v6, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->noteRectBackGroundColor:I

    const/16 v3, 0x47

    move-object v1, v0

    .line 138
    invoke-static/range {v1 .. v6}, Lcom/codemao/midi/view/midiview/NoteModelKt;->initNoteModel(Landroid/content/Context;IIIII)Lcom/codemao/midi/view/midiview/NoteModel;

    move-result-object v1

    aput-object v1, v9, v10

    .line 137
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 136
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v9, v8, [Lcom/codemao/midi/view/midiview/NoteModel;

    .line 150
    sget v2, Lcom/codemao/midi/R$mipmap;->midi_note_mid6:I

    .line 152
    iget v4, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->COLLOR_6:I

    .line 153
    iget v5, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->ACTIVATING_COLLOR_6:I

    .line 154
    iget v6, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->noteRectBackGroundColor:I

    const/16 v3, 0x45

    move-object v1, v0

    .line 149
    invoke-static/range {v1 .. v6}, Lcom/codemao/midi/view/midiview/NoteModelKt;->initNoteModel(Landroid/content/Context;IIIII)Lcom/codemao/midi/view/midiview/NoteModel;

    move-result-object v1

    aput-object v1, v9, v10

    .line 148
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 147
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v9, v8, [Lcom/codemao/midi/view/midiview/NoteModel;

    .line 161
    sget v2, Lcom/codemao/midi/R$mipmap;->midi_note_mid5:I

    .line 163
    iget v4, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->COLLOR_5:I

    .line 164
    iget v5, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->ACTIVATING_COLLOR_5:I

    .line 165
    iget v6, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->noteRectBackGroundColor:I

    const/16 v3, 0x43

    move-object v1, v0

    .line 160
    invoke-static/range {v1 .. v6}, Lcom/codemao/midi/view/midiview/NoteModelKt;->initNoteModel(Landroid/content/Context;IIIII)Lcom/codemao/midi/view/midiview/NoteModel;

    move-result-object v1

    aput-object v1, v9, v10

    .line 159
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 158
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v9, v8, [Lcom/codemao/midi/view/midiview/NoteModel;

    .line 172
    sget v2, Lcom/codemao/midi/R$mipmap;->midi_note_mid4:I

    .line 174
    iget v4, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->COLLOR_4:I

    .line 175
    iget v5, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->ACTIVATING_COLLOR_4:I

    .line 176
    iget v6, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->noteRectBackGroundColor:I

    const/16 v3, 0x41

    move-object v1, v0

    .line 171
    invoke-static/range {v1 .. v6}, Lcom/codemao/midi/view/midiview/NoteModelKt;->initNoteModel(Landroid/content/Context;IIIII)Lcom/codemao/midi/view/midiview/NoteModel;

    move-result-object v1

    aput-object v1, v9, v10

    .line 170
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 169
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v9, v8, [Lcom/codemao/midi/view/midiview/NoteModel;

    .line 183
    sget v2, Lcom/codemao/midi/R$mipmap;->midi_note_mid3:I

    .line 185
    iget v4, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->COLLOR_3:I

    .line 186
    iget v5, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->ACTIVATING_COLLOR_3:I

    .line 187
    iget v6, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->noteRectBackGroundColor:I

    const/16 v3, 0x40

    move-object v1, v0

    .line 182
    invoke-static/range {v1 .. v6}, Lcom/codemao/midi/view/midiview/NoteModelKt;->initNoteModel(Landroid/content/Context;IIIII)Lcom/codemao/midi/view/midiview/NoteModel;

    move-result-object v1

    aput-object v1, v9, v10

    .line 181
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 180
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v9, v8, [Lcom/codemao/midi/view/midiview/NoteModel;

    .line 194
    sget v2, Lcom/codemao/midi/R$mipmap;->midi_note_mid2:I

    .line 196
    iget v4, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->COLLOR_2:I

    .line 197
    iget v5, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->ACTIVATING_COLLOR_2:I

    .line 198
    iget v6, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->noteRectBackGroundColor:I

    const/16 v3, 0x3e

    move-object v1, v0

    .line 193
    invoke-static/range {v1 .. v6}, Lcom/codemao/midi/view/midiview/NoteModelKt;->initNoteModel(Landroid/content/Context;IIIII)Lcom/codemao/midi/view/midiview/NoteModel;

    move-result-object v1

    aput-object v1, v9, v10

    .line 192
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 191
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v9, v8, [Lcom/codemao/midi/view/midiview/NoteModel;

    .line 205
    sget v2, Lcom/codemao/midi/R$mipmap;->midi_note_mid1:I

    .line 207
    iget v4, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->COLLOR_1:I

    .line 208
    iget v5, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->ACTIVATING_COLLOR_1:I

    .line 209
    iget v6, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->noteRectBackGroundColorLight:I

    const/16 v3, 0x3c

    move-object v1, v0

    .line 204
    invoke-static/range {v1 .. v6}, Lcom/codemao/midi/view/midiview/NoteModelKt;->initNoteModel(Landroid/content/Context;IIIII)Lcom/codemao/midi/view/midiview/NoteModel;

    move-result-object v1

    aput-object v1, v9, v10

    .line 203
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 202
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v9, v8, [Lcom/codemao/midi/view/midiview/NoteModel;

    .line 217
    sget v2, Lcom/codemao/midi/R$mipmap;->midi_note_low7:I

    .line 219
    iget v4, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->COLLOR_7:I

    .line 220
    iget v5, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->ACTIVATING_COLLOR_7:I

    .line 221
    iget v6, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->noteRectBackGroundColor:I

    const/16 v3, 0x3b

    move-object v1, v0

    .line 216
    invoke-static/range {v1 .. v6}, Lcom/codemao/midi/view/midiview/NoteModelKt;->initNoteModel(Landroid/content/Context;IIIII)Lcom/codemao/midi/view/midiview/NoteModel;

    move-result-object v1

    aput-object v1, v9, v10

    .line 215
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 214
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v9, v8, [Lcom/codemao/midi/view/midiview/NoteModel;

    .line 228
    sget v2, Lcom/codemao/midi/R$mipmap;->midi_note_low6:I

    .line 230
    iget v4, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->COLLOR_6:I

    .line 231
    iget v5, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->ACTIVATING_COLLOR_6:I

    .line 232
    iget v6, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->noteRectBackGroundColor:I

    const/16 v3, 0x39

    move-object v1, v0

    .line 227
    invoke-static/range {v1 .. v6}, Lcom/codemao/midi/view/midiview/NoteModelKt;->initNoteModel(Landroid/content/Context;IIIII)Lcom/codemao/midi/view/midiview/NoteModel;

    move-result-object v1

    aput-object v1, v9, v10

    .line 226
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 225
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v9, v8, [Lcom/codemao/midi/view/midiview/NoteModel;

    .line 239
    sget v2, Lcom/codemao/midi/R$mipmap;->midi_note_low5:I

    .line 241
    iget v4, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->COLLOR_5:I

    .line 242
    iget v5, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->ACTIVATING_COLLOR_5:I

    .line 243
    iget v6, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->noteRectBackGroundColor:I

    const/16 v3, 0x37

    move-object v1, v0

    .line 238
    invoke-static/range {v1 .. v6}, Lcom/codemao/midi/view/midiview/NoteModelKt;->initNoteModel(Landroid/content/Context;IIIII)Lcom/codemao/midi/view/midiview/NoteModel;

    move-result-object v1

    aput-object v1, v9, v10

    .line 237
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 236
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v9, v8, [Lcom/codemao/midi/view/midiview/NoteModel;

    .line 250
    sget v2, Lcom/codemao/midi/R$mipmap;->midi_note_low4:I

    .line 252
    iget v4, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->COLLOR_4:I

    .line 253
    iget v5, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->ACTIVATING_COLLOR_4:I

    .line 254
    iget v6, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->noteRectBackGroundColor:I

    const/16 v3, 0x35

    move-object v1, v0

    .line 249
    invoke-static/range {v1 .. v6}, Lcom/codemao/midi/view/midiview/NoteModelKt;->initNoteModel(Landroid/content/Context;IIIII)Lcom/codemao/midi/view/midiview/NoteModel;

    move-result-object v1

    aput-object v1, v9, v10

    .line 248
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 247
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v9, v8, [Lcom/codemao/midi/view/midiview/NoteModel;

    .line 261
    sget v2, Lcom/codemao/midi/R$mipmap;->midi_note_low3:I

    .line 263
    iget v4, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->COLLOR_3:I

    .line 264
    iget v5, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->ACTIVATING_COLLOR_3:I

    .line 265
    iget v6, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->noteRectBackGroundColor:I

    const/16 v3, 0x34

    move-object v1, v0

    .line 260
    invoke-static/range {v1 .. v6}, Lcom/codemao/midi/view/midiview/NoteModelKt;->initNoteModel(Landroid/content/Context;IIIII)Lcom/codemao/midi/view/midiview/NoteModel;

    move-result-object v1

    aput-object v1, v9, v10

    .line 259
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 258
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v9, v8, [Lcom/codemao/midi/view/midiview/NoteModel;

    .line 272
    sget v2, Lcom/codemao/midi/R$mipmap;->midi_note_low2:I

    .line 274
    iget v4, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->COLLOR_2:I

    .line 275
    iget v5, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->ACTIVATING_COLLOR_2:I

    .line 276
    iget v6, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->noteRectBackGroundColor:I

    const/16 v3, 0x32

    move-object v1, v0

    .line 271
    invoke-static/range {v1 .. v6}, Lcom/codemao/midi/view/midiview/NoteModelKt;->initNoteModel(Landroid/content/Context;IIIII)Lcom/codemao/midi/view/midiview/NoteModel;

    move-result-object v1

    aput-object v1, v9, v10

    .line 270
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 269
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v8, v8, [Lcom/codemao/midi/view/midiview/NoteModel;

    .line 283
    sget v2, Lcom/codemao/midi/R$mipmap;->midi_note_low1:I

    .line 285
    iget v4, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->COLLOR_1:I

    .line 286
    iget v5, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->ACTIVATING_COLLOR_1:I

    .line 287
    iget v6, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->noteRectBackGroundColorLight:I

    const/16 v3, 0x30

    move-object v1, v0

    .line 282
    invoke-static/range {v1 .. v6}, Lcom/codemao/midi/view/midiview/NoteModelKt;->initNoteModel(Landroid/content/Context;IIIII)Lcom/codemao/midi/view/midiview/NoteModel;

    move-result-object v0

    aput-object v0, v8, v10

    .line 281
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 280
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->difficultScales:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 293
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->difficultScales:Ljava/util/List;

    const-string v1, "83"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->difficultScales:Ljava/util/List;

    const-string v1, "77"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->difficultScales:Ljava/util/List;

    const-string v1, "71"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->difficultScales:Ljava/util/List;

    const-string v1, "65"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->difficultScales:Ljava/util/List;

    const-string v1, "59"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->difficultScales:Ljava/util/List;

    const-string v1, "53"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->sheetIndexMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 301
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->noteCacheMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1658
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_28b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2bf

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_29c

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_29c
    check-cast v2, Ljava/util/List;

    .line 303
    iget-object v4, p0, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->sheetIndexMap:Ljava/util/Map;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/midi/view/midiview/NoteModel;

    invoke-virtual {v2}, Lcom/codemao/midi/view/midiview/NoteModel;->getNoteType()Lcom/codemao/midi/view/midiview/NoteType;

    move-result-object v2

    if-eqz v2, :cond_2b1

    invoke-virtual {v2}, Lcom/codemao/midi/view/midiview/NoteType;->getNoteCode()I

    move-result v2

    goto :goto_2b2

    :cond_2b1
    const/4 v2, 0x0

    :goto_2b2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v3

    goto :goto_28b

    .line 306
    :cond_2bf
    invoke-direct {p0}, Lcom/codemao/midi/view/midiview/MidiModelConvertTools;->upDateDifficultSheetList()V

    return-void
.end method
