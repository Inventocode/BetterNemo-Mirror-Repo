.class public final Lcom/codemao/nemo/bean/viewmodel/SubjectItem;
.super Ljava/lang/Object;
.source "CourseV2ViewModel.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/bean/viewmodel/SubjectItem$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/codemao/nemo/bean/viewmodel/SubjectItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/codemao/nemo/bean/viewmodel/SubjectItem$Companion;


# instance fields
.field private courseDetail:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

.field private imageUrl:Ljava/lang/String;

.field private response:Lcom/codemao/nemo/bean/CourseV2ResponseItem;

.field private subjectId:J

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/nemo/bean/viewmodel/SubjectItem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->Companion:Lcom/codemao/nemo/bean/viewmodel/SubjectItem$Companion;

    .line 154
    new-instance v0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem$Companion$CREATOR$1;

    invoke-direct {v0}, Lcom/codemao/nemo/bean/viewmodel/SubjectItem$Companion$CREATOR$1;-><init>()V

    sput-object v0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Lcom/codemao/nemo/bean/CourseV2ResponseItem;Lcom/codemao/nemo/bean/CourseV2ResponseCourse;)V
    .registers 7

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->subjectId:J

    .line 128
    iput-object p3, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->imageUrl:Ljava/lang/String;

    .line 129
    iput-object p4, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->title:Ljava/lang/String;

    .line 130
    iput-object p5, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->response:Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    .line 131
    iput-object p6, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->courseDetail:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 10

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 136
    const-class v0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    .line 137
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 136
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    .line 138
    const-class v0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    .line 139
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 138
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    move-object v1, p0

    .line 132
    invoke-direct/range {v1 .. v7}, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;-><init>(JLjava/lang/String;Ljava/lang/String;Lcom/codemao/nemo/bean/CourseV2ResponseItem;Lcom/codemao/nemo/bean/CourseV2ResponseCourse;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/nemo/bean/viewmodel/SubjectItem;JLjava/lang/String;Ljava/lang/String;Lcom/codemao/nemo/bean/CourseV2ResponseItem;Lcom/codemao/nemo/bean/CourseV2ResponseCourse;ILjava/lang/Object;)Lcom/codemao/nemo/bean/viewmodel/SubjectItem;
    .registers 16

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_6

    iget-wide p1, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->subjectId:J

    :cond_6
    move-wide v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_d

    iget-object p3, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->imageUrl:Ljava/lang/String;

    :cond_d
    move-object v3, p3

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_14

    iget-object p4, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->title:Ljava/lang/String;

    :cond_14
    move-object v4, p4

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_1b

    iget-object p5, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->response:Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    :cond_1b
    move-object v5, p5

    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_22

    iget-object p6, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->courseDetail:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    :cond_22
    move-object v6, p6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->copy(JLjava/lang/String;Ljava/lang/String;Lcom/codemao/nemo/bean/CourseV2ResponseItem;Lcom/codemao/nemo/bean/CourseV2ResponseCourse;)Lcom/codemao/nemo/bean/viewmodel/SubjectItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .registers 3

    iget-wide v0, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->subjectId:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Lcom/codemao/nemo/bean/CourseV2ResponseItem;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->response:Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    return-object v0
.end method

.method public final component5()Lcom/codemao/nemo/bean/CourseV2ResponseCourse;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->courseDetail:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    return-object v0
.end method

.method public final copy(JLjava/lang/String;Ljava/lang/String;Lcom/codemao/nemo/bean/CourseV2ResponseItem;Lcom/codemao/nemo/bean/CourseV2ResponseCourse;)Lcom/codemao/nemo/bean/viewmodel/SubjectItem;
    .registers 15

    new-instance v7, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;

    move-object v0, v7

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;-><init>(JLjava/lang/String;Ljava/lang/String;Lcom/codemao/nemo/bean/CourseV2ResponseItem;Lcom/codemao/nemo/bean/CourseV2ResponseCourse;)V

    return-object v7
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;

    iget-wide v3, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->subjectId:J

    iget-wide v5, p1, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->subjectId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->imageUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->imageUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v2

    :cond_20
    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    return v2

    :cond_2b
    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->response:Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    iget-object v3, p1, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->response:Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    return v2

    :cond_36
    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->courseDetail:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    iget-object p1, p1, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->courseDetail:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_41

    return v2

    :cond_41
    return v0
.end method

.method public final getCourseDetail()Lcom/codemao/nemo/bean/CourseV2ResponseCourse;
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->courseDetail:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    return-object v0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getResponse()Lcom/codemao/nemo/bean/CourseV2ResponseItem;
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->response:Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    return-object v0
.end method

.method public final getSubjectId()J
    .registers 3

    .line 127
    iget-wide v0, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->subjectId:J

    return-wide v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-wide v0, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->subjectId:J

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->imageUrl:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->title:Ljava/lang/String;

    if-nez v1, :cond_1c

    const/4 v1, 0x0

    goto :goto_20

    :cond_1c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_20
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->response:Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    if-nez v1, :cond_29

    const/4 v1, 0x0

    goto :goto_2d

    :cond_29
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->hashCode()I

    move-result v1

    :goto_2d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->courseDetail:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    if-nez v1, :cond_35

    goto :goto_39

    :cond_35
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->hashCode()I

    move-result v2

    :goto_39
    add-int/2addr v0, v2

    return v0
.end method

.method public final setCourseDetail(Lcom/codemao/nemo/bean/CourseV2ResponseCourse;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->courseDetail:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    return-void
.end method

.method public final setImageUrl(Ljava/lang/String;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public final setResponse(Lcom/codemao/nemo/bean/CourseV2ResponseItem;)V
    .registers 2

    .line 130
    iput-object p1, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->response:Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    return-void
.end method

.method public final setSubjectId(J)V
    .registers 3

    .line 127
    iput-wide p1, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->subjectId:J

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubjectItem(subjectId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->subjectId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->response:Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", courseDetail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->courseDetail:Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-wide v0, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->subjectId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 146
    iget-object p2, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object p2, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object p2, p0, Lcom/codemao/nemo/bean/viewmodel/SubjectItem;->response:Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
