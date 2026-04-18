.class public Lcom/codemao/nemo/bean/CourseListDate;
.super Ljava/lang/Object;
.source "CourseListDate.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/codemao/nemo/bean/CourseListDate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CourseV2ResponseCourse;",
            ">;"
        }
    .end annotation
.end field

.field private limit:I

.field private offset:I

.field private total:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 71
    new-instance v0, Lcom/codemao/nemo/bean/CourseListDate$1;

    invoke-direct {v0}, Lcom/codemao/nemo/bean/CourseListDate$1;-><init>()V

    sput-object v0, Lcom/codemao/nemo/bean/CourseListDate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/bean/CourseListDate;->items:Ljava/util/List;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/bean/CourseListDate;->offset:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/bean/CourseListDate;->limit:I

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/nemo/bean/CourseListDate;->total:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CourseV2ResponseCourse;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/codemao/nemo/bean/CourseListDate;->items:Ljava/util/List;

    return-object v0
.end method

.method public getLimit()I
    .registers 2

    .line 51
    iget v0, p0, Lcom/codemao/nemo/bean/CourseListDate;->limit:I

    return v0
.end method

.method public getOffset()I
    .registers 2

    .line 43
    iget v0, p0, Lcom/codemao/nemo/bean/CourseListDate;->offset:I

    return v0
.end method

.method public getTotal()J
    .registers 3

    .line 59
    iget-wide v0, p0, Lcom/codemao/nemo/bean/CourseListDate;->total:J

    return-wide v0
.end method

.method public setItems(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CourseV2ResponseCourse;",
            ">;)V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/codemao/nemo/bean/CourseListDate;->items:Ljava/util/List;

    return-void
.end method

.method public setLimit(I)V
    .registers 2

    .line 55
    iput p1, p0, Lcom/codemao/nemo/bean/CourseListDate;->limit:I

    return-void
.end method

.method public setOffset(I)V
    .registers 2

    .line 47
    iput p1, p0, Lcom/codemao/nemo/bean/CourseListDate;->offset:I

    return-void
.end method

.method public setTotal(J)V
    .registers 3

    .line 63
    iput-wide p1, p0, Lcom/codemao/nemo/bean/CourseListDate;->total:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 28
    iget-object p2, p0, Lcom/codemao/nemo/bean/CourseListDate;->items:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 29
    iget p2, p0, Lcom/codemao/nemo/bean/CourseListDate;->offset:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    iget p2, p0, Lcom/codemao/nemo/bean/CourseListDate;->limit:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget-wide v0, p0, Lcom/codemao/nemo/bean/CourseListDate;->total:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
