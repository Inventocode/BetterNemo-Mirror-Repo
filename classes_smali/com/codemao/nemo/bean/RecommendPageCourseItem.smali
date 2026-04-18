.class public final Lcom/codemao/nemo/bean/RecommendPageCourseItem;
.super Ljava/lang/Object;
.source "RecommendPageCourse.kt"


# instance fields
.field private final course_package_id:J

.field private final course_package_name:Ljava/lang/String;

.field private final course_package_preview_url:Ljava/lang/String;

.field private final course_package_type:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lcom/codemao/nemo/bean/RecommendPageCourseItem;->course_package_id:J

    .line 18
    iput-object p3, p0, Lcom/codemao/nemo/bean/RecommendPageCourseItem;->course_package_name:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/codemao/nemo/bean/RecommendPageCourseItem;->course_package_preview_url:Ljava/lang/String;

    .line 20
    iput-object p5, p0, Lcom/codemao/nemo/bean/RecommendPageCourseItem;->course_package_type:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/nemo/bean/RecommendPageCourseItem;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/codemao/nemo/bean/RecommendPageCourseItem;
    .registers 14

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget-wide p1, p0, Lcom/codemao/nemo/bean/RecommendPageCourseItem;->course_package_id:J

    :cond_6
    move-wide v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_d

    iget-object p3, p0, Lcom/codemao/nemo/bean/RecommendPageCourseItem;->course_package_name:Ljava/lang/String;

    :cond_d
    move-object v3, p3

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_14

    iget-object p4, p0, Lcom/codemao/nemo/bean/RecommendPageCourseItem;->course_package_preview_url:Ljava/lang/String;

    :cond_14
    move-object v4, p4

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_1b

    iget-object p5, p0, Lcom/codemao/nemo/bean/RecommendPageCourseItem;->course_package_type:Ljava/lang/String;

    :cond_1b
    move-object v5, p5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/codemao/nemo/bean/RecommendPageCourseItem;->copy(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/nemo/bean/RecommendPageCourseItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .registers 3

    iget-wide v0, p0, Lcom/codemao/nemo/bean/RecommendPageCourseItem;->course_package_id:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/RecommendPageCourseItem;->course_package_name:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/RecommendPageCourseItem;->course_package_preview_url:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/RecommendPageCourseItem;->course_package_type:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/nemo/bean/RecommendPageCourseItem;
    .registers 13

    new-instance v6, Lcom/codemao/nemo/bean/RecommendPageCourseItem;

    move-object v0, v6

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/codemao/nemo/bean/RecommendPageCourseItem;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/nemo/bean/RecommendPageCourseItem;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/nemo/bean/RecommendPageCourseItem;

    iget-wide v3, p0, Lcom/codemao/nemo/bean/RecommendPageCourseItem;->course_package_id:J

    iget-wide v5, p1, Lcom/codemao/nemo/bean/RecommendPageCourseItem;->course_package_id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/codemao/nemo/bean/RecommendPageCourseItem;->course_package_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/RecommendPageCourseItem;->course_package_name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v2

    :cond_20
    iget-object v1, p0, Lcom/codemao/nemo/bean/RecommendPageCourseItem;->course_package_preview_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/RecommendPageCourseItem;->course_package_preview_url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    return v2

    :cond_2b
    iget-object v1, p0, Lcom/codemao/nemo/bean/RecommendPageCourseItem;->course_package_type:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/nemo/bean/RecommendPageCourseItem;->course_package_type:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    return v2

    :cond_36
    return v0
.end method

.method public final getCourse_package_id()J
    .registers 3

    .line 17
    iget-wide v0, p0, Lcom/codemao/nemo/bean/RecommendPageCourseItem;->course_package_id:J

    return-wide v0
.end method

.method public final getCourse_package_name()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/codemao/nemo/bean/RecommendPageCourseItem;->course_package_name:Ljava/lang/String;

    return-object v0
.end method

.method public final getCourse_package_preview_url()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/codemao/nemo/bean/RecommendPageCourseItem;->course_package_preview_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getCourse_package_type()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/codemao/nemo/bean/RecommendPageCourseItem;->course_package_type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-wide v0, p0, Lcom/codemao/nemo/bean/RecommendPageCourseItem;->course_package_id:J

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/nemo/bean/RecommendPageCourseItem;->course_package_name:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/codemao/nemo/bean/RecommendPageCourseItem;->course_package_preview_url:Ljava/lang/String;

    if-nez v1, :cond_1c

    const/4 v1, 0x0

    goto :goto_20

    :cond_1c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_20
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/nemo/bean/RecommendPageCourseItem;->course_package_type:Ljava/lang/String;

    if-nez v1, :cond_28

    goto :goto_2c

    :cond_28
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2c
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecommendPageCourseItem(course_package_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/nemo/bean/RecommendPageCourseItem;->course_package_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", course_package_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/RecommendPageCourseItem;->course_package_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", course_package_preview_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/RecommendPageCourseItem;->course_package_preview_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", course_package_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/RecommendPageCourseItem;->course_package_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
