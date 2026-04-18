.class public final Lcom/codemao/nemo/util/permission/PermissionState;
.super Ljava/lang/Object;
.source "PermissionState.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/util/permission/PermissionState$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/codemao/nemo/util/permission/PermissionState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private explain:Ljava/lang/String;

.field private isGranted:Z

.field private isNeedRationale:Z

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/nemo/util/permission/PermissionState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/nemo/util/permission/PermissionState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 52
    new-instance v0, Lcom/codemao/nemo/util/permission/PermissionState$Companion$CREATOR$1;

    invoke-direct {v0}, Lcom/codemao/nemo/util/permission/PermissionState$Companion$CREATOR$1;-><init>()V

    sput-object v0, Lcom/codemao/nemo/util/permission/PermissionState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v4, v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    .line 38
    :goto_18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne v4, p1, :cond_1f

    const/4 v3, 0x1

    .line 34
    :cond_1f
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/codemao/nemo/util/permission/PermissionState;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 5

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/codemao/nemo/util/permission/PermissionState;->name:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/codemao/nemo/util/permission/PermissionState;->explain:Ljava/lang/String;

    .line 27
    iput-boolean p3, p0, Lcom/codemao/nemo/util/permission/PermissionState;->isGranted:Z

    .line 32
    iput-boolean p4, p0, Lcom/codemao/nemo/util/permission/PermissionState;->isNeedRationale:Z

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
    instance-of v1, p1, Lcom/codemao/nemo/util/permission/PermissionState;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/nemo/util/permission/PermissionState;

    iget-object v1, p0, Lcom/codemao/nemo/util/permission/PermissionState;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/util/permission/PermissionState;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/nemo/util/permission/PermissionState;->explain:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/util/permission/PermissionState;->explain:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-boolean v1, p0, Lcom/codemao/nemo/util/permission/PermissionState;->isGranted:Z

    iget-boolean v3, p1, Lcom/codemao/nemo/util/permission/PermissionState;->isGranted:Z

    if-eq v1, v3, :cond_29

    return v2

    :cond_29
    iget-boolean v1, p0, Lcom/codemao/nemo/util/permission/PermissionState;->isNeedRationale:Z

    iget-boolean p1, p1, Lcom/codemao/nemo/util/permission/PermissionState;->isNeedRationale:Z

    if-eq v1, p1, :cond_30

    return v2

    :cond_30
    return v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/nemo/util/permission/PermissionState;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/util/permission/PermissionState;->explain:Ljava/lang/String;

    if-nez v2, :cond_12

    goto :goto_16

    :cond_12
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_16
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/codemao/nemo/util/permission/PermissionState;->isGranted:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/codemao/nemo/util/permission/PermissionState;->isNeedRationale:Z

    if-eqz v1, :cond_27

    goto :goto_28

    :cond_27
    move v2, v1

    :goto_28
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PermissionState(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/util/permission/PermissionState;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", explain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/util/permission/PermissionState;->explain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isGranted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/nemo/util/permission/PermissionState;->isGranted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isNeedRationale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/nemo/util/permission/PermissionState;->isNeedRationale:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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

    .line 44
    iget-object p2, p0, Lcom/codemao/nemo/util/permission/PermissionState;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object p2, p0, Lcom/codemao/nemo/util/permission/PermissionState;->explain:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-boolean p2, p0, Lcom/codemao/nemo/util/permission/PermissionState;->isGranted:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-boolean p2, p0, Lcom/codemao/nemo/util/permission/PermissionState;->isNeedRationale:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
