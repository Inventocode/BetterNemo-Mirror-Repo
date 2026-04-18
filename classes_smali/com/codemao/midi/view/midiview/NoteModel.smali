.class public final Lcom/codemao/midi/view/midiview/NoteModel;
.super Ljava/lang/Object;
.source "NoteModel.kt"


# instance fields
.field private cacheBitmap:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private inVisible:Z

.field private isEmpty:Z

.field private noteType:Lcom/codemao/midi/view/midiview/NoteType;

.field private preSheetIndex:I

.field private rect:Landroid/graphics/RectF;

.field private rightPercentAtPlayLine:F

.field private snowAnimPNGCurrentIndex:I

.field private strength:I

.field private tickEnd:I

.field private tickStart:I


# direct methods
.method public constructor <init>()V
    .registers 14

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3ff

    const/4 v12, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/codemao/midi/view/midiview/NoteModel;-><init>(FIIILandroid/graphics/RectF;Lcom/codemao/midi/view/midiview/NoteType;ZIZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FIIILandroid/graphics/RectF;Lcom/codemao/midi/view/midiview/NoteType;ZIZI)V
    .registers 11

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/codemao/midi/view/midiview/NoteModel;->rightPercentAtPlayLine:F

    iput p2, p0, Lcom/codemao/midi/view/midiview/NoteModel;->tickStart:I

    iput p3, p0, Lcom/codemao/midi/view/midiview/NoteModel;->tickEnd:I

    iput p4, p0, Lcom/codemao/midi/view/midiview/NoteModel;->strength:I

    iput-object p5, p0, Lcom/codemao/midi/view/midiview/NoteModel;->rect:Landroid/graphics/RectF;

    iput-object p6, p0, Lcom/codemao/midi/view/midiview/NoteModel;->noteType:Lcom/codemao/midi/view/midiview/NoteType;

    iput-boolean p7, p0, Lcom/codemao/midi/view/midiview/NoteModel;->inVisible:Z

    iput p8, p0, Lcom/codemao/midi/view/midiview/NoteModel;->preSheetIndex:I

    iput-boolean p9, p0, Lcom/codemao/midi/view/midiview/NoteModel;->isEmpty:Z

    iput p10, p0, Lcom/codemao/midi/view/midiview/NoteModel;->snowAnimPNGCurrentIndex:I

    return-void
.end method

