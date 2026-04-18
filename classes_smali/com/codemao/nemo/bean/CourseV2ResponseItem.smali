.class public final Lcom/codemao/nemo/bean/CourseV2ResponseItem;
.super Ljava/lang/Object;
.source "CourseV2ResponseModel.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/bean/CourseV2ResponseItem$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/codemao/nemo/bean/CourseV2ResponseItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/codemao/nemo/bean/CourseV2ResponseItem$Companion;


# instance fields
.field private final banner_url:Ljava/lang/String;

.field private final course_page:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CourseV2ResponseCourse;",
            ">;"
        }
    .end annotation
.end field

.field private final course_type_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final id:J

.field private package_type:I

.field private final pad_banner_url:Ljava/lang/String;

.field private final subtitle:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final total_course:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/nemo/bean/CourseV2ResponseItem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/nemo/bean/CourseV2ResponseItem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->Companion:Lcom/codemao/nemo/bean/CourseV2ResponseItem$Companion;

    .line 79
    new-instance v0, Lcom/codemao/nemo/bean/CourseV2ResponseItem$Companion$CREATOR$1;

    invoke-direct {v0}, Lcom/codemao/nemo/bean/CourseV2ResponseItem$Companion$CREATOR$1;-><init>()V

    sput-object v0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 14

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 54
    sget-object v0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    move-object v1, p0

    .line 51
    invoke-direct/range {v1 .. v11}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JILjava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CourseV2ResponseCourse;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->banner_url:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->pad_banner_url:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->course_page:Ljava/util/List;

    .line 44
    iput-object p4, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->course_type_list:Ljava/util/List;

    .line 45
    iput-wide p5, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->id:J

    .line 46
    iput p7, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->package_type:I

    .line 47
    iput-object p8, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->subtitle:Ljava/lang/String;

    .line 48
    iput-object p9, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->title:Ljava/lang/String;

    .line 49
    iput p10, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->total_course:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/nemo/bean/CourseV2ResponseItem;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JILjava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lcom/codemao/nemo/bean/CourseV2ResponseItem;
    .registers 24

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->banner_url:Ljava/lang/String;

    goto :goto_b

    :cond_a
    move-object v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget-object v3, v0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->pad_banner_url:Ljava/lang/String;

    goto :goto_13

    :cond_12
    move-object v3, p2

    :goto_13
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->course_page:Ljava/util/List;

    goto :goto_1b

    :cond_1a
    move-object v4, p3

    :goto_1b
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_22

    iget-object v5, v0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->course_type_list:Ljava/util/List;

    goto :goto_23

    :cond_22
    move-object v5, p4

    :goto_23
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2a

    iget-wide v6, v0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->id:J

    goto :goto_2c

    :cond_2a
    move-wide/from16 v6, p5

    :goto_2c
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_33

    iget v8, v0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->package_type:I

    goto :goto_35

    :cond_33
    move/from16 v8, p7

    :goto_35
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_3c

    iget-object v9, v0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->subtitle:Ljava/lang/String;

    goto :goto_3e

    :cond_3c
    move-object/from16 v9, p8

    :goto_3e
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_45

    iget-object v10, v0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->title:Ljava/lang/String;

    goto :goto_47

    :cond_45
    move-object/from16 v10, p9

    :goto_47
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_4e

    iget v1, v0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->total_course:I

    goto :goto_50

    :cond_4e
    move/from16 v1, p10

    :goto_50
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-wide/from16 p5, v6

    move/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JILjava/lang/String;Ljava/lang/String;I)Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->banner_url:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->pad_banner_url:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CourseV2ResponseCourse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->course_page:Ljava/util/List;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->course_type_list:Ljava/util/List;

    return-object v0
.end method

.method public final component5()J
    .registers 3

    iget-wide v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->id:J

    return-wide v0
.end method

.method public final component6()I
    .registers 2

    iget v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->package_type:I

    return v0
.end method

.method public final component7()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()I
    .registers 2

    iget v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->total_course:I

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JILjava/lang/String;Ljava/lang/String;I)Lcom/codemao/nemo/bean/CourseV2ResponseItem;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CourseV2ResponseCourse;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/codemao/nemo/bean/CourseV2ResponseItem;"
        }
    .end annotation

    new-instance v11, Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JILjava/lang/String;Ljava/lang/String;I)V

    return-object v11
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
    instance-of v1, p1, Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    iget-object v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->banner_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->banner_url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->pad_banner_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->pad_banner_url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->course_page:Ljava/util/List;

    iget-object v3, p1, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->course_page:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->course_type_list:Ljava/util/List;

    iget-object v3, p1, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->course_type_list:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-wide v3, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->id:J

    iget-wide v5, p1, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_41

    return v2

    :cond_41
    iget v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->package_type:I

    iget v3, p1, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->package_type:I

    if-eq v1, v3, :cond_48

    return v2

    :cond_48
    iget-object v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->subtitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->subtitle:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    return v2

    :cond_53
    iget-object v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    return v2

    :cond_5e
    iget v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->total_course:I

    iget p1, p1, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->total_course:I

    if-eq v1, p1, :cond_65

    return v2

    :cond_65
    return v0
.end method

.method public final getBanner_url()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->banner_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getCourse_page()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CourseV2ResponseCourse;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->course_page:Ljava/util/List;

    return-object v0
.end method

.method public final getCourse_type_list()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->course_type_list:Ljava/util/List;

    return-object v0
.end method

.method public final getId()J
    .registers 3

    .line 45
    iget-wide v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->id:J

    return-wide v0
.end method

.method public final getPackage_type()I
    .registers 2

    .line 46
    iget v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->package_type:I

    return v0
.end method

.method public final getPad_banner_url()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->pad_banner_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubtitle()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getTotal_course()I
    .registers 2

    .line 49
    iget v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->total_course:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->banner_url:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->pad_banner_url:Ljava/lang/String;

    if-nez v2, :cond_13

    const/4 v2, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->course_page:Ljava/util/List;

    if-nez v2, :cond_20

    const/4 v2, 0x0

    goto :goto_24

    :cond_20
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->course_type_list:Ljava/util/List;

    if-nez v2, :cond_2d

    const/4 v2, 0x0

    goto :goto_31

    :cond_2d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->id:J

    invoke-static {v2, v3}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean$$ExternalSyntheticBackport0;->m(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->package_type:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->subtitle:Ljava/lang/String;

    if-nez v2, :cond_48

    const/4 v2, 0x0

    goto :goto_4c

    :cond_48
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->title:Ljava/lang/String;

    if-nez v2, :cond_54

    goto :goto_58

    :cond_54
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_58
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->total_course:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setPackage_type(I)V
    .registers 2

    .line 46
    iput p1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->package_type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CourseV2ResponseItem(banner_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->banner_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pad_banner_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->pad_banner_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", course_page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->course_page:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", course_type_list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->course_type_list:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", package_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->package_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", subtitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->subtitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", total_course="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->total_course:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 66
    iget-object p2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->banner_url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object p2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->pad_banner_url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object p2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->course_page:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 69
    iget-object p2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->course_type_list:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 70
    iget-wide v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 71
    iget p2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->package_type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-object p2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->subtitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object p2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget p2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->total_course:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
