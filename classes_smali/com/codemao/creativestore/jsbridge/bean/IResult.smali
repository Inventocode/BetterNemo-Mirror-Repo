.class public final Lcom/codemao/creativestore/jsbridge/bean/IResult;
.super Ljava/lang/Object;
.source "IResult.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private body:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private status:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/codemao/creativestore/jsbridge/bean/IResult;-><init>(ILjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/codemao/creativestore/jsbridge/bean/IResult;->status:I

    iput-object p2, p0, Lcom/codemao/creativestore/jsbridge/bean/IResult;->body:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_5

    const/4 p1, -0x1

    :cond_5
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_a

    const/4 p2, 0x0

    .line 17
    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativestore/jsbridge/bean/IResult;-><init>(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/creativestore/jsbridge/bean/IResult;ILjava/lang/Object;ILjava/lang/Object;)Lcom/codemao/creativestore/jsbridge/bean/IResult;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget p1, p0, Lcom/codemao/creativestore/jsbridge/bean/IResult;->status:I

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/codemao/creativestore/jsbridge/bean/IResult;->body:Ljava/lang/Object;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativestore/jsbridge/bean/IResult;->copy(ILjava/lang/Object;)Lcom/codemao/creativestore/jsbridge/bean/IResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 2

    iget v0, p0, Lcom/codemao/creativestore/jsbridge/bean/IResult;->status:I

    return v0
.end method

.method public final component2()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/bean/IResult;->body:Ljava/lang/Object;

    return-object v0
.end method

.method public final copy(ILjava/lang/Object;)Lcom/codemao/creativestore/jsbridge/bean/IResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)",
            "Lcom/codemao/creativestore/jsbridge/bean/IResult<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/codemao/creativestore/jsbridge/bean/IResult;

    invoke-direct {v0, p1, p2}, Lcom/codemao/creativestore/jsbridge/bean/IResult;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_1b

    instance-of v0, p1, Lcom/codemao/creativestore/jsbridge/bean/IResult;

    if-eqz v0, :cond_19

    check-cast p1, Lcom/codemao/creativestore/jsbridge/bean/IResult;

    iget v0, p0, Lcom/codemao/creativestore/jsbridge/bean/IResult;->status:I

    iget v1, p1, Lcom/codemao/creativestore/jsbridge/bean/IResult;->status:I

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/bean/IResult;->body:Ljava/lang/Object;

    iget-object p1, p1, Lcom/codemao/creativestore/jsbridge/bean/IResult;->body:Ljava/lang/Object;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p1, 0x0

    return p1

    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    return p1
.end method

.method public final getBody()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/bean/IResult;->body:Ljava/lang/Object;

    return-object v0
.end method

.method public final getStatus()I
    .registers 2

    .line 17
    iget v0, p0, Lcom/codemao/creativestore/jsbridge/bean/IResult;->status:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/codemao/creativestore/jsbridge/bean/IResult;->status:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/bean/IResult;->body:Ljava/lang/Object;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    add-int/2addr v0, v1

    return v0
.end method

.method public final isError()Z
    .registers 3

    .line 24
    iget v0, p0, Lcom/codemao/creativestore/jsbridge/bean/IResult;->status:I

    const/16 v1, 0x7d0

    if-gt v0, v1, :cond_c

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method public final isSuccess()Z
    .registers 3

    .line 20
    iget v0, p0, Lcom/codemao/creativestore/jsbridge/bean/IResult;->status:I

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final setBody(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/codemao/creativestore/jsbridge/bean/IResult;->body:Ljava/lang/Object;

    return-void
.end method

.method public final setStatus(I)V
    .registers 2

    .line 17
    iput p1, p0, Lcom/codemao/creativestore/jsbridge/bean/IResult;->status:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IResult(status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/creativestore/jsbridge/bean/IResult;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/bean/IResult;->body:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
