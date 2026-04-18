.class public final Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;
.super Ljava/lang/Object;
.source "AiImageGenerateResponse.kt"


# instance fields
.field private final draft_url:Ljava/lang/String;

.field private final order:I

.field private final sketch_icon_url:Ljava/lang/String;

.field private final sketch_url:Ljava/lang/String;

.field private final styles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/http/Style;",
            ">;"
        }
    .end annotation
.end field

.field private final tempalte_dynamic_cover_url:Ljava/lang/String;

.field private final template_cover_url:Ljava/lang/String;

.field private final template_id:I

.field private final template_name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/http/Style;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "styles"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->draft_url:Ljava/lang/String;

    .line 12
    iput p2, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->order:I

    .line 13
    iput-object p3, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->sketch_icon_url:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->sketch_url:Ljava/lang/String;

    .line 15
    iput-object p5, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->styles:Ljava/util/List;

    .line 16
    iput-object p6, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->tempalte_dynamic_cover_url:Ljava/lang/String;

    .line 17
    iput-object p7, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->template_cover_url:Ljava/lang/String;

    .line 18
    iput p8, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->template_id:I

    .line 19
    iput-object p9, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->template_name:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;
    .registers 22

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->draft_url:Ljava/lang/String;

    goto :goto_b

    :cond_a
    move-object v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget v3, v0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->order:I

    goto :goto_13

    :cond_12
    move v3, p2

    :goto_13
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->sketch_icon_url:Ljava/lang/String;

    goto :goto_1b

    :cond_1a
    move-object v4, p3

    :goto_1b
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_22

    iget-object v5, v0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->sketch_url:Ljava/lang/String;

    goto :goto_23

    :cond_22
    move-object v5, p4

    :goto_23
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2a

    iget-object v6, v0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->styles:Ljava/util/List;

    goto :goto_2b

    :cond_2a
    move-object v6, p5

    :goto_2b
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_32

    iget-object v7, v0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->tempalte_dynamic_cover_url:Ljava/lang/String;

    goto :goto_34

    :cond_32
    move-object/from16 v7, p6

    :goto_34
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_3b

    iget-object v8, v0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->template_cover_url:Ljava/lang/String;

    goto :goto_3d

    :cond_3b
    move-object/from16 v8, p7

    :goto_3d
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_44

    iget v9, v0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->template_id:I

    goto :goto_46

    :cond_44
    move/from16 v9, p8

    :goto_46
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_4d

    iget-object v1, v0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->template_name:Ljava/lang/String;

    goto :goto_4f

    :cond_4d
    move-object/from16 v1, p9

    :goto_4f
    move-object p1, v2

    move p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->copy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->draft_url:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .registers 2

    iget v0, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->order:I

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->sketch_icon_url:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->sketch_url:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/http/Style;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->styles:Ljava/util/List;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->tempalte_dynamic_cover_url:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->template_cover_url:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()I
    .registers 2

    iget v0, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->template_id:I

    return v0
.end method

.method public final component9()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->template_name:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/http/Style;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;"
        }
    .end annotation

    const-string v0, "styles"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->draft_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->draft_url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->order:I

    iget v3, p1, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->order:I

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->sketch_icon_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->sketch_icon_url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->sketch_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->sketch_url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    :cond_34
    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->styles:Ljava/util/List;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->styles:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v2

    :cond_3f
    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->tempalte_dynamic_cover_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->tempalte_dynamic_cover_url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    return v2

    :cond_4a
    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->template_cover_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->template_cover_url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    return v2

    :cond_55
    iget v1, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->template_id:I

    iget v3, p1, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->template_id:I

    if-eq v1, v3, :cond_5c

    return v2

    :cond_5c
    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->template_name:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->template_name:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_67

    return v2

    :cond_67
    return v0
.end method

.method public final getDraft_url()Ljava/lang/String;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->draft_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrder()I
    .registers 2

    .line 12
    iget v0, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->order:I

    return v0
.end method

.method public final getSketch_icon_url()Ljava/lang/String;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->sketch_icon_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getSketch_url()Ljava/lang/String;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->sketch_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getStyles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/http/Style;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->styles:Ljava/util/List;

    return-object v0
.end method

.method public final getTempalte_dynamic_cover_url()Ljava/lang/String;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->tempalte_dynamic_cover_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getTemplate_cover_url()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->template_cover_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getTemplate_id()I
    .registers 2

    .line 18
    iget v0, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->template_id:I

    return v0
.end method

.method public final getTemplate_name()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->template_name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->draft_url:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->order:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->sketch_icon_url:Ljava/lang/String;

    if-nez v2, :cond_18

    const/4 v2, 0x0

    goto :goto_1c

    :cond_18
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->sketch_url:Ljava/lang/String;

    if-nez v2, :cond_25

    const/4 v2, 0x0

    goto :goto_29

    :cond_25
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_29
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->styles:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->tempalte_dynamic_cover_url:Ljava/lang/String;

    if-nez v2, :cond_3b

    const/4 v2, 0x0

    goto :goto_3f

    :cond_3b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->template_cover_url:Ljava/lang/String;

    if-nez v2, :cond_48

    const/4 v2, 0x0

    goto :goto_4c

    :cond_48
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->template_id:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->template_name:Ljava/lang/String;

    if-nez v2, :cond_59

    goto :goto_5d

    :cond_59
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5d
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ItemPaintingTemp(draft_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->draft_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", order="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->order:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sketch_icon_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->sketch_icon_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sketch_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->sketch_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", styles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->styles:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tempalte_dynamic_cover_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->tempalte_dynamic_cover_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", template_cover_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->template_cover_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", template_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->template_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", template_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;->template_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
