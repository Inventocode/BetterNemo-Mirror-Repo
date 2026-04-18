.class public final Lcom/codemao/midi/CMMidiHelper$Companion;
.super Ljava/lang/Object;
.source "CMMidiHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/CMMidiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCMMidiHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CMMidiHelper.kt\ncom/codemao/midi/CMMidiHelper$Companion\n*L\n1#1,481:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 24
    invoke-direct {p0}, Lcom/codemao/midi/CMMidiHelper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/codemao/midi/CMMidiHelper;
    .registers 2

    .line 26
    invoke-static {}, Lcom/codemao/midi/CMMidiHelper;->access$getInstance$cp()Lcom/codemao/midi/CMMidiHelper;

    move-result-object v0

    return-object v0
.end method

.method public final parseMidiFile(Ljava/io/InputStream;)Lcom/codemao/midi/javax/CMMidiFile;
    .registers 2

    if-nez p1, :cond_5

    .line 61
    :try_start_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-static {p1}, Lcom/codemao/midi/javax/MidiSystem;->getSequence(Ljava/io/InputStream;)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object p1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_a

    goto :goto_f

    :catch_a
    move-exception p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_f
    return-object p1
.end method

.method public final parseMidiFile(Ljava/lang/String;)Lcom/codemao/midi/javax/CMMidiFile;
    .registers 3

    .line 81
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {p1}, Lcom/codemao/midi/javax/MidiSystem;->getSequence(Ljava/io/InputStream;)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_14

    :catch_f
    move-exception p1

    .line 84
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_14
    return-object p1
.end method

.method public final startCreateEditor(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 13

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filePath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exitName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uuid"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object v1, Lcom/codemao/midi/MidiPlayerActivity;->Companion:Lcom/codemao/midi/MidiPlayerActivity$Companion;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/codemao/midi/MidiPlayerActivity$Companion;->startCreateMidi(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public final startEditorMidi(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 15

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "midiName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "midiFilePath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exitName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uuid"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object v1, Lcom/codemao/midi/MidiPlayerActivity;->Companion:Lcom/codemao/midi/MidiPlayerActivity$Companion;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/codemao/midi/MidiPlayerActivity$Companion;->startEditorMidi(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public final writeMidiFile(Lcom/codemao/midi/javax/CMMidiFile;Ljava/lang/String;)V
    .registers 4

    .line 101
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    if-eqz p1, :cond_19

    .line 102
    invoke-static {p2}, Lcom/codemao/midi/util/MidiFileUtil;->createNewFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 103
    new-instance v0, Lcom/codemao/midi/javax/io/StandardMidiFileWriter;

    invoke-direct {v0}, Lcom/codemao/midi/javax/io/StandardMidiFileWriter;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/codemao/midi/javax/io/StandardMidiFileWriter;->write(Lcom/codemao/midi/javax/CMMidiFile;Ljava/io/File;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    move-exception p1

    .line 106
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_19
    :goto_19
    return-void
.end method
