.class public final Lcom/codemao/midi/view/midiview/MidiFileBuildHelper;
.super Ljava/lang/Object;
.source "MidiFileBuildHelper.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/midi/view/midiview/MidiFileBuildHelper;

.field private static mConverterTools:Lcom/codemao/midi/view/midiview/MidiModelConvertTools;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 8
    new-instance v0, Lcom/codemao/midi/view/midiview/MidiFileBuildHelper;

    invoke-direct {v0}, Lcom/codemao/midi/view/midiview/MidiFileBuildHelper;-><init>()V

    sput-object v0, Lcom/codemao/midi/view/midiview/MidiFileBuildHelper;->INSTANCE:Lcom/codemao/midi/view/midiview/MidiFileBuildHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMConverterTools()Lcom/codemao/midi/view/midiview/MidiModelConvertTools;
    .registers 2

    .line 9
    sget-object v0, Lcom/codemao/midi/view/midiview/MidiFileBuildHelper;->mConverterTools:Lcom/codemao/midi/view/midiview/MidiModelConvertTools;

    return-object v0
.end method

.method public final setMConverterTools(Lcom/codemao/midi/view/midiview/MidiModelConvertTools;)V
    .registers 2

    .line 9
    sput-object p1, Lcom/codemao/midi/view/midiview/MidiFileBuildHelper;->mConverterTools:Lcom/codemao/midi/view/midiview/MidiModelConvertTools;

    return-void
.end method
