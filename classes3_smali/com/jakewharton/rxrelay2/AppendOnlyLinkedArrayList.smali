.class Lcom/jakewharton/rxrelay2/AppendOnlyLinkedArrayList;
.super Ljava/lang/Object;
.source "AppendOnlyLinkedArrayList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jakewharton/rxrelay2/AppendOnlyLinkedArrayList$NonThrowingPredicate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final capacity:I

.field private final head:[Ljava/lang/Object;

.field private offset:I

.field private tail:[Ljava/lang/Object;


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/jakewharton/rxrelay2/AppendOnlyLinkedArrayList;->capacity:I

    add-int/lit8 p1, p1, 0x1

    .line 35
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/jakewharton/rxrelay2/AppendOnlyLinkedArrayList;->head:[Ljava/lang/Object;

    .line 36
    iput-object p1, p0, Lcom/jakewharton/rxrelay2/AppendOnlyLinkedArrayList;->tail:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method accept(Lcom/jakewharton/rxrelay2/Relay;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jakewharton/rxrelay2/Relay<",
            "-TT;>;)V"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/AppendOnlyLinkedArrayList;->head:[Ljava/lang/Object;

    .line 93
    iget v1, p0, Lcom/jakewharton/rxrelay2/AppendOnlyLinkedArrayList;->capacity:I

    :goto_4
    if-eqz v0, :cond_19

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_14

    .line 96
    aget-object v3, v0, v2

    if-nez v3, :cond_e

    goto :goto_14

    .line 101
    :cond_e
    invoke-virtual {p1, v3}, Lcom/jakewharton/rxrelay2/Relay;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 103
    :cond_14
    :goto_14
    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    goto :goto_4

    :cond_19
    return-void
.end method

.method add(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 45
    iget v0, p0, Lcom/jakewharton/rxrelay2/AppendOnlyLinkedArrayList;->capacity:I

    .line 46
    iget v1, p0, Lcom/jakewharton/rxrelay2/AppendOnlyLinkedArrayList;->offset:I

    if-ne v1, v0, :cond_11

    add-int/lit8 v1, v0, 0x1

    .line 48
    new-array v1, v1, [Ljava/lang/Object;

    .line 49
    iget-object v2, p0, Lcom/jakewharton/rxrelay2/AppendOnlyLinkedArrayList;->tail:[Ljava/lang/Object;

    aput-object v1, v2, v0

    .line 50
    iput-object v1, p0, Lcom/jakewharton/rxrelay2/AppendOnlyLinkedArrayList;->tail:[Ljava/lang/Object;

    const/4 v1, 0x0

    .line 53
    :cond_11
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/AppendOnlyLinkedArrayList;->tail:[Ljava/lang/Object;

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 54
    iput v1, p0, Lcom/jakewharton/rxrelay2/AppendOnlyLinkedArrayList;->offset:I

    return-void
.end method

.method forEachWhile(Lcom/jakewharton/rxrelay2/AppendOnlyLinkedArrayList$NonThrowingPredicate;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jakewharton/rxrelay2/AppendOnlyLinkedArrayList$NonThrowingPredicate<",
            "-TT;>;)V"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/AppendOnlyLinkedArrayList;->head:[Ljava/lang/Object;

    .line 75
    iget v1, p0, Lcom/jakewharton/rxrelay2/AppendOnlyLinkedArrayList;->capacity:I

    :goto_4
    if-eqz v0, :cond_1d

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_18

    .line 78
    aget-object v3, v0, v2

    if-nez v3, :cond_e

    goto :goto_18

    .line 82
    :cond_e
    invoke-interface {p1, v3}, Lcom/jakewharton/rxrelay2/AppendOnlyLinkedArrayList$NonThrowingPredicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_18

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 86
    :cond_18
    :goto_18
    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    goto :goto_4

    :cond_1d
    return-void
.end method
