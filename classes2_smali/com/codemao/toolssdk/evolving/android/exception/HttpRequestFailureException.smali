.class public final Lcom/codemao/toolssdk/evolving/android/exception/HttpRequestFailureException;
.super Ljava/lang/Throwable;
.source "HttpRequestFailureException.kt"


# instance fields
.field private final code:I

.field private final reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/codemao/toolssdk/evolving/android/exception/HttpRequestFailureException;->code:I

    iput-object p2, p0, Lcom/codemao/toolssdk/evolving/android/exception/HttpRequestFailureException;->reason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/evolving/android/exception/HttpRequestFailureException;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/evolving/android/exception/HttpRequestFailureException;

    iget v1, p0, Lcom/codemao/toolssdk/evolving/android/exception/HttpRequestFailureException;->code:I

    iget v3, p1, Lcom/codemao/toolssdk/evolving/android/exception/HttpRequestFailureException;->code:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/codemao/toolssdk/evolving/android/exception/HttpRequestFailureException;->reason:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/toolssdk/evolving/android/exception/HttpRequestFailureException;->reason:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public final getCode()I
    .registers 2

    .line 3
    iget v0, p0, Lcom/codemao/toolssdk/evolving/android/exception/HttpRequestFailureException;->code:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/codemao/toolssdk/evolving/android/exception/HttpRequestFailureException;->code:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/evolving/android/exception/HttpRequestFailureException;->reason:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpRequestFailureException(code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/evolving/android/exception/HttpRequestFailureException;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/evolving/android/exception/HttpRequestFailureException;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
