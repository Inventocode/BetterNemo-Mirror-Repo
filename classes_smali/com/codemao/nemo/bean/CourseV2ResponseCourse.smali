.class public final Lcom/codemao/nemo/bean/CourseV2ResponseCourse;
.super Ljava/lang/Object;
.source "CourseV2ResponseModel.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/bean/CourseV2ResponseCourse$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/codemao/nemo/bean/CourseV2ResponseCourse;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/codemao/nemo/bean/CourseV2ResponseCourse$Companion;

.field public static final PLATFORM_BOX:Ljava/lang/String; = "BOX"

.field public static final PLATFORM_BOX2:Ljava/lang/String; = "BOX2"

.field public static final PLATFORM_BOX3:Ljava/lang/String; = "BOX3"

.field public static final PLATFORM_KIDS:Ljava/lang/String; = "KIDS"

.field public static final PLATFORM_KITTEN3:Ljava/lang/String; = "KITTEN3"

.field public static final PLATFORM_KITTEN4:Ljava/lang/String; = "KITTEN4"

.field public static final PLATFORM_KITTENN:Ljava/lang/String; = "KITTENN"

.field public static final PLATFORM_KN:Ljava/lang/String; = "NEKO"

.field public static final PLATFORM_NEMO:Ljava/lang/String; = "NEMO"

.field public static final PLATFORM_OTHER:Ljava/lang/String; = "OTHER"

.field public static final PLATFORM_WOOD:Ljava/lang/String; = "WOOD"


# instance fields
.field private final course_bcm_url:Ljava/lang/String;

.field private course_bcm_version:Ljava/lang/String;

.field private final description:Ljava/lang/String;

.field private final id:J

.field private final main_push_preview_url:Ljava/lang/String;

.field private final pad_main_push_preview_url:Ljava/lang/String;

.field private final platform:Ljava/lang/String;

.field private final preview_url:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final type:Ljava/lang/String;

