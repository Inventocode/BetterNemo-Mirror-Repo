.class public final Lcom/codemao/midi/view/midiview/NoteType;
.super Ljava/lang/Object;
.source "NoteModel.kt"


# instance fields
.field private activatingRectColor:I

.field private backgroundColor:I

.field private final bitmap:Landroid/graphics/Bitmap;

.field private final noteCode:I

.field private rectColor:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;IIII)V
    .registers 6

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/midi/view/midiview/NoteType;->bitmap:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/codemao/midi/view/midiview/NoteType;->noteCode:I

    iput p3, p0, Lcom/codemao/midi/view/midiview/NoteType;->rectColor:I

    iput p4, p0, Lcom/codemao/midi/view/midiview/NoteType;->activatingRectColor:I

    iput p5, p0, Lcom/codemao/midi/view/midiview/NoteType;->backgroundColor:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_2d

    instance-of v0, p1, Lcom/codemao/midi/view/midiview/NoteType;

    if-eqz v0, :cond_2b

    check-cast p1, Lcom/codemao/midi/view/midiview/NoteType;

    iget-object v0, p0, Lcom/codemao/midi/view/midiview/NoteType;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p1, Lcom/codemao/midi/view/midiview/NoteType;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget v0, p0, Lcom/codemao/midi/view/midiview/NoteType;->noteCode:I

    iget v1, p1, Lcom/codemao/midi/view/midiview/NoteType;->noteCode:I

    if-ne v0, v1, :cond_2b

    iget v0, p0, Lcom/codemao/midi/view/midiview/NoteType;->rectColor:I

    iget v1, p1, Lcom/codemao/midi/view/midiview/NoteType;->rectColor:I

    if-ne v0, v1, :cond_2b

    iget v0, p0, Lcom/codemao/midi/view/midiview/NoteType;->activatingRectColor:I

    iget v1, p1, Lcom/codemao/midi/view/midiview/NoteType;->activatingRectColor:I

    if-ne v0, v1, :cond_2b

    iget v0, p0, Lcom/codemao/midi/view/midiview/NoteType;->backgroundColor:I

    iget p1, p1, Lcom/codemao/midi/view/midiview/NoteType;->backgroundColor:I

    if-ne v0, p1, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 p1, 0x0

    return p1

    :cond_2d
    :goto_2d
    const/4 p1, 0x1

    return p1
.end method

.method public final getActivatingRectColor()I
    .registers 2

    .line 15
    iget v0, p0, Lcom/codemao/midi/view/midiview/NoteType;->activatingRectColor:I

    return v0
.end method

.method public final getBackgroundColor()I
    .registers 2

    .line 16
    iget v0, p0, Lcom/codemao/midi/view/midiview/NoteType;->backgroundColor:I

    return v0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/NoteType;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getNoteCode()I
    .registers 2

    .line 13
    iget v0, p0, Lcom/codemao/midi/view/midiview/NoteType;->noteCode:I

    return v0
.end method

.method public final getRectColor()I
    .registers 2

    .line 14
    iget v0, p0, Lcom/codemao/midi/view/midiview/NoteType;->rectColor:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/codemao/midi/view/midiview/NoteType;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/midi/view/midiview/NoteType;->noteCode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/midi/view/midiview/NoteType;->rectColor:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/midi/view/midiview/NoteType;->activatingRectColor:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/midi/view/midiview/NoteType;->backgroundColor:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NoteType(bitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/midi/view/midiview/NoteType;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", noteCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/midi/view/midiview/NoteType;->noteCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rectColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/midi/view/midiview/NoteType;->rectColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", activatingRectColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/midi/view/midiview/NoteType;->activatingRectColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/midi/view/midiview/NoteType;->backgroundColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
