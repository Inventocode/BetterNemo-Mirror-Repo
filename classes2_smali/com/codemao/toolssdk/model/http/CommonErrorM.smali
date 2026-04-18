.class public final Lcom/codemao/toolssdk/model/http/CommonErrorM;
.super Ljava/lang/Object;
.source "CommonErrorLog.kt"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private d:I

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    const-string v0, "p"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/codemao/toolssdk/model/http/CommonErrorM;->d:I

    iput-object p2, p0, Lcom/codemao/toolssdk/model/http/CommonErrorM;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getD()I
    .registers 2

    .line 57
    iget v0, p0, Lcom/codemao/toolssdk/model/http/CommonErrorM;->d:I

    return v0
.end method

.method public final getP()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/CommonErrorM;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final setD(I)V
    .registers 2

    .line 57
    iput p1, p0, Lcom/codemao/toolssdk/model/http/CommonErrorM;->d:I

    return-void
.end method

.method public final setP(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lcom/codemao/toolssdk/model/http/CommonErrorM;->p:Ljava/lang/String;

    return-void
.end method
