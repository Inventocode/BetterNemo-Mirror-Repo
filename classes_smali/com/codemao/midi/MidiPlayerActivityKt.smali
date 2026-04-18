.class public final Lcom/codemao/midi/MidiPlayerActivityKt;
.super Ljava/lang/Object;
.source "MidiPlayerActivity.kt"


# direct methods
.method public static final getPianoHeight(Landroid/content/Context;)I
    .registers 4

    const-string v0, "$this$getPianoHeight"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 729
    invoke-static {p0}, Lcom/codemao/midi/MidiPlayerActivityKt;->getScalePixelsFloat(Landroid/content/Context;)F

    move-result v0

    .line 730
    sget-object v1, Lcom/codemao/midi/util/MidiConfigManager;->INSTANCE:Lcom/codemao/midi/util/MidiConfigManager;

    invoke-virtual {v1}, Lcom/codemao/midi/util/MidiConfigManager;->pianoHeight()F

    move-result v1

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_27

    .line 732
    invoke-static {p0, v1}, Lcom/codemao/midi/view/midiview/MidiViewKt;->dip2px(Landroid/content/Context;F)F

    move-result v1

    mul-float v1, v1, v0

    float-to-int v0, v1

    const/high16 v1, 0x43200000  # 160.0f

    .line 733
    invoke-static {p0, v1}, Lcom/codemao/midi/view/midiview/MidiViewKt;->dip2px(Landroid/content/Context;F)F

    move-result p0

    float-to-int p0, p0

    if-le v0, p0, :cond_26

    move v0, p0

    :cond_26
    return v0

    .line 740
    :cond_27
    invoke-static {p0, v1}, Lcom/codemao/midi/view/midiview/MidiViewKt;->dip2px(Landroid/content/Context;F)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static final getScalePixelsFloat(Landroid/content/Context;)F
    .registers 4

    const-string v0, "$this$getScalePixelsFloat"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 717
    sget-object v0, Lcom/codemao/midi/util/MidiConfigManager;->INSTANCE:Lcom/codemao/midi/util/MidiConfigManager;

    invoke-virtual {v0}, Lcom/codemao/midi/util/MidiConfigManager;->isPad()Z

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz v0, :cond_10

    return v1

    .line 720
    :cond_10
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "resources"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v2, 0x44400000  # 768.0f

    .line 721
    invoke-static {p0, v2}, Lcom/codemao/midi/view/midiview/MidiViewKt;->dip2px(Landroid/content/Context;F)F

    move-result p0

    int-to-float v0, v0

    cmpl-float v2, v0, p0

    if-lez v2, :cond_2c

    div-float/2addr v0, p0

    return v0

    :cond_2c
    return v1
.end method
