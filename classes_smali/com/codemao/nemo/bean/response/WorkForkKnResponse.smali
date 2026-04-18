.class public final Lcom/codemao/nemo/bean/response/WorkForkKnResponse;
.super Ljava/lang/Object;
.source "WorkForkKnResponse.kt"


# instance fields
.field private final Work_id:Ljava/lang/Long;

.field private final bcm_url:Ljava/lang/String;

.field private final fork_times:Ljava/lang/Integer;

.field private final screenshot_cover_url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .registers 5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/codemao/nemo/bean/response/WorkForkKnResponse;->Work_id:Ljava/lang/Long;

    .line 5
    iput-object p2, p0, Lcom/codemao/nemo/bean/response/WorkForkKnResponse;->bcm_url:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/codemao/nemo/bean/response/WorkForkKnResponse;->fork_times:Ljava/lang/Integer;

    .line 7
    iput-object p4, p0, Lcom/codemao/nemo/bean/response/WorkForkKnResponse;->screenshot_cover_url:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/nemo/bean/response/WorkForkKnResponse;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lcom/codemao/nemo/bean/response/WorkForkKnResponse;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Lcom/codemao/nemo/bean/response/WorkForkKnResponse;->Work_id:Ljava/lang/Long;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lcom/codemao/nemo/bean/response/WorkForkKnResponse;->bcm_url:Ljava/lang/String;

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-object p3, p0, Lcom/codemao/nemo/bean/response/WorkForkKnResponse;->fork_times:Ljava/lang/Integer;

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-object p4, p0, Lcom/codemao/nemo/bean/response/WorkForkKnResponse;->screenshot_cover_url:Ljava/lang/String;

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/codemao/nemo/bean/response/WorkForkKnResponse;->copy(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/codemao/nemo/bean/response/WorkForkKnResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/response/WorkForkKnResponse;->Work_id:Ljava/lang/Long;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/response/WorkForkKnResponse;->bcm_url:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/response/WorkForkKnResponse;->fork_times:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/response/WorkForkKnResponse;->screenshot_cover_url:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/codemao/nemo/bean/response/WorkForkKnResponse;
    .registers 6

    new-instance v0, Lcom/codemao/nemo/bean/response/WorkForkKnResponse;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/codemao/nemo/bean/response/WorkForkKnResponse;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/nemo/bean/response/WorkForkKnResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/nemo/bean/response/WorkForkKnResponse;

    iget-object v1, p0, Lcom/codemao/nemo/bean/response/WorkForkKnResponse;->Work_id:Ljava/lang/Long;

    iget-object v3, p1, Lcom/codemao/nemo/bean/response/WorkForkKnResponse;->Work_id:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/nemo/bean/response/WorkForkKnResponse;->bcm_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/response/WorkForkKnResponse;->bcm_url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/codemao/nemo/bean/response/WorkForkKnResponse;->fork_times:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/codemao/nemo/bean/response/WorkForkKnResponse;->fork_times:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/codemao/nemo/bean/response/WorkForkKnResponse;->screenshot_cover_url:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/nemo/bean/response/WorkForkKnResponse;->screenshot_cover_url:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    return v2

    :cond_38
    return v0
.end method

.method public final getBcm_url()Ljava/lang/String;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/codemao/nemo/bean/response/WorkForkKnResponse;->bcm_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getFork_times()Ljava/lang/Integer;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/codemao/nemo/bean/response/WorkForkKnResponse;->fork_times:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getScreenshot_cover_url()Ljava/lang/String;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/codemao/nemo/bean/response/WorkForkKnResponse;->screenshot_cover_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getWork_id()Ljava/lang/Long;
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/codemao/nemo/bean/response/WorkForkKnResponse;->Work_id:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/nemo/bean/response/WorkForkKnResponse;->Work_id:Ljava/lang/Long;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/response/WorkForkKnResponse;->bcm_url:Ljava/lang/String;

    if-nez v2, :cond_13

    const/4 v2, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/response/WorkForkKnResponse;->fork_times:Ljava/lang/Integer;

    if-nez v2, :cond_20

    const/4 v2, 0x0

    goto :goto_24

    :cond_20
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/response/WorkForkKnResponse;->screenshot_cover_url:Ljava/lang/String;

    if-nez v2, :cond_2c

    goto :goto_30

    :cond_2c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_30
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkForkKnResponse(Work_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/response/WorkForkKnResponse;->Work_id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bcm_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/response/WorkForkKnResponse;->bcm_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fork_times="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/response/WorkForkKnResponse;->fork_times:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", screenshot_cover_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/response/WorkForkKnResponse;->screenshot_cover_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
