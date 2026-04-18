.class public final Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;
.super Ljava/lang/Object;
.source "RequestMattingBody.kt"


# instance fields
.field private final result_url:Ljava/lang/String;

.field private final status:I

.field private final task_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    const-string v0, "result_url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "task_id"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;->result_url:Ljava/lang/String;

    .line 15
    iput p2, p0, Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;->status:I

    .line 16
    iput-object p3, p0, Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;->task_id:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;->result_url:Ljava/lang/String;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget p2, p0, Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;->status:I

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;->task_id:Ljava/lang/String;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;->copy(Ljava/lang/String;ILjava/lang/String;)Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;->result_url:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .registers 2

    iget v0, p0, Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;->status:I

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;->task_id:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;ILjava/lang/String;)Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;
    .registers 5

    const-string v0, "result_url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "task_id"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;

    invoke-direct {v0, p1, p2, p3}, Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;->result_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;->result_url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;->status:I

    iget v3, p1, Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;->status:I

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;->task_id:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;->task_id:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    return v2

    :cond_29
    return v0
.end method

.method public final getResult_url()Ljava/lang/String;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;->result_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()I
    .registers 2

    .line 15
    iget v0, p0, Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;->status:I

    return v0
.end method

.method public final getTask_id()Ljava/lang/String;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;->task_id:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;->result_url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;->status:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;->task_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isFailed()Z
    .registers 3

    .line 27
    iget v0, p0, Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;->status:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public final isProcessing()Z
    .registers 3

    .line 19
    iget v0, p0, Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;->status:I

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_9
    return v1
.end method

.method public final isSuccess()Z
    .registers 3

    .line 23
    iget v0, p0, Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;->result_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResponseCheckTaskProcess(result_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;->result_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", task_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/ResponseCheckTaskProcess;->task_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
