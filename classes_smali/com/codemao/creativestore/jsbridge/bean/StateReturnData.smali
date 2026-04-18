.class public final Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;
.super Ljava/lang/Object;
.source "IResult.kt"


# instance fields
.field private final state:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;->state:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;IILjava/lang/Object;)Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget p1, p0, Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;->state:I

    :cond_6
    invoke-virtual {p0, p1}, Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;->copy(I)Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 2

    iget v0, p0, Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;->state:I

    return v0
.end method

.method public final copy(I)Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;
    .registers 3

    new-instance v0, Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;

    invoke-direct {v0, p1}, Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;-><init>(I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_11

    instance-of v0, p1, Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;

    if-eqz v0, :cond_f

    check-cast p1, Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;

    iget v0, p0, Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;->state:I

    iget p1, p1, Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;->state:I

    if-ne v0, p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    return p1

    :cond_11
    :goto_11
    const/4 p1, 0x1

    return p1
.end method

.method public final getState()I
    .registers 2

    .line 76
    iget v0, p0, Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;->state:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;->state:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StateReturnData(state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
