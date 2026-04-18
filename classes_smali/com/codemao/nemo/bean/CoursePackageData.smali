.class public Lcom/codemao/nemo/bean/CoursePackageData;
.super Ljava/lang/Object;
.source "CoursePackageData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/codemao/nemo/bean/CoursePackageData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private banner_url:Ljava/lang/String;

.field private course_page:Lcom/codemao/nemo/bean/CourseListDate;

.field private id:J

.field private package_type:I

.field private pad_banner_url:Ljava/lang/String;

.field private subtitle:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 102
    new-instance v0, Lcom/codemao/nemo/bean/CoursePackageData$1;

    invoke-direct {v0}, Lcom/codemao/nemo/bean/CoursePackageData$1;-><init>()V

    sput-object v0, Lcom/codemao/nemo/bean/CoursePackageData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/nemo/bean/CoursePackageData;->id:J

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/bean/CoursePackageData;->banner_url:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/bean/CoursePackageData;->pad_banner_url:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/bean/CoursePackageData;->title:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/bean/CoursePackageData;->subtitle:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/bean/CoursePackageData;->package_type:I

    .line 99
    const-class v0, Lcom/codemao/nemo/bean/CourseListDate;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/CourseListDate;

    iput-object p1, p0, Lcom/codemao/nemo/bean/CoursePackageData;->course_page:Lcom/codemao/nemo/bean/CourseListDate;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getBanner_url()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/codemao/nemo/bean/CoursePackageData;->banner_url:Ljava/lang/String;

    return-object v0
.end method

.method public getCourse_page()Lcom/codemao/nemo/bean/CourseListDate;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/codemao/nemo/bean/CoursePackageData;->course_page:Lcom/codemao/nemo/bean/CourseListDate;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .line 22
    iget-wide v0, p0, Lcom/codemao/nemo/bean/CoursePackageData;->id:J

    return-wide v0
.end method

.method public getPackage_type()I
    .registers 2

    .line 58
    iget v0, p0, Lcom/codemao/nemo/bean/CoursePackageData;->package_type:I

    return v0
.end method

.method public getPad_banner_url()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/codemao/nemo/bean/CoursePackageData;->pad_banner_url:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/codemao/nemo/bean/CoursePackageData;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/codemao/nemo/bean/CoursePackageData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setBanner_url(Ljava/lang/String;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/codemao/nemo/bean/CoursePackageData;->banner_url:Ljava/lang/String;

    return-void
.end method

.method public setCourse_page(Lcom/codemao/nemo/bean/CourseListDate;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/codemao/nemo/bean/CoursePackageData;->course_page:Lcom/codemao/nemo/bean/CourseListDate;

    return-void
.end method

.method public setId(J)V
    .registers 3

    .line 26
    iput-wide p1, p0, Lcom/codemao/nemo/bean/CoursePackageData;->id:J

    return-void
.end method

.method public setPackage_type(I)V
    .registers 2

    .line 62
    iput p1, p0, Lcom/codemao/nemo/bean/CoursePackageData;->package_type:I

    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/codemao/nemo/bean/CoursePackageData;->subtitle:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/codemao/nemo/bean/CoursePackageData;->title:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 80
    iget-wide v0, p0, Lcom/codemao/nemo/bean/CoursePackageData;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 81
    iget-object v0, p0, Lcom/codemao/nemo/bean/CoursePackageData;->banner_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/codemao/nemo/bean/CoursePackageData;->pad_banner_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/codemao/nemo/bean/CoursePackageData;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/codemao/nemo/bean/CoursePackageData;->subtitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget v0, p0, Lcom/codemao/nemo/bean/CoursePackageData;->package_type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-object v0, p0, Lcom/codemao/nemo/bean/CoursePackageData;->course_page:Lcom/codemao/nemo/bean/CourseListDate;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
