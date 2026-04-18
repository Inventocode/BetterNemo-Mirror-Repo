.class public final Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;
.super Ljava/lang/Object;
.source "ShareInfoBean.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/qrscan/bean/ShareInfoBean$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private flag:I

.field private shareDes:Ljava/lang/String;

.field private shareImgPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 53
    new-instance v0, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean$Companion$CREATOR$1;

    invoke-direct {v0}, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean$Companion$CREATOR$1;-><init>()V

    sput-object v0, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "shareImgPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shareDes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;->flag:I

    iput-object p2, p0, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;->shareImgPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;->shareDes:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_12

    move-object v1, v2

    .line 40
    :cond_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_19

    goto :goto_1a

    :cond_19
    move-object v2, p1

    .line 37
    :goto_1a
    invoke-direct {p0, v0, v1, v2}, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
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
    instance-of v1, p1, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;

    iget v1, p0, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;->flag:I

    iget v3, p1, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;->flag:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;->shareImgPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;->shareImgPath:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;->shareDes:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;->shareDes:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    return v2

    :cond_29
    return v0
.end method

.method public final getShareDes()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;->shareDes:Ljava/lang/String;

    return-object v0
.end method

.method public final getShareImgPath()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;->shareImgPath:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;->flag:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;->shareImgPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;->shareDes:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isNeedShow(I)Z
    .registers 3

    .line 23
    iget v0, p0, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;->flag:I

    shr-int p1, v0, p1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final lastShowIndex()I
    .registers 3

    const/4 v0, 0x6

    :goto_1
    const/4 v1, -0x1

    if-ge v1, v0, :cond_e

    .line 29
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;->isNeedShow(I)Z

    move-result v1

    if-eqz v1, :cond_b

    return v0

    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_e
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShareInfoBean(flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;->flag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", shareImgPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;->shareImgPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shareDes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;->shareDes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 46
    iget p2, p0, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;->flag:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-object p2, p0, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;->shareImgPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object p2, p0, Lcom/codemao/nemo/qrscan/bean/ShareInfoBean;->shareDes:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
