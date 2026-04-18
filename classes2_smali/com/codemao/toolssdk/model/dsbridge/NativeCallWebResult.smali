.class public final Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;
.super Ljava/lang/Object;
.source "NativeCallWebResult.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult$Companion;,
        Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult$JustSuccessField;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult$Companion;

.field public static final FAILURE:I = 0x1388

.field public static final SUCCESSFUL:I = 0x7d0


# instance fields
.field private final code:I

.field private final data:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;->Companion:Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult$Companion;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;->code:I

    iput-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;->data:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 5
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method private final component1()I
    .registers 2

    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;->code:I

    return v0
.end method

.method private final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;->data:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;ILjava/lang/String;ILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget p1, p0, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;->code:I

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;->data:Ljava/lang/String;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;->copy(ILjava/lang/String;)Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(ILjava/lang/String;)Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;
    .registers 4

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;

    invoke-direct {v0, p1, p2}, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;

    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;->code:I

    iget v3, p1, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;->code:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;->data:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;->data:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public final getCode()I
    .registers 2

    .line 33
    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;->code:I

    return v0
.end method

.method public final getData()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;->data:Ljava/lang/String;

    return-object v0
.end method

.method public final getDataFieldSuccess()Z
    .registers 5

    .line 21
    invoke-virtual {p0}, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;->getData()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 23
    :try_start_7
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;->getData()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult$JustSuccessField;

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult$JustSuccessField;

    .line 24
    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult$JustSuccessField;->getSuccess()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_22} :catch_22

    :catch_22
    :cond_22
    return v1
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;->code:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;->data:Ljava/lang/String;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_e
    add-int/2addr v0, v1

    return v0
.end method

.method public final isSuccessful()Z
    .registers 3

    .line 13
    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;->code:I

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NativeCallWebResult(code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
