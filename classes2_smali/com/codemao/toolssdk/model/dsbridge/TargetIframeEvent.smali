.class public final Lcom/codemao/toolssdk/model/dsbridge/TargetIframeEvent;
.super Ljava/lang/Object;
.source "GetBlockCountResult.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/model/dsbridge/TargetIframeEvent$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/toolssdk/model/dsbridge/TargetIframeEvent$Companion;

.field public static final closeBlocksMode:Ljava/lang/String; = "CloseBlocksMode"

.field public static final exit:Ljava/lang/String; = "EXIT"

.field public static final nekoFoldPanel:Ljava/lang/String; = "NekoFoldPanel"

.field public static final nekoLeftBox:Ljava/lang/String; = "NekoLeftBox"

.field public static final openBlocksMode:Ljava/lang/String; = "OpenBlocksMode"

.field public static final runnerBtn:Ljava/lang/String; = "RunnerBtn"


# instance fields
.field private final targetId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeEvent;->Companion:Lcom/codemao/toolssdk/model/dsbridge/TargetIframeEvent$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "targetId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeEvent;->targetId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/TargetIframeEvent;Ljava/lang/String;ILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/TargetIframeEvent;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeEvent;->targetId:Ljava/lang/String;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeEvent;->copy(Ljava/lang/String;)Lcom/codemao/toolssdk/model/dsbridge/TargetIframeEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeEvent;->targetId:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;)Lcom/codemao/toolssdk/model/dsbridge/TargetIframeEvent;
    .registers 3

    const-string v0, "targetId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeEvent;

    invoke-direct {v0, p1}, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeEvent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeEvent;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeEvent;->targetId:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeEvent;->targetId:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getTargetId()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeEvent;->targetId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeEvent;->targetId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TargetIframeEvent(targetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/TargetIframeEvent;->targetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
