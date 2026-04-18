.class public final Lcom/codemao/toolssdk/model/http/CommonErrorLog;
.super Ljava/lang/Object;
.source "CommonErrorLog.kt"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private data:Lcom/codemao/toolssdk/model/http/CommonErrorData;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/codemao/toolssdk/model/http/CommonErrorData;)V
    .registers 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/codemao/toolssdk/model/http/CommonErrorLog;->data:Lcom/codemao/toolssdk/model/http/CommonErrorData;

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/codemao/toolssdk/model/http/CommonErrorLog;->type:I

    return-void
.end method


# virtual methods
.method public final getData()Lcom/codemao/toolssdk/model/http/CommonErrorData;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/CommonErrorLog;->data:Lcom/codemao/toolssdk/model/http/CommonErrorData;

    return-object v0
.end method

.method public final getType()I
    .registers 2

    .line 16
    iget v0, p0, Lcom/codemao/toolssdk/model/http/CommonErrorLog;->type:I

    return v0
.end method

.method public final setData(Lcom/codemao/toolssdk/model/http/CommonErrorData;)V
    .registers 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/codemao/toolssdk/model/http/CommonErrorLog;->data:Lcom/codemao/toolssdk/model/http/CommonErrorData;

    return-void
.end method

.method public final setType(I)V
    .registers 2

    .line 16
    iput p1, p0, Lcom/codemao/toolssdk/model/http/CommonErrorLog;->type:I

    return-void
.end method
