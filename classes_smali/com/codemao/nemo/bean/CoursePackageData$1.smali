.class Lcom/codemao/nemo/bean/CoursePackageData$1;
.super Ljava/lang/Object;
.source "CoursePackageData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/bean/CoursePackageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/codemao/nemo/bean/CoursePackageData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/codemao/nemo/bean/CoursePackageData;
    .registers 3

    .line 105
    new-instance v0, Lcom/codemao/nemo/bean/CoursePackageData;

    invoke-direct {v0, p1}, Lcom/codemao/nemo/bean/CoursePackageData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 102
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/bean/CoursePackageData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/codemao/nemo/bean/CoursePackageData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/codemao/nemo/bean/CoursePackageData;
    .registers 2

    .line 110
    new-array p1, p1, [Lcom/codemao/nemo/bean/CoursePackageData;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 102
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/bean/CoursePackageData$1;->newArray(I)[Lcom/codemao/nemo/bean/CoursePackageData;

    move-result-object p1

    return-object p1
.end method
