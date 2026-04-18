.class public final Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;
.super Ljava/lang/Object;
.source "CheckWorkSaveEnableResult.kt"


# instance fields
.field private enable:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;)V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;->enable:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;Ljava/lang/Boolean;ILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;->enable:Ljava/lang/Boolean;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;->copy(Ljava/lang/Boolean;)Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;->enable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final copy(Ljava/lang/Boolean;)Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;
    .registers 3

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;

    invoke-direct {v0, p1}, Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;-><init>(Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;->enable:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;->enable:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getEnable()Ljava/lang/Boolean;
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;->enable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;->enable:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_a
    return v0
.end method

.method public final setEnable(Ljava/lang/Boolean;)V
    .registers 2

    .line 4
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;->enable:Ljava/lang/Boolean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CheckWorkSaveEnableResult(enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;->enable:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
