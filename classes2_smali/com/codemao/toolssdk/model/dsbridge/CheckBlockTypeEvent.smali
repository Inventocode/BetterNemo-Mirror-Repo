.class public final Lcom/codemao/toolssdk/model/dsbridge/CheckBlockTypeEvent;
.super Ljava/lang/Object;
.source "GetBlockCountResult.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/model/dsbridge/CheckBlockTypeEvent$Companion;
    }
.end annotation


# static fields
.field public static final Actions:Ljava/lang/String; = "ToolboxName.ACTIONS"

.field public static final Animation:Ljava/lang/String; = "ToolboxName.ANIMATION"

.field public static final Appearance:Ljava/lang/String; = "ToolboxName.APPEARANCE"

.field public static final Audio:Ljava/lang/String; = "ToolboxName.AUDIO"

.field public static final Companion:Lcom/codemao/toolssdk/model/dsbridge/CheckBlockTypeEvent$Companion;

.field public static final Control:Ljava/lang/String; = "ToolboxName.CONTROL"

.field public static final Events:Ljava/lang/String; = "ToolboxName.EVENTS"

.field public static final Interaction:Ljava/lang/String; = "ToolboxName.INTERACTION"

.field public static final Operator:Ljava/lang/String; = "ToolboxName.OPERATOR"

.field public static final Pen:Ljava/lang/String; = "ToolboxName.PEN"

.field public static final Procedure:Ljava/lang/String; = "ToolboxName.PROCEDURE"

.field public static final Sensing:Ljava/lang/String; = "ToolboxName.SENSING"

.field public static final Variables:Ljava/lang/String; = "ToolboxName.VARIABLES"


# instance fields
.field private final blockType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/CheckBlockTypeEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/CheckBlockTypeEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/model/dsbridge/CheckBlockTypeEvent;->Companion:Lcom/codemao/toolssdk/model/dsbridge/CheckBlockTypeEvent$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "blockType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/CheckBlockTypeEvent;->blockType:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/CheckBlockTypeEvent;Ljava/lang/String;ILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/CheckBlockTypeEvent;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/CheckBlockTypeEvent;->blockType:Ljava/lang/String;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/model/dsbridge/CheckBlockTypeEvent;->copy(Ljava/lang/String;)Lcom/codemao/toolssdk/model/dsbridge/CheckBlockTypeEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CheckBlockTypeEvent;->blockType:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;)Lcom/codemao/toolssdk/model/dsbridge/CheckBlockTypeEvent;
    .registers 3

    const-string v0, "blockType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/CheckBlockTypeEvent;

    invoke-direct {v0, p1}, Lcom/codemao/toolssdk/model/dsbridge/CheckBlockTypeEvent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/CheckBlockTypeEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/CheckBlockTypeEvent;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CheckBlockTypeEvent;->blockType:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/toolssdk/model/dsbridge/CheckBlockTypeEvent;->blockType:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getBlockType()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CheckBlockTypeEvent;->blockType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CheckBlockTypeEvent;->blockType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CheckBlockTypeEvent(blockType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CheckBlockTypeEvent;->blockType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
