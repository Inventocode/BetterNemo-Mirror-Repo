.class public final Lbleshadow/dagger/internal/SetBuilder;
.super Ljava/lang/Object;
.source "SetBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final contributions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lbleshadow/dagger/internal/SetBuilder;->contributions:Ljava/util/List;

    return-void
.end method

.method public static newSetBuilder(I)Lbleshadow/dagger/internal/SetBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lbleshadow/dagger/internal/SetBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 47
    new-instance v0, Lbleshadow/dagger/internal/SetBuilder;

    invoke-direct {v0, p0}, Lbleshadow/dagger/internal/SetBuilder;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Lbleshadow/dagger/internal/SetBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lbleshadow/dagger/internal/SetBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lbleshadow/dagger/internal/SetBuilder;->contributions:Ljava/util/List;

    const-string v1, "Set contributions cannot be null"

    invoke-static {p1, v1}, Lbleshadow/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lbleshadow/dagger/internal/SetBuilder;->contributions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 66
    :cond_d
    iget-object v0, p0, Lbleshadow/dagger/internal/SetBuilder;->contributions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    .line 67
    iget-object v0, p0, Lbleshadow/dagger/internal/SetBuilder;->contributions:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 69
    :cond_22
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lbleshadow/dagger/internal/SetBuilder;->contributions:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
