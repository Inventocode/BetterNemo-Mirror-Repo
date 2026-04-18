.class public final Lcom/codemao/midi/view/midiview/NoteModelKt;
.super Ljava/lang/Object;
.source "NoteModel.kt"


# direct methods
.method public static final initNoteModel(Landroid/content/Context;IIIII)Lcom/codemao/midi/view/midiview/NoteModel;
    .registers 32

    if-nez p0, :cond_1f

    .line 66
    new-instance v12, Lcom/codemao/midi/view/midiview/NoteModel;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 67
    new-instance v11, Lcom/codemao/midi/view/midiview/NoteType;

    const/4 v6, 0x0

    const/4 v7, -0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v11

    move/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Lcom/codemao/midi/view/midiview/NoteType;-><init>(Landroid/graphics/Bitmap;IIII)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v10, 0x1ef

    const/4 v13, 0x0

    move-object v0, v12

    move-object v11, v13

    .line 66
    invoke-direct/range {v0 .. v11}, Lcom/codemao/midi/view/midiview/NoteModel;-><init>(IIILandroid/graphics/RectF;Lcom/codemao/midi/view/midiview/NoteType;ZIZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v12

    .line 75
    :cond_1f
    new-instance v0, Lcom/codemao/midi/view/midiview/NoteModel;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 76
    new-instance v19, Lcom/codemao/midi/view/midiview/NoteType;

    .line 77
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move/from16 v2, p1

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v1, v19

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    .line 76
    invoke-direct/range {v1 .. v6}, Lcom/codemao/midi/view/midiview/NoteType;-><init>(Landroid/graphics/Bitmap;IIII)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1ef

    const/16 v25, 0x0

    move-object v14, v0

    .line 75
    invoke-direct/range {v14 .. v25}, Lcom/codemao/midi/view/midiview/NoteModel;-><init>(IIILandroid/graphics/RectF;Lcom/codemao/midi/view/midiview/NoteType;ZIZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
