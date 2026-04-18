.class public final Lcom/codemao/midi/util/MidiStatisticsParams;
.super Ljava/lang/Object;
.source "MidiStatisticsUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMidiStatisticsUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MidiStatisticsUtils.kt\ncom/codemao/midi/util/MidiStatisticsParams\n*L\n1#1,55:1\n*E\n"
.end annotation


# instance fields
.field private final hashMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/util/MidiStatisticsParams;->hashMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final get()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/codemao/midi/util/MidiStatisticsParams;->hashMap:Ljava/util/Map;

    return-object v0
.end method

.method public final putMIDISettingAccompaniment(Ljava/lang/String;)Lcom/codemao/midi/util/MidiStatisticsParams;
    .registers 4

    .line 36
    iget-object v0, p0, Lcom/codemao/midi/util/MidiStatisticsParams;->hashMap:Ljava/util/Map;

    const-string v1, "accompaniment"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final putMIDISettingBeat(Ljava/lang/String;)Lcom/codemao/midi/util/MidiStatisticsParams;
    .registers 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/codemao/midi/util/MidiStatisticsParams;->hashMap:Ljava/util/Map;

    const-string v1, "beat"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final putMIDISettingMode(Ljava/lang/String;)Lcom/codemao/midi/util/MidiStatisticsParams;
    .registers 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/codemao/midi/util/MidiStatisticsParams;->hashMap:Ljava/util/Map;

    const-string v1, "mode"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final putMIDISettingTone(Ljava/lang/String;)Lcom/codemao/midi/util/MidiStatisticsParams;
    .registers 4

    .line 31
    iget-object v0, p0, Lcom/codemao/midi/util/MidiStatisticsParams;->hashMap:Ljava/util/Map;

    const-string v1, "tone"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final putPianoState(Z)Lcom/codemao/midi/util/MidiStatisticsParams;
    .registers 4

    .line 26
    iget-object v0, p0, Lcom/codemao/midi/util/MidiStatisticsParams;->hashMap:Ljava/util/Map;

    if-eqz p1, :cond_7

    const-string p1, "on"

    goto :goto_9

    :cond_7
    const-string p1, "off"

    :goto_9
    const-string v1, "piano_state"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
