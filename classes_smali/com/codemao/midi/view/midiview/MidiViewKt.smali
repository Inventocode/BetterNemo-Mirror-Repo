.class public final Lcom/codemao/midi/view/midiview/MidiViewKt;
.super Ljava/lang/Object;
.source "MidiView.kt"


# direct methods
.method public static final dip2px(Landroid/content/Context;F)F
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 2017
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "resources"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000  # 0.5f

    add-float/2addr p1, p0

    return p1
.end method
