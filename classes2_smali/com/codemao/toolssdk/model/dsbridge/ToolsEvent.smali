.class public final Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;
.super Ljava/lang/Object;
.source "ToolsEvent.kt"


# instance fields
.field private final name:Ljava/lang/String;

.field private final target:Lcom/codemao/toolssdk/model/dsbridge/Target;

.field private final value:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/codemao/toolssdk/model/dsbridge/Target;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/model/dsbridge/Target;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->target:Lcom/codemao/toolssdk/model/dsbridge/Target;

    .line 14
    iput-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->name:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->value:Ljava/util/Map;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;Lcom/codemao/toolssdk/model/dsbridge/Target;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->target:Lcom/codemao/toolssdk/model/dsbridge/Target;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->name:Ljava/lang/String;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->value:Ljava/util/Map;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->copy(Lcom/codemao/toolssdk/model/dsbridge/Target;Ljava/lang/String;Ljava/util/Map;)Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/codemao/toolssdk/model/dsbridge/Target;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->target:Lcom/codemao/toolssdk/model/dsbridge/Target;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->value:Ljava/util/Map;

    return-object v0
.end method

.method public final copy(Lcom/codemao/toolssdk/model/dsbridge/Target;Ljava/lang/String;Ljava/util/Map;)Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/model/dsbridge/Target;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;)",
            "Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;"
        }
    .end annotation

    const-string v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;-><init>(Lcom/codemao/toolssdk/model/dsbridge/Target;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->target:Lcom/codemao/toolssdk/model/dsbridge/Target;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->target:Lcom/codemao/toolssdk/model/dsbridge/Target;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->value:Ljava/util/Map;

    iget-object p1, p1, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->value:Ljava/util/Map;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    return v2

    :cond_2d
    return v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getTarget()Lcom/codemao/toolssdk/model/dsbridge/Target;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->target:Lcom/codemao/toolssdk/model/dsbridge/Target;

    return-object v0
.end method

.method public final getValue()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->value:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->target:Lcom/codemao/toolssdk/model/dsbridge/Target;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/Target;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->value:Ljava/util/Map;

    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_1b

    :cond_17
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1b
    add-int/2addr v0, v1

    return v0
.end method

.method public final isKnButtonAndExit()Z
    .registers 3

    .line 22
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->value:Ljava/util/Map;

    if-eqz v0, :cond_b

    const-string v1, "type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const-string v1, "BUTTON"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->value:Ljava/util/Map;

    const-string v1, "button"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "EXIT"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ToolsEvent(target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->target:Lcom/codemao/toolssdk/model/dsbridge/Target;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->value:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
