.class public final Lcom/codemao/toolssdk/model/http/CommonErrorData;
.super Ljava/lang/Object;
.source "CommonErrorLog.kt"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/http/CommonErrorBody;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/codemao/toolssdk/model/http/CommonErrorM;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/model/http/CommonErrorData;->b:Ljava/util/List;

    .line 53
    new-instance v0, Lcom/codemao/toolssdk/model/http/CommonErrorM;

    const/4 v1, 0x1

    const-string v2, "toolsAndroid"

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/model/http/CommonErrorM;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/model/http/CommonErrorData;->m:Lcom/codemao/toolssdk/model/http/CommonErrorM;

    return-void
.end method


# virtual methods
.method public final getB()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/http/CommonErrorBody;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/CommonErrorData;->b:Ljava/util/List;

    return-object v0
.end method

.method public final getM()Lcom/codemao/toolssdk/model/http/CommonErrorM;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/CommonErrorData;->m:Lcom/codemao/toolssdk/model/http/CommonErrorM;

    return-object v0
.end method

.method public final setB(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/http/CommonErrorBody;",
            ">;)V"
        }
    .end annotation

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/codemao/toolssdk/model/http/CommonErrorData;->b:Ljava/util/List;

    return-void
.end method

.method public final setM(Lcom/codemao/toolssdk/model/http/CommonErrorM;)V
    .registers 3

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/codemao/toolssdk/model/http/CommonErrorData;->m:Lcom/codemao/toolssdk/model/http/CommonErrorM;

    return-void
.end method
