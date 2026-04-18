.class public final Lcom/codemao/midi/adapter/PianoItem;
.super Ljava/lang/Object;
.source "MidiPianoAdapter.kt"


# instance fields
.field private final imgRes:I

.field private final note:I

.field private final showLeft:Z

.field private final showRight:Z


# direct methods
.method public constructor <init>(IIZZ)V
    .registers 5

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/codemao/midi/adapter/PianoItem;->note:I

    iput p2, p0, Lcom/codemao/midi/adapter/PianoItem;->imgRes:I

    iput-boolean p3, p0, Lcom/codemao/midi/adapter/PianoItem;->showLeft:Z

    iput-boolean p4, p0, Lcom/codemao/midi/adapter/PianoItem;->showRight:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_23

    instance-of v0, p1, Lcom/codemao/midi/adapter/PianoItem;

    if-eqz v0, :cond_21

    check-cast p1, Lcom/codemao/midi/adapter/PianoItem;

    iget v0, p0, Lcom/codemao/midi/adapter/PianoItem;->note:I

    iget v1, p1, Lcom/codemao/midi/adapter/PianoItem;->note:I

    if-ne v0, v1, :cond_21

    iget v0, p0, Lcom/codemao/midi/adapter/PianoItem;->imgRes:I

    iget v1, p1, Lcom/codemao/midi/adapter/PianoItem;->imgRes:I

    if-ne v0, v1, :cond_21

    iget-boolean v0, p0, Lcom/codemao/midi/adapter/PianoItem;->showLeft:Z

    iget-boolean v1, p1, Lcom/codemao/midi/adapter/PianoItem;->showLeft:Z

    if-ne v0, v1, :cond_21

    iget-boolean v0, p0, Lcom/codemao/midi/adapter/PianoItem;->showRight:Z

    iget-boolean p1, p1, Lcom/codemao/midi/adapter/PianoItem;->showRight:Z

    if-ne v0, p1, :cond_21

    goto :goto_23

    :cond_21
    const/4 p1, 0x0

    return p1

    :cond_23
    :goto_23
    const/4 p1, 0x1

    return p1
.end method

.method public final getImgRes()I
    .registers 2

    .line 87
    iget v0, p0, Lcom/codemao/midi/adapter/PianoItem;->imgRes:I

    return v0
.end method

.method public final getNote()I
    .registers 2

    .line 87
    iget v0, p0, Lcom/codemao/midi/adapter/PianoItem;->note:I

    return v0
.end method

.method public final getShowLeft()Z
    .registers 2

    .line 87
    iget-boolean v0, p0, Lcom/codemao/midi/adapter/PianoItem;->showLeft:Z

    return v0
.end method

.method public final getShowRight()Z
    .registers 2

    .line 87
    iget-boolean v0, p0, Lcom/codemao/midi/adapter/PianoItem;->showRight:Z

    return v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/codemao/midi/adapter/PianoItem;->note:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/midi/adapter/PianoItem;->imgRes:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/codemao/midi/adapter/PianoItem;->showLeft:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    :cond_f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/codemao/midi/adapter/PianoItem;->showRight:Z

    if-eqz v1, :cond_17

    goto :goto_18

    :cond_17
    move v2, v1

    :goto_18
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PianoItem(note="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/midi/adapter/PianoItem;->note:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imgRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/midi/adapter/PianoItem;->imgRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", showLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/midi/adapter/PianoItem;->showLeft:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/midi/adapter/PianoItem;->showRight:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
