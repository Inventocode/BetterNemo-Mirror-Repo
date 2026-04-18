.class public final Lcom/codemao/nemo/bean/RecommendPageCourse;
.super Ljava/util/ArrayList;
.source "RecommendPageCourse.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/codemao/nemo/bean/RecommendPageCourseItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge contains(Lcom/codemao/nemo/bean/RecommendPageCourseItem;)Z
    .registers 2

    .line 3
    invoke-super {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_6

    .line 3
    :cond_4
    instance-of v0, p1, Lcom/codemao/nemo/bean/RecommendPageCourseItem;

    :goto_6
    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    check-cast p1, Lcom/codemao/nemo/bean/RecommendPageCourseItem;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/bean/RecommendPageCourse;->contains(Lcom/codemao/nemo/bean/RecommendPageCourseItem;)Z

    move-result p1

    return p1
.end method

.method public final getCourseItem()Lcom/codemao/nemo/bean/RecommendPageCourseItem;
    .registers 3

    .line 6
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/RecommendPageCourse;->size()I

    move-result v0

    if-lez v0, :cond_15

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/RecommendPageCourseItem;

    .line 8
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/RecommendPageCourse;->size()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return-object v0
.end method

.method public bridge getSize()I
    .registers 2

    .line 3
    invoke-super {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge indexOf(Lcom/codemao/nemo/bean/RecommendPageCourseItem;)I
    .registers 2

    .line 3
    invoke-super {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_6

    .line 3
    :cond_4
    instance-of v0, p1, Lcom/codemao/nemo/bean/RecommendPageCourseItem;

    :goto_6
    if-nez v0, :cond_a

    const/4 p1, -0x1

    return p1

    :cond_a
    check-cast p1, Lcom/codemao/nemo/bean/RecommendPageCourseItem;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/bean/RecommendPageCourse;->indexOf(Lcom/codemao/nemo/bean/RecommendPageCourseItem;)I

    move-result p1

    return p1
.end method

.method public bridge lastIndexOf(Lcom/codemao/nemo/bean/RecommendPageCourseItem;)I
    .registers 2

    .line 3
    invoke-super {p0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_6

    .line 3
    :cond_4
    instance-of v0, p1, Lcom/codemao/nemo/bean/RecommendPageCourseItem;

    :goto_6
    if-nez v0, :cond_a

    const/4 p1, -0x1

    return p1

    :cond_a
    check-cast p1, Lcom/codemao/nemo/bean/RecommendPageCourseItem;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/bean/RecommendPageCourse;->lastIndexOf(Lcom/codemao/nemo/bean/RecommendPageCourseItem;)I

    move-result p1

    return p1
.end method

.method public final bridge remove(I)Lcom/codemao/nemo/bean/RecommendPageCourseItem;
    .registers 2

    .line 3
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/bean/RecommendPageCourse;->removeAt(I)Lcom/codemao/nemo/bean/RecommendPageCourseItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge remove(Lcom/codemao/nemo/bean/RecommendPageCourseItem;)Z
    .registers 2

    .line 3
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge remove(Ljava/lang/Object;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_6

    .line 3
    :cond_4
    instance-of v0, p1, Lcom/codemao/nemo/bean/RecommendPageCourseItem;

    :goto_6
    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    check-cast p1, Lcom/codemao/nemo/bean/RecommendPageCourseItem;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/bean/RecommendPageCourse;->remove(Lcom/codemao/nemo/bean/RecommendPageCourseItem;)Z

    move-result p1

    return p1
.end method

.method public bridge removeAt(I)Lcom/codemao/nemo/bean/RecommendPageCourseItem;
    .registers 2

    .line 3
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/RecommendPageCourseItem;

    return-object p1
.end method

.method public final bridge size()I
    .registers 2

    .line 3
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/RecommendPageCourse;->getSize()I

    move-result v0

    return v0
.end method
