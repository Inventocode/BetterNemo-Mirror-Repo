.class public final Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpReqData;
.super Ljava/lang/Object;
.source "CppExecuteRegExpData.kt"


# instance fields
.field private final executeVersion:Ljava/lang/Integer;

.field private final request_type:I

.field private final skip_allow:Z


# direct methods
.method public constructor <init>(ZILjava/lang/Integer;)V
    .registers 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpReqData;->skip_allow:Z

    .line 5
    iput p2, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpReqData;->request_type:I

    .line 6
    iput-object p3, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpReqData;->executeVersion:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(ZILjava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 3
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpReqData;-><init>(ZILjava/lang/Integer;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpReqData;ZILjava/lang/Integer;ILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpReqData;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-boolean p1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpReqData;->skip_allow:Z

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget p2, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpReqData;->request_type:I

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpReqData;->executeVersion:Ljava/lang/Integer;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpReqData;->copy(ZILjava/lang/Integer;)Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpReqData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .registers 2

    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpReqData;->skip_allow:Z

    return v0
.end method

.method public final component2()I
    .registers 2

    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpReqData;->request_type:I

    return v0
.end method

.method public final component3()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpReqData;->executeVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public final copy(ZILjava/lang/Integer;)Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpReqData;
    .registers 5

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpReqData;

    invoke-direct {v0, p1, p2, p3}, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpReqData;-><init>(ZILjava/lang/Integer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpReqData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpReqData;

    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpReqData;->skip_allow:Z

    iget-boolean v3, p1, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpReqData;->skip_allow:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpReqData;->request_type:I

    iget v3, p1, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpReqData;->request_type:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpReqData;->executeVersion:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpReqData;->executeVersion:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    return v2

    :cond_25
    return v0
.end method

.method public final getExecuteVersion()Ljava/lang/Integer;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpReqData;->executeVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getRequest_type()I
    .registers 2

    .line 5
    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpReqData;->request_type:I

    return v0
.end method

.method public final getSkip_allow()Z
    .registers 2

    .line 4
    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpReqData;->skip_allow:Z

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpReqData;->skip_allow:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :cond_5
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpReqData;->request_type:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpReqData;->executeVersion:Ljava/lang/Integer;

    if-nez v1, :cond_12

    const/4 v1, 0x0

    goto :goto_16

    :cond_12
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_16
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CppExecuteRegExpReqData(skip_allow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpReqData;->skip_allow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", request_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpReqData;->request_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", executeVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/CppExecuteRegExpReqData;->executeVersion:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
