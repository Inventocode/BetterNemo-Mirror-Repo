.class public final Lcom/codemao/toolssdk/model/dsbridge/NewCourseGetImWidth;
.super Ljava/lang/Object;
.source "NewCourseEntity.kt"


# instance fields
.field private final width:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Ljava/lang/Double;)V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/NewCourseGetImWidth;->width:Ljava/lang/Double;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/NewCourseGetImWidth;Ljava/lang/Double;ILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/NewCourseGetImWidth;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/NewCourseGetImWidth;->width:Ljava/lang/Double;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/model/dsbridge/NewCourseGetImWidth;->copy(Ljava/lang/Double;)Lcom/codemao/toolssdk/model/dsbridge/NewCourseGetImWidth;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Double;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/NewCourseGetImWidth;->width:Ljava/lang/Double;

    return-object v0
.end method

.method public final copy(Ljava/lang/Double;)Lcom/codemao/toolssdk/model/dsbridge/NewCourseGetImWidth;
    .registers 3

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/NewCourseGetImWidth;

    invoke-direct {v0, p1}, Lcom/codemao/toolssdk/model/dsbridge/NewCourseGetImWidth;-><init>(Ljava/lang/Double;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/NewCourseGetImWidth;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/NewCourseGetImWidth;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/NewCourseGetImWidth;->width:Ljava/lang/Double;

    iget-object p1, p1, Lcom/codemao/toolssdk/model/dsbridge/NewCourseGetImWidth;->width:Ljava/lang/Double;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getWidth()Ljava/lang/Double;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/NewCourseGetImWidth;->width:Ljava/lang/Double;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/NewCourseGetImWidth;->width:Ljava/lang/Double;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_a
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NewCourseGetImWidth(width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/NewCourseGetImWidth;->width:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
