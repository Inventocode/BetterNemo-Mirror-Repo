.class public final Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;
.super Ljava/lang/Object;
.source "EditMusicFileState.kt"


# instance fields
.field private endMs:I

.field private fadeIn:Z

.field private fadeOut:Z

.field private nextStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

.field private preStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

.field private speed:I

.field private startMs:I

.field private volume:I


# direct methods
.method public constructor <init>()V
    .registers 12

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xff

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;-><init>(IIZZIILcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIZZIILcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;)V
    .registers 9

    .line 930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 931
    iput p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->speed:I

    .line 932
    iput p2, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->volume:I

    .line 933
    iput-boolean p3, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->fadeIn:Z

    .line 934
    iput-boolean p4, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->fadeOut:Z

    .line 935
    iput p5, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->startMs:I

    .line 936
    iput p6, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->endMs:I

    .line 937
    iput-object p7, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->preStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    .line 938
    iput-object p8, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->nextStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    return-void
.end method

.method public synthetic constructor <init>(IIZZIILcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 20

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x1

    const/16 v2, 0x64

    if-eqz v1, :cond_b

    const/16 v1, 0x64

    goto :goto_c

    :cond_b
    move v1, p1

    :goto_c
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_11

    goto :goto_12

    :cond_11
    move v2, p2

    :goto_12
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x0

    if-eqz v3, :cond_19

    const/4 v3, 0x0

    goto :goto_1a

    :cond_19
    move v3, p3

    :goto_1a
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_20

    const/4 v5, 0x0

    goto :goto_21

    :cond_20
    move v5, p4

    :goto_21
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_26

    goto :goto_27

    :cond_26
    move v4, p5

    :goto_27
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_2d

    const/4 v6, -0x1

    goto :goto_2e

    :cond_2d
    move v6, p6

    :goto_2e
    and-int/lit8 v7, v0, 0x40

    const/4 v8, 0x0

    if-eqz v7, :cond_35

    move-object v7, v8

    goto :goto_37

    :cond_35
    move-object/from16 v7, p7

    :goto_37
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3c

    goto :goto_3e

    :cond_3c
    move-object/from16 v8, p8

    :goto_3e
    move-object p1, p0

    move p2, v1

    move p3, v2

    move p4, v3

    move p5, v5

    move p6, v4

    move/from16 p7, v6

    move-object/from16 p8, v7

    move-object/from16 p9, v8

    .line 930
    invoke-direct/range {p1 .. p9}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;-><init>(IIZZIILcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;)V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;)V
    .registers 14

    const-string v0, "musicActionStep"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 942
    iget v2, p1, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->speed:I

    .line 943
    iget v3, p1, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->volume:I

    .line 944
    iget-boolean v4, p1, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->fadeIn:Z

    .line 945
    iget-boolean v5, p1, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->fadeOut:Z

    .line 946
    iget v6, p1, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->startMs:I

    .line 947
    iget v7, p1, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->endMs:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xc0

    const/4 v11, 0x0

    move-object v1, p0

    .line 941
    invoke-direct/range {v1 .. v11}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;-><init>(IIZZIILcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    iget v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->speed:I

    iget v3, p1, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->speed:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->volume:I

    iget v3, p1, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->volume:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget-boolean v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->fadeIn:Z

    iget-boolean v3, p1, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->fadeIn:Z

    if-eq v1, v3, :cond_21

    return v2

    :cond_21
    iget-boolean v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->fadeOut:Z

    iget-boolean v3, p1, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->fadeOut:Z

    if-eq v1, v3, :cond_28

    return v2

    :cond_28
    iget v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->startMs:I

    iget v3, p1, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->startMs:I

    if-eq v1, v3, :cond_2f

    return v2

    :cond_2f
    iget v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->endMs:I

    iget v3, p1, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->endMs:I

    if-eq v1, v3, :cond_36

    return v2

    :cond_36
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->preStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    iget-object v3, p1, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->preStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    return v2

    :cond_41
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->nextStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    iget-object p1, p1, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->nextStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4c

    return v2

    :cond_4c
    return v0
.end method

.method public final getEndMs()I
    .registers 2

    .line 936
    iget v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->endMs:I

    return v0
.end method

.method public final getFadeIn()Z
    .registers 2

    .line 933
    iget-boolean v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->fadeIn:Z

    return v0
.end method

.method public final getFadeOut()Z
    .registers 2

    .line 934
    iget-boolean v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->fadeOut:Z

    return v0
.end method

.method public final getNextStep()Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;
    .registers 2

    .line 938
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->nextStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    return-object v0
.end method

.method public final getPreStep()Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;
    .registers 2

    .line 937
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->preStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    return-object v0
.end method

.method public final getSpeed()I
    .registers 2

    .line 931
    iget v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->speed:I

    return v0
.end method

.method public final getSpeedFactor()D
    .registers 8

    .line 961
    iget v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->speed:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_e

    const-wide/high16 v1, 0x3ff8000000000000L  # 1.5

    int-to-double v3, v0

    const-wide/high16 v5, 0x4069000000000000L  # 200.0

    div-double/2addr v3, v5

    sub-double/2addr v1, v3

    goto :goto_17

    :cond_e
    sub-int/2addr v1, v0

    int-to-double v0, v1

    const-wide/high16 v2, 0x4059000000000000L  # 100.0

    div-double/2addr v0, v2

    const/4 v2, 0x1

    int-to-double v2, v2

    add-double v1, v0, v2

    :goto_17
    return-wide v1
.end method

.method public final getStartMs()I
    .registers 2

    .line 935
    iget v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->startMs:I

    return v0
.end method

.method public final getVolume()I
    .registers 2

    .line 932
    iget v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->volume:I

    return v0
.end method

.method public final getVolumeFactor()D
    .registers 5

    .line 967
    iget v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->volume:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L  # 100.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->speed:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->volume:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->fadeIn:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    :cond_f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->fadeOut:Z

    if-eqz v1, :cond_17

    goto :goto_18

    :cond_17
    move v2, v1

    :goto_18
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->startMs:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->endMs:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->preStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    const/4 v2, 0x0

    if-nez v1, :cond_2c

    const/4 v1, 0x0

    goto :goto_30

    :cond_2c
    invoke-virtual {v1}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->hashCode()I

    move-result v1

    :goto_30
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->nextStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    if-nez v1, :cond_38

    goto :goto_3c

    :cond_38
    invoke-virtual {v1}, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->hashCode()I

    move-result v2

    :goto_3c
    add-int/2addr v0, v2

    return v0
.end method

.method public final set(Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;)V
    .registers 4

    const/16 v0, 0x64

    if-eqz p1, :cond_7

    .line 951
    iget v1, p1, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->speed:I

    goto :goto_9

    :cond_7
    const/16 v1, 0x64

    :goto_9
    iput v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->speed:I

    if-eqz p1, :cond_f

    .line 952
    iget v0, p1, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->volume:I

    :cond_f
    iput v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->volume:I

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    .line 953
    iget-boolean v1, p1, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->fadeIn:Z

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    iput-boolean v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->fadeIn:Z

    if-eqz p1, :cond_1f

    .line 954
    iget-boolean v1, p1, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->fadeOut:Z

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    iput-boolean v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->fadeOut:Z

    if-eqz p1, :cond_26

    .line 955
    iget v0, p1, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->startMs:I

    :cond_26
    iput v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->startMs:I

    if-eqz p1, :cond_2d

    .line 956
    iget v0, p1, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->endMs:I

    goto :goto_2e

    :cond_2d
    const/4 v0, -0x1

    :goto_2e
    iput v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->endMs:I

    const/4 v0, 0x0

    if-eqz p1, :cond_36

    .line 957
    iget-object v1, p1, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->nextStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    goto :goto_37

    :cond_36
    move-object v1, v0

    :goto_37
    iput-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->nextStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    if-eqz p1, :cond_3d

    .line 958
    iget-object v0, p1, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->preStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    :cond_3d
    iput-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->preStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    return-void
.end method

.method public final setEndMs(I)V
    .registers 2

    .line 936
    iput p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->endMs:I

    return-void
.end method

.method public final setFadeIn(Z)V
    .registers 2

    .line 933
    iput-boolean p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->fadeIn:Z

    return-void
.end method

.method public final setFadeOut(Z)V
    .registers 2

    .line 934
    iput-boolean p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->fadeOut:Z

    return-void
.end method

.method public final setNextStep(Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;)V
    .registers 2

    .line 938
    iput-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->nextStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    return-void
.end method

.method public final setPreStep(Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;)V
    .registers 2

    .line 937
    iput-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->preStep:Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;

    return-void
.end method

.method public final setSpeed(I)V
    .registers 2

    .line 931
    iput p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->speed:I

    return-void
.end method

.method public final setStartMs(I)V
    .registers 2

    .line 935
    iput p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->startMs:I

    return-void
.end method

.method public final setVolume(I)V
    .registers 2

    .line 932
    iput p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->volume:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicActionStep(speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->speed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->volume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fadeIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->fadeIn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fadeOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->fadeOut:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", startMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->startMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/state/MusicActionStep;->endMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
