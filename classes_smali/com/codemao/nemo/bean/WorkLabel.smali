.class public final Lcom/codemao/nemo/bean/WorkLabel;
.super Ljava/lang/Object;
.source "RecommendPageResponse.kt"


# instance fields
.field private final label_id:J

.field private final label_name:Ljava/lang/String;

.field private final label_type:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-wide p1, p0, Lcom/codemao/nemo/bean/WorkLabel;->label_id:J

    .line 53
    iput-object p3, p0, Lcom/codemao/nemo/bean/WorkLabel;->label_name:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/codemao/nemo/bean/WorkLabel;->label_type:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/nemo/bean/WorkLabel;JLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/codemao/nemo/bean/WorkLabel;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-wide p1, p0, Lcom/codemao/nemo/bean/WorkLabel;->label_id:J

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p3, p0, Lcom/codemao/nemo/bean/WorkLabel;->label_name:Ljava/lang/String;

    :cond_c
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_12

    iget-object p4, p0, Lcom/codemao/nemo/bean/WorkLabel;->label_type:Ljava/lang/String;

    :cond_12
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/codemao/nemo/bean/WorkLabel;->copy(JLjava/lang/String;Ljava/lang/String;)Lcom/codemao/nemo/bean/WorkLabel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .registers 3

    iget-wide v0, p0, Lcom/codemao/nemo/bean/WorkLabel;->label_id:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkLabel;->label_name:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkLabel;->label_type:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JLjava/lang/String;Ljava/lang/String;)Lcom/codemao/nemo/bean/WorkLabel;
    .registers 6

    new-instance v0, Lcom/codemao/nemo/bean/WorkLabel;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/codemao/nemo/bean/WorkLabel;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/nemo/bean/WorkLabel;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/nemo/bean/WorkLabel;

    iget-wide v3, p0, Lcom/codemao/nemo/bean/WorkLabel;->label_id:J

    iget-wide v5, p1, Lcom/codemao/nemo/bean/WorkLabel;->label_id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkLabel;->label_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/WorkLabel;->label_name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v2

    :cond_20
    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkLabel;->label_type:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/nemo/bean/WorkLabel;->label_type:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2b

    return v2

    :cond_2b
    return v0
.end method

.method public final getLabel_id()J
    .registers 3

    .line 52
    iget-wide v0, p0, Lcom/codemao/nemo/bean/WorkLabel;->label_id:J

    return-wide v0
.end method

.method public final getLabel_name()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkLabel;->label_name:Ljava/lang/String;

    return-object v0
.end method

.method public final getLabel_type()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkLabel;->label_type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-wide v0, p0, Lcom/codemao/nemo/bean/WorkLabel;->label_id:J

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkLabel;->label_name:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    const/4 v1, 0x0

    goto :goto_13

    :cond_f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkLabel;->label_type:Ljava/lang/String;

    if-nez v1, :cond_1b

    goto :goto_1f

    :cond_1b
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1f
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkLabel(label_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/nemo/bean/WorkLabel;->label_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", label_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkLabel;->label_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", label_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkLabel;->label_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
