.class public Lcom/codemao/midi/sun/ModelInstrumentComparator;
.super Ljava/lang/Object;
.source "ModelInstrumentComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/codemao/midi/javax/Instrument;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/codemao/midi/javax/Instrument;Lcom/codemao/midi/javax/Instrument;)I
    .registers 8

    .line 40
    invoke-virtual {p1}, Lcom/codemao/midi/javax/Instrument;->getPatch()Lcom/codemao/midi/javax/Patch;

    move-result-object p1

    .line 41
    invoke-virtual {p2}, Lcom/codemao/midi/javax/Instrument;->getPatch()Lcom/codemao/midi/javax/Patch;

    move-result-object p2

    .line 42
    invoke-virtual {p1}, Lcom/codemao/midi/javax/Patch;->getBank()I

    move-result v0

    mul-int/lit16 v0, v0, 0x80

    invoke-virtual {p1}, Lcom/codemao/midi/javax/Patch;->getProgram()I

    move-result v1

    add-int/2addr v0, v1

    .line 43
    invoke-virtual {p2}, Lcom/codemao/midi/javax/Patch;->getBank()I

    move-result v1

    mul-int/lit16 v1, v1, 0x80

    invoke-virtual {p2}, Lcom/codemao/midi/javax/Patch;->getProgram()I

    move-result v2

    add-int/2addr v1, v2

    .line 44
    instance-of v2, p1, Lcom/codemao/midi/sun/ModelPatch;

    const/high16 v3, 0x200000

    const/4 v4, 0x0

    if-eqz v2, :cond_32

    .line 45
    check-cast p1, Lcom/codemao/midi/sun/ModelPatch;

    invoke-virtual {p1}, Lcom/codemao/midi/sun/ModelPatch;->isPercussion()Z

    move-result p1

    if-eqz p1, :cond_30

    const/high16 p1, 0x200000

    goto :goto_31

    :cond_30
    const/4 p1, 0x0

    :goto_31
    add-int/2addr v0, p1

    .line 47
    :cond_32
    instance-of p1, p2, Lcom/codemao/midi/sun/ModelPatch;

    if-eqz p1, :cond_41

    .line 48
    check-cast p2, Lcom/codemao/midi/sun/ModelPatch;

    invoke-virtual {p2}, Lcom/codemao/midi/sun/ModelPatch;->isPercussion()Z

    move-result p1

    if-eqz p1, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v3, 0x0

    :goto_40
    add-int/2addr v1, v3

    :cond_41
    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 37
    check-cast p1, Lcom/codemao/midi/javax/Instrument;

    check-cast p2, Lcom/codemao/midi/javax/Instrument;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/midi/sun/ModelInstrumentComparator;->compare(Lcom/codemao/midi/javax/Instrument;Lcom/codemao/midi/javax/Instrument;)I

    move-result p1

    return p1
.end method
