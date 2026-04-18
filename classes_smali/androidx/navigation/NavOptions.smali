.class public final Landroidx/navigation/NavOptions;
.super Ljava/lang/Object;
.source "NavOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavOptions$Builder;
    }
.end annotation


# instance fields
.field private mEnterAnim:I

.field private mExitAnim:I

.field private mPopEnterAnim:I

.field private mPopExitAnim:I

.field private mPopUpTo:I

.field private mPopUpToInclusive:Z

.field private mSingleTop:Z


# direct methods
.method constructor <init>(ZIZIIII)V
    .registers 8

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean p1, p0, Landroidx/navigation/NavOptions;->mSingleTop:Z

    .line 45
    iput p2, p0, Landroidx/navigation/NavOptions;->mPopUpTo:I

    .line 46
    iput-boolean p3, p0, Landroidx/navigation/NavOptions;->mPopUpToInclusive:Z

    .line 47
    iput p4, p0, Landroidx/navigation/NavOptions;->mEnterAnim:I

    .line 48
    iput p5, p0, Landroidx/navigation/NavOptions;->mExitAnim:I

    .line 49
    iput p6, p0, Landroidx/navigation/NavOptions;->mPopEnterAnim:I

    .line 50
    iput p7, p0, Landroidx/navigation/NavOptions;->mPopExitAnim:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3f

    .line 126
    const-class v2, Landroidx/navigation/NavOptions;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_3f

    .line 127
    :cond_10
    check-cast p1, Landroidx/navigation/NavOptions;

    .line 128
    iget-boolean v2, p0, Landroidx/navigation/NavOptions;->mSingleTop:Z

    iget-boolean v3, p1, Landroidx/navigation/NavOptions;->mSingleTop:Z

    if-ne v2, v3, :cond_3d

    iget v2, p0, Landroidx/navigation/NavOptions;->mPopUpTo:I

    iget v3, p1, Landroidx/navigation/NavOptions;->mPopUpTo:I

    if-ne v2, v3, :cond_3d

    iget-boolean v2, p0, Landroidx/navigation/NavOptions;->mPopUpToInclusive:Z

    iget-boolean v3, p1, Landroidx/navigation/NavOptions;->mPopUpToInclusive:Z

    if-ne v2, v3, :cond_3d

    iget v2, p0, Landroidx/navigation/NavOptions;->mEnterAnim:I

    iget v3, p1, Landroidx/navigation/NavOptions;->mEnterAnim:I

    if-ne v2, v3, :cond_3d

    iget v2, p0, Landroidx/navigation/NavOptions;->mExitAnim:I

    iget v3, p1, Landroidx/navigation/NavOptions;->mExitAnim:I

    if-ne v2, v3, :cond_3d

    iget v2, p0, Landroidx/navigation/NavOptions;->mPopEnterAnim:I

    iget v3, p1, Landroidx/navigation/NavOptions;->mPopEnterAnim:I

    if-ne v2, v3, :cond_3d

    iget v2, p0, Landroidx/navigation/NavOptions;->mPopExitAnim:I

    iget p1, p1, Landroidx/navigation/NavOptions;->mPopExitAnim:I

    if-ne v2, p1, :cond_3d

    goto :goto_3e

    :cond_3d
    const/4 v0, 0x0

    :goto_3e
    return v0

    :cond_3f
    :goto_3f
    return v1
.end method

.method public getEnterAnim()I
    .registers 2

    .line 91
    iget v0, p0, Landroidx/navigation/NavOptions;->mEnterAnim:I

    return v0
.end method

.method public getExitAnim()I
    .registers 2

    .line 100
    iget v0, p0, Landroidx/navigation/NavOptions;->mExitAnim:I

    return v0
.end method

.method public getPopEnterAnim()I
    .registers 2

    .line 110
    iget v0, p0, Landroidx/navigation/NavOptions;->mPopEnterAnim:I

    return v0
.end method

.method public getPopExitAnim()I
    .registers 2

    .line 120
    iget v0, p0, Landroidx/navigation/NavOptions;->mPopExitAnim:I

    return v0
.end method

.method public getPopUpTo()I
    .registers 2

    .line 73
    iget v0, p0, Landroidx/navigation/NavOptions;->mPopUpTo:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 139
    invoke-virtual {p0}, Landroidx/navigation/NavOptions;->shouldLaunchSingleTop()Z

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 140
    invoke-virtual {p0}, Landroidx/navigation/NavOptions;->getPopUpTo()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 141
    invoke-virtual {p0}, Landroidx/navigation/NavOptions;->isPopUpToInclusive()Z

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 142
    invoke-virtual {p0}, Landroidx/navigation/NavOptions;->getEnterAnim()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 143
    invoke-virtual {p0}, Landroidx/navigation/NavOptions;->getExitAnim()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 144
    invoke-virtual {p0}, Landroidx/navigation/NavOptions;->getPopEnterAnim()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 145
    invoke-virtual {p0}, Landroidx/navigation/NavOptions;->getPopExitAnim()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isPopUpToInclusive()Z
    .registers 2

    .line 82
    iget-boolean v0, p0, Landroidx/navigation/NavOptions;->mPopUpToInclusive:Z

    return v0
.end method

.method public shouldLaunchSingleTop()Z
    .registers 2

    .line 61
    iget-boolean v0, p0, Landroidx/navigation/NavOptions;->mSingleTop:Z

    return v0
.end method
