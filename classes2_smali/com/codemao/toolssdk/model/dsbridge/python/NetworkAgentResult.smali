.class public final Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;
.super Ljava/lang/Object;
.source "NetworkAgentData.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult$Companion;


# instance fields
.field private final body:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private final status:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;->Companion:Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult$Companion;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;->status:I

    iput-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;->body:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;->message:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 26
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget p1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;->status:I

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;->body:Ljava/lang/String;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;->message:Ljava/lang/String;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;->copy(ILjava/lang/String;Ljava/lang/String;)Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 2

    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;->status:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;->body:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;)Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;
    .registers 5

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;

    invoke-direct {v0, p1, p2, p3}, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;

    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;->status:I

    iget v3, p1, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;->status:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;->body:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;->body:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;->message:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;->message:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    return v2

    :cond_29
    return v0
.end method

.method public final getBody()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;->body:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()I
    .registers 2

    .line 26
    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;->status:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;->status:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;->body:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_b

    const/4 v1, 0x0

    goto :goto_f

    :cond_b
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;->message:Ljava/lang/String;

    if-nez v1, :cond_17

    goto :goto_1b

    :cond_17
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1b
    add-int/2addr v0, v2

    return v0
.end method

.method public final isSuccess()Z
    .registers 4

    .line 34
    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;->status:I

    const/4 v1, 0x0

    const/16 v2, 0xc8

    if-gt v2, v0, :cond_c

    const/16 v2, 0x12c

    if-ge v0, v2, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1
.end method

.method public final setMessage(Ljava/lang/String;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;->message:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkAgentResult(status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;->body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
