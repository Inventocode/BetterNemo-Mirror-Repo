.class public final Lcom/codemao/nemo/bean/CourseV2ResponseCourse$Companion$CREATOR$1;
.super Ljava/lang/Object;
.source "CourseV2ResponseModel.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/bean/CourseV2ResponseCourse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/codemao/nemo/bean/CourseV2ResponseCourse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/codemao/nemo/bean/CourseV2ResponseCourse;
    .registers 3

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    new-instance v0, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    invoke-direct {v0, p1}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 143
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse$Companion$CREATOR$1;->createFromParcel(Landroid/os/Parcel;)Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/codemao/nemo/bean/CourseV2ResponseCourse;
    .registers 2

    .line 145
    new-array p1, p1, [Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 143
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse$Companion$CREATOR$1;->newArray(I)[Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    move-result-object p1

    return-object p1
.end method
