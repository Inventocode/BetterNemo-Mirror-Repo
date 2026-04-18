.class Lcom/codemao/midi/sun/SoftPerformer$KeySortComparator;
.super Ljava/lang/Object;
.source "SoftPerformer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/sun/SoftPerformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeySortComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/codemao/midi/sun/ModelSource;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/codemao/midi/sun/SoftPerformer$1;)V
    .registers 2

    .line 319
    invoke-direct {p0}, Lcom/codemao/midi/sun/SoftPerformer$KeySortComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/codemao/midi/sun/ModelSource;Lcom/codemao/midi/sun/ModelSource;)I
    .registers 3

    .line 322
    invoke-virtual {p1}, Lcom/codemao/midi/sun/ModelSource;->getIdentifier()Lcom/codemao/midi/sun/ModelIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/midi/sun/ModelIdentifier;->toString()Ljava/lang/String;

    move-result-object p1

    .line 323
    invoke-virtual {p2}, Lcom/codemao/midi/sun/ModelSource;->getIdentifier()Lcom/codemao/midi/sun/ModelIdentifier;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/midi/sun/ModelIdentifier;->toString()Ljava/lang/String;

    move-result-object p2

    .line 322
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 319
    check-cast p1, Lcom/codemao/midi/sun/ModelSource;

    check-cast p2, Lcom/codemao/midi/sun/ModelSource;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/midi/sun/SoftPerformer$KeySortComparator;->compare(Lcom/codemao/midi/sun/ModelSource;Lcom/codemao/midi/sun/ModelSource;)I

    move-result p1

    return p1
.end method
