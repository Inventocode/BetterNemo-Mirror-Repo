.class public Landroidx/navigation/NavGraph;
.super Landroidx/navigation/NavDestination;
.source "NavGraph.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigation/NavDestination;",
        "Ljava/lang/Iterable<",
        "Landroidx/navigation/NavDestination;",
        ">;"
    }
.end annotation


# instance fields
.field final mNodes:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Landroidx/navigation/NavDestination;",
            ">;"
        }
    .end annotation
.end field

.field private mStartDestId:I

.field private mStartDestIdName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/navigation/Navigator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavGraph;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1}, Landroidx/navigation/NavDestination;-><init>(Landroidx/navigation/Navigator;)V

    .line 42
    new-instance p1, Landroidx/collection/SparseArrayCompat;

    invoke-direct {p1}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object p1, p0, Landroidx/navigation/NavGraph;->mNodes:Landroidx/collection/SparseArrayCompat;

    return-void
.end method


# virtual methods
.method public final addDestination(Landroidx/navigation/NavDestination;)V
    .registers 5

    .line 99
    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    if-eqz v0, :cond_57

    .line 104
    invoke-virtual {p0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v1

    if-eq v0, v1, :cond_38

    .line 108
    iget-object v1, p0, Landroidx/navigation/NavGraph;->mNodes:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavDestination;

    if-ne v0, p1, :cond_17

    return-void

    .line 112
    :cond_17
    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v1

    if-nez v1, :cond_30

    if-eqz v0, :cond_23

    const/4 v1, 0x0

    .line 117
    invoke-virtual {v0, v1}, Landroidx/navigation/NavDestination;->setParent(Landroidx/navigation/NavGraph;)V

    .line 119
    :cond_23
    invoke-virtual {p1, p0}, Landroidx/navigation/NavDestination;->setParent(Landroidx/navigation/NavGraph;)V

    .line 120
    iget-object v0, p0, Landroidx/navigation/NavGraph;->mNodes:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    return-void

    .line 113
    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Destination already has a parent set. Call NavGraph.remove() to remove the previous parent."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 105
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " cannot have the same id as graph "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_57
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Destinations must have an id. Call setId() or include an android:id in your navigation XML."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final findNode(I)Landroidx/navigation/NavDestination;
    .registers 3

    const/4 v0, 0x1

    .line 171
    invoke-virtual {p0, p1, v0}, Landroidx/navigation/NavGraph;->findNode(IZ)Landroidx/navigation/NavDestination;

    move-result-object p1

    return-object p1
.end method

.method final findNode(IZ)Landroidx/navigation/NavDestination;
    .registers 4

    .line 176
    iget-object v0, p0, Landroidx/navigation/NavGraph;->mNodes:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavDestination;

    if-eqz v0, :cond_b

    goto :goto_1d

    :cond_b
    if-eqz p2, :cond_1c

    .line 181
    invoke-virtual {p0}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object p2

    if-eqz p2, :cond_1c

    invoke-virtual {p0}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v0

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .line 266
    invoke-virtual {p0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    if-eqz v0, :cond_b

    invoke-super {p0}, Landroidx/navigation/NavDestination;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_b
    const-string v0, "the root navigation"

    :goto_d
    return-object v0
.end method

.method getStartDestDisplayName()Ljava/lang/String;
    .registers 2

    .line 295
    iget-object v0, p0, Landroidx/navigation/NavGraph;->mStartDestIdName:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 296
    iget v0, p0, Landroidx/navigation/NavGraph;->mStartDestId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavGraph;->mStartDestIdName:Ljava/lang/String;

    .line 298
    :cond_c
    iget-object v0, p0, Landroidx/navigation/NavGraph;->mStartDestIdName:Ljava/lang/String;

    return-object v0
.end method

.method public final getStartDestination()I
    .registers 2

    .line 276
    iget v0, p0, Landroidx/navigation/NavGraph;->mStartDestId:I

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroidx/navigation/NavDestination;",
            ">;"
        }
    .end annotation

    .line 187
    new-instance v0, Landroidx/navigation/NavGraph$1;

    invoke-direct {v0, p0}, Landroidx/navigation/NavGraph$1;-><init>(Landroidx/navigation/NavGraph;)V

    return-object v0
.end method

.method matchDeepLink(Landroidx/navigation/NavDeepLinkRequest;)Landroidx/navigation/NavDestination$DeepLinkMatch;
    .registers 6

    .line 76
    invoke-super {p0, p1}, Landroidx/navigation/NavDestination;->matchDeepLink(Landroidx/navigation/NavDeepLinkRequest;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v0

    .line 78
    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavDestination;

    .line 79
    invoke-virtual {v2, p1}, Landroidx/navigation/NavDestination;->matchDeepLink(Landroidx/navigation/NavDeepLinkRequest;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v2

    if-eqz v2, :cond_8

    if-eqz v0, :cond_22

    .line 81
    invoke-virtual {v2, v0}, Landroidx/navigation/NavDestination$DeepLinkMatch;->compareTo(Landroidx/navigation/NavDestination$DeepLinkMatch;)I

    move-result v3

    if-lez v3, :cond_8

    :cond_22
    move-object v0, v2

    goto :goto_8

    :cond_24
    return-object v0
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 63
    invoke-super {p0, p1, p2}, Landroidx/navigation/NavDestination;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Landroidx/navigation/common/R$styleable;->NavGraphNavigator:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 66
    sget v0, Landroidx/navigation/common/R$styleable;->NavGraphNavigator_startDestination:I

    const/4 v1, 0x0

    .line 67
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 66
    invoke-virtual {p0, v0}, Landroidx/navigation/NavGraph;->setStartDestination(I)V

    .line 68
    iget v0, p0, Landroidx/navigation/NavGraph;->mStartDestId:I

    invoke-static {p1, v0}, Landroidx/navigation/NavDestination;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/NavGraph;->mStartDestIdName:Ljava/lang/String;

    .line 69
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final setStartDestination(I)V
    .registers 5

    .line 285
    invoke-virtual {p0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    if-eq p1, v0, :cond_c

    .line 289
    iput p1, p0, Landroidx/navigation/NavGraph;->mStartDestId:I

    const/4 p1, 0x0

    .line 290
    iput-object p1, p0, Landroidx/navigation/NavGraph;->mStartDestIdName:Ljava/lang/String;

    return-void

    .line 286
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start destination "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cannot use the same id as the graph "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    invoke-super {p0}, Landroidx/navigation/NavDestination;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " startDestination="

    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->getStartDestination()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v1

    if-nez v1, :cond_32

    .line 309
    iget-object v1, p0, Landroidx/navigation/NavGraph;->mStartDestIdName:Ljava/lang/String;

    if-nez v1, :cond_2e

    const-string v1, "0x"

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    iget v1, p0, Landroidx/navigation/NavGraph;->mStartDestId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_43

    .line 313
    :cond_2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_43

    :cond_32
    const-string v2, "{"

    .line 316
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :goto_43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