.method public synthetic constructor <init>(FIIILandroid/graphics/RectF;Lcom/codemao/midi/view/midiview/NoteType;ZIZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 24

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_9

    const/high16 v1, 0x3f800000  # 1.0f

    goto :goto_a

    :cond_9
    move v1, p1

    :goto_a
    and-int/lit8 v2, v0, 0x2

    const/4 v3, -0x1

    if-eqz v2, :cond_11

    const/4 v2, -0x1

    goto :goto_12

    :cond_11
    move v2, p2

    :goto_12
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_18

    const/4 v4, -0x1

    goto :goto_19

    :cond_18
    move v4, p3

    :goto_19
    and-int/lit8 v5, v0, 0x8

    const/4 v6, 0x0

    if-eqz v5, :cond_20

    const/4 v5, 0x0

    goto :goto_21

    :cond_20
    move v5, p4

    :goto_21
    and-int/lit8 v7, v0, 0x10

    const/4 v8, 0x0

    if-eqz v7, :cond_28

    move-object v7, v8

    goto :goto_2a

    :cond_28
    move-object/from16 v7, p5

    :goto_2a
    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_2f

    goto :goto_31

    :cond_2f
    move-object/from16 v8, p6

    :goto_31
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_37

    const/4 v9, 0x0

    goto :goto_39

    :cond_37
    move/from16 v9, p7

    :goto_39
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_3e

    goto :goto_40

    :cond_3e
    move/from16 v3, p8

    :goto_40
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_45

    goto :goto_47

    :cond_45
    move/from16 v6, p9

    :goto_47
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_4d

    const/4 v0, -0x2

    goto :goto_4f

    :cond_4d
    move/from16 v0, p10

    :goto_4f
    move-object p1, p0

    move p2, v1

    move p3, v2

    move p4, v4

    move/from16 p5, v5

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v3

    move/from16 p10, v6

    move/from16 p11, v0

    .line 30
    invoke-direct/range {p1 .. p11}, Lcom/codemao/midi/view/midiview/NoteModel;-><init>(FIIILandroid/graphics/RectF;Lcom/codemao/midi/view/midiview/NoteType;ZIZI)V

    return-void
.end method

.method public constructor <init>(IIILandroid/graphics/RectF;Lcom/codemao/midi/view/midiview/NoteType;ZIZI)V
    .registers 21

    const/high16 v1, 0x3f800000  # 1.0f

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    .line 43
    invoke-direct/range {v0 .. v10}, Lcom/codemao/midi/view/midiview/NoteModel;-><init>(FIIILandroid/graphics/RectF;Lcom/codemao/midi/view/midiview/NoteType;ZIZI)V

    return-void
.end method

.method public synthetic constructor <init>(IIILandroid/graphics/RectF;Lcom/codemao/midi/view/midiview/NoteType;ZIZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 22

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x1

    const/4 v2, -0x1

    if-eqz v1, :cond_9

    const/4 v1, -0x1

    goto :goto_a

    :cond_9
    move v1, p1

    :goto_a
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_10

    const/4 v3, -0x1

    goto :goto_11

    :cond_10
    move v3, p2

    :goto_11
    and-int/lit8 v4, v0, 0x4

    const/4 v5, 0x0

    if-eqz v4, :cond_18

    const/4 v4, 0x0

    goto :goto_19

    :cond_18
    move v4, p3

    :goto_19
    and-int/lit8 v6, v0, 0x8

    const/4 v7, 0x0

    if-eqz v6, :cond_20

    move-object v6, v7

    goto :goto_21

    :cond_20
    move-object v6, p4

    :goto_21
    and-int/lit8 v8, v0, 0x10

    if-eqz v8, :cond_26

    goto :goto_27

    :cond_26
    move-object v7, p5

    :goto_27
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_2d

    const/4 v8, 0x0

    goto :goto_2f

    :cond_2d
    move/from16 v8, p6

    :goto_2f
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_34

    goto :goto_36

    :cond_34
    move/from16 v2, p7

    :goto_36
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_3b

    goto :goto_3d

    :cond_3b
    move/from16 v5, p8

    :goto_3d
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_43

    const/4 v0, -0x2

    goto :goto_45

    :cond_43
    move/from16 v0, p9

    :goto_45
    move-object p1, p0

    move p2, v1

    move p3, v3

    move p4, v4

    move-object p5, v6

    move-object/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v2

    move/from16 p9, v5

    move/from16 p10, v0

    .line 42
    invoke-direct/range {p1 .. p10}, Lcom/codemao/midi/view/midiview/NoteModel;-><init>(IIILandroid/graphics/RectF;Lcom/codemao/midi/view/midiview/NoteType;ZIZI)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_53

    instance-of v0, p1, Lcom/codemao/midi/view/midiview/NoteModel;

    if-eqz v0, :cond_51

    check-cast p1, Lcom/codemao/midi/view/midiview/NoteModel;

    iget v0, p0, Lcom/codemao/midi/view/midiview/NoteModel;->rightPercentAtPlayLine:F

    iget v1, p1, Lcom/codemao/midi/view/midiview/NoteModel;->rightPercentAtPlayLine:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_51

    iget v0, p0, Lcom/codemao/midi/view/midiview/NoteModel;->tickStart:I

    iget v1, p1, Lcom/codemao/midi/view/midiview/NoteModel;->tickStart:I

    if-ne v0, v1, :cond_51

    iget v0, p0, Lcom/codemao/midi/view/midiview/NoteModel;->tickEnd:I

    iget v1, p1, Lcom/codemao/midi/view/midiview/NoteModel;->tickEnd:I

    if-ne v0, v1, :cond_51

    iget v0, p0, Lcom/codemao/midi/view/midiview/NoteModel;->strength:I

    iget v1, p1, Lcom/codemao/midi/view/midiview/NoteModel;->strength:I

    if-ne v0, v1, :cond_51

    iget-object v0, p0, Lcom/codemao/midi/view/midiview/NoteModel;->rect:Landroid/graphics/RectF;

    iget-object v1, p1, Lcom/codemao/midi/view/midiview/NoteModel;->rect:Landroid/graphics/RectF;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/codemao/midi/view/midiview/NoteModel;->noteType:Lcom/codemao/midi/view/midiview/NoteType;

    iget-object v1, p1, Lcom/codemao/midi/view/midiview/NoteModel;->noteType:Lcom/codemao/midi/view/midiview/NoteType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-boolean v0, p0, Lcom/codemao/midi/view/midiview/NoteModel;->inVisible:Z

    iget-boolean v1, p1, Lcom/codemao/midi/view/midiview/NoteModel;->inVisible:Z

    if-ne v0, v1, :cond_51

    iget v0, p0, Lcom/codemao/midi/view/midiview/NoteModel;->preSheetIndex:I

    iget v1, p1, Lcom/codemao/midi/view/midiview/NoteModel;->preSheetIndex:I

    if-ne v0, v1, :cond_51

    iget-boolean v0, p0, Lcom/codemao/midi/view/midiview/NoteModel;->isEmpty:Z

    iget-boolean v1, p1, Lcom/codemao/midi/view/midiview/NoteModel;->isEmpty:Z

    if-ne v0, v1, :cond_51

    iget v0, p0, Lcom/codemao/midi/view/midiview/NoteModel;->snowAnimPNGCurrentIndex:I

    iget p1, p1, Lcom/codemao/midi/view/midiview/NoteModel;->snowAnimPNGCurrentIndex:I

    if-ne v0, p1, :cond_51

    goto :goto_53

    :cond_51
    const/4 p1, 0x0

    return p1

    :cond_53
    :goto_53
    const/4 p1, 0x1

    return p1
.end method

.method public final getCacheBitmap()Ljava/lang/ref/SoftReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/NoteModel;->cacheBitmap:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method public final getInVisible()Z
    .registers 2

    .line 27
    iget-boolean v0, p0, Lcom/codemao/midi/view/midiview/NoteModel;->inVisible:Z

    return v0
.end method

.method public final getNoteType()Lcom/codemao/midi/view/midiview/NoteType;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/NoteModel;->noteType:Lcom/codemao/midi/view/midiview/NoteType;

    return-object v0
.end method

.method public final getPreSheetIndex()I
    .registers 2

    .line 28
    iget v0, p0, Lcom/codemao/midi/view/midiview/NoteModel;->preSheetIndex:I

    return v0
.end method

.method public final getRect()Landroid/graphics/RectF;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/NoteModel;->rect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final getSnowAnimPNGCurrentIndex()I
    .registers 2

    .line 30
    iget v0, p0, Lcom/codemao/midi/view/midiview/NoteModel;->snowAnimPNGCurrentIndex:I

    return v0
.end method

.method public final getTickEnd()I
    .registers 2

    .line 23
    iget v0, p0, Lcom/codemao/midi/view/midiview/NoteModel;->tickEnd:I

    return v0
.end method

.method public final getTickStart()I
    .registers 2

    .line 22
    iget v0, p0, Lcom/codemao/midi/view/midiview/NoteModel;->tickStart:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/codemao/midi/view/midiview/NoteModel;->rightPercentAtPlayLine:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/midi/view/midiview/NoteModel;->tickStart:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/midi/view/midiview/NoteModel;->tickEnd:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/midi/view/midiview/NoteModel;->strength:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/midi/view/midiview/NoteModel;->rect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/midi/view/midiview/NoteModel;->noteType:Lcom/codemao/midi/view/midiview/NoteType;

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_2d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/codemao/midi/view/midiview/NoteModel;->inVisible:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_36

    const/4 v1, 0x1

    :cond_36
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/midi/view/midiview/NoteModel;->preSheetIndex:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/codemao/midi/view/midiview/NoteModel;->isEmpty:Z

    if-eqz v1, :cond_43

    goto :goto_44

    :cond_43
    move v2, v1

    :goto_44
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/midi/view/midiview/NoteModel;->snowAnimPNGCurrentIndex:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final isEmpty()Z
    .registers 2

    .line 29
    iget-boolean v0, p0, Lcom/codemao/midi/view/midiview/NoteModel;->isEmpty:Z

    return v0
.end method

.method public final setCacheBitmap(Ljava/lang/ref/SoftReference;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/codemao/midi/view/midiview/NoteModel;->cacheBitmap:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public final setInVisible(Z)V
    .registers 2

    .line 27
    iput-boolean p1, p0, Lcom/codemao/midi/view/midiview/NoteModel;->inVisible:Z

    return-void
.end method

.method public final setNoteType(Lcom/codemao/midi/view/midiview/NoteType;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/codemao/midi/view/midiview/NoteModel;->noteType:Lcom/codemao/midi/view/midiview/NoteType;

    return-void
.end method

.method public final setPreSheetIndex(I)V
    .registers 2

    .line 28
    iput p1, p0, Lcom/codemao/midi/view/midiview/NoteModel;->preSheetIndex:I

    return-void
.end method

.method public final setRect(Landroid/graphics/RectF;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/codemao/midi/view/midiview/NoteModel;->rect:Landroid/graphics/RectF;

    return-void
.end method

.method public final setSnowAnimPNGCurrentIndex(I)V
    .registers 2

    .line 30
    iput p1, p0, Lcom/codemao/midi/view/midiview/NoteModel;->snowAnimPNGCurrentIndex:I

    return-void
.end method

.method public final setTickEnd(I)V
    .registers 2

    .line 23
    iput p1, p0, Lcom/codemao/midi/view/midiview/NoteModel;->tickEnd:I

    return-void
.end method

.method public final setTickStart(I)V
    .registers 2

    .line 22
    iput p1, p0, Lcom/codemao/midi/view/midiview/NoteModel;->tickStart:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NoteModel(rightPercentAtPlayLine="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/midi/view/midiview/NoteModel;->rightPercentAtPlayLine:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", tickStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/midi/view/midiview/NoteModel;->tickStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tickEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/midi/view/midiview/NoteModel;->tickEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", strength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/midi/view/midiview/NoteModel;->strength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/midi/view/midiview/NoteModel;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", noteType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/midi/view/midiview/NoteModel;->noteType:Lcom/codemao/midi/view/midiview/NoteType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/midi/view/midiview/NoteModel;->inVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", preSheetIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/midi/view/midiview/NoteModel;->preSheetIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isEmpty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/midi/view/midiview/NoteModel;->isEmpty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", snowAnimPNGCurrentIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/midi/view/midiview/NoteModel;->snowAnimPNGCurrentIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
