.class public final Lcom/codemao/nemo/bean/CourseV2ResponseModel;
.super Ljava/lang/Object;
.source "CourseV2ResponseModel.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/bean/CourseV2ResponseModel$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/codemao/nemo/bean/CourseV2ResponseModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/codemao/nemo/bean/CourseV2ResponseModel$Companion;


# instance fields
.field private final counted:Z

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CourseV2ResponseItem;",
            ">;"
        }
    .end annotation
.end field

.field private final limit:I

.field private final offset:I

.field private final total:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/nemo/bean/CourseV2ResponseModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/nemo/bean/CourseV2ResponseModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->Companion:Lcom/codemao/nemo/bean/CourseV2ResponseModel$Companion;

    .line 33
    new-instance v0, Lcom/codemao/nemo/bean/CourseV2ResponseModel$Companion$CREATOR$1;

    invoke-direct {v0}, Lcom/codemao/nemo/bean/CourseV2ResponseModel$Companion$CREATOR$1;-><init>()V

    sput-object v0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 10

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_e

    const/4 v3, 0x1

    goto :goto_10

    :cond_e
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 15
    :goto_10
    sget-object v0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v2, p0

    .line 13
    invoke-direct/range {v2 .. v7}, Lcom/codemao/nemo/bean/CourseV2ResponseModel;-><init>(ZLjava/util/List;III)V

    return-void
.end method

.method public constructor <init>(ZLjava/util/List;III)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CourseV2ResponseItem;",
            ">;III)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->counted:Z

    .line 8
    iput-object p2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->items:Ljava/util/List;

    .line 9
    iput p3, p0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->limit:I

    .line 10
    iput p4, p0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->offset:I

    .line 11
    iput p5, p0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->total:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/nemo/bean/CourseV2ResponseModel;ZLjava/util/List;IIIILjava/lang/Object;)Lcom/codemao/nemo/bean/CourseV2ResponseModel;
    .registers 11

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget-boolean p1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->counted:Z

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget-object p2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->items:Ljava/util/List;

    :cond_c
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_13

    iget p3, p0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->limit:I

    :cond_13
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_1a

    iget p4, p0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->offset:I

    :cond_1a
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_21

    iget p5, p0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->total:I

    :cond_21
    move v2, p5

    move-object p2, p0

    move p3, p1

    move-object p4, p7

    move p5, v0

    move p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->copy(ZLjava/util/List;III)Lcom/codemao/nemo/bean/CourseV2ResponseModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .registers 2

    iget-boolean v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->counted:Z

    return v0
.end method

.method public final component2()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CourseV2ResponseItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->items:Ljava/util/List;

    return-object v0
.end method

.method public final component3()I
    .registers 2

    iget v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->limit:I

    return v0
.end method

.method public final component4()I
    .registers 2

    iget v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->offset:I

    return v0
.end method

.method public final component5()I
    .registers 2

    iget v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->total:I

    return v0
.end method

.method public final copy(ZLjava/util/List;III)Lcom/codemao/nemo/bean/CourseV2ResponseModel;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CourseV2ResponseItem;",
            ">;III)",
            "Lcom/codemao/nemo/bean/CourseV2ResponseModel;"
        }
    .end annotation

    new-instance v6, Lcom/codemao/nemo/bean/CourseV2ResponseModel;

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/codemao/nemo/bean/CourseV2ResponseModel;-><init>(ZLjava/util/List;III)V

    return-object v6
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/nemo/bean/CourseV2ResponseModel;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/nemo/bean/CourseV2ResponseModel;

    iget-boolean v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->counted:Z

    iget-boolean v3, p1, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->counted:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->items:Ljava/util/List;

    iget-object v3, p1, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->items:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->limit:I

    iget v3, p1, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->limit:I

    if-eq v1, v3, :cond_25

    return v2

    :cond_25
    iget v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->offset:I

    iget v3, p1, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->offset:I

    if-eq v1, v3, :cond_2c

    return v2

    :cond_2c
    iget v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->total:I

    iget p1, p1, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->total:I

    if-eq v1, p1, :cond_33

    return v2

    :cond_33
    return v0
.end method

.method public final getCounted()Z
    .registers 2

    .line 7
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->counted:Z

    return v0
.end method

.method public final getItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CourseV2ResponseItem;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->items:Ljava/util/List;

    return-object v0
.end method

.method public final getLimit()I
    .registers 2

    .line 9
    iget v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->limit:I

    return v0
.end method

.method public final getOffset()I
    .registers 2

    .line 10
    iget v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->offset:I

    return v0
.end method

.method public final getTotal()I
    .registers 2

    .line 11
    iget v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->total:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-boolean v0, p0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->counted:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :cond_5
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->items:Ljava/util/List;

    if-nez v1, :cond_d

    const/4 v1, 0x0

    goto :goto_11

    :cond_d
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_11
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->limit:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->offset:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->total:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CourseV2ResponseModel(counted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->counted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->items:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->limit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-boolean p2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->counted:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    iget-object p2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->items:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 26
    iget p2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->limit:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    iget p2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->offset:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    iget p2, p0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->total:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
