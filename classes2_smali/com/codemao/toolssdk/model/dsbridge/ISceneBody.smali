.class public final Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;
.super Ljava/lang/Object;
.source "IAddImagesOptions.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/model/dsbridge/ISceneBody$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/toolssdk/model/dsbridge/ISceneBody$Companion;

.field public static final TYPE:Ljava/lang/String; = "scene"


# instance fields
.field private final point:Lcom/codemao/toolssdk/model/dsbridge/PointBody;

.field private final scale:F

.field private final type:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;->Companion:Lcom/codemao/toolssdk/model/dsbridge/ISceneBody$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/codemao/toolssdk/model/dsbridge/PointBody;F)V
    .registers 6

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;->type:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;->url:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;->point:Lcom/codemao/toolssdk/model/dsbridge/PointBody;

    .line 46
    iput p4, p0, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;->scale:F

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/codemao/toolssdk/model/dsbridge/PointBody;FILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p5, 0x1

    if-eqz p5, :cond_6

    const-string p1, "scene"

    .line 42
    :cond_6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/codemao/toolssdk/model/dsbridge/PointBody;F)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/toolssdk/model/dsbridge/PointBody;FILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;->type:Ljava/lang/String;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;->url:Ljava/lang/String;

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-object p3, p0, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;->point:Lcom/codemao/toolssdk/model/dsbridge/PointBody;

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget p4, p0, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;->scale:F

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/codemao/toolssdk/model/dsbridge/PointBody;F)Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/codemao/toolssdk/model/dsbridge/PointBody;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;->point:Lcom/codemao/toolssdk/model/dsbridge/PointBody;

    return-object v0
.end method

.method public final component4()F
    .registers 2

    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;->scale:F

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/codemao/toolssdk/model/dsbridge/PointBody;F)Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;
    .registers 6

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/codemao/toolssdk/model/dsbridge/PointBody;F)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;->point:Lcom/codemao/toolssdk/model/dsbridge/PointBody;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;->point:Lcom/codemao/toolssdk/model/dsbridge/PointBody;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;->scale:F

    iget p1, p1, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;->scale:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_38

    return v2

    :cond_38
    return v0
.end method

.method public final getPoint()Lcom/codemao/toolssdk/model/dsbridge/PointBody;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;->point:Lcom/codemao/toolssdk/model/dsbridge/PointBody;

    return-object v0
.end method

.method public final getScale()F
    .registers 2

    .line 46
    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;->scale:F

    return v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;->url:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    const/4 v1, 0x0

    goto :goto_13

    :cond_f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;->point:Lcom/codemao/toolssdk/model/dsbridge/PointBody;

    if-nez v1, :cond_1b

    goto :goto_1f

    :cond_1b
    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/PointBody;->hashCode()I

    move-result v2

    :goto_1f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;->scale:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setUrl(Ljava/lang/String;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ISceneBody(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", point="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;->point:Lcom/codemao/toolssdk/model/dsbridge/PointBody;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/ISceneBody;->scale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
