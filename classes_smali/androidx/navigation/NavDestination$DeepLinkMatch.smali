.class Landroidx/navigation/NavDestination$DeepLinkMatch;
.super Ljava/lang/Object;
.source "NavDestination.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/NavDestination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DeepLinkMatch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/navigation/NavDestination$DeepLinkMatch;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDestination:Landroidx/navigation/NavDestination;

.field private final mHasMatchingAction:Z

.field private final mIsExactDeepLink:Z

.field private final mMatchingArgs:Landroid/os/Bundle;

.field private final mMimeTypeMatchLevel:I


# direct methods
.method constructor <init>(Landroidx/navigation/NavDestination;Landroid/os/Bundle;ZZI)V
    .registers 6

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->mDestination:Landroidx/navigation/NavDestination;

    .line 88
    iput-object p2, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->mMatchingArgs:Landroid/os/Bundle;

    .line 89
    iput-boolean p3, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->mIsExactDeepLink:Z

    .line 90
    iput-boolean p4, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->mHasMatchingAction:Z

    .line 91
    iput p5, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->mMimeTypeMatchLevel:I

    return-void
.end method


# virtual methods
.method public compareTo(Landroidx/navigation/NavDestination$DeepLinkMatch;)I
    .registers 6

    .line 107
    iget-boolean v0, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->mIsExactDeepLink:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    iget-boolean v2, p1, Landroidx/navigation/NavDestination$DeepLinkMatch;->mIsExactDeepLink:Z

    if-nez v2, :cond_a

    return v1

    :cond_a
    const/4 v2, -0x1

    if-nez v0, :cond_12

    .line 109
    iget-boolean v0, p1, Landroidx/navigation/NavDestination$DeepLinkMatch;->mIsExactDeepLink:Z

    if-eqz v0, :cond_12

    return v2

    .line 113
    :cond_12
    iget-object v0, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->mMatchingArgs:Landroid/os/Bundle;

    if-eqz v0, :cond_1b

    iget-object v3, p1, Landroidx/navigation/NavDestination$DeepLinkMatch;->mMatchingArgs:Landroid/os/Bundle;

    if-nez v3, :cond_1b

    return v1

    :cond_1b
    if-nez v0, :cond_22

    .line 115
    iget-object v3, p1, Landroidx/navigation/NavDestination$DeepLinkMatch;->mMatchingArgs:Landroid/os/Bundle;

    if-eqz v3, :cond_22

    return v2

    :cond_22
    if-eqz v0, :cond_35

    .line 120
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    iget-object v3, p1, Landroidx/navigation/NavDestination$DeepLinkMatch;->mMatchingArgs:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v3

    sub-int/2addr v0, v3

    if-lez v0, :cond_32

    return v1

    :cond_32
    if-gez v0, :cond_35

    return v2

    .line 128
    :cond_35
    iget-boolean v0, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->mHasMatchingAction:Z

    if-eqz v0, :cond_3e

    iget-boolean v3, p1, Landroidx/navigation/NavDestination$DeepLinkMatch;->mHasMatchingAction:Z

    if-nez v3, :cond_3e

    return v1

    :cond_3e
    if-nez v0, :cond_45

    .line 130
    iget-boolean v0, p1, Landroidx/navigation/NavDestination$DeepLinkMatch;->mHasMatchingAction:Z

    if-eqz v0, :cond_45

    return v2

    .line 134
    :cond_45
    iget v0, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->mMimeTypeMatchLevel:I

    iget p1, p1, Landroidx/navigation/NavDestination$DeepLinkMatch;->mMimeTypeMatchLevel:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 75
    check-cast p1, Landroidx/navigation/NavDestination$DeepLinkMatch;

    invoke-virtual {p0, p1}, Landroidx/navigation/NavDestination$DeepLinkMatch;->compareTo(Landroidx/navigation/NavDestination$DeepLinkMatch;)I

    move-result p1

    return p1
.end method

.method getDestination()Landroidx/navigation/NavDestination;
    .registers 2

    .line 96
    iget-object v0, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->mDestination:Landroidx/navigation/NavDestination;

    return-object v0
.end method

.method getMatchingArgs()Landroid/os/Bundle;
    .registers 2

    .line 101
    iget-object v0, p0, Landroidx/navigation/NavDestination$DeepLinkMatch;->mMatchingArgs:Landroid/os/Bundle;

    return-object v0
.end method
