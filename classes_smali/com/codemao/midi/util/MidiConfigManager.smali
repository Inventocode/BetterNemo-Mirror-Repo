.class public final Lcom/codemao/midi/util/MidiConfigManager;
.super Ljava/lang/Object;
.source "MidiConfigManager.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/midi/util/MidiConfigManager;

.field private static defaultMidiName:Ljava/lang/String;

.field private static isPad:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    new-instance v0, Lcom/codemao/midi/util/MidiConfigManager;

    invoke-direct {v0}, Lcom/codemao/midi/util/MidiConfigManager;-><init>()V

    sput-object v0, Lcom/codemao/midi/util/MidiConfigManager;->INSTANCE:Lcom/codemao/midi/util/MidiConfigManager;

    const-string v0, "MIDI音乐1"

    .line 20
    sput-object v0, Lcom/codemao/midi/util/MidiConfigManager;->defaultMidiName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefaultMidiName()Ljava/lang/String;
    .registers 2

    .line 20
    sget-object v0, Lcom/codemao/midi/util/MidiConfigManager;->defaultMidiName:Ljava/lang/String;

    return-object v0
.end method

.method public final isPad()Z
    .registers 2

    .line 18
    sget-boolean v0, Lcom/codemao/midi/util/MidiConfigManager;->isPad:Z

    return v0
.end method

.method public final pianoHeight()F
    .registers 2

    .line 26
    sget-boolean v0, Lcom/codemao/midi/util/MidiConfigManager;->isPad:Z

    if-eqz v0, :cond_7

    const/high16 v0, 0x43010000  # 129.0f

    goto :goto_9

    :cond_7
    const/high16 v0, 0x42a80000  # 84.0f

    :goto_9
    return v0
.end method

.method public final setDefaultMidiName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sput-object p1, Lcom/codemao/midi/util/MidiConfigManager;->defaultMidiName:Ljava/lang/String;

    return-void
.end method

.method public final setPad(Z)V
    .registers 2

    .line 18
    sput-boolean p1, Lcom/codemao/midi/util/MidiConfigManager;->isPad:Z

    return-void
.end method