.field private final video_url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->Companion:Lcom/codemao/nemo/bean/CourseV2ResponseCourse$Companion;

    .line 143
    new-instance v0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse$Companion$CREATOR$1;

    invoke-direct {v0}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse$Companion$CREATOR$1;-><init>()V

    sput-object v0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 16

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object v1, p0

    .line 99
    invoke-direct/range {v1 .. v13}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->description:Ljava/lang/String;

    .line 88
    iput-wide p2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->id:J

    .line 89
    iput-object p4, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->main_push_preview_url:Ljava/lang/String;

    .line 90
    iput-object p5, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->pad_main_push_preview_url:Ljava/lang/String;

    .line 91
    iput-object p6, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->platform:Ljava/lang/String;

    .line 92
    iput-object p7, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->preview_url:Ljava/lang/String;

    .line 93
    iput-object p8, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->title:Ljava/lang/String;

    .line 94
    iput-object p9, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->type:Ljava/lang/String;

    .line 95
    iput-object p10, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->video_url:Ljava/lang/String;

    .line 96
    iput-object p11, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->course_bcm_url:Ljava/lang/String;

    .line 97
    iput-object p12, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->course_bcm_version:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/nemo/bean/CourseV2ResponseCourse;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/codemao/nemo/bean/CourseV2ResponseCourse;
    .registers 28

    move-object v0, p0

    move/from16 v1, p13

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->description:Ljava/lang/String;

    goto :goto_b

    :cond_a
    move-object v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget-wide v3, v0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->id:J

    goto :goto_13

    :cond_12
    move-wide v3, p2

    :goto_13
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_1a

    iget-object v5, v0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->main_push_preview_url:Ljava/lang/String;

    goto :goto_1c

    :cond_1a
    move-object/from16 v5, p4

    :goto_1c
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_23

    iget-object v6, v0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->pad_main_push_preview_url:Ljava/lang/String;

    goto :goto_25

    :cond_23
    move-object/from16 v6, p5

    :goto_25
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_2c

    iget-object v7, v0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->platform:Ljava/lang/String;

    goto :goto_2e

    :cond_2c
    move-object/from16 v7, p6

    :goto_2e
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_35

    iget-object v8, v0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->preview_url:Ljava/lang/String;

    goto :goto_37

    :cond_35
    move-object/from16 v8, p7

    :goto_37
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_3e

    iget-object v9, v0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->title:Ljava/lang/String;

    goto :goto_40

    :cond_3e
    move-object/from16 v9, p8

    :goto_40
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_47

    iget-object v10, v0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->type:Ljava/lang/String;

    goto :goto_49

    :cond_47
    move-object/from16 v10, p9

    :goto_49
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_50

    iget-object v11, v0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->video_url:Ljava/lang/String;

    goto :goto_52

    :cond_50
    move-object/from16 v11, p10

    :goto_52
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_59

    iget-object v12, v0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->course_bcm_url:Ljava/lang/String;

    goto :goto_5b

    :cond_59
    move-object/from16 v12, p11

    :goto_5b
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_62

    iget-object v1, v0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->course_bcm_version:Ljava/lang/String;

    goto :goto_64

    :cond_62
    move-object/from16 v1, p12

    :goto_64
    move-object p1, v2

    move-wide p2, v3

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v1

    invoke-virtual/range {p0 .. p12}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->copy(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->course_bcm_url:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->course_bcm_version:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()J
    .registers 3

    iget-wide v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->id:J

    return-wide v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->main_push_preview_url:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->pad_main_push_preview_url:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->preview_url:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->video_url:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/nemo/bean/CourseV2ResponseCourse;
    .registers 27

    new-instance v13, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    move-object v0, v13

    move-object v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v13
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
    instance-of v1, p1, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    iget-object v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-wide v3, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->id:J

    iget-wide v5, p1, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_20

    return v2

    :cond_20
    iget-object v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->main_push_preview_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->main_push_preview_url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    return v2

    :cond_2b
    iget-object v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->pad_main_push_preview_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->pad_main_push_preview_url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    return v2

    :cond_36
    iget-object v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->platform:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->platform:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    return v2

    :cond_41
    iget-object v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->preview_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->preview_url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    return v2

    :cond_4c
    iget-object v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    return v2

    :cond_57
    iget-object v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    return v2

    :cond_62
    iget-object v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->video_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->video_url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    return v2

    :cond_6d
    iget-object v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->course_bcm_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->course_bcm_url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    return v2

    :cond_78
    iget-object v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->course_bcm_version:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->course_bcm_version:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_83

    return v2

    :cond_83
    return v0
.end method

.method public final getCourse_bcm_url()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->course_bcm_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getCourse_bcm_version()Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->course_bcm_version:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()J
    .registers 3

    .line 88
    iget-wide v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->id:J

    return-wide v0
.end method

.method public final getMain_push_preview_url()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->main_push_preview_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getPad_main_push_preview_url()Ljava/lang/String;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->pad_main_push_preview_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlatform()Ljava/lang/String;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public final getPreview_url()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->preview_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideo_url()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->video_url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->description:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->id:J

    invoke-static {v2, v3}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean$$ExternalSyntheticBackport0;->m(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->main_push_preview_url:Ljava/lang/String;

    if-nez v2, :cond_1c

    const/4 v2, 0x0

    goto :goto_20

    :cond_1c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_20
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->pad_main_push_preview_url:Ljava/lang/String;

    if-nez v2, :cond_29

    const/4 v2, 0x0

    goto :goto_2d

    :cond_29
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->platform:Ljava/lang/String;

    if-nez v2, :cond_36

    const/4 v2, 0x0

    goto :goto_3a

    :cond_36
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->preview_url:Ljava/lang/String;

    if-nez v2, :cond_43

    const/4 v2, 0x0

    goto :goto_47

    :cond_43
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_47
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->title:Ljava/lang/String;

    if-nez v2, :cond_50

    const/4 v2, 0x0

    goto :goto_54

    :cond_50
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_54
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->type:Ljava/lang/String;

    if-nez v2, :cond_5d

    const/4 v2, 0x0

    goto :goto_61

    :cond_5d
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_61
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->video_url:Ljava/lang/String;

    if-nez v2, :cond_6a

    const/4 v2, 0x0

    goto :goto_6e

    :cond_6a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->course_bcm_url:Ljava/lang/String;

    if-nez v2, :cond_77

    const/4 v2, 0x0

    goto :goto_7b

    :cond_77
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->course_bcm_version:Ljava/lang/String;

    if-nez v2, :cond_83

    goto :goto_87

    :cond_83
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_87
    add-int/2addr v0, v1

    return v0
.end method

.method public final setCourse_bcm_version(Ljava/lang/String;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->course_bcm_version:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CourseV2ResponseCourse(description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", main_push_preview_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->main_push_preview_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pad_main_push_preview_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->pad_main_push_preview_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", platform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->platform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", preview_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->preview_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", video_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->video_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", course_bcm_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->course_bcm_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", course_bcm_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->course_bcm_version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 116
    iget-object p2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-wide v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 118
    iget-object p2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->main_push_preview_url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object p2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->pad_main_push_preview_url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object p2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->platform:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object p2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->preview_url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object p2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object p2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object p2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->video_url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object p2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->course_bcm_url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object p2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->course_bcm_version:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
