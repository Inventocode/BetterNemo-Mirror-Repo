.class public final Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;
.super Ljava/lang/Object;
.source "CourseV2ViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel$Companion;


# instance fields
.field private courseCount:I

.field private itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/viewmodel/SubjectItem;",
            ">;"
        }
    .end annotation
.end field

.field private packageId:J

.field private title:Ljava/lang/String;

.field private type:Lcom/codemao/nemo/bean/viewmodel/SubjectType;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->Companion:Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/codemao/nemo/bean/viewmodel/SubjectType;Ljava/util/List;Ljava/lang/String;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/bean/viewmodel/SubjectType;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/viewmodel/SubjectItem;",
            ">;",
            "Ljava/lang/String;",
            "IJ)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->type:Lcom/codemao/nemo/bean/viewmodel/SubjectType;

    .line 11
    iput-object p2, p0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->itemList:Ljava/util/List;

    .line 12
    iput-object p3, p0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->title:Ljava/lang/String;

    .line 13
    iput p4, p0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->courseCount:I

    .line 14
    iput-wide p5, p0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->packageId:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;Lcom/codemao/nemo/bean/viewmodel/SubjectType;Ljava/util/List;Ljava/lang/String;IJILjava/lang/Object;)Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;
    .registers 13

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_6

    iget-object p1, p0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->type:Lcom/codemao/nemo/bean/viewmodel/SubjectType;

    :cond_6
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_c

    iget-object p2, p0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->itemList:Ljava/util/List;

    :cond_c
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_13

    iget-object p3, p0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->title:Ljava/lang/String;

    :cond_13
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_1a

    iget p4, p0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->courseCount:I

    :cond_1a
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_21

    iget-wide p5, p0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->packageId:J

    :cond_21
    move-wide v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move p6, v1

    move-wide p7, v2

    invoke-virtual/range {p2 .. p8}, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->copy(Lcom/codemao/nemo/bean/viewmodel/SubjectType;Ljava/util/List;Ljava/lang/String;IJ)Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/codemao/nemo/bean/viewmodel/SubjectType;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->type:Lcom/codemao/nemo/bean/viewmodel/SubjectType;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/viewmodel/SubjectItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->itemList:Ljava/util/List;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()I
    .registers 2

    iget v0, p0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->courseCount:I

    return v0
.end method

.method public final component5()J
    .registers 3

    iget-wide v0, p0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->packageId:J

    return-wide v0
.end method

.method public final copy(Lcom/codemao/nemo/bean/viewmodel/SubjectType;Ljava/util/List;Ljava/lang/String;IJ)Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/bean/viewmodel/SubjectType;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/viewmodel/SubjectItem;",
            ">;",
            "Ljava/lang/String;",
            "IJ)",
            "Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;-><init>(Lcom/codemao/nemo/bean/viewmodel/SubjectType;Ljava/util/List;Ljava/lang/String;IJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;

    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->type:Lcom/codemao/nemo/bean/viewmodel/SubjectType;

    iget-object v3, p1, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->type:Lcom/codemao/nemo/bean/viewmodel/SubjectType;

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->itemList:Ljava/util/List;

    iget-object v3, p1, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->itemList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget v1, p0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->courseCount:I

    iget v3, p1, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->courseCount:I

    if-eq v1, v3, :cond_30

    return v2

    :cond_30
    iget-wide v3, p0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->packageId:J

    iget-wide v5, p1, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->packageId:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_39

    return v2

    :cond_39
    return v0
.end method

.method public final getCourseCount()I
    .registers 2

    .line 13
    iget v0, p0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->courseCount:I

    return v0
.end method

.method public final getItemList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/viewmodel/SubjectItem;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->itemList:Ljava/util/List;

    return-object v0
.end method

.method public final getPackageId()J
    .registers 3

    .line 14
    iget-wide v0, p0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->packageId:J

    return-wide v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lcom/codemao/nemo/bean/viewmodel/SubjectType;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->type:Lcom/codemao/nemo/bean/viewmodel/SubjectType;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->type:Lcom/codemao/nemo/bean/viewmodel/SubjectType;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->itemList:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->title:Ljava/lang/String;

    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_1b

    :cond_17
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->courseCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->packageId:J

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setCourseCount(I)V
    .registers 2

    .line 13
    iput p1, p0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->courseCount:I

    return-void
.end method

.method public final setItemList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/viewmodel/SubjectItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->itemList:Ljava/util/List;

    return-void
.end method

.method public final setPackageId(J)V
    .registers 3

    .line 14
    iput-wide p1, p0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->packageId:J

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .registers 2

    .line 12
    iput-object p1, p0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->title:Ljava/lang/String;

    return-void
.end method

.method public final setType(Lcom/codemao/nemo/bean/viewmodel/SubjectType;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->type:Lcom/codemao/nemo/bean/viewmodel/SubjectType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CourseV2ViewModel(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->type:Lcom/codemao/nemo/bean/viewmodel/SubjectType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", itemList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->itemList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", courseCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->courseCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", packageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->packageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
