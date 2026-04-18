.class public final Lcom/codemao/creativecenter/bean/PermissionState;
.super Ljava/lang/Object;
.source "PermissionState.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/bean/PermissionState$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPermissionState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PermissionState.kt\ncom/codemao/creativecenter/bean/PermissionState\n*L\n1#1,57:1\n*E\n"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/codemao/creativecenter/bean/PermissionState;",
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

    new-instance v0, Lcom/codemao/creativecenter/bean/PermissionState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/creativecenter/bean/PermissionState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 52
    new-instance v0, Lcom/codemao/creativecenter/bean/PermissionState$Companion$CREATOR$1;

    invoke-direct {v0}, Lcom/codemao/creativecenter/bean/PermissionState$Companion$CREATOR$1;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/bean/PermissionState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_e

    goto :goto_f

    :cond_e
    move-object v0, v1

    .line 36
    :goto_f
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    move-object v1, v2

    .line 37
    :cond_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v4, v2, :cond_20

    const/4 v2, 0x1

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    .line 38
    :goto_21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne v4, p1, :cond_28

    const/4 v3, 0x1

    .line 34
    :cond_28
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/codemao/creativecenter/bean/PermissionState;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 6

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "explain"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/bean/PermissionState;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/codemao/creativecenter/bean/PermissionState;->explain:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/codemao/creativecenter/bean/PermissionState;->isGranted:Z

    iput-boolean p4, p0, Lcom/codemao/creativecenter/bean/PermissionState;->isNeedRationale:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_6

    const-string p2, ""

    :cond_6
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_c

    const/4 p3, 0x0

    :cond_c
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_11

    const/4 p4, 0x0

    .line 32
    :cond_11
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/codemao/creativecenter/bean/PermissionState;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_2b

    instance-of v0, p1, Lcom/codemao/creativecenter/bean/PermissionState;

    if-eqz v0, :cond_29

    check-cast p1, Lcom/codemao/creativecenter/bean/PermissionState;

    iget-object v0, p0, Lcom/codemao/creativecenter/bean/PermissionState;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/codemao/creativecenter/bean/PermissionState;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/codemao/creativecenter/bean/PermissionState;->explain:Ljava/lang/String;

    iget-object v1, p1, Lcom/codemao/creativecenter/bean/PermissionState;->explain:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lcom/codemao/creativecenter/bean/PermissionState;->isGranted:Z

    iget-boolean v1, p1, Lcom/codemao/creativecenter/bean/PermissionState;->isGranted:Z

    if-ne v0, v1, :cond_29

    iget-boolean v0, p0, Lcom/codemao/creativecenter/bean/PermissionState;->isNeedRationale:Z

    iget-boolean p1, p1, Lcom/codemao/creativecenter/bean/PermissionState;->isNeedRationale:Z

    if-ne v0, p1, :cond_29

    goto :goto_2b

    :cond_29
    const/4 p1, 0x0

    return p1

    :cond_2b
    :goto_2b
    const/4 p1, 0x1

    return p1
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/codemao/creativecenter/bean/PermissionState;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/creativecenter/bean/PermissionState;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/creativecenter/bean/PermissionState;->explain:Ljava/lang/String;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_15
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/codemao/creativecenter/bean/PermissionState;->isGranted:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/codemao/creativecenter/bean/PermissionState;->isNeedRationale:Z

    if-eqz v1, :cond_26

    goto :goto_27

    :cond_26
    move v2, v1

    :goto_27
    add-int/2addr v0, v2

    return v0
.end method

.method public final isGranted()Z
    .registers 2

    .line 27
    iget-boolean v0, p0, Lcom/codemao/creativecenter/bean/PermissionState;->isGranted:Z

    return v0
.end method

.method public final isNeedRationale()Z
    .registers 2

    .line 32
    iget-boolean v0, p0, Lcom/codemao/creativecenter/bean/PermissionState;->isNeedRationale:Z

    return v0
.end method

.method public final setGranted(Z)V
    .registers 2

    .line 27
    iput-boolean p1, p0, Lcom/codemao/creativecenter/bean/PermissionState;->isGranted:Z

    return-void
.end method

.method public final setNeedRationale(Z)V
    .registers 2

    .line 32
    iput-boolean p1, p0, Lcom/codemao/creativecenter/bean/PermissionState;->isNeedRationale:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PermissionState(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativecenter/bean/PermissionState;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", explain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativecenter/bean/PermissionState;->explain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isGranted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/creativecenter/bean/PermissionState;->isGranted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isNeedRationale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/creativecenter/bean/PermissionState;->isNeedRationale:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object p2, p0, Lcom/codemao/creativecenter/bean/PermissionState;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object p2, p0, Lcom/codemao/creativecenter/bean/PermissionState;->explain:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-boolean p2, p0, Lcom/codemao/creativecenter/bean/PermissionState;->isGranted:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-boolean p2, p0, Lcom/codemao/creativecenter/bean/PermissionState;->isNeedRationale:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
