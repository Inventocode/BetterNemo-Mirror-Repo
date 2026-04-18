.class public final Lcom/codemao/toolssdk/model/dsbridge/ConfigurationEvent;
.super Ljava/lang/Object;
.source "GetBlockCountResult.kt"


# instance fields
.field private final leftBarItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/dsbridge/LeftBarItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/dsbridge/LeftBarItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "leftBarItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/ConfigurationEvent;->leftBarItems:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/ConfigurationEvent;Ljava/util/List;ILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/ConfigurationEvent;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/ConfigurationEvent;->leftBarItems:Ljava/util/List;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/model/dsbridge/ConfigurationEvent;->copy(Ljava/util/List;)Lcom/codemao/toolssdk/model/dsbridge/ConfigurationEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/dsbridge/LeftBarItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/ConfigurationEvent;->leftBarItems:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/util/List;)Lcom/codemao/toolssdk/model/dsbridge/ConfigurationEvent;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/dsbridge/LeftBarItem;",
            ">;)",
            "Lcom/codemao/toolssdk/model/dsbridge/ConfigurationEvent;"
        }
    .end annotation

    const-string v0, "leftBarItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/ConfigurationEvent;

    invoke-direct {v0, p1}, Lcom/codemao/toolssdk/model/dsbridge/ConfigurationEvent;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/ConfigurationEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/ConfigurationEvent;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/ConfigurationEvent;->leftBarItems:Ljava/util/List;

    iget-object p1, p1, Lcom/codemao/toolssdk/model/dsbridge/ConfigurationEvent;->leftBarItems:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getLeftBarItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/dsbridge/LeftBarItem;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/ConfigurationEvent;->leftBarItems:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/ConfigurationEvent;->leftBarItems:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfigurationEvent(leftBarItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/ConfigurationEvent;->leftBarItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
