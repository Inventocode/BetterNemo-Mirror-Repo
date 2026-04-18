.class public final Lcom/codemao/creativecenter/utils/bcm/bean/Material;
.super Ljava/lang/Object;
.source "MaterialsItemInfo.kt"


# instance fields
.field private final name:Ljava/lang/String;

.field private final nameUrlMap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/utils/bcm/bean/NameUrlMap;",
            ">;"
        }
    .end annotation
.end field

.field private final ranking:Ljava/lang/Integer;

.field private final type:Ljava/lang/String;

.field private final urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/utils/bcm/bean/NameUrlMap;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->nameUrlMap:Ljava/util/List;

    iput-object p3, p0, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->ranking:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->type:Ljava/lang/String;

    iput-object p5, p0, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->urls:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/creativecenter/utils/bcm/bean/Material;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/codemao/creativecenter/utils/bcm/bean/Material;
    .registers 11

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->name:Ljava/lang/String;

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget-object p2, p0, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->nameUrlMap:Ljava/util/List;

    :cond_c
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_13

    iget-object p3, p0, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->ranking:Ljava/lang/Integer;

    :cond_13
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_1a

    iget-object p4, p0, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->type:Ljava/lang/String;

    :cond_1a
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_21

    iget-object p5, p0, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->urls:Ljava/util/List;

    :cond_21
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->copy(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)Lcom/codemao/creativecenter/utils/bcm/bean/Material;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/utils/bcm/bean/NameUrlMap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->nameUrlMap:Ljava/util/List;

    return-object v0
.end method

.method public final component3()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->ranking:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->urls:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)Lcom/codemao/creativecenter/utils/bcm/bean/Material;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/utils/bcm/bean/NameUrlMap;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/codemao/creativecenter/utils/bcm/bean/Material;"
        }
    .end annotation

    new-instance v6, Lcom/codemao/creativecenter/utils/bcm/bean/Material;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/codemao/creativecenter/utils/bcm/bean/Material;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V

    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_3d

    instance-of v0, p1, Lcom/codemao/creativecenter/utils/bcm/bean/Material;

    if-eqz v0, :cond_3b

    check-cast p1, Lcom/codemao/creativecenter/utils/bcm/bean/Material;

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->nameUrlMap:Ljava/util/List;

    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->nameUrlMap:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->ranking:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->ranking:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->type:Ljava/lang/String;

    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->type:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->urls:Ljava/util/List;

    iget-object p1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->urls:Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    goto :goto_3d

    :cond_3b
    const/4 p1, 0x0

    return p1

    :cond_3d
    :goto_3d
    const/4 p1, 0x1

    return p1
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNameUrlMap()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/utils/bcm/bean/NameUrlMap;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->nameUrlMap:Ljava/util/List;

    return-object v0
.end method

.method public final getRanking()Ljava/lang/Integer;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->ranking:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrls()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->urls:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->nameUrlMap:Ljava/util/List;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->ranking:Ljava/lang/Integer;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->type:Ljava/lang/String;

    if-eqz v2, :cond_30

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_31

    :cond_30
    const/4 v2, 0x0

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->urls:Ljava/util/List;

    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3c
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Material(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nameUrlMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->nameUrlMap:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ranking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->ranking:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", urls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/Material;->urls:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
