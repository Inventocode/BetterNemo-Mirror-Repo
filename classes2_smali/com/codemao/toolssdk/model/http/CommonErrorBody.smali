.class public final Lcom/codemao/toolssdk/model/http/CommonErrorBody;
.super Ljava/lang/Object;
.source "CommonErrorLog.kt"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private d:Lcom/codemao/toolssdk/model/http/CommonErrorMsg;

.field private e:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p4, :cond_7

    const-string p4, "nemo_error"

    .line 61
    :cond_7
    iput-object p4, p0, Lcom/codemao/toolssdk/model/http/CommonErrorBody;->e:Ljava/lang/String;

    .line 75
    new-instance p4, Lcom/codemao/toolssdk/model/http/CommonErrorMsg;

    invoke-direct {p4, p1, p2, p3}, Lcom/codemao/toolssdk/model/http/CommonErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/codemao/toolssdk/model/http/CommonErrorBody;->d:Lcom/codemao/toolssdk/model/http/CommonErrorMsg;

    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/toolssdk/model/http/CommonErrorBody;->i:Ljava/lang/String;

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    const/16 v0, 0x3e8

    int-to-long v0, v0

    div-long/2addr p3, v0

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/toolssdk/model/http/CommonErrorBody;->t:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getD()Lcom/codemao/toolssdk/model/http/CommonErrorMsg;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/CommonErrorBody;->d:Lcom/codemao/toolssdk/model/http/CommonErrorMsg;

    return-object v0
.end method

.method public final getE()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/CommonErrorBody;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getI()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/CommonErrorBody;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final getT()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/CommonErrorBody;->t:Ljava/lang/String;

    return-object v0
.end method

.method public final setD(Lcom/codemao/toolssdk/model/http/CommonErrorMsg;)V
    .registers 3

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iput-object p1, p0, Lcom/codemao/toolssdk/model/http/CommonErrorBody;->d:Lcom/codemao/toolssdk/model/http/CommonErrorMsg;

    return-void
.end method

.method public final setE(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iput-object p1, p0, Lcom/codemao/toolssdk/model/http/CommonErrorBody;->e:Ljava/lang/String;

    return-void
.end method

.method public final setI(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lcom/codemao/toolssdk/model/http/CommonErrorBody;->i:Ljava/lang/String;

    return-void
.end method

.method public final setT(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lcom/codemao/toolssdk/model/http/CommonErrorBody;->t:Ljava/lang/String;

    return-void
.end method
